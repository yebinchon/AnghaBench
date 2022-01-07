; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_arizona.h_arizona_unregister_notifier.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_arizona.h_arizona_unregister_notifier.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }
%struct.notifier_block = type { i32 }
%struct.arizona_priv = type { %struct.arizona* }
%struct.arizona = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_component*, %struct.notifier_block*)* @arizona_unregister_notifier to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @arizona_unregister_notifier(%struct.snd_soc_component* %0, %struct.notifier_block* %1) #0 {
  %3 = alloca %struct.snd_soc_component*, align 8
  %4 = alloca %struct.notifier_block*, align 8
  %5 = alloca %struct.arizona_priv*, align 8
  %6 = alloca %struct.arizona*, align 8
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %3, align 8
  store %struct.notifier_block* %1, %struct.notifier_block** %4, align 8
  %7 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %8 = call %struct.arizona_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %7)
  store %struct.arizona_priv* %8, %struct.arizona_priv** %5, align 8
  %9 = load %struct.arizona_priv*, %struct.arizona_priv** %5, align 8
  %10 = getelementptr inbounds %struct.arizona_priv, %struct.arizona_priv* %9, i32 0, i32 0
  %11 = load %struct.arizona*, %struct.arizona** %10, align 8
  store %struct.arizona* %11, %struct.arizona** %6, align 8
  %12 = load %struct.arizona*, %struct.arizona** %6, align 8
  %13 = getelementptr inbounds %struct.arizona, %struct.arizona* %12, i32 0, i32 0
  %14 = load %struct.notifier_block*, %struct.notifier_block** %4, align 8
  %15 = call i32 @blocking_notifier_chain_unregister(i32* %13, %struct.notifier_block* %14)
  ret i32 %15
}

declare dso_local %struct.arizona_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @blocking_notifier_chain_unregister(i32*, %struct.notifier_block*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
