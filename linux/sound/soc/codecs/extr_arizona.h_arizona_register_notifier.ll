; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_arizona.h_arizona_register_notifier.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_arizona.h_arizona_register_notifier.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }
%struct.notifier_block = type { i32 (%struct.notifier_block*, i64, i8*)* }
%struct.arizona_priv = type { %struct.arizona* }
%struct.arizona = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_component*, %struct.notifier_block*, i32 (%struct.notifier_block*, i64, i8*)*)* @arizona_register_notifier to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @arizona_register_notifier(%struct.snd_soc_component* %0, %struct.notifier_block* %1, i32 (%struct.notifier_block*, i64, i8*)* %2) #0 {
  %4 = alloca %struct.snd_soc_component*, align 8
  %5 = alloca %struct.notifier_block*, align 8
  %6 = alloca i32 (%struct.notifier_block*, i64, i8*)*, align 8
  %7 = alloca %struct.arizona_priv*, align 8
  %8 = alloca %struct.arizona*, align 8
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %4, align 8
  store %struct.notifier_block* %1, %struct.notifier_block** %5, align 8
  store i32 (%struct.notifier_block*, i64, i8*)* %2, i32 (%struct.notifier_block*, i64, i8*)** %6, align 8
  %9 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %10 = call %struct.arizona_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %9)
  store %struct.arizona_priv* %10, %struct.arizona_priv** %7, align 8
  %11 = load %struct.arizona_priv*, %struct.arizona_priv** %7, align 8
  %12 = getelementptr inbounds %struct.arizona_priv, %struct.arizona_priv* %11, i32 0, i32 0
  %13 = load %struct.arizona*, %struct.arizona** %12, align 8
  store %struct.arizona* %13, %struct.arizona** %8, align 8
  %14 = load i32 (%struct.notifier_block*, i64, i8*)*, i32 (%struct.notifier_block*, i64, i8*)** %6, align 8
  %15 = load %struct.notifier_block*, %struct.notifier_block** %5, align 8
  %16 = getelementptr inbounds %struct.notifier_block, %struct.notifier_block* %15, i32 0, i32 0
  store i32 (%struct.notifier_block*, i64, i8*)* %14, i32 (%struct.notifier_block*, i64, i8*)** %16, align 8
  %17 = load %struct.arizona*, %struct.arizona** %8, align 8
  %18 = getelementptr inbounds %struct.arizona, %struct.arizona* %17, i32 0, i32 0
  %19 = load %struct.notifier_block*, %struct.notifier_block** %5, align 8
  %20 = call i32 @blocking_notifier_chain_register(i32* %18, %struct.notifier_block* %19)
  ret i32 %20
}

declare dso_local %struct.arizona_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @blocking_notifier_chain_register(i32*, %struct.notifier_block*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
