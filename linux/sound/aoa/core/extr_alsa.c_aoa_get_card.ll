; ModuleID = '/home/carl/AnghaBench/linux/sound/aoa/core/extr_alsa.c_aoa_get_card.c'
source_filename = "/home/carl/AnghaBench/linux/sound/aoa/core/extr_alsa.c_aoa_get_card.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.snd_card* }
%struct.snd_card = type { i32 }

@aoa_card = common dso_local global %struct.TYPE_2__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.snd_card* @aoa_get_card() #0 {
  %1 = alloca %struct.snd_card*, align 8
  %2 = load %struct.TYPE_2__*, %struct.TYPE_2__** @aoa_card, align 8
  %3 = icmp ne %struct.TYPE_2__* %2, null
  br i1 %3, label %4, label %8

4:                                                ; preds = %0
  %5 = load %struct.TYPE_2__*, %struct.TYPE_2__** @aoa_card, align 8
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = load %struct.snd_card*, %struct.snd_card** %6, align 8
  store %struct.snd_card* %7, %struct.snd_card** %1, align 8
  br label %9

8:                                                ; preds = %0
  store %struct.snd_card* null, %struct.snd_card** %1, align 8
  br label %9

9:                                                ; preds = %8, %4
  %10 = load %struct.snd_card*, %struct.snd_card** %1, align 8
  ret %struct.snd_card* %10
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
