; ModuleID = '/home/carl/AnghaBench/linux/samples/v4l/extr_v4l2-pci-skeleton.c_skeleton_enum_input.c'
source_filename = "/home/carl/AnghaBench/linux/samples/v4l/extr_v4l2-pci-skeleton.c_skeleton_enum_input.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_input = type { i32, i32, i32, i64, i32 }

@EINVAL = common dso_local global i32 0, align 4
@V4L2_INPUT_TYPE_CAMERA = common dso_local global i32 0, align 4
@SKEL_TVNORMS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [8 x i8] c"S-Video\00", align 1
@V4L2_IN_CAP_STD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"HDMI\00", align 1
@V4L2_IN_CAP_DV_TIMINGS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_input*)* @skeleton_enum_input to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @skeleton_enum_input(%struct.file* %0, i8* %1, %struct.v4l2_input* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_input*, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_input* %2, %struct.v4l2_input** %7, align 8
  %8 = load %struct.v4l2_input*, %struct.v4l2_input** %7, align 8
  %9 = getelementptr inbounds %struct.v4l2_input, %struct.v4l2_input* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp sgt i32 %10, 1
  br i1 %11, label %12, label %15

12:                                               ; preds = %3
  %13 = load i32, i32* @EINVAL, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %4, align 4
  br label %45

15:                                               ; preds = %3
  %16 = load i32, i32* @V4L2_INPUT_TYPE_CAMERA, align 4
  %17 = load %struct.v4l2_input*, %struct.v4l2_input** %7, align 8
  %18 = getelementptr inbounds %struct.v4l2_input, %struct.v4l2_input* %17, i32 0, i32 4
  store i32 %16, i32* %18, align 8
  %19 = load %struct.v4l2_input*, %struct.v4l2_input** %7, align 8
  %20 = getelementptr inbounds %struct.v4l2_input, %struct.v4l2_input* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %34

23:                                               ; preds = %15
  %24 = load i64, i64* @SKEL_TVNORMS, align 8
  %25 = load %struct.v4l2_input*, %struct.v4l2_input** %7, align 8
  %26 = getelementptr inbounds %struct.v4l2_input, %struct.v4l2_input* %25, i32 0, i32 3
  store i64 %24, i64* %26, align 8
  %27 = load %struct.v4l2_input*, %struct.v4l2_input** %7, align 8
  %28 = getelementptr inbounds %struct.v4l2_input, %struct.v4l2_input* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @strlcpy(i32 %29, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 4)
  %31 = load i32, i32* @V4L2_IN_CAP_STD, align 4
  %32 = load %struct.v4l2_input*, %struct.v4l2_input** %7, align 8
  %33 = getelementptr inbounds %struct.v4l2_input, %struct.v4l2_input* %32, i32 0, i32 1
  store i32 %31, i32* %33, align 4
  br label %44

34:                                               ; preds = %15
  %35 = load %struct.v4l2_input*, %struct.v4l2_input** %7, align 8
  %36 = getelementptr inbounds %struct.v4l2_input, %struct.v4l2_input* %35, i32 0, i32 3
  store i64 0, i64* %36, align 8
  %37 = load %struct.v4l2_input*, %struct.v4l2_input** %7, align 8
  %38 = getelementptr inbounds %struct.v4l2_input, %struct.v4l2_input* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @strlcpy(i32 %39, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 4)
  %41 = load i32, i32* @V4L2_IN_CAP_DV_TIMINGS, align 4
  %42 = load %struct.v4l2_input*, %struct.v4l2_input** %7, align 8
  %43 = getelementptr inbounds %struct.v4l2_input, %struct.v4l2_input* %42, i32 0, i32 1
  store i32 %41, i32* %43, align 4
  br label %44

44:                                               ; preds = %34, %23
  store i32 0, i32* %4, align 4
  br label %45

45:                                               ; preds = %44, %12
  %46 = load i32, i32* %4, align 4
  ret i32 %46
}

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
