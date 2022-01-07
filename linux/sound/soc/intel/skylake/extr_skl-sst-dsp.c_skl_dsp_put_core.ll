; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/intel/skylake/extr_skl-sst-dsp.c_skl_dsp_put_core.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/intel/skylake/extr_skl-sst-dsp.c_skl_dsp_put_core.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sst_dsp = type { i32, %struct.TYPE_3__, %struct.skl_dev* }
%struct.TYPE_3__ = type { i32 (%struct.sst_dsp.0*, i32)* }
%struct.sst_dsp.0 = type opaque
%struct.skl_dev = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i64*, i64* }

@.str = private unnamed_addr constant [21 x i8] c"invalid core id: %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@SKL_DSP_RESET = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [27 x i8] c"unable to put core %d: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"core id %d state %d usage_count %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @skl_dsp_put_core(%struct.sst_dsp* %0, i32 %1) #0 {
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
  %22 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %20, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %21)
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %98

25:                                               ; preds = %2
  %26 = load %struct.skl_dev*, %struct.skl_dev** %6, align 8
  %27 = getelementptr inbounds %struct.skl_dev, %struct.skl_dev* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 1
  %29 = load i64*, i64** %28, align 8
  %30 = load i32, i32* %5, align 4
  %31 = zext i32 %30 to i64
  %32 = getelementptr inbounds i64, i64* %29, i64 %31
  %33 = load i64, i64* %32, align 8
  %34 = add nsw i64 %33, -1
  store i64 %34, i64* %32, align 8
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %75

36:                                               ; preds = %25
  %37 = load %struct.skl_dev*, %struct.skl_dev** %6, align 8
  %38 = getelementptr inbounds %struct.skl_dev, %struct.skl_dev* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 2
  %40 = load i64*, i64** %39, align 8
  %41 = load i32, i32* %5, align 4
  %42 = zext i32 %41 to i64
  %43 = getelementptr inbounds i64, i64* %40, i64 %42
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @SKL_DSP_RESET, align 8
  %46 = icmp ne i64 %44, %45
  br i1 %46, label %47, label %75

47:                                               ; preds = %36
  %48 = load %struct.sst_dsp*, %struct.sst_dsp** %4, align 8
  %49 = getelementptr inbounds %struct.sst_dsp, %struct.sst_dsp* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  %51 = load i32 (%struct.sst_dsp.0*, i32)*, i32 (%struct.sst_dsp.0*, i32)** %50, align 8
  %52 = load %struct.sst_dsp*, %struct.sst_dsp** %4, align 8
  %53 = bitcast %struct.sst_dsp* %52 to %struct.sst_dsp.0*
  %54 = load i32, i32* %5, align 4
  %55 = call i32 %51(%struct.sst_dsp.0* %53, i32 %54)
  store i32 %55, i32* %7, align 4
  %56 = load i32, i32* %7, align 4
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %58, label %74

58:                                               ; preds = %47
  %59 = load %struct.sst_dsp*, %struct.sst_dsp** %4, align 8
  %60 = getelementptr inbounds %struct.sst_dsp, %struct.sst_dsp* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* %5, align 4
  %63 = load i32, i32* %7, align 4
  %64 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %61, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %62, i32 %63)
  %65 = load %struct.skl_dev*, %struct.skl_dev** %6, align 8
  %66 = getelementptr inbounds %struct.skl_dev, %struct.skl_dev* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 1
  %68 = load i64*, i64** %67, align 8
  %69 = load i32, i32* %5, align 4
  %70 = zext i32 %69 to i64
  %71 = getelementptr inbounds i64, i64* %68, i64 %70
  %72 = load i64, i64* %71, align 8
  %73 = add nsw i64 %72, 1
  store i64 %73, i64* %71, align 8
  br label %74

74:                                               ; preds = %58, %47
  br label %75

75:                                               ; preds = %74, %36, %25
  %76 = load %struct.sst_dsp*, %struct.sst_dsp** %4, align 8
  %77 = getelementptr inbounds %struct.sst_dsp, %struct.sst_dsp* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = load i32, i32* %5, align 4
  %80 = load %struct.skl_dev*, %struct.skl_dev** %6, align 8
  %81 = getelementptr inbounds %struct.skl_dev, %struct.skl_dev* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 2
  %83 = load i64*, i64** %82, align 8
  %84 = load i32, i32* %5, align 4
  %85 = zext i32 %84 to i64
  %86 = getelementptr inbounds i64, i64* %83, i64 %85
  %87 = load i64, i64* %86, align 8
  %88 = load %struct.skl_dev*, %struct.skl_dev** %6, align 8
  %89 = getelementptr inbounds %struct.skl_dev, %struct.skl_dev* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 1
  %91 = load i64*, i64** %90, align 8
  %92 = load i32, i32* %5, align 4
  %93 = zext i32 %92 to i64
  %94 = getelementptr inbounds i64, i64* %91, i64 %93
  %95 = load i64, i64* %94, align 8
  %96 = call i32 @dev_dbg(i32 %78, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i32 %79, i64 %87, i64 %95)
  %97 = load i32, i32* %7, align 4
  store i32 %97, i32* %3, align 4
  br label %98

98:                                               ; preds = %75, %17
  %99 = load i32, i32* %3, align 4
  ret i32 %99
}

declare dso_local i32 @dev_err(i32, i8*, i32, ...) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
