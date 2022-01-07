; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_max98090.c_max98090_remove.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_max98090.c_max98090_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }
%struct.max98090_priv = type { i32*, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_soc_component*)* @max98090_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @max98090_remove(%struct.snd_soc_component* %0) #0 {
  %2 = alloca %struct.snd_soc_component*, align 8
  %3 = alloca %struct.max98090_priv*, align 8
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %2, align 8
  %4 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %5 = call %struct.max98090_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %4)
  store %struct.max98090_priv* %5, %struct.max98090_priv** %3, align 8
  %6 = load %struct.max98090_priv*, %struct.max98090_priv** %3, align 8
  %7 = getelementptr inbounds %struct.max98090_priv, %struct.max98090_priv* %6, i32 0, i32 4
  %8 = call i32 @cancel_delayed_work_sync(i32* %7)
  %9 = load %struct.max98090_priv*, %struct.max98090_priv** %3, align 8
  %10 = getelementptr inbounds %struct.max98090_priv, %struct.max98090_priv* %9, i32 0, i32 3
  %11 = call i32 @cancel_delayed_work_sync(i32* %10)
  %12 = load %struct.max98090_priv*, %struct.max98090_priv** %3, align 8
  %13 = getelementptr inbounds %struct.max98090_priv, %struct.max98090_priv* %12, i32 0, i32 2
  %14 = call i32 @cancel_work_sync(i32* %13)
  %15 = load %struct.max98090_priv*, %struct.max98090_priv** %3, align 8
  %16 = getelementptr inbounds %struct.max98090_priv, %struct.max98090_priv* %15, i32 0, i32 1
  %17 = call i32 @cancel_work_sync(i32* %16)
  %18 = load %struct.max98090_priv*, %struct.max98090_priv** %3, align 8
  %19 = getelementptr inbounds %struct.max98090_priv, %struct.max98090_priv* %18, i32 0, i32 0
  store i32* null, i32** %19, align 8
  ret void
}

declare dso_local %struct.max98090_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @cancel_delayed_work_sync(i32*) #1

declare dso_local i32 @cancel_work_sync(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
