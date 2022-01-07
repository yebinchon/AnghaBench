; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/extr_soc-ac97.c_snd_soc_set_ac97_ops.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/extr_soc-ac97.c_snd_soc_set_ac97_ops.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_ac97_bus_ops = type { i32 }
%struct.TYPE_2__ = type { %struct.snd_ac97_bus_ops* }

@soc_ac97_ops = common dso_local global %struct.snd_ac97_bus_ops* null, align 8
@EBUSY = common dso_local global i32 0, align 4
@soc_ac97_bus = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_soc_set_ac97_ops(%struct.snd_ac97_bus_ops* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_ac97_bus_ops*, align 8
  store %struct.snd_ac97_bus_ops* %0, %struct.snd_ac97_bus_ops** %3, align 8
  %4 = load %struct.snd_ac97_bus_ops*, %struct.snd_ac97_bus_ops** %3, align 8
  %5 = load %struct.snd_ac97_bus_ops*, %struct.snd_ac97_bus_ops** @soc_ac97_ops, align 8
  %6 = icmp eq %struct.snd_ac97_bus_ops* %4, %5
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %20

8:                                                ; preds = %1
  %9 = load %struct.snd_ac97_bus_ops*, %struct.snd_ac97_bus_ops** @soc_ac97_ops, align 8
  %10 = icmp ne %struct.snd_ac97_bus_ops* %9, null
  br i1 %10, label %11, label %17

11:                                               ; preds = %8
  %12 = load %struct.snd_ac97_bus_ops*, %struct.snd_ac97_bus_ops** %3, align 8
  %13 = icmp ne %struct.snd_ac97_bus_ops* %12, null
  br i1 %13, label %14, label %17

14:                                               ; preds = %11
  %15 = load i32, i32* @EBUSY, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %20

17:                                               ; preds = %11, %8
  %18 = load %struct.snd_ac97_bus_ops*, %struct.snd_ac97_bus_ops** %3, align 8
  store %struct.snd_ac97_bus_ops* %18, %struct.snd_ac97_bus_ops** @soc_ac97_ops, align 8
  %19 = load %struct.snd_ac97_bus_ops*, %struct.snd_ac97_bus_ops** %3, align 8
  store %struct.snd_ac97_bus_ops* %19, %struct.snd_ac97_bus_ops** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @soc_ac97_bus, i32 0, i32 0), align 8
  store i32 0, i32* %2, align 4
  br label %20

20:                                               ; preds = %17, %14, %7
  %21 = load i32, i32* %2, align 4
  ret i32 %21
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
