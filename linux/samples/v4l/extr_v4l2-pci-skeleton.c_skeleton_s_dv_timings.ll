; ModuleID = '/home/carl/AnghaBench/linux/samples/v4l/extr_v4l2-pci-skeleton.c_skeleton_s_dv_timings.c'
source_filename = "/home/carl/AnghaBench/linux/samples/v4l/extr_v4l2-pci-skeleton.c_skeleton_s_dv_timings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_dv_timings = type { i32 }
%struct.skeleton = type { i64, i32, %struct.v4l2_dv_timings, i32 }

@ENODATA = common dso_local global i32 0, align 4
@skel_timings_cap = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_dv_timings*)* @skeleton_s_dv_timings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @skeleton_s_dv_timings(%struct.file* %0, i8* %1, %struct.v4l2_dv_timings* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_dv_timings*, align 8
  %8 = alloca %struct.skeleton*, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_dv_timings* %2, %struct.v4l2_dv_timings** %7, align 8
  %9 = load %struct.file*, %struct.file** %5, align 8
  %10 = call %struct.skeleton* @video_drvdata(%struct.file* %9)
  store %struct.skeleton* %10, %struct.skeleton** %8, align 8
  %11 = load %struct.skeleton*, %struct.skeleton** %8, align 8
  %12 = getelementptr inbounds %struct.skeleton, %struct.skeleton* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %3
  %16 = load i32, i32* @ENODATA, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %4, align 4
  br label %57

18:                                               ; preds = %3
  %19 = load %struct.v4l2_dv_timings*, %struct.v4l2_dv_timings** %7, align 8
  %20 = call i32 @v4l2_valid_dv_timings(%struct.v4l2_dv_timings* %19, i32* @skel_timings_cap, i32* null, i32* null)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %18
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %4, align 4
  br label %57

25:                                               ; preds = %18
  %26 = load %struct.v4l2_dv_timings*, %struct.v4l2_dv_timings** %7, align 8
  %27 = call i32 @v4l2_find_dv_timings_cap(%struct.v4l2_dv_timings* %26, i32* @skel_timings_cap, i32 0, i32* null, i32* null)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %25
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %4, align 4
  br label %57

32:                                               ; preds = %25
  %33 = load %struct.v4l2_dv_timings*, %struct.v4l2_dv_timings** %7, align 8
  %34 = load %struct.skeleton*, %struct.skeleton** %8, align 8
  %35 = getelementptr inbounds %struct.skeleton, %struct.skeleton* %34, i32 0, i32 2
  %36 = call i64 @v4l2_match_dv_timings(%struct.v4l2_dv_timings* %33, %struct.v4l2_dv_timings* %35, i32 0, i32 0)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %32
  store i32 0, i32* %4, align 4
  br label %57

39:                                               ; preds = %32
  %40 = load %struct.skeleton*, %struct.skeleton** %8, align 8
  %41 = getelementptr inbounds %struct.skeleton, %struct.skeleton* %40, i32 0, i32 3
  %42 = call i64 @vb2_is_busy(i32* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %39
  %45 = load i32, i32* @EBUSY, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %4, align 4
  br label %57

47:                                               ; preds = %39
  %48 = load %struct.skeleton*, %struct.skeleton** %8, align 8
  %49 = getelementptr inbounds %struct.skeleton, %struct.skeleton* %48, i32 0, i32 2
  %50 = load %struct.v4l2_dv_timings*, %struct.v4l2_dv_timings** %7, align 8
  %51 = bitcast %struct.v4l2_dv_timings* %49 to i8*
  %52 = bitcast %struct.v4l2_dv_timings* %50 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %51, i8* align 4 %52, i64 4, i1 false)
  %53 = load %struct.skeleton*, %struct.skeleton** %8, align 8
  %54 = load %struct.skeleton*, %struct.skeleton** %8, align 8
  %55 = getelementptr inbounds %struct.skeleton, %struct.skeleton* %54, i32 0, i32 1
  %56 = call i32 @skeleton_fill_pix_format(%struct.skeleton* %53, i32* %55)
  store i32 0, i32* %4, align 4
  br label %57

57:                                               ; preds = %47, %44, %38, %29, %22, %15
  %58 = load i32, i32* %4, align 4
  ret i32 %58
}

declare dso_local %struct.skeleton* @video_drvdata(%struct.file*) #1

declare dso_local i32 @v4l2_valid_dv_timings(%struct.v4l2_dv_timings*, i32*, i32*, i32*) #1

declare dso_local i32 @v4l2_find_dv_timings_cap(%struct.v4l2_dv_timings*, i32*, i32, i32*, i32*) #1

declare dso_local i64 @v4l2_match_dv_timings(%struct.v4l2_dv_timings*, %struct.v4l2_dv_timings*, i32, i32) #1

declare dso_local i64 @vb2_is_busy(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @skeleton_fill_pix_format(%struct.skeleton*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
