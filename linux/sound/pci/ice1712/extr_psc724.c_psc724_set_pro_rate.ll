; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/ice1712/extr_psc724.c_psc724_set_pro_rate.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/ice1712/extr_psc724.c_psc724_set_pro_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_ice1712 = type { %struct.psc724_spec* }
%struct.psc724_spec = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_ice1712*, i32)* @psc724_set_pro_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @psc724_set_pro_rate(%struct.snd_ice1712* %0, i32 %1) #0 {
  %3 = alloca %struct.snd_ice1712*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.psc724_spec*, align 8
  store %struct.snd_ice1712* %0, %struct.snd_ice1712** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %7 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %6, i32 0, i32 0
  %8 = load %struct.psc724_spec*, %struct.psc724_spec** %7, align 8
  store %struct.psc724_spec* %8, %struct.psc724_spec** %5, align 8
  %9 = load %struct.psc724_spec*, %struct.psc724_spec** %5, align 8
  %10 = getelementptr inbounds %struct.psc724_spec, %struct.psc724_spec* %9, i32 0, i32 1
  %11 = call i32 @snd_wm8776_volume_restore(i32* %10)
  %12 = load %struct.psc724_spec*, %struct.psc724_spec** %5, align 8
  %13 = getelementptr inbounds %struct.psc724_spec, %struct.psc724_spec* %12, i32 0, i32 0
  %14 = call i32 @snd_wm8766_volume_restore(i32* %13)
  ret void
}

declare dso_local i32 @snd_wm8776_volume_restore(i32*) #1

declare dso_local i32 @snd_wm8766_volume_restore(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
