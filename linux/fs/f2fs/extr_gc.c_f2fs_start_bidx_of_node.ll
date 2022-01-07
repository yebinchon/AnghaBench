; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_gc.c_f2fs_start_bidx_of_node.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_gc.c_f2fs_start_bidx_of_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }

@NIDS_PER_BLOCK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @f2fs_start_bidx_of_node(i32 %0, %struct.inode* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.inode*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.inode* %1, %struct.inode** %5, align 8
  %10 = load i32, i32* @NIDS_PER_BLOCK, align 4
  %11 = mul nsw i32 2, %10
  %12 = add nsw i32 %11, 4
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %4, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  store i64 0, i64* %3, align 8
  br label %58

16:                                               ; preds = %2
  %17 = load i32, i32* %4, align 4
  %18 = icmp ule i32 %17, 2
  br i1 %18, label %19, label %22

19:                                               ; preds = %16
  %20 = load i32, i32* %4, align 4
  %21 = sub i32 %20, 1
  store i32 %21, i32* %7, align 4
  br label %49

22:                                               ; preds = %16
  %23 = load i32, i32* %4, align 4
  %24 = load i32, i32* %6, align 4
  %25 = icmp ule i32 %23, %24
  br i1 %25, label %26, label %36

26:                                               ; preds = %22
  %27 = load i32, i32* %4, align 4
  %28 = sub i32 %27, 4
  %29 = load i32, i32* @NIDS_PER_BLOCK, align 4
  %30 = add nsw i32 %29, 1
  %31 = udiv i32 %28, %30
  store i32 %31, i32* %8, align 4
  %32 = load i32, i32* %4, align 4
  %33 = sub i32 %32, 2
  %34 = load i32, i32* %8, align 4
  %35 = sub i32 %33, %34
  store i32 %35, i32* %7, align 4
  br label %48

36:                                               ; preds = %22
  %37 = load i32, i32* %4, align 4
  %38 = load i32, i32* %6, align 4
  %39 = sub i32 %37, %38
  %40 = sub i32 %39, 3
  %41 = load i32, i32* @NIDS_PER_BLOCK, align 4
  %42 = add nsw i32 %41, 1
  %43 = udiv i32 %40, %42
  store i32 %43, i32* %9, align 4
  %44 = load i32, i32* %4, align 4
  %45 = sub i32 %44, 5
  %46 = load i32, i32* %9, align 4
  %47 = sub i32 %45, %46
  store i32 %47, i32* %7, align 4
  br label %48

48:                                               ; preds = %36, %26
  br label %49

49:                                               ; preds = %48, %19
  %50 = load i32, i32* %7, align 4
  %51 = load %struct.inode*, %struct.inode** %5, align 8
  %52 = call i32 @ADDRS_PER_BLOCK(%struct.inode* %51)
  %53 = mul i32 %50, %52
  %54 = zext i32 %53 to i64
  %55 = load %struct.inode*, %struct.inode** %5, align 8
  %56 = call i64 @ADDRS_PER_INODE(%struct.inode* %55)
  %57 = add nsw i64 %54, %56
  store i64 %57, i64* %3, align 8
  br label %58

58:                                               ; preds = %49, %15
  %59 = load i64, i64* %3, align 8
  ret i64 %59
}

declare dso_local i32 @ADDRS_PER_BLOCK(%struct.inode*) #1

declare dso_local i64 @ADDRS_PER_INODE(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
