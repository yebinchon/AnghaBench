; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/extr_cmipci.c_snd_cmipci_get_volume.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/extr_cmipci.c_snd_cmipci_get_volume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i32 }
%struct.snd_ctl_elem_value = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }
%struct.cmipci = type { i32 }
%struct.cmipci_sb_reg = type { i32, i32, i32, i64, i32, i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)* @snd_cmipci_get_volume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_cmipci_get_volume(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
  %3 = alloca %struct.snd_kcontrol*, align 8
  %4 = alloca %struct.snd_ctl_elem_value*, align 8
  %5 = alloca %struct.cmipci*, align 8
  %6 = alloca %struct.cmipci_sb_reg, align 8
  %7 = alloca i32, align 4
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %3, align 8
  store %struct.snd_ctl_elem_value* %1, %struct.snd_ctl_elem_value** %4, align 8
  %8 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %9 = call %struct.cmipci* @snd_kcontrol_chip(%struct.snd_kcontrol* %8)
  store %struct.cmipci* %9, %struct.cmipci** %5, align 8
  %10 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %11 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @cmipci_sb_reg_decode(%struct.cmipci_sb_reg* %6, i32 %12)
  %14 = load %struct.cmipci*, %struct.cmipci** %5, align 8
  %15 = getelementptr inbounds %struct.cmipci, %struct.cmipci* %14, i32 0, i32 0
  %16 = call i32 @spin_lock_irq(i32* %15)
  %17 = load %struct.cmipci*, %struct.cmipci** %5, align 8
  %18 = getelementptr inbounds %struct.cmipci_sb_reg, %struct.cmipci_sb_reg* %6, i32 0, i32 6
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @snd_cmipci_mixer_read(%struct.cmipci* %17, i32 %19)
  %21 = getelementptr inbounds %struct.cmipci_sb_reg, %struct.cmipci_sb_reg* %6, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = ashr i32 %20, %22
  %24 = getelementptr inbounds %struct.cmipci_sb_reg, %struct.cmipci_sb_reg* %6, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = and i32 %23, %25
  store i32 %26, i32* %7, align 4
  %27 = getelementptr inbounds %struct.cmipci_sb_reg, %struct.cmipci_sb_reg* %6, i32 0, i32 3
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %2
  %31 = getelementptr inbounds %struct.cmipci_sb_reg, %struct.cmipci_sb_reg* %6, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* %7, align 4
  %34 = sub nsw i32 %32, %33
  store i32 %34, i32* %7, align 4
  br label %35

35:                                               ; preds = %30, %2
  %36 = load i32, i32* %7, align 4
  %37 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %38 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 0
  store i32 %36, i32* %42, align 4
  %43 = getelementptr inbounds %struct.cmipci_sb_reg, %struct.cmipci_sb_reg* %6, i32 0, i32 5
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %73

46:                                               ; preds = %35
  %47 = load %struct.cmipci*, %struct.cmipci** %5, align 8
  %48 = getelementptr inbounds %struct.cmipci_sb_reg, %struct.cmipci_sb_reg* %6, i32 0, i32 4
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @snd_cmipci_mixer_read(%struct.cmipci* %47, i32 %49)
  %51 = getelementptr inbounds %struct.cmipci_sb_reg, %struct.cmipci_sb_reg* %6, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = ashr i32 %50, %52
  %54 = getelementptr inbounds %struct.cmipci_sb_reg, %struct.cmipci_sb_reg* %6, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = and i32 %53, %55
  store i32 %56, i32* %7, align 4
  %57 = getelementptr inbounds %struct.cmipci_sb_reg, %struct.cmipci_sb_reg* %6, i32 0, i32 3
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %65

60:                                               ; preds = %46
  %61 = getelementptr inbounds %struct.cmipci_sb_reg, %struct.cmipci_sb_reg* %6, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* %7, align 4
  %64 = sub nsw i32 %62, %63
  store i32 %64, i32* %7, align 4
  br label %65

65:                                               ; preds = %60, %46
  %66 = load i32, i32* %7, align 4
  %67 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %68 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 0
  %71 = load i32*, i32** %70, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 1
  store i32 %66, i32* %72, align 4
  br label %73

73:                                               ; preds = %65, %35
  %74 = load %struct.cmipci*, %struct.cmipci** %5, align 8
  %75 = getelementptr inbounds %struct.cmipci, %struct.cmipci* %74, i32 0, i32 0
  %76 = call i32 @spin_unlock_irq(i32* %75)
  ret i32 0
}

declare dso_local %struct.cmipci* @snd_kcontrol_chip(%struct.snd_kcontrol*) #1

declare dso_local i32 @cmipci_sb_reg_decode(%struct.cmipci_sb_reg*, i32) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @snd_cmipci_mixer_read(%struct.cmipci*, i32) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
