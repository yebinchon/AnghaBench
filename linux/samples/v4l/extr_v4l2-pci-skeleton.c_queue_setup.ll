; ModuleID = '/home/carl/AnghaBench/linux/samples/v4l/extr_v4l2-pci-skeleton.c_queue_setup.c'
source_filename = "/home/carl/AnghaBench/linux/samples/v4l/extr_v4l2-pci-skeleton.c_queue_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vb2_queue = type { i32 }
%struct.device = type { i32 }
%struct.skeleton = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32 }

@V4L2_FIELD_ALTERNATE = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@V4L2_FIELD_TOP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vb2_queue*, i32*, i32*, i32*, %struct.device**)* @queue_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @queue_setup(%struct.vb2_queue* %0, i32* %1, i32* %2, i32* %3, %struct.device** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.vb2_queue*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.device**, align 8
  %12 = alloca %struct.skeleton*, align 8
  store %struct.vb2_queue* %0, %struct.vb2_queue** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store %struct.device** %4, %struct.device*** %11, align 8
  %13 = load %struct.vb2_queue*, %struct.vb2_queue** %7, align 8
  %14 = call %struct.skeleton* @vb2_get_drv_priv(%struct.vb2_queue* %13)
  store %struct.skeleton* %14, %struct.skeleton** %12, align 8
  %15 = load %struct.skeleton*, %struct.skeleton** %12, align 8
  %16 = getelementptr inbounds %struct.skeleton, %struct.skeleton* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.skeleton*, %struct.skeleton** %12, align 8
  %20 = getelementptr inbounds %struct.skeleton, %struct.skeleton* %19, i32 0, i32 0
  store i64 %18, i64* %20, align 8
  %21 = load %struct.skeleton*, %struct.skeleton** %12, align 8
  %22 = getelementptr inbounds %struct.skeleton, %struct.skeleton* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @V4L2_FIELD_ALTERNATE, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %37

26:                                               ; preds = %5
  %27 = load %struct.vb2_queue*, %struct.vb2_queue** %7, align 8
  %28 = call i64 @vb2_fileio_is_active(%struct.vb2_queue* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %26
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %6, align 4
  br label %78

33:                                               ; preds = %26
  %34 = load i64, i64* @V4L2_FIELD_TOP, align 8
  %35 = load %struct.skeleton*, %struct.skeleton** %12, align 8
  %36 = getelementptr inbounds %struct.skeleton, %struct.skeleton* %35, i32 0, i32 0
  store i64 %34, i64* %36, align 8
  br label %37

37:                                               ; preds = %33, %5
  %38 = load %struct.vb2_queue*, %struct.vb2_queue** %7, align 8
  %39 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32*, i32** %8, align 8
  %42 = load i32, i32* %41, align 4
  %43 = add i32 %40, %42
  %44 = icmp ult i32 %43, 3
  br i1 %44, label %45, label %51

45:                                               ; preds = %37
  %46 = load %struct.vb2_queue*, %struct.vb2_queue** %7, align 8
  %47 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = sub i32 3, %48
  %50 = load i32*, i32** %8, align 8
  store i32 %49, i32* %50, align 4
  br label %51

51:                                               ; preds = %45, %37
  %52 = load i32*, i32** %9, align 8
  %53 = load i32, i32* %52, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %70

55:                                               ; preds = %51
  %56 = load i32*, i32** %10, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 0
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.skeleton*, %struct.skeleton** %12, align 8
  %60 = getelementptr inbounds %struct.skeleton, %struct.skeleton* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = icmp ult i32 %58, %62
  br i1 %63, label %64, label %67

64:                                               ; preds = %55
  %65 = load i32, i32* @EINVAL, align 4
  %66 = sub nsw i32 0, %65
  br label %68

67:                                               ; preds = %55
  br label %68

68:                                               ; preds = %67, %64
  %69 = phi i32 [ %66, %64 ], [ 0, %67 ]
  store i32 %69, i32* %6, align 4
  br label %78

70:                                               ; preds = %51
  %71 = load i32*, i32** %9, align 8
  store i32 1, i32* %71, align 4
  %72 = load %struct.skeleton*, %struct.skeleton** %12, align 8
  %73 = getelementptr inbounds %struct.skeleton, %struct.skeleton* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 8
  %76 = load i32*, i32** %10, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 0
  store i32 %75, i32* %77, align 4
  store i32 0, i32* %6, align 4
  br label %78

78:                                               ; preds = %70, %68, %30
  %79 = load i32, i32* %6, align 4
  ret i32 %79
}

declare dso_local %struct.skeleton* @vb2_get_drv_priv(%struct.vb2_queue*) #1

declare dso_local i64 @vb2_fileio_is_active(%struct.vb2_queue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
