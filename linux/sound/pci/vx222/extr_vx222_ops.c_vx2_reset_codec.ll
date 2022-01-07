; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/vx222/extr_vx222_ops.c_vx2_reset_codec.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/vx222/extr_vx222_ops.c_vx2_reset_codec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vx_core = type { i32, i64, i32 }
%struct.snd_vx222 = type { i32, i64, i32 }

@CDSP = common dso_local global i32 0, align 4
@VX_CDSP_CODEC_RESET_MASK = common dso_local global i32 0, align 4
@VX_TYPE_BOARD = common dso_local global i64 0, align 8
@AKM_CODEC_POWER_CONTROL_CMD = common dso_local global i32 0, align 4
@AKM_CODEC_CLOCK_FORMAT_CMD = common dso_local global i32 0, align 4
@AKM_CODEC_MUTE_CMD = common dso_local global i32 0, align 4
@AKM_CODEC_RESET_OFF_CMD = common dso_local global i32 0, align 4
@VX_TYPE_MIC = common dso_local global i64 0, align 8
@MICRO_SELECT_INPUT_NORM = common dso_local global i32 0, align 4
@MICRO_SELECT_PREAMPLI_G_0 = common dso_local global i32 0, align 4
@MICRO_SELECT_NOISE_T_52DB = common dso_local global i32 0, align 4
@MICRO_SELECT_PHANTOM_ALIM = common dso_local global i32 0, align 4
@SELMIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vx_core*)* @vx2_reset_codec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vx2_reset_codec(%struct.vx_core* %0) #0 {
  %2 = alloca %struct.vx_core*, align 8
  %3 = alloca %struct.snd_vx222*, align 8
  store %struct.vx_core* %0, %struct.vx_core** %2, align 8
  %4 = load %struct.vx_core*, %struct.vx_core** %2, align 8
  %5 = call %struct.vx_core* @to_vx222(%struct.vx_core* %4)
  %6 = bitcast %struct.vx_core* %5 to %struct.snd_vx222*
  store %struct.snd_vx222* %6, %struct.snd_vx222** %3, align 8
  %7 = load %struct.snd_vx222*, %struct.snd_vx222** %3, align 8
  %8 = bitcast %struct.snd_vx222* %7 to %struct.vx_core*
  %9 = load i32, i32* @CDSP, align 4
  %10 = load %struct.snd_vx222*, %struct.snd_vx222** %3, align 8
  %11 = getelementptr inbounds %struct.snd_vx222, %struct.snd_vx222* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @VX_CDSP_CODEC_RESET_MASK, align 4
  %14 = xor i32 %13, -1
  %15 = and i32 %12, %14
  %16 = call i32 @vx_outl(%struct.vx_core* %8, i32 %9, i32 %15)
  %17 = load %struct.snd_vx222*, %struct.snd_vx222** %3, align 8
  %18 = bitcast %struct.snd_vx222* %17 to %struct.vx_core*
  %19 = load i32, i32* @CDSP, align 4
  %20 = call i32 @vx_inl(%struct.vx_core* %18, i32 %19)
  %21 = call i32 @msleep(i32 10)
  %22 = load i32, i32* @VX_CDSP_CODEC_RESET_MASK, align 4
  %23 = load %struct.snd_vx222*, %struct.snd_vx222** %3, align 8
  %24 = getelementptr inbounds %struct.snd_vx222, %struct.snd_vx222* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = or i32 %25, %22
  store i32 %26, i32* %24, align 8
  %27 = load %struct.snd_vx222*, %struct.snd_vx222** %3, align 8
  %28 = bitcast %struct.snd_vx222* %27 to %struct.vx_core*
  %29 = load i32, i32* @CDSP, align 4
  %30 = load %struct.snd_vx222*, %struct.snd_vx222** %3, align 8
  %31 = getelementptr inbounds %struct.snd_vx222, %struct.snd_vx222* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @vx_outl(%struct.vx_core* %28, i32 %29, i32 %32)
  %34 = load %struct.snd_vx222*, %struct.snd_vx222** %3, align 8
  %35 = bitcast %struct.snd_vx222* %34 to %struct.vx_core*
  %36 = load i32, i32* @CDSP, align 4
  %37 = call i32 @vx_inl(%struct.vx_core* %35, i32 %36)
  %38 = load %struct.vx_core*, %struct.vx_core** %2, align 8
  %39 = getelementptr inbounds %struct.vx_core, %struct.vx_core* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @VX_TYPE_BOARD, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %45

