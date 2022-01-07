; ModuleID = '/home/carl/AnghaBench/linux/fs/squashfs/extr_fragment.c_squashfs_read_fragment_index_table.c'
source_filename = "/home/carl/AnghaBench/linux/fs/squashfs/extr_fragment.c_squashfs_read_fragment_index_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @squashfs_read_fragment_index_table(%struct.super_block* %0, i64 %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.super_block*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  store %struct.super_block* %0, %struct.super_block** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load i32, i32* %9, align 4
  %13 = call i32 @SQUASHFS_FRAGMENT_INDEX_BYTES(i32 %12)
  store i32 %13, i32* %10, align 4
  %14 = load i64, i64* %7, align 8
  %15 = load i32, i32* %10, align 4
  %16 = zext i32 %15 to i64
  %17 = add nsw i64 %14, %16
  %18 = load i64, i64* %8, align 8
  %19 = icmp sgt i64 %17, %18
  br i1 %19, label %20, label %24

20:                                               ; preds = %4
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  %23 = call i32* @ERR_PTR(i32 %22)
  store i32* %23, i32** %5, align 8
  br label %47

24:                                               ; preds = %4
  %25 = load %struct.super_block*, %struct.super_block** %6, align 8
  %26 = load i64, i64* %7, align 8
  %27 = load i32, i32* %10, align 4
  %28 = call i32* @squashfs_read_table(%struct.super_block* %25, i64 %26, i32 %27)
  store i32* %28, i32** %11, align 8
  %29 = load i32*, i32** %11, align 8
  %30 = call i32 @IS_ERR(i32* %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %45, label %32

32:                                               ; preds = %24
  %33 = load i32*, i32** %11, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 0
  %35 = load i32, i32* %34, align 4
  %36 = call i64 @le64_to_cpu(i32 %35)
  %37 = load i64, i64* %7, align 8
  %38 = icmp sge i64 %36, %37
  br i1 %38, label %39, label %45

39:                                               ; preds = %32
  %40 = load i32*, i32** %11, align 8
  %41 = call i32 @kfree(i32* %40)
  %42 = load i32, i32* @EINVAL, align 4
  %43 = sub nsw i32 0, %42
  %44 = call i32* @ERR_PTR(i32 %43)
  store i32* %44, i32** %5, align 8
  br label %47

45:                                               ; preds = %32, %24
  %46 = load i32*, i32** %11, align 8
  store i32* %46, i32** %5, align 8
  br label %47

47:                                               ; preds = %45, %39, %20
  %48 = load i32*, i32** %5, align 8
  ret i32* %48
}

declare dso_local i32 @SQUASHFS_FRAGMENT_INDEX_BYTES(i32) #1

declare dso_local i32* @ERR_PTR(i32) #1

declare dso_local i32* @squashfs_read_table(%struct.super_block*, i64, i32) #1

declare dso_local i32 @IS_ERR(i32*) #1

declare dso_local i64 @le64_to_cpu(i32) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
