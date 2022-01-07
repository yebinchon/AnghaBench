; ModuleID = '/home/carl/AnghaBench/linux/sound/isa/opti9xx/extr_miro.c_snd_aci_get_aci.c'
source_filename = "/home/carl/AnghaBench/linux/sound/isa/opti9xx/extr_miro.c_snd_aci_get_aci.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_miro_aci = type { i64 }

@aci_device = common dso_local global %struct.snd_miro_aci zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.snd_miro_aci* @snd_aci_get_aci() #0 {
  %1 = alloca %struct.snd_miro_aci*, align 8
  %2 = load i64, i64* getelementptr inbounds (%struct.snd_miro_aci, %struct.snd_miro_aci* @aci_device, i32 0, i32 0), align 8
  %3 = icmp eq i64 %2, 0
  br i1 %3, label %4, label %5

4:                                                ; preds = %0
  store %struct.snd_miro_aci* null, %struct.snd_miro_aci** %1, align 8
  br label %6

5:                                                ; preds = %0
  store %struct.snd_miro_aci* @aci_device, %struct.snd_miro_aci** %1, align 8
  br label %6

6:                                                ; preds = %5, %4
  %7 = load %struct.snd_miro_aci*, %struct.snd_miro_aci** %1, align 8
  ret %struct.snd_miro_aci* %7
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
