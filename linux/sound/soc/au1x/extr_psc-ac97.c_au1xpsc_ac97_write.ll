; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/au1x/extr_psc-ac97.c_au1xpsc_ac97_write.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/au1x/extr_psc-ac97.c_au1xpsc_ac97_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_ac97 = type { i32 }
%struct.au1xpsc_audio_data = type { i32 }

@PSC_AC97EVNT_CD = common dso_local global i32 0, align 4
@AC97_RW_RETRIES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_ac97*, i16, i16)* @au1xpsc_ac97_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @au1xpsc_ac97_write(%struct.snd_ac97* %0, i16 zeroext %1, i16 zeroext %2) #0 {
  %4 = alloca %struct.snd_ac97*, align 8
  %5 = alloca i16, align 2
  %6 = alloca i16, align 2
  %7 = alloca %struct.au1xpsc_audio_data*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.snd_ac97* %0, %struct.snd_ac97** %4, align 8
  store i16 %1, i16* %5, align 2
  store i16 %2, i16* %6, align 2
  %10 = load %struct.snd_ac97*, %struct.snd_ac97** %4, align 8
  %11 = call %struct.au1xpsc_audio_data* @ac97_to_pscdata(%struct.snd_ac97* %10)
  store %struct.au1xpsc_audio_data* %11, %struct.au1xpsc_audio_data** %7, align 8
  %12 = load i32, i32* @PSC_AC97EVNT_CD, align 4
  %13 = load %struct.au1xpsc_audio_data*, %struct.au1xpsc_audio_data** %7, align 8
  %14 = call i32 @AC97_EVNT(%struct.au1xpsc_audio_data* %13)
  %15 = call i32 @__raw_writel(i32 %12, i32 %14)
  %16 = call i32 (...) @wmb()
  %17 = load i32, i32* @AC97_RW_RETRIES, align 4
  store i32 %17, i32* %9, align 4
  br label %18

18:                                               ; preds = %64, %3
  %19 = load %struct.au1xpsc_audio_data*, %struct.au1xpsc_audio_data** %7, align 8
  %20 = getelementptr inbounds %struct.au1xpsc_audio_data, %struct.au1xpsc_audio_data* %19, i32 0, i32 0
  %21 = call i32 @mutex_lock(i32* %20)
  %22 = load i16, i16* %5, align 2
  %23 = call zeroext i16 @PSC_AC97CDC_INDX(i16 zeroext %22)
  %24 = zext i16 %23 to i32
  %25 = load i16, i16* %6, align 2
  %26 = zext i16 %25 to i32
  %27 = and i32 %26, 65535
  %28 = or i32 %24, %27
  %29 = load %struct.au1xpsc_audio_data*, %struct.au1xpsc_audio_data** %7, align 8
  %30 = call i32 @AC97_CDC(%struct.au1xpsc_audio_data* %29)
  %31 = call i32 @__raw_writel(i32 %28, i32 %30)
  %32 = call i32 (...) @wmb()
  store i32 20, i32* %8, align 4
  br label %33

33:                                               ; preds = %43, %18
  %34 = call i32 @udelay(i32 21)
  %35 = load %struct.au1xpsc_audio_data*, %struct.au1xpsc_audio_data** %7, align 8
  %36 = call i32 @AC97_EVNT(%struct.au1xpsc_audio_data* %35)
  %37 = call i32 @__raw_readl(i32 %36)
  %38 = load i32, i32* @PSC_AC97EVNT_CD, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %33
  br label %47

42:                                               ; preds = %33
  br label %43

43:                                               ; preds = %42
  %44 = load i32, i32* %8, align 4
  %45 = add i32 %44, -1
  store i32 %45, i32* %8, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %33, label %47

47:                                               ; preds = %43, %41
  %48 = load i32, i32* @PSC_AC97EVNT_CD, align 4
  %49 = load %struct.au1xpsc_audio_data*, %struct.au1xpsc_audio_data** %7, align 8
  %50 = call i32 @AC97_EVNT(%struct.au1xpsc_audio_data* %49)
  %51 = call i32 @__raw_writel(i32 %48, i32 %50)
  %52 = call i32 (...) @wmb()
  %53 = load %struct.au1xpsc_audio_data*, %struct.au1xpsc_audio_data** %7, align 8
  %54 = getelementptr inbounds %struct.au1xpsc_audio_data, %struct.au1xpsc_audio_data* %53, i32 0, i32 0
  %55 = call i32 @mutex_unlock(i32* %54)
  br label %56

56:                                               ; preds = %47
  %57 = load i32, i32* %9, align 4
  %58 = add i32 %57, -1
  store i32 %58, i32* %9, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %56
  %61 = load i32, i32* %8, align 4
  %62 = icmp ne i32 %61, 0
  %63 = xor i1 %62, true
  br label %64

64:                                               ; preds = %60, %56
  %65 = phi i1 [ false, %56 ], [ %63, %60 ]
  br i1 %65, label %18, label %66

66:                                               ; preds = %64
  ret void
}

declare dso_local %struct.au1xpsc_audio_data* @ac97_to_pscdata(%struct.snd_ac97*) #1

declare dso_local i32 @__raw_writel(i32, i32) #1

declare dso_local i32 @AC97_EVNT(%struct.au1xpsc_audio_data*) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local zeroext i16 @PSC_AC97CDC_INDX(i16 zeroext) #1

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
