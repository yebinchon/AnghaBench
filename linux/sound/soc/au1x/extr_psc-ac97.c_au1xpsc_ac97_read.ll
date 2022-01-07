; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/au1x/extr_psc-ac97.c_au1xpsc_ac97_read.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/au1x/extr_psc-ac97.c_au1xpsc_ac97_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_ac97 = type { i32 }
%struct.au1xpsc_audio_data = type { i32 }

@PSC_AC97EVNT_CD = common dso_local global i32 0, align 4
@AC97_RW_RETRIES = common dso_local global i16 0, align 2
@PSC_AC97CDC_RD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i16 (%struct.snd_ac97*, i16)* @au1xpsc_ac97_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i16 @au1xpsc_ac97_read(%struct.snd_ac97* %0, i16 zeroext %1) #0 {
  %3 = alloca %struct.snd_ac97*, align 8
  %4 = alloca i16, align 2
  %5 = alloca %struct.au1xpsc_audio_data*, align 8
  %6 = alloca i16, align 2
  %7 = alloca i16, align 2
  %8 = alloca i64, align 8
  store %struct.snd_ac97* %0, %struct.snd_ac97** %3, align 8
  store i16 %1, i16* %4, align 2
  %9 = load %struct.snd_ac97*, %struct.snd_ac97** %3, align 8
  %10 = call %struct.au1xpsc_audio_data* @ac97_to_pscdata(%struct.snd_ac97* %9)
  store %struct.au1xpsc_audio_data* %10, %struct.au1xpsc_audio_data** %5, align 8
  %11 = load i32, i32* @PSC_AC97EVNT_CD, align 4
  %12 = load %struct.au1xpsc_audio_data*, %struct.au1xpsc_audio_data** %5, align 8
  %13 = call i32 @AC97_EVNT(%struct.au1xpsc_audio_data* %12)
  %14 = call i32 @__raw_writel(i32 %11, i32 %13)
  %15 = call i32 (...) @wmb()
  %16 = load i16, i16* @AC97_RW_RETRIES, align 2
  store i16 %16, i16* %6, align 2
  br label %17

17:                                               ; preds = %73, %2
  %18 = load %struct.au1xpsc_audio_data*, %struct.au1xpsc_audio_data** %5, align 8
  %19 = getelementptr inbounds %struct.au1xpsc_audio_data, %struct.au1xpsc_audio_data* %18, i32 0, i32 0
  %20 = call i32 @mutex_lock(i32* %19)
  %21 = load i32, i32* @PSC_AC97CDC_RD, align 4
  %22 = load i16, i16* %4, align 2
  %23 = call i32 @PSC_AC97CDC_INDX(i16 zeroext %22)
  %24 = or i32 %21, %23
  %25 = load %struct.au1xpsc_audio_data*, %struct.au1xpsc_audio_data** %5, align 8
  %26 = call i32 @AC97_CDC(%struct.au1xpsc_audio_data* %25)
  %27 = call i32 @__raw_writel(i32 %24, i32 %26)
  %28 = call i32 (...) @wmb()
  store i16 20, i16* %7, align 2
  br label %29

29:                                               ; preds = %39, %17
  %30 = call i32 @udelay(i32 21)
  %31 = load %struct.au1xpsc_audio_data*, %struct.au1xpsc_audio_data** %5, align 8
  %32 = call i32 @AC97_EVNT(%struct.au1xpsc_audio_data* %31)
  %33 = call i32 @__raw_readl(i32 %32)
  %34 = load i32, i32* @PSC_AC97EVNT_CD, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %29
  br label %43

38:                                               ; preds = %29
  br label %39

39:                                               ; preds = %38
  %40 = load i16, i16* %7, align 2
  %41 = add i16 %40, -1
  store i16 %41, i16* %7, align 2
  %42 = icmp ne i16 %41, 0
  br i1 %42, label %29, label %43

43:                                               ; preds = %39, %37
  %44 = load %struct.au1xpsc_audio_data*, %struct.au1xpsc_audio_data** %5, align 8
  %45 = call i32 @AC97_CDC(%struct.au1xpsc_audio_data* %44)
  %46 = call i32 @__raw_readl(i32 %45)
  %47 = sext i32 %46 to i64
  store i64 %47, i64* %8, align 8
  %48 = load i32, i32* @PSC_AC97EVNT_CD, align 4
  %49 = load %struct.au1xpsc_audio_data*, %struct.au1xpsc_audio_data** %5, align 8
  %50 = call i32 @AC97_EVNT(%struct.au1xpsc_audio_data* %49)
  %51 = call i32 @__raw_writel(i32 %48, i32 %50)
  %52 = call i32 (...) @wmb()
  %53 = load %struct.au1xpsc_audio_data*, %struct.au1xpsc_audio_data** %5, align 8
  %54 = getelementptr inbounds %struct.au1xpsc_audio_data, %struct.au1xpsc_audio_data* %53, i32 0, i32 0
  %55 = call i32 @mutex_unlock(i32* %54)
  %56 = load i16, i16* %4, align 2
  %57 = zext i16 %56 to i64
  %58 = load i64, i64* %8, align 8
  %59 = lshr i64 %58, 16
  %60 = and i64 %59, 127
  %61 = icmp ne i64 %57, %60
  br i1 %61, label %62, label %63

62:                                               ; preds = %43
  store i16 1, i16* %7, align 2
  br label %63

63:                                               ; preds = %62, %43
  br label %64

64:                                               ; preds = %63
  %65 = load i16, i16* %6, align 2
  %66 = add i16 %65, -1
  store i16 %66, i16* %6, align 2
  %67 = zext i16 %66 to i32
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %64
  %70 = load i16, i16* %7, align 2
  %71 = icmp ne i16 %70, 0
  %72 = xor i1 %71, true
  br label %73

73:                                               ; preds = %69, %64
  %74 = phi i1 [ false, %64 ], [ %72, %69 ]
  br i1 %74, label %17, label %75

75:                                               ; preds = %73
  %76 = load i16, i16* %6, align 2
  %77 = zext i16 %76 to i32
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %75
  %80 = load i64, i64* %8, align 8
  %81 = and i64 %80, 65535
  br label %83

82:                                               ; preds = %75
  br label %83

83:                                               ; preds = %82, %79
  %84 = phi i64 [ %81, %79 ], [ 65535, %82 ]
  %85 = trunc i64 %84 to i16
  ret i16 %85
}

declare dso_local %struct.au1xpsc_audio_data* @ac97_to_pscdata(%struct.snd_ac97*) #1

declare dso_local i32 @__raw_writel(i32, i32) #1

declare dso_local i32 @AC97_EVNT(%struct.au1xpsc_audio_data*) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @PSC_AC97CDC_INDX(i16 zeroext) #1

declare dso_local i32 @AC97_CDC(%struct.au1xpsc_audio_data*) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @__raw_readl(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
