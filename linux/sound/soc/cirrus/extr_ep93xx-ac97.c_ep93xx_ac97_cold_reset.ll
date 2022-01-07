; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/cirrus/extr_ep93xx-ac97.c_ep93xx_ac97_cold_reset.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/cirrus/extr_ep93xx-ac97.c_ep93xx_ac97_cold_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ep93xx_ac97_info = type { i32, i32, i32 }
%struct.snd_ac97 = type { i32 }

@ep93xx_ac97_info = common dso_local global %struct.ep93xx_ac97_info* null, align 8
@AC97GCR = common dso_local global i32 0, align 4
@AC97EOI = common dso_local global i32 0, align 4
@AC97EOI_CODECREADY = common dso_local global i32 0, align 4
@AC97EOI_WINT = common dso_local global i32 0, align 4
@AC97GCR_AC97IFE = common dso_local global i32 0, align 4
@AC97RESET = common dso_local global i32 0, align 4
@AC97RESET_TIMEDRESET = common dso_local global i32 0, align 4
@AC97IM = common dso_local global i32 0, align 4
@AC97_CODECREADY = common dso_local global i32 0, align 4
@AC97_TIMEOUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"codec cold reset timeout\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_ac97*)* @ep93xx_ac97_cold_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ep93xx_ac97_cold_reset(%struct.snd_ac97* %0) #0 {
  %2 = alloca %struct.snd_ac97*, align 8
  %3 = alloca %struct.ep93xx_ac97_info*, align 8
  store %struct.snd_ac97* %0, %struct.snd_ac97** %2, align 8
  %4 = load %struct.ep93xx_ac97_info*, %struct.ep93xx_ac97_info** @ep93xx_ac97_info, align 8
  store %struct.ep93xx_ac97_info* %4, %struct.ep93xx_ac97_info** %3, align 8
  %5 = load %struct.ep93xx_ac97_info*, %struct.ep93xx_ac97_info** %3, align 8
  %6 = getelementptr inbounds %struct.ep93xx_ac97_info, %struct.ep93xx_ac97_info* %5, i32 0, i32 0
  %7 = call i32 @mutex_lock(i32* %6)
  %8 = load %struct.ep93xx_ac97_info*, %struct.ep93xx_ac97_info** %3, align 8
  %9 = load i32, i32* @AC97GCR, align 4
  %10 = call i32 @ep93xx_ac97_write_reg(%struct.ep93xx_ac97_info* %8, i32 %9, i32 0)
  %11 = load %struct.ep93xx_ac97_info*, %struct.ep93xx_ac97_info** %3, align 8
  %12 = load i32, i32* @AC97EOI, align 4
  %13 = load i32, i32* @AC97EOI_CODECREADY, align 4
  %14 = load i32, i32* @AC97EOI_WINT, align 4
  %15 = or i32 %13, %14
  %16 = call i32 @ep93xx_ac97_write_reg(%struct.ep93xx_ac97_info* %11, i32 %12, i32 %15)
  %17 = load %struct.ep93xx_ac97_info*, %struct.ep93xx_ac97_info** %3, align 8
  %18 = load i32, i32* @AC97GCR, align 4
  %19 = load i32, i32* @AC97GCR_AC97IFE, align 4
  %20 = call i32 @ep93xx_ac97_write_reg(%struct.ep93xx_ac97_info* %17, i32 %18, i32 %19)
  %21 = load %struct.ep93xx_ac97_info*, %struct.ep93xx_ac97_info** %3, align 8
  %22 = load i32, i32* @AC97RESET, align 4
  %23 = load i32, i32* @AC97RESET_TIMEDRESET, align 4
  %24 = call i32 @ep93xx_ac97_write_reg(%struct.ep93xx_ac97_info* %21, i32 %22, i32 %23)
  %25 = load %struct.ep93xx_ac97_info*, %struct.ep93xx_ac97_info** %3, align 8
  %26 = load i32, i32* @AC97IM, align 4
  %27 = load i32, i32* @AC97_CODECREADY, align 4
  %28 = call i32 @ep93xx_ac97_write_reg(%struct.ep93xx_ac97_info* %25, i32 %26, i32 %27)
  %29 = load %struct.ep93xx_ac97_info*, %struct.ep93xx_ac97_info** %3, align 8
  %30 = getelementptr inbounds %struct.ep93xx_ac97_info, %struct.ep93xx_ac97_info* %29, i32 0, i32 2
  %31 = load i32, i32* @AC97_TIMEOUT, align 4
  %32 = call i32 @wait_for_completion_timeout(i32* %30, i32 %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %39, label %34

34:                                               ; preds = %1
  %35 = load %struct.ep93xx_ac97_info*, %struct.ep93xx_ac97_info** %3, align 8
  %36 = getelementptr inbounds %struct.ep93xx_ac97_info, %struct.ep93xx_ac97_info* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @dev_warn(i32 %37, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  br label %39

39:                                               ; preds = %34, %1
  %40 = call i32 @usleep_range(i32 15000, i32 20000)
  %41 = load %struct.ep93xx_ac97_info*, %struct.ep93xx_ac97_info** %3, align 8
  %42 = getelementptr inbounds %struct.ep93xx_ac97_info, %struct.ep93xx_ac97_info* %41, i32 0, i32 0
  %43 = call i32 @mutex_unlock(i32* %42)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @ep93xx_ac97_write_reg(%struct.ep93xx_ac97_info*, i32, i32) #1

declare dso_local i32 @wait_for_completion_timeout(i32*, i32) #1

declare dso_local i32 @dev_warn(i32, i8*) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
