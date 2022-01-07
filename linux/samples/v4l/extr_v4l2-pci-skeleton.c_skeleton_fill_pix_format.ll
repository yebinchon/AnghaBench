; ModuleID = '/home/carl/AnghaBench/linux/samples/v4l/extr_v4l2-pci-skeleton.c_skeleton_fill_pix_format.c'
source_filename = "/home/carl/AnghaBench/linux/samples/v4l/extr_v4l2-pci-skeleton.c_skeleton_fill_pix_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.skeleton = type { i64, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i64 }
%struct.v4l2_pix_format = type { i32, i32, i32, i32, i64, i32, i32, i32 }

@V4L2_PIX_FMT_YUYV = common dso_local global i32 0, align 4
@V4L2_STD_525_60 = common dso_local global i32 0, align 4
@V4L2_FIELD_INTERLACED = common dso_local global i32 0, align 4
@V4L2_COLORSPACE_SMPTE170M = common dso_local global i32 0, align 4
@V4L2_FIELD_ALTERNATE = common dso_local global i32 0, align 4
@V4L2_FIELD_NONE = common dso_local global i32 0, align 4
@V4L2_COLORSPACE_REC709 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.skeleton*, %struct.v4l2_pix_format*)* @skeleton_fill_pix_format to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @skeleton_fill_pix_format(%struct.skeleton* %0, %struct.v4l2_pix_format* %1) #0 {
  %3 = alloca %struct.skeleton*, align 8
  %4 = alloca %struct.v4l2_pix_format*, align 8
  store %struct.skeleton* %0, %struct.skeleton** %3, align 8
  store %struct.v4l2_pix_format* %1, %struct.v4l2_pix_format** %4, align 8
  %5 = load i32, i32* @V4L2_PIX_FMT_YUYV, align 4
  %6 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %4, align 8
  %7 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %6, i32 0, i32 7
  store i32 %5, i32* %7, align 8
  %8 = load %struct.skeleton*, %struct.skeleton** %3, align 8
  %9 = getelementptr inbounds %struct.skeleton, %struct.skeleton* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %12, label %31

12:                                               ; preds = %2
  %13 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %4, align 8
  %14 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %13, i32 0, i32 0
  store i32 720, i32* %14, align 8
  %15 = load %struct.skeleton*, %struct.skeleton** %3, align 8
  %16 = getelementptr inbounds %struct.skeleton, %struct.skeleton* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @V4L2_STD_525_60, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  %21 = zext i1 %20 to i64
  %22 = select i1 %20, i32 480, i32 576
  %23 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %4, align 8
  %24 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %23, i32 0, i32 1
  store i32 %22, i32* %24, align 4
  %25 = load i32, i32* @V4L2_FIELD_INTERLACED, align 4
  %26 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %4, align 8
  %27 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %26, i32 0, i32 6
  store i32 %25, i32* %27, align 4
  %28 = load i32, i32* @V4L2_COLORSPACE_SMPTE170M, align 4
  %29 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %4, align 8
  %30 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %29, i32 0, i32 5
  store i32 %28, i32* %30, align 8
  br label %68

31:                                               ; preds = %2
  %32 = load %struct.skeleton*, %struct.skeleton** %3, align 8
  %33 = getelementptr inbounds %struct.skeleton, %struct.skeleton* %32, i32 0, i32 2
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %4, align 8
  %38 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 8
  %39 = load %struct.skeleton*, %struct.skeleton** %3, align 8
  %40 = getelementptr inbounds %struct.skeleton, %struct.skeleton* %39, i32 0, i32 2
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %4, align 8
  %45 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %44, i32 0, i32 1
  store i32 %43, i32* %45, align 4
  %46 = load %struct.skeleton*, %struct.skeleton** %3, align 8
  %47 = getelementptr inbounds %struct.skeleton, %struct.skeleton* %46, i32 0, i32 2
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 2
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %60

52:                                               ; preds = %31
  %53 = load i32, i32* @V4L2_FIELD_ALTERNATE, align 4
  %54 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %4, align 8
  %55 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %54, i32 0, i32 6
  store i32 %53, i32* %55, align 4
  %56 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %4, align 8
  %57 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = sdiv i32 %58, 2
  store i32 %59, i32* %57, align 4
  br label %64

60:                                               ; preds = %31
  %61 = load i32, i32* @V4L2_FIELD_NONE, align 4
  %62 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %4, align 8
  %63 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %62, i32 0, i32 6
  store i32 %61, i32* %63, align 4
  br label %64

64:                                               ; preds = %60, %52
  %65 = load i32, i32* @V4L2_COLORSPACE_REC709, align 4
  %66 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %4, align 8
  %67 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %66, i32 0, i32 5
  store i32 %65, i32* %67, align 8
  br label %68

68:                                               ; preds = %64, %12
  %69 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %4, align 8
  %70 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = mul nsw i32 %71, 2
  %73 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %4, align 8
  %74 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %73, i32 0, i32 2
  store i32 %72, i32* %74, align 8
  %75 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %4, align 8
  %76 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 8
  %78 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %4, align 8
  %79 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = mul nsw i32 %77, %80
  %82 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %4, align 8
  %83 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %82, i32 0, i32 3
  store i32 %81, i32* %83, align 4
  %84 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %4, align 8
  %85 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %84, i32 0, i32 4
  store i64 0, i64* %85, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