43:                                               ; preds = %1
  %44 = call i32 @msleep(i32 1)
  br label %84

45:                                               ; preds = %1
  %46 = call i32 @msleep(i32 5)
  %47 = load %struct.vx_core*, %struct.vx_core** %2, align 8
  %48 = load i32, i32* @AKM_CODEC_POWER_CONTROL_CMD, align 4
  %49 = call i32 @vx2_write_codec_reg(%struct.vx_core* %47, i32 %48)
  %50 = load %struct.vx_core*, %struct.vx_core** %2, align 8
  %51 = load i32, i32* @AKM_CODEC_CLOCK_FORMAT_CMD, align 4
  %52 = call i32 @vx2_write_codec_reg(%struct.vx_core* %50, i32 %51)
  %53 = load %struct.vx_core*, %struct.vx_core** %2, align 8
  %54 = load i32, i32* @AKM_CODEC_MUTE_CMD, align 4
  %55 = call i32 @vx2_write_codec_reg(%struct.vx_core* %53, i32 %54)
  %56 = load %struct.vx_core*, %struct.vx_core** %2, align 8
  %57 = load i32, i32* @AKM_CODEC_RESET_OFF_CMD, align 4
  %58 = call i32 @vx2_write_codec_reg(%struct.vx_core* %56, i32 %57)
  %59 = load %struct.vx_core*, %struct.vx_core** %2, align 8
  %60 = getelementptr inbounds %struct.vx_core, %struct.vx_core* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @VX_TYPE_MIC, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %84

64:                                               ; preds = %45
  %65 = load i32, i32* @MICRO_SELECT_INPUT_NORM, align 4
  %66 = load i32, i32* @MICRO_SELECT_PREAMPLI_G_0, align 4
  %67 = or i32 %65, %66
  %68 = load i32, i32* @MICRO_SELECT_NOISE_T_52DB, align 4
  %69 = or i32 %67, %68
  %70 = load %struct.snd_vx222*, %struct.snd_vx222** %3, align 8
  %71 = getelementptr inbounds %struct.snd_vx222, %struct.snd_vx222* %70, i32 0, i32 2
  store i32 %69, i32* %71, align 8
  %72 = load i32, i32* @MICRO_SELECT_PHANTOM_ALIM, align 4
  %73 = xor i32 %72, -1
  %74 = load %struct.snd_vx222*, %struct.snd_vx222** %3, align 8
  %75 = getelementptr inbounds %struct.snd_vx222, %struct.snd_vx222* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 8
  %77 = and i32 %76, %73
  store i32 %77, i32* %75, align 8
  %78 = load %struct.vx_core*, %struct.vx_core** %2, align 8
  %79 = load i32, i32* @SELMIC, align 4
  %80 = load %struct.snd_vx222*, %struct.snd_vx222** %3, align 8
  %81 = getelementptr inbounds %struct.snd_vx222, %struct.snd_vx222* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 8
  %83 = call i32 @vx_outl(%struct.vx_core* %78, i32 %79, i32 %82)
  br label %84

84:                                               ; preds = %43, %64, %45
  ret void
}

declare dso_local %struct.vx_core* @to_vx222(%struct.vx_core*) #1

declare dso_local i32 @vx_outl(%struct.vx_core*, i32, i32) #1

declare dso_local i32 @vx_inl(%struct.vx_core*, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @vx2_write_codec_reg(%struct.vx_core*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
