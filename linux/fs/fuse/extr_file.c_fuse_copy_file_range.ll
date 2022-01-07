; ModuleID = '/home/carl/AnghaBench/linux/fs/fuse/extr_file.c_fuse_copy_file_range.c'
source_filename = "/home/carl/AnghaBench/linux/fs/fuse/extr_file.c_fuse_copy_file_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@EXDEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i32, %struct.file*, i32, i64, i32)* @fuse_copy_file_range to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fuse_copy_file_range(%struct.file* %0, i32 %1, %struct.file* %2, i32 %3, i64 %4, i32 %5) #0 {
  %7 = alloca %struct.file*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.file*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %7, align 8
  store i32 %1, i32* %8, align 4
  store %struct.file* %2, %struct.file** %9, align 8
  store i32 %3, i32* %10, align 4
  store i64 %4, i64* %11, align 8
  store i32 %5, i32* %12, align 4
  %14 = load %struct.file*, %struct.file** %7, align 8
  %15 = load i32, i32* %8, align 4
  %16 = load %struct.file*, %struct.file** %9, align 8
  %17 = load i32, i32* %10, align 4
  %18 = load i64, i64* %11, align 8
  %19 = load i32, i32* %12, align 4
  %20 = call i32 @__fuse_copy_file_range(%struct.file* %14, i32 %15, %struct.file* %16, i32 %17, i64 %18, i32 %19)
  store i32 %20, i32* %13, align 4
  %21 = load i32, i32* %13, align 4
  %22 = load i32, i32* @EOPNOTSUPP, align 4
  %23 = sub nsw i32 0, %22
  %24 = icmp eq i32 %21, %23
  br i1 %24, label %30, label %25

25:                                               ; preds = %6
  %26 = load i32, i32* %13, align 4
  %27 = load i32, i32* @EXDEV, align 4
  %28 = sub nsw i32 0, %27
  %29 = icmp eq i32 %26, %28
  br i1 %29, label %30, label %38

30:                                               ; preds = %25, %6
  %31 = load %struct.file*, %struct.file** %7, align 8
  %32 = load i32, i32* %8, align 4
  %33 = load %struct.file*, %struct.file** %9, align 8
  %34 = load i32, i32* %10, align 4
  %35 = load i64, i64* %11, align 8
  %36 = load i32, i32* %12, align 4
  %37 = call i32 @generic_copy_file_range(%struct.file* %31, i32 %32, %struct.file* %33, i32 %34, i64 %35, i32 %36)
  store i32 %37, i32* %13, align 4
  br label %38

38:                                               ; preds = %30, %25
  %39 = load i32, i32* %13, align 4
  ret i32 %39
}

declare dso_local i32 @__fuse_copy_file_range(%struct.file*, i32, %struct.file*, i32, i64, i32) #1

declare dso_local i32 @generic_copy_file_range(%struct.file*, i32, %struct.file*, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
