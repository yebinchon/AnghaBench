; ModuleID = '/home/carl/AnghaBench/linux/samples/v4l/extr_v4l2-pci-skeleton.c_skeleton_s_std.c'
source_filename = "/home/carl/AnghaBench/linux/samples/v4l/extr_v4l2-pci-skeleton.c_skeleton_s_std.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.skeleton = type { i64, i32, i32, i64 }

@ENODATA = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, i64)* @skeleton_s_std to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @skeleton_s_std(%struct.file* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.skeleton*, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %9 = load %struct.file*, %struct.file** %5, align 8
  %10 = call %struct.skeleton* @video_drvdata(%struct.file* %9)
  store %struct.skeleton* %10, %struct.skeleton** %8, align 8
  %11 = load %struct.skeleton*, %struct.skeleton** %8, align 8
  %12 = getelementptr inbounds %struct.skeleton, %struct.skeleton* %11, i32 0, i32 3
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %3
  %16 = load i32, i32* @ENODATA, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %4, align 4
  br label %41

18:                                               ; preds = %3
  %19 = load i64, i64* %7, align 8
  %20 = load %struct.skeleton*, %struct.skeleton** %8, align 8
  %21 = getelementptr inbounds %struct.skeleton, %struct.skeleton* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp eq i64 %19, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %18
  store i32 0, i32* %4, align 4
  br label %41

25:                                               ; preds = %18
  %26 = load %struct.skeleton*, %struct.skeleton** %8, align 8
  %27 = getelementptr inbounds %struct.skeleton, %struct.skeleton* %26, i32 0, i32 2
  %28 = call i64 @vb2_is_busy(i32* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %25
  %31 = load i32, i32* @EBUSY, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %4, align 4
  br label %41

33:                                               ; preds = %25
  %34 = load i64, i64* %7, align 8
  %35 = load %struct.skeleton*, %struct.skeleton** %8, align 8
  %36 = getelementptr inbounds %struct.skeleton, %struct.skeleton* %35, i32 0, i32 0
  store i64 %34, i64* %36, align 8
  %37 = load %struct.skeleton*, %struct.skeleton** %8, align 8
  %38 = load %struct.skeleton*, %struct.skeleton** %8, align 8
  %39 = getelementptr inbounds %struct.skeleton, %struct.skeleton* %38, i32 0, i32 1
  %40 = call i32 @skeleton_fill_pix_format(%struct.skeleton* %37, i32* %39)
  store i32 0, i32* %4, align 4
  br label %41

41:                                               ; preds = %33, %30, %24, %15
  %42 = load i32, i32* %4, align 4
  ret i32 %42
}

declare dso_local %struct.skeleton* @video_drvdata(%struct.file*) #1

declare dso_local i64 @vb2_is_busy(i32*) #1

declare dso_local i32 @skeleton_fill_pix_format(%struct.skeleton*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
