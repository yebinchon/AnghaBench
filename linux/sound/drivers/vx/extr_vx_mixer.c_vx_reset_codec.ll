; ModuleID = '/home/carl/AnghaBench/linux/sound/drivers/vx/extr_vx_mixer.c_vx_reset_codec.c'
source_filename = "/home/carl/AnghaBench/linux/sound/drivers/vx/extr_vx_mixer.c_vx_reset_codec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vx_core = type { i64, i64**, %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32, i32 (%struct.vx_core*)* }

@VX_TYPE_VXPOCKET = common dso_local global i64 0, align 8
@XX_CODEC_DAC_CONTROL_REGISTER = common dso_local global i32 0, align 4
@DAC_ATTEN_MAX = common dso_local global i32 0, align 4
@XX_CODEC_ADC_CONTROL_REGISTER = common dso_local global i32 0, align 4
@XX_CODEC_PORT_MODE_REGISTER = common dso_local global i32 0, align 4
@XX_CODEC_CLOCK_CONTROL_REGISTER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vx_reset_codec(%struct.vx_core* %0, i32 %1) #0 {
  %3 = alloca %struct.vx_core*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.vx_core* %0, %struct.vx_core** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.vx_core*, %struct.vx_core** %3, align 8
  %8 = getelementptr inbounds %struct.vx_core, %struct.vx_core* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @VX_TYPE_VXPOCKET, align 8
  %11 = icmp sge i64 %9, %10
  %12 = zext i1 %11 to i64
  %13 = select i1 %11, i32 117, i32 101
  store i32 %13, i32* %6, align 4
  %14 = load %struct.vx_core*, %struct.vx_core** %3, align 8
  %15 = getelementptr inbounds %struct.vx_core, %struct.vx_core* %14, i32 0, i32 3
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 1
  %18 = load i32 (%struct.vx_core*)*, i32 (%struct.vx_core*)** %17, align 8
  %19 = load %struct.vx_core*, %struct.vx_core** %3, align 8
  %20 = call i32 %18(%struct.vx_core* %19)
  %21 = load %struct.vx_core*, %struct.vx_core** %3, align 8
  %22 = getelementptr inbounds %struct.vx_core, %struct.vx_core* %21, i32 0, i32 3
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %59, label %27

27:                                               ; preds = %2
  store i32 0, i32* %5, align 4
  br label %28

28:                                               ; preds = %55, %27
  %29 = load i32, i32* %5, align 4
  %30 = load %struct.vx_core*, %struct.vx_core** %3, align 8
  %31 = getelementptr inbounds %struct.vx_core, %struct.vx_core* %30, i32 0, i32 2
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = icmp ult i32 %29, %34
  br i1 %35, label %36, label %58

36:                                               ; preds = %28
  %37 = load %struct.vx_core*, %struct.vx_core** %3, align 8
  %38 = load i32, i32* %5, align 4
  %39 = load i32, i32* @XX_CODEC_DAC_CONTROL_REGISTER, align 4
  %40 = load i32, i32* @DAC_ATTEN_MAX, align 4
  %41 = call i32 @vx_set_codec_reg(%struct.vx_core* %37, i32 %38, i32 %39, i32 %40)
  %42 = load %struct.vx_core*, %struct.vx_core** %3, align 8
  %43 = load i32, i32* %5, align 4
  %44 = load i32, i32* @XX_CODEC_ADC_CONTROL_REGISTER, align 4
  %45 = call i32 @vx_set_codec_reg(%struct.vx_core* %42, i32 %43, i32 %44, i32 0)
  %46 = load %struct.vx_core*, %struct.vx_core** %3, align 8
  %47 = load i32, i32* %5, align 4
  %48 = load i32, i32* @XX_CODEC_PORT_MODE_REGISTER, align 4
  %49 = load i32, i32* %6, align 4
  %50 = call i32 @vx_set_codec_reg(%struct.vx_core* %46, i32 %47, i32 %48, i32 %49)
  %51 = load %struct.vx_core*, %struct.vx_core** %3, align 8
  %52 = load i32, i32* %5, align 4
  %53 = load i32, i32* @XX_CODEC_CLOCK_CONTROL_REGISTER, align 4
  %54 = call i32 @vx_set_codec_reg(%struct.vx_core* %51, i32 %52, i32 %53, i32 0)
  br label %55

55:                                               ; preds = %36
  %56 = load i32, i32* %5, align 4
  %57 = add i32 %56, 1
  store i32 %57, i32* %5, align 4
  br label %28

58:                                               ; preds = %28
  br label %59

59:                                               ; preds = %58, %2
  store i32 0, i32* %5, align 4
  br label %60

60:                                               ; preds = %88, %59
  %61 = load i32, i32* %5, align 4
  %62 = load %struct.vx_core*, %struct.vx_core** %3, align 8
  %63 = getelementptr inbounds %struct.vx_core, %struct.vx_core* %62, i32 0, i32 2
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = icmp ult i32 %61, %66
  br i1 %67, label %68, label %91

68:                                               ; preds = %60
  %69 = load %struct.vx_core*, %struct.vx_core** %3, align 8
  %70 = getelementptr inbounds %struct.vx_core, %struct.vx_core* %69, i32 0, i32 1
  %71 = load i64**, i64*** %70, align 8
  %72 = load i32, i32* %5, align 4
  %73 = zext i32 %72 to i64
  %74 = getelementptr inbounds i64*, i64** %71, i64 %73
  %75 = load i64*, i64** %74, align 8
  %76 = getelementptr inbounds i64, i64* %75, i64 0
  store i64 0, i64* %76, align 8
  %77 = load %struct.vx_core*, %struct.vx_core** %3, align 8
  %78 = getelementptr inbounds %struct.vx_core, %struct.vx_core* %77, i32 0, i32 1
  %79 = load i64**, i64*** %78, align 8
  %80 = load i32, i32* %5, align 4
  %81 = zext i32 %80 to i64
  %82 = getelementptr inbounds i64*, i64** %79, i64 %81
  %83 = load i64*, i64** %82, align 8
  %84 = getelementptr inbounds i64, i64* %83, i64 1
  store i64 0, i64* %84, align 8
  %85 = load %struct.vx_core*, %struct.vx_core** %3, align 8
  %86 = load i32, i32* %5, align 4
  %87 = call i32 @vx_set_analog_output_level(%struct.vx_core* %85, i32 %86, i32 0, i32 0)
  br label %88

88:                                               ; preds = %68
  %89 = load i32, i32* %5, align 4
  %90 = add i32 %89, 1
  store i32 %90, i32* %5, align 4
  br label %60

91:                                               ; preds = %60
  ret void
}

declare dso_local i32 @vx_set_codec_reg(%struct.vx_core*, i32, i32, i32) #1

declare dso_local i32 @vx_set_analog_output_level(%struct.vx_core*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
