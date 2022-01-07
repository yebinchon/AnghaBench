; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_cx20442.c_cx20442_component_remove.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_cx20442.c_cx20442_component_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }
%struct.cx20442_priv = type { i32, %struct.tty_struct* }
%struct.tty_struct = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_soc_component*)* @cx20442_component_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cx20442_component_remove(%struct.snd_soc_component* %0) #0 {
  %2 = alloca %struct.snd_soc_component*, align 8
  %3 = alloca %struct.cx20442_priv*, align 8
  %4 = alloca %struct.tty_struct*, align 8
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %2, align 8
  %5 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %6 = call %struct.cx20442_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %5)
  store %struct.cx20442_priv* %6, %struct.cx20442_priv** %3, align 8
  %7 = load %struct.cx20442_priv*, %struct.cx20442_priv** %3, align 8
  %8 = getelementptr inbounds %struct.cx20442_priv, %struct.cx20442_priv* %7, i32 0, i32 1
  %9 = load %struct.tty_struct*, %struct.tty_struct** %8, align 8
  %10 = icmp ne %struct.tty_struct* %9, null
  br i1 %10, label %11, label %17

11:                                               ; preds = %1
  %12 = load %struct.cx20442_priv*, %struct.cx20442_priv** %3, align 8
  %13 = getelementptr inbounds %struct.cx20442_priv, %struct.cx20442_priv* %12, i32 0, i32 1
  %14 = load %struct.tty_struct*, %struct.tty_struct** %13, align 8
  store %struct.tty_struct* %14, %struct.tty_struct** %4, align 8
  %15 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %16 = call i32 @tty_hangup(%struct.tty_struct* %15)
  br label %17

17:                                               ; preds = %11, %1
  %18 = load %struct.cx20442_priv*, %struct.cx20442_priv** %3, align 8
  %19 = getelementptr inbounds %struct.cx20442_priv, %struct.cx20442_priv* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @IS_ERR(i32 %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %28, label %23

23:                                               ; preds = %17
  %24 = load %struct.cx20442_priv*, %struct.cx20442_priv** %3, align 8
  %25 = getelementptr inbounds %struct.cx20442_priv, %struct.cx20442_priv* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @regulator_put(i32 %26)
  br label %28

28:                                               ; preds = %23, %17
  %29 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %30 = call i32 @snd_soc_component_set_drvdata(%struct.snd_soc_component* %29, i32* null)
  %31 = load %struct.cx20442_priv*, %struct.cx20442_priv** %3, align 8
  %32 = call i32 @kfree(%struct.cx20442_priv* %31)
  ret void
}

declare dso_local %struct.cx20442_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @tty_hangup(%struct.tty_struct*) #1

declare dso_local i32 @IS_ERR(i32) #1

declare dso_local i32 @regulator_put(i32) #1

declare dso_local i32 @snd_soc_component_set_drvdata(%struct.snd_soc_component*, i32*) #1

declare dso_local i32 @kfree(%struct.cx20442_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
