; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/ca0106/extr_ca0106_mixer.c_snd_ca0106_shared_spdif_put.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/ca0106/extr_ca0106_mixer.c_snd_ca0106_shared_spdif_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i32 }
%struct.snd_ctl_elem_value = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }
%struct.snd_ca0106 = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)* @snd_ca0106_shared_spdif_put to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_ca0106_shared_spdif_put(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
  %3 = alloca %struct.snd_kcontrol*, align 8
  %4 = alloca %struct.snd_ctl_elem_value*, align 8
  %5 = alloca %struct.snd_ca0106*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %3, align 8
  store %struct.snd_ctl_elem_value* %1, %struct.snd_ctl_elem_value** %4, align 8
  %8 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %9 = call %struct.snd_ca0106* @snd_kcontrol_chip(%struct.snd_kcontrol* %8)
  store %struct.snd_ca0106* %9, %struct.snd_ca0106** %5, align 8
  store i32 0, i32* %7, align 4
  %10 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %11 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  %15 = getelementptr inbounds i32, i32* %14, i64 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  %18 = xor i1 %17, true
  %19 = xor i1 %18, true
  %20 = zext i1 %19 to i32
  store i32 %20, i32* %6, align 4
  %21 = load %struct.snd_ca0106*, %struct.snd_ca0106** %5, align 8
  %22 = getelementptr inbounds %struct.snd_ca0106, %struct.snd_ca0106* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* %6, align 4
  %25 = icmp ne i32 %23, %24
  %26 = zext i1 %25 to i32
  store i32 %26, i32* %7, align 4
  %27 = load i32, i32* %7, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %2
  %30 = load i32, i32* %6, align 4
  %31 = load %struct.snd_ca0106*, %struct.snd_ca0106** %5, align 8
  %32 = getelementptr inbounds %struct.snd_ca0106, %struct.snd_ca0106* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 4
  %33 = load %struct.snd_ca0106*, %struct.snd_ca0106** %5, align 8
  %34 = call i32 @ca0106_spdif_enable(%struct.snd_ca0106* %33)
  br label %35

35:                                               ; preds = %29, %2
  %36 = load i32, i32* %7, align 4
  ret i32 %36
}

declare dso_local %struct.snd_ca0106* @snd_kcontrol_chip(%struct.snd_kcontrol*) #1

declare dso_local i32 @ca0106_spdif_enable(%struct.snd_ca0106*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
