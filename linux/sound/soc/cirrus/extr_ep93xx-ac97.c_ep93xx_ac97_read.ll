; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/cirrus/extr_ep93xx-ac97.c_ep93xx_ac97_read.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/cirrus/extr_ep93xx-ac97.c_ep93xx_ac97_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ep93xx_ac97_info = type { i32, i32, i32 }
%struct.snd_ac97 = type { i32 }

@ep93xx_ac97_info = common dso_local global %struct.ep93xx_ac97_info* null, align 8
@AC97S1DATA = common dso_local global i32 0, align 4
@AC97IM = common dso_local global i32 0, align 4
@AC97_SLOT2RXVALID = common dso_local global i16 0, align 2
@AC97_TIMEOUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"timeout reading register %x\0A\00", align 1
@ETIMEDOUT = common dso_local global i16 0, align 2
@AC97S2DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i16 (%struct.snd_ac97*, i16)* @ep93xx_ac97_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i16 @ep93xx_ac97_read(%struct.snd_ac97* %0, i16 zeroext %1) #0 {
  %3 = alloca i16, align 2
  %4 = alloca %struct.snd_ac97*, align 8
  %5 = alloca i16, align 2
  %6 = alloca %struct.ep93xx_ac97_info*, align 8
  %7 = alloca i16, align 2
  store %struct.snd_ac97* %0, %struct.snd_ac97** %4, align 8
  store i16 %1, i16* %5, align 2
  %8 = load %struct.ep93xx_ac97_info*, %struct.ep93xx_ac97_info** @ep93xx_ac97_info, align 8
  store %struct.ep93xx_ac97_info* %8, %struct.ep93xx_ac97_info** %6, align 8
  %9 = load %struct.ep93xx_ac97_info*, %struct.ep93xx_ac97_info** %6, align 8
  %10 = getelementptr inbounds %struct.ep93xx_ac97_info, %struct.ep93xx_ac97_info* %9, i32 0, i32 0
  %11 = call i32 @mutex_lock(i32* %10)
  %12 = load %struct.ep93xx_ac97_info*, %struct.ep93xx_ac97_info** %6, align 8
  %13 = load i32, i32* @AC97S1DATA, align 4
  %14 = load i16, i16* %5, align 2
  %15 = call i32 @ep93xx_ac97_write_reg(%struct.ep93xx_ac97_info* %12, i32 %13, i16 zeroext %14)
  %16 = load %struct.ep93xx_ac97_info*, %struct.ep93xx_ac97_info** %6, align 8
  %17 = load i32, i32* @AC97IM, align 4
  %18 = load i16, i16* @AC97_SLOT2RXVALID, align 2
  %19 = call i32 @ep93xx_ac97_write_reg(%struct.ep93xx_ac97_info* %16, i32 %17, i16 zeroext %18)
  %20 = load %struct.ep93xx_ac97_info*, %struct.ep93xx_ac97_info** %6, align 8
  %21 = getelementptr inbounds %struct.ep93xx_ac97_info, %struct.ep93xx_ac97_info* %20, i32 0, i32 2
  %22 = load i32, i32* @AC97_TIMEOUT, align 4
  %23 = call i32 @wait_for_completion_timeout(i32* %21, i32 %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %38, label %25

25:                                               ; preds = %2
  %26 = load %struct.ep93xx_ac97_info*, %struct.ep93xx_ac97_info** %6, align 8
  %27 = getelementptr inbounds %struct.ep93xx_ac97_info, %struct.ep93xx_ac97_info* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load i16, i16* %5, align 2
  %30 = call i32 @dev_warn(i32 %28, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i16 zeroext %29)
  %31 = load %struct.ep93xx_ac97_info*, %struct.ep93xx_ac97_info** %6, align 8
  %32 = getelementptr inbounds %struct.ep93xx_ac97_info, %struct.ep93xx_ac97_info* %31, i32 0, i32 0
  %33 = call i32 @mutex_unlock(i32* %32)
  %34 = load i16, i16* @ETIMEDOUT, align 2
  %35 = zext i16 %34 to i32
  %36 = sub nsw i32 0, %35
  %37 = trunc i32 %36 to i16
  store i16 %37, i16* %3, align 2
  br label %47

38:                                               ; preds = %2
  %39 = load %struct.ep93xx_ac97_info*, %struct.ep93xx_ac97_info** %6, align 8
  %40 = load i32, i32* @AC97S2DATA, align 4
  %41 = call i64 @ep93xx_ac97_read_reg(%struct.ep93xx_ac97_info* %39, i32 %40)
  %42 = trunc i64 %41 to i16
  store i16 %42, i16* %7, align 2
  %43 = load %struct.ep93xx_ac97_info*, %struct.ep93xx_ac97_info** %6, align 8
  %44 = getelementptr inbounds %struct.ep93xx_ac97_info, %struct.ep93xx_ac97_info* %43, i32 0, i32 0
  %45 = call i32 @mutex_unlock(i32* %44)
  %46 = load i16, i16* %7, align 2
  store i16 %46, i16* %3, align 2
  br label %47

47:                                               ; preds = %38, %25
  %48 = load i16, i16* %3, align 2
  ret i16 %48
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @ep93xx_ac97_write_reg(%struct.ep93xx_ac97_info*, i32, i16 zeroext) #1

declare dso_local i32 @wait_for_completion_timeout(i32*, i32) #1

declare dso_local i32 @dev_warn(i32, i8*, i16 zeroext) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i64 @ep93xx_ac97_read_reg(%struct.ep93xx_ac97_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
