; ModuleID = '/home/carl/AnghaBench/linux/sound/sparc/extr_cs4231.c_snd_cs4231_timer_resolution.c'
source_filename = "/home/carl/AnghaBench/linux/sound/sparc/extr_cs4231.c_snd_cs4231_timer_resolution.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_timer = type { i32 }
%struct.snd_cs4231 = type { i32* }

@CS4231_PLAYBK_FORMAT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.snd_timer*)* @snd_cs4231_timer_resolution to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @snd_cs4231_timer_resolution(%struct.snd_timer* %0) #0 {
  %2 = alloca %struct.snd_timer*, align 8
  %3 = alloca %struct.snd_cs4231*, align 8
  store %struct.snd_timer* %0, %struct.snd_timer** %2, align 8
  %4 = load %struct.snd_timer*, %struct.snd_timer** %2, align 8
  %5 = call %struct.snd_cs4231* @snd_timer_chip(%struct.snd_timer* %4)
  store %struct.snd_cs4231* %5, %struct.snd_cs4231** %3, align 8
  %6 = load %struct.snd_cs4231*, %struct.snd_cs4231** %3, align 8
  %7 = getelementptr inbounds %struct.snd_cs4231, %struct.snd_cs4231* %6, i32 0, i32 0
  %8 = load i32*, i32** %7, align 8
  %9 = load i64, i64* @CS4231_PLAYBK_FORMAT, align 8
  %10 = getelementptr inbounds i32, i32* %8, i64 %9
  %11 = load i32, i32* %10, align 4
  %12 = and i32 %11, 1
  %13 = icmp ne i32 %12, 0
  %14 = zext i1 %13 to i64
  %15 = select i1 %13, i32 9969, i32 9920
  %16 = sext i32 %15 to i64
  ret i64 %16
}

declare dso_local %struct.snd_cs4231* @snd_timer_chip(%struct.snd_timer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
