; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/pxa/extr_pxa-ssp.c_pxa_ssp_set_running_bit.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/pxa/extr_pxa-ssp.c_pxa_ssp_set_running_bit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i64 }
%struct.ssp_device = type { i32 }

@SSCR0 = common dso_local global i32 0, align 4
@SSCR1 = common dso_local global i32 0, align 4
@SSPSP = common dso_local global i32 0, align 4
@SSSR = common dso_local global i32 0, align 4
@SSCR0_SSE = common dso_local global i32 0, align 4
@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i64 0, align 8
@SSCR1_TSRE = common dso_local global i32 0, align 4
@SSCR1_RSRE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_pcm_substream*, %struct.ssp_device*, i32)* @pxa_ssp_set_running_bit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pxa_ssp_set_running_bit(%struct.snd_pcm_substream* %0, %struct.ssp_device* %1, i32 %2) #0 {
  %4 = alloca %struct.snd_pcm_substream*, align 8
  %5 = alloca %struct.ssp_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %4, align 8
  store %struct.ssp_device* %1, %struct.ssp_device** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load %struct.ssp_device*, %struct.ssp_device** %5, align 8
  %12 = load i32, i32* @SSCR0, align 4
  %13 = call i32 @pxa_ssp_read_reg(%struct.ssp_device* %11, i32 %12)
  store i32 %13, i32* %7, align 4
  %14 = load %struct.ssp_device*, %struct.ssp_device** %5, align 8
  %15 = load i32, i32* @SSCR1, align 4
  %16 = call i32 @pxa_ssp_read_reg(%struct.ssp_device* %14, i32 %15)
  store i32 %16, i32* %8, align 4
  %17 = load %struct.ssp_device*, %struct.ssp_device** %5, align 8
  %18 = load i32, i32* @SSPSP, align 4
  %19 = call i32 @pxa_ssp_read_reg(%struct.ssp_device* %17, i32 %18)
  store i32 %19, i32* %9, align 4
  %20 = load %struct.ssp_device*, %struct.ssp_device** %5, align 8
  %21 = load i32, i32* @SSSR, align 4
  %22 = call i32 @pxa_ssp_read_reg(%struct.ssp_device* %20, i32 %21)
  store i32 %22, i32* %10, align 4
  %23 = load i32, i32* %6, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %38

25:                                               ; preds = %3
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* @SSCR0_SSE, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %38

30:                                               ; preds = %25
  %31 = load %struct.ssp_device*, %struct.ssp_device** %5, align 8
  %32 = load i32, i32* @SSCR0, align 4
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* @SSCR0_SSE, align 4
  %35 = xor i32 %34, -1
  %36 = and i32 %33, %35
  %37 = call i32 @pxa_ssp_write_reg(%struct.ssp_device* %31, i32 %32, i32 %36)
  br label %38

38:                                               ; preds = %30, %25, %3
  %39 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %40 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @SNDRV_PCM_STREAM_PLAYBACK, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %57

44:                                               ; preds = %38
  %45 = load i32, i32* %6, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %44
  %48 = load i32, i32* @SSCR1_TSRE, align 4
  %49 = load i32, i32* %8, align 4
  %50 = or i32 %49, %48
  store i32 %50, i32* %8, align 4
  br label %56

51:                                               ; preds = %44
  %52 = load i32, i32* @SSCR1_TSRE, align 4
  %53 = xor i32 %52, -1
  %54 = load i32, i32* %8, align 4
  %55 = and i32 %54, %53
  store i32 %55, i32* %8, align 4
  br label %56

56:                                               ; preds = %51, %47
  br label %70

57:                                               ; preds = %38
  %58 = load i32, i32* %6, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %57
  %61 = load i32, i32* @SSCR1_RSRE, align 4
  %62 = load i32, i32* %8, align 4
  %63 = or i32 %62, %61
  store i32 %63, i32* %8, align 4
  br label %69

64:                                               ; preds = %57
  %65 = load i32, i32* @SSCR1_RSRE, align 4
  %66 = xor i32 %65, -1
  %67 = load i32, i32* %8, align 4
  %68 = and i32 %67, %66
  store i32 %68, i32* %8, align 4
  br label %69

69:                                               ; preds = %64, %60
  br label %70

70:                                               ; preds = %69, %56
  %71 = load %struct.ssp_device*, %struct.ssp_device** %5, align 8
  %72 = load i32, i32* @SSCR1, align 4
  %73 = load i32, i32* %8, align 4
  %74 = call i32 @pxa_ssp_write_reg(%struct.ssp_device* %71, i32 %72, i32 %73)
  %75 = load i32, i32* %6, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %92

77:                                               ; preds = %70
  %78 = load %struct.ssp_device*, %struct.ssp_device** %5, align 8
  %79 = load i32, i32* @SSSR, align 4
  %80 = load i32, i32* %10, align 4
  %81 = call i32 @pxa_ssp_write_reg(%struct.ssp_device* %78, i32 %79, i32 %80)
  %82 = load %struct.ssp_device*, %struct.ssp_device** %5, align 8
  %83 = load i32, i32* @SSPSP, align 4
  %84 = load i32, i32* %9, align 4
  %85 = call i32 @pxa_ssp_write_reg(%struct.ssp_device* %82, i32 %83, i32 %84)
  %86 = load %struct.ssp_device*, %struct.ssp_device** %5, align 8
  %87 = load i32, i32* @SSCR0, align 4
  %88 = load i32, i32* %7, align 4
  %89 = load i32, i32* @SSCR0_SSE, align 4
  %90 = or i32 %88, %89
  %91 = call i32 @pxa_ssp_write_reg(%struct.ssp_device* %86, i32 %87, i32 %90)
  br label %92

92:                                               ; preds = %77, %70
  ret void
}

declare dso_local i32 @pxa_ssp_read_reg(%struct.ssp_device*, i32) #1

declare dso_local i32 @pxa_ssp_write_reg(%struct.ssp_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
