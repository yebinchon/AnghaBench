; ModuleID = '/home/carl/AnghaBench/linux/sound/ppc/extr_tumbler.c_tumbler_reset_audio.c'
source_filename = "/home/carl/AnghaBench/linux/sound/ppc/extr_tumbler.c_tumbler_reset_audio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pmac = type { %struct.pmac_tumbler* }
%struct.pmac_tumbler = type { i32, i32, i32, i64 }

@.str = private unnamed_addr constant [25 x i8] c"(I) codec anded reset !\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"(I) codec normal reset !\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_pmac*)* @tumbler_reset_audio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tumbler_reset_audio(%struct.snd_pmac* %0) #0 {
  %2 = alloca %struct.snd_pmac*, align 8
  %3 = alloca %struct.pmac_tumbler*, align 8
  store %struct.snd_pmac* %0, %struct.snd_pmac** %2, align 8
  %4 = load %struct.snd_pmac*, %struct.snd_pmac** %2, align 8
  %5 = getelementptr inbounds %struct.snd_pmac, %struct.snd_pmac* %4, i32 0, i32 0
  %6 = load %struct.pmac_tumbler*, %struct.pmac_tumbler** %5, align 8
  store %struct.pmac_tumbler* %6, %struct.pmac_tumbler** %3, align 8
  %7 = load %struct.pmac_tumbler*, %struct.pmac_tumbler** %3, align 8
  %8 = getelementptr inbounds %struct.pmac_tumbler, %struct.pmac_tumbler* %7, i32 0, i32 3
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %34

11:                                               ; preds = %1
  %12 = call i32 @DBG(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %13 = load %struct.pmac_tumbler*, %struct.pmac_tumbler** %3, align 8
  %14 = getelementptr inbounds %struct.pmac_tumbler, %struct.pmac_tumbler* %13, i32 0, i32 2
  %15 = call i32 @write_audio_gpio(i32* %14, i32 0)
  %16 = load %struct.pmac_tumbler*, %struct.pmac_tumbler** %3, align 8
  %17 = getelementptr inbounds %struct.pmac_tumbler, %struct.pmac_tumbler* %16, i32 0, i32 1
  %18 = call i32 @write_audio_gpio(i32* %17, i32 0)
  %19 = call i32 @msleep(i32 200)
  %20 = load %struct.pmac_tumbler*, %struct.pmac_tumbler** %3, align 8
  %21 = getelementptr inbounds %struct.pmac_tumbler, %struct.pmac_tumbler* %20, i32 0, i32 2
  %22 = call i32 @write_audio_gpio(i32* %21, i32 1)
  %23 = load %struct.pmac_tumbler*, %struct.pmac_tumbler** %3, align 8
  %24 = getelementptr inbounds %struct.pmac_tumbler, %struct.pmac_tumbler* %23, i32 0, i32 1
  %25 = call i32 @write_audio_gpio(i32* %24, i32 1)
  %26 = call i32 @msleep(i32 100)
  %27 = load %struct.pmac_tumbler*, %struct.pmac_tumbler** %3, align 8
  %28 = getelementptr inbounds %struct.pmac_tumbler, %struct.pmac_tumbler* %27, i32 0, i32 2
  %29 = call i32 @write_audio_gpio(i32* %28, i32 0)
  %30 = load %struct.pmac_tumbler*, %struct.pmac_tumbler** %3, align 8
  %31 = getelementptr inbounds %struct.pmac_tumbler, %struct.pmac_tumbler* %30, i32 0, i32 1
  %32 = call i32 @write_audio_gpio(i32* %31, i32 0)
  %33 = call i32 @msleep(i32 100)
  br label %48

34:                                               ; preds = %1
  %35 = call i32 @DBG(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %36 = load %struct.pmac_tumbler*, %struct.pmac_tumbler** %3, align 8
  %37 = getelementptr inbounds %struct.pmac_tumbler, %struct.pmac_tumbler* %36, i32 0, i32 0
  %38 = call i32 @write_audio_gpio(i32* %37, i32 0)
  %39 = call i32 @msleep(i32 200)
  %40 = load %struct.pmac_tumbler*, %struct.pmac_tumbler** %3, align 8
  %41 = getelementptr inbounds %struct.pmac_tumbler, %struct.pmac_tumbler* %40, i32 0, i32 0
  %42 = call i32 @write_audio_gpio(i32* %41, i32 1)
  %43 = call i32 @msleep(i32 100)
  %44 = load %struct.pmac_tumbler*, %struct.pmac_tumbler** %3, align 8
  %45 = getelementptr inbounds %struct.pmac_tumbler, %struct.pmac_tumbler* %44, i32 0, i32 0
  %46 = call i32 @write_audio_gpio(i32* %45, i32 0)
  %47 = call i32 @msleep(i32 100)
  br label %48

48:                                               ; preds = %34, %11
  ret void
}

declare dso_local i32 @DBG(i8*) #1

declare dso_local i32 @write_audio_gpio(i32*, i32) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
