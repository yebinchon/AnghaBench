; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/intel/skylake/extr_skl-sst-dsp.c_skl_dsp_get_core.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/intel/skylake/extr_skl-sst-dsp.c_skl_dsp_get_core.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sst_dsp = type { i32, %struct.TYPE_3__, %struct.skl_dev* }
%struct.TYPE_3__ = type { i32 (%struct.sst_dsp.0*, i32)* }
%struct.sst_dsp.0 = type opaque
%struct.skl_dev = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i64*, i32* }

@.str = private unnamed_addr constant [21 x i8] c"invalid core id: %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@SKL_DSP_RESET = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [22 x i8] c"unable to get core%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"core id %d state %d usage_count %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @skl_dsp_get_core(%struct.sst_dsp* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sst_dsp*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.skl_dev*, align 8
  %7 = alloca i32, align 4
  store %struct.sst_dsp* %0, %struct.sst_dsp** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.sst_dsp*, %struct.sst_dsp** %4, align 8
  %9 = getelementptr inbounds %struct.sst_dsp, %struct.sst_dsp* %8, i32 0, i32 2
  %10 = load %struct.skl_dev*, %struct.skl_dev** %9, align 8
  store %struct.skl_dev* %10, %struct.skl_dev** %6, align 8
  store i32 0, i32* %7, align 4
  %11 = load i32, i32* %5, align 4
  %12 = load %struct.skl_dev*, %struct.skl_dev** %6, align 8
  %13 = getelementptr inbounds %struct.skl_dev, %struct.skl_dev* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp uge i32 %11, %15
  br i1 %16, label %17, label %25

17:                                               ; preds = %2
  %18 = load %struct.sst_dsp*, %struct.sst_dsp** %4, align 8
  %19 = getelementptr inbounds %struct.sst_dsp, %struct.sst_dsp* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* %5, align 4
  %22 = call i32 @dev_err(i32 %20, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %21)
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %87

25:                                               ; preds = %2
  %26 = load %struct.skl_dev*, %struct.skl_dev** %6, align 8
  %27 = getelementptr inbounds %struct.skl_dev, %struct.skl_dev* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 2
  %29 = load i32*, i32** %28, align 8
  %30 = load i32, i32* %5, align 4
  %31 = zext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %29, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %32, align 4
  %35 = load %struct.skl_dev*, %struct.skl_dev** %6, align 8
  %36 = getelementptr inbounds %struct.skl_dev, %struct.skl_dev* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 1
  %38 = load i64*, i64** %37, align 8
  %39 = load i32, i32* %5, align 4
  %40 = zext i32 %39 to i64
  %41 = getelementptr inbounds i64, i64* %38, i64 %40
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @SKL_DSP_RESET, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %63

45:                                               ; preds = %25
  %46 = load %struct.sst_dsp*, %struct.sst_dsp** %4, align 8
  %47 = getelementptr inbounds %struct.sst_dsp, %struct.sst_dsp* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = load i32 (%struct.sst_dsp.0*, i32)*, i32 (%struct.sst_dsp.0*, i32)** %48, align 8
  %50 = load %struct.sst_dsp*, %struct.sst_dsp** %4, align 8
  %51 = bitcast %struct.sst_dsp* %50 to %struct.sst_dsp.0*
  %52 = load i32, i32* %5, align 4
  %53 = call i32 %49(%struct.sst_dsp.0* %51, i32 %52)
  store i32 %53, i32* %7, align 4
  %54 = load i32, i32* %7, align 4
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %56, label %62

56:                                               ; preds = %45
  %57 = load %struct.sst_dsp*, %struct.sst_dsp** %4, align 8
  %58 = getelementptr inbounds %struct.sst_dsp, %struct.sst_dsp* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* %5, align 4
  %61 = call i32 @dev_err(i32 %59, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %60)
  br label %64

62:                                               ; preds = %45
  br label %63

63:                                               ; preds = %62, %25
  br label %64

64:                                               ; preds = %63, %56
  %65 = load %struct.sst_dsp*, %struct.sst_dsp** %4, align 8
  %66 = getelementptr inbounds %struct.sst_dsp, %struct.sst_dsp* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* %5, align 4
  %69 = load %struct.skl_dev*, %struct.skl_dev** %6, align 8
  %70 = getelementptr inbounds %struct.skl_dev, %struct.skl_dev* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 1
  %72 = load i64*, i64** %71, align 8
  %73 = load i32, i32* %5, align 4
  %74 = zext i32 %73 to i64
  %75 = getelementptr inbounds i64, i64* %72, i64 %74
  %76 = load i64, i64* %75, align 8
  %77 = load %struct.skl_dev*, %struct.skl_dev** %6, align 8
  %78 = getelementptr inbounds %struct.skl_dev, %struct.skl_dev* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 2
  %80 = load i32*, i32** %79, align 8
  %81 = load i32, i32* %5, align 4
  %82 = zext i32 %81 to i64
  %83 = getelementptr inbounds i32, i32* %80, i64 %82
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @dev_dbg(i32 %67, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i32 %68, i64 %76, i32 %84)
  %86 = load i32, i32* %7, align 4
  store i32 %86, i32* %3, align 4
  br label %87

87:                                               ; preds = %64, %17
  %88 = load i32, i32* %3, align 4
  ret i32 %88
}

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
