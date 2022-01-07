; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_node.h_IS_DNODE.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_node.h_IS_DNODE.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }

@NIDS_PER_BLOCK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.page*)* @IS_DNODE to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @IS_DNODE(%struct.page* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.page*, align 8
  %4 = alloca i32, align 4
  store %struct.page* %0, %struct.page** %3, align 8
  %5 = load %struct.page*, %struct.page** %3, align 8
  %6 = call i32 @ofs_of_node(%struct.page* %5)
  store i32 %6, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = call i64 @f2fs_has_xattr_block(i32 %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  br label %48

11:                                               ; preds = %1
  %12 = load i32, i32* %4, align 4
  %13 = icmp eq i32 %12, 3
  br i1 %13, label %25, label %14

14:                                               ; preds = %11
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* @NIDS_PER_BLOCK, align 4
  %17 = add nsw i32 4, %16
  %18 = icmp eq i32 %15, %17
  br i1 %18, label %25, label %19

19:                                               ; preds = %14
  %20 = load i32, i32* %4, align 4
  %21 = load i32, i32* @NIDS_PER_BLOCK, align 4
  %22 = mul nsw i32 2, %21
  %23 = add nsw i32 5, %22
  %24 = icmp eq i32 %20, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %19, %14, %11
  store i32 0, i32* %2, align 4
  br label %48

26:                                               ; preds = %19
  %27 = load i32, i32* %4, align 4
  %28 = load i32, i32* @NIDS_PER_BLOCK, align 4
  %29 = mul nsw i32 2, %28
  %30 = add nsw i32 6, %29
  %31 = icmp uge i32 %27, %30
  br i1 %31, label %32, label %47

32:                                               ; preds = %26
  %33 = load i32, i32* @NIDS_PER_BLOCK, align 4
  %34 = mul nsw i32 2, %33
  %35 = add nsw i32 6, %34
  %36 = load i32, i32* %4, align 4
  %37 = sub i32 %36, %35
  store i32 %37, i32* %4, align 4
  %38 = load i32, i32* %4, align 4
  %39 = zext i32 %38 to i64
  %40 = load i32, i32* @NIDS_PER_BLOCK, align 4
  %41 = add nsw i32 %40, 1
  %42 = sext i32 %41 to i64
  %43 = srem i64 %39, %42
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %32
  store i32 0, i32* %2, align 4
  br label %48

46:                                               ; preds = %32
  br label %47

47:                                               ; preds = %46, %26
  store i32 1, i32* %2, align 4
  br label %48

48:                                               ; preds = %47, %45, %25, %10
  %49 = load i32, i32* %2, align 4
  ret i32 %49
}

declare dso_local i32 @ofs_of_node(%struct.page*) #1

declare dso_local i64 @f2fs_has_xattr_block(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
