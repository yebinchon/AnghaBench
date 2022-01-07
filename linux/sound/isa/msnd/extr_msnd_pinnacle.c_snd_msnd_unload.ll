; ModuleID = '/home/carl/AnghaBench/linux/sound/isa/msnd/extr_msnd_pinnacle.c_snd_msnd_unload.c'
source_filename = "/home/carl/AnghaBench/linux/sound/isa/msnd/extr_msnd_pinnacle.c_snd_msnd_unload.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_card = type { %struct.snd_msnd* }
%struct.snd_msnd = type { i32, i32, i32, i32 }

@BUFFSIZE = common dso_local global i32 0, align 4
@DSP_NUMIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_card*)* @snd_msnd_unload to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snd_msnd_unload(%struct.snd_card* %0) #0 {
  %2 = alloca %struct.snd_card*, align 8
  %3 = alloca %struct.snd_msnd*, align 8
  store %struct.snd_card* %0, %struct.snd_card** %2, align 8
  %4 = load %struct.snd_card*, %struct.snd_card** %2, align 8
  %5 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %4, i32 0, i32 0
  %6 = load %struct.snd_msnd*, %struct.snd_msnd** %5, align 8
  store %struct.snd_msnd* %6, %struct.snd_msnd** %3, align 8
  %7 = load %struct.snd_msnd*, %struct.snd_msnd** %3, align 8
  %8 = getelementptr inbounds %struct.snd_msnd, %struct.snd_msnd* %7, i32 0, i32 3
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @iounmap(i32 %9)
  %11 = load %struct.snd_msnd*, %struct.snd_msnd** %3, align 8
  %12 = getelementptr inbounds %struct.snd_msnd, %struct.snd_msnd* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @BUFFSIZE, align 4
  %15 = call i32 @release_mem_region(i32 %13, i32 %14)
  %16 = load %struct.snd_msnd*, %struct.snd_msnd** %3, align 8
  %17 = getelementptr inbounds %struct.snd_msnd, %struct.snd_msnd* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @DSP_NUMIO, align 4
  %20 = call i32 @release_region(i32 %18, i32 %19)
  %21 = load %struct.snd_msnd*, %struct.snd_msnd** %3, align 8
  %22 = getelementptr inbounds %struct.snd_msnd, %struct.snd_msnd* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.snd_msnd*, %struct.snd_msnd** %3, align 8
  %25 = call i32 @free_irq(i32 %23, %struct.snd_msnd* %24)
  %26 = load %struct.snd_card*, %struct.snd_card** %2, align 8
  %27 = call i32 @snd_card_free(%struct.snd_card* %26)
  ret void
}

declare dso_local i32 @iounmap(i32) #1

declare dso_local i32 @release_mem_region(i32, i32) #1

declare dso_local i32 @release_region(i32, i32) #1

declare dso_local i32 @free_irq(i32, %struct.snd_msnd*) #1

declare dso_local i32 @snd_card_free(%struct.snd_card*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
