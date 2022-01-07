; ModuleID = '/home/carl/AnghaBench/linux/sound/isa/sb/extr_sb16_csp.c_snd_sb_csp_stop.c'
source_filename = "/home/carl/AnghaBench/linux/sound/isa/sb/extr_sb16_csp.c_snd_sb_csp_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_sb_csp = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, i32 }

@SNDRV_SB_CSP_ST_RUNNING = common dso_local global i32 0, align 4
@SB_DSP4_PCM_DEV = common dso_local global i64 0, align 8
@SNDRV_SB_CSP_ST_QSOUND = common dso_local global i32 0, align 4
@SNDRV_SB_CSP_ST_PAUSED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_sb_csp*)* @snd_sb_csp_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_sb_csp_stop(%struct.snd_sb_csp* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_sb_csp*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  %7 = alloca i64, align 8
  store %struct.snd_sb_csp* %0, %struct.snd_sb_csp** %3, align 8
  %8 = load %struct.snd_sb_csp*, %struct.snd_sb_csp** %3, align 8
  %9 = getelementptr inbounds %struct.snd_sb_csp, %struct.snd_sb_csp* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* @SNDRV_SB_CSP_ST_RUNNING, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %124

15:                                               ; preds = %1
  %16 = load %struct.snd_sb_csp*, %struct.snd_sb_csp** %3, align 8
  %17 = getelementptr inbounds %struct.snd_sb_csp, %struct.snd_sb_csp* %16, i32 0, i32 1
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load i64, i64* %7, align 8
  %21 = call i32 @spin_lock_irqsave(i32* %19, i64 %20)
  %22 = load %struct.snd_sb_csp*, %struct.snd_sb_csp** %3, align 8
  %23 = getelementptr inbounds %struct.snd_sb_csp, %struct.snd_sb_csp* %22, i32 0, i32 1
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %23, align 8
  %25 = load i64, i64* @SB_DSP4_PCM_DEV, align 8
  %26 = call zeroext i8 @snd_sbmixer_read(%struct.TYPE_5__* %24, i64 %25)
  store i8 %26, i8* %5, align 1
  %27 = load %struct.snd_sb_csp*, %struct.snd_sb_csp** %3, align 8
  %28 = getelementptr inbounds %struct.snd_sb_csp, %struct.snd_sb_csp* %27, i32 0, i32 1
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %28, align 8
  %30 = load i64, i64* @SB_DSP4_PCM_DEV, align 8
  %31 = add nsw i64 %30, 1
  %32 = call zeroext i8 @snd_sbmixer_read(%struct.TYPE_5__* %29, i64 %31)
  store i8 %32, i8* %6, align 1
  %33 = load %struct.snd_sb_csp*, %struct.snd_sb_csp** %3, align 8
  %34 = getelementptr inbounds %struct.snd_sb_csp, %struct.snd_sb_csp* %33, i32 0, i32 1
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %34, align 8
  %36 = load i64, i64* @SB_DSP4_PCM_DEV, align 8
  %37 = load i8, i8* %5, align 1
  %38 = zext i8 %37 to i32
  %39 = and i32 %38, 7
  %40 = trunc i32 %39 to i8
  %41 = call i32 @snd_sbmixer_write(%struct.TYPE_5__* %35, i64 %36, i8 zeroext %40)
  %42 = load %struct.snd_sb_csp*, %struct.snd_sb_csp** %3, align 8
  %43 = getelementptr inbounds %struct.snd_sb_csp, %struct.snd_sb_csp* %42, i32 0, i32 1
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %43, align 8
  %45 = load i64, i64* @SB_DSP4_PCM_DEV, align 8
  %46 = add nsw i64 %45, 1
  %47 = load i8, i8* %6, align 1
  %48 = zext i8 %47 to i32
  %49 = and i32 %48, 7
  %50 = trunc i32 %49 to i8
  %51 = call i32 @snd_sbmixer_write(%struct.TYPE_5__* %44, i64 %46, i8 zeroext %50)
  %52 = load %struct.snd_sb_csp*, %struct.snd_sb_csp** %3, align 8
  %53 = getelementptr inbounds %struct.snd_sb_csp, %struct.snd_sb_csp* %52, i32 0, i32 1
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 1
  %56 = call i32 @spin_lock(i32* %55)
  %57 = load %struct.snd_sb_csp*, %struct.snd_sb_csp** %3, align 8
  %58 = getelementptr inbounds %struct.snd_sb_csp, %struct.snd_sb_csp* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* @SNDRV_SB_CSP_ST_QSOUND, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %82

63:                                               ; preds = %15
  %64 = load %struct.snd_sb_csp*, %struct.snd_sb_csp** %3, align 8
  %65 = getelementptr inbounds %struct.snd_sb_csp, %struct.snd_sb_csp* %64, i32 0, i32 1
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** %65, align 8
  %67 = call i32 @set_codec_parameter(%struct.TYPE_5__* %66, i32 224, i32 1)
  %68 = load %struct.snd_sb_csp*, %struct.snd_sb_csp** %3, align 8
  %69 = getelementptr inbounds %struct.snd_sb_csp, %struct.snd_sb_csp* %68, i32 0, i32 1
  %70 = load %struct.TYPE_5__*, %struct.TYPE_5__** %69, align 8
  %71 = call i32 @set_codec_parameter(%struct.TYPE_5__* %70, i32 0, i32 0)
  %72 = load %struct.snd_sb_csp*, %struct.snd_sb_csp** %3, align 8
  %73 = getelementptr inbounds %struct.snd_sb_csp, %struct.snd_sb_csp* %72, i32 0, i32 1
  %74 = load %struct.TYPE_5__*, %struct.TYPE_5__** %73, align 8
  %75 = call i32 @set_codec_parameter(%struct.TYPE_5__* %74, i32 1, i32 0)
  %76 = load i32, i32* @SNDRV_SB_CSP_ST_QSOUND, align 4
  %77 = xor i32 %76, -1
  %78 = load %struct.snd_sb_csp*, %struct.snd_sb_csp** %3, align 8
  %79 = getelementptr inbounds %struct.snd_sb_csp, %struct.snd_sb_csp* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = and i32 %80, %77
  store i32 %81, i32* %79, align 8
  br label %82

82:                                               ; preds = %63, %15
  %83 = load %struct.snd_sb_csp*, %struct.snd_sb_csp** %3, align 8
  %84 = getelementptr inbounds %struct.snd_sb_csp, %struct.snd_sb_csp* %83, i32 0, i32 1
  %85 = load %struct.TYPE_5__*, %struct.TYPE_5__** %84, align 8
  %86 = call i32 @set_mode_register(%struct.TYPE_5__* %85, i32 192)
  store i32 %86, i32* %4, align 4
  %87 = load %struct.snd_sb_csp*, %struct.snd_sb_csp** %3, align 8
  %88 = getelementptr inbounds %struct.snd_sb_csp, %struct.snd_sb_csp* %87, i32 0, i32 1
  %89 = load %struct.TYPE_5__*, %struct.TYPE_5__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 1
  %91 = call i32 @spin_unlock(i32* %90)
  %92 = load %struct.snd_sb_csp*, %struct.snd_sb_csp** %3, align 8
  %93 = getelementptr inbounds %struct.snd_sb_csp, %struct.snd_sb_csp* %92, i32 0, i32 1
  %94 = load %struct.TYPE_5__*, %struct.TYPE_5__** %93, align 8
  %95 = load i64, i64* @SB_DSP4_PCM_DEV, align 8
  %96 = load i8, i8* %5, align 1
  %97 = call i32 @snd_sbmixer_write(%struct.TYPE_5__* %94, i64 %95, i8 zeroext %96)
  %98 = load %struct.snd_sb_csp*, %struct.snd_sb_csp** %3, align 8
  %99 = getelementptr inbounds %struct.snd_sb_csp, %struct.snd_sb_csp* %98, i32 0, i32 1
  %100 = load %struct.TYPE_5__*, %struct.TYPE_5__** %99, align 8
  %101 = load i64, i64* @SB_DSP4_PCM_DEV, align 8
  %102 = add nsw i64 %101, 1
  %103 = load i8, i8* %6, align 1
  %104 = call i32 @snd_sbmixer_write(%struct.TYPE_5__* %100, i64 %102, i8 zeroext %103)
  %105 = load %struct.snd_sb_csp*, %struct.snd_sb_csp** %3, align 8
  %106 = getelementptr inbounds %struct.snd_sb_csp, %struct.snd_sb_csp* %105, i32 0, i32 1
  %107 = load %struct.TYPE_5__*, %struct.TYPE_5__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %107, i32 0, i32 0
  %109 = load i64, i64* %7, align 8
  %110 = call i32 @spin_unlock_irqrestore(i32* %108, i64 %109)
  %111 = load i32, i32* %4, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %122, label %113

113:                                              ; preds = %82
  %114 = load i32, i32* @SNDRV_SB_CSP_ST_PAUSED, align 4
  %115 = load i32, i32* @SNDRV_SB_CSP_ST_RUNNING, align 4
  %116 = or i32 %114, %115
  %117 = xor i32 %116, -1
  %118 = load %struct.snd_sb_csp*, %struct.snd_sb_csp** %3, align 8
  %119 = getelementptr inbounds %struct.snd_sb_csp, %struct.snd_sb_csp* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = and i32 %120, %117
  store i32 %121, i32* %119, align 8
  br label %122

122:                                              ; preds = %113, %82
  %123 = load i32, i32* %4, align 4
  store i32 %123, i32* %2, align 4
  br label %124

124:                                              ; preds = %122, %14
  %125 = load i32, i32* %2, align 4
  ret i32 %125
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local zeroext i8 @snd_sbmixer_read(%struct.TYPE_5__*, i64) #1

declare dso_local i32 @snd_sbmixer_write(%struct.TYPE_5__*, i64, i8 zeroext) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @set_codec_parameter(%struct.TYPE_5__*, i32, i32) #1

declare dso_local i32 @set_mode_register(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
