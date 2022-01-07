; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/extr_cmipci.c_snd_cmipci_line_in_mode_put.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/extr_cmipci.c_snd_cmipci_line_in_mode_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i32 }
%struct.snd_ctl_elem_value = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }
%struct.cmipci = type { i32 }

@CM_REG_LEGACY_CTRL = common dso_local global i32 0, align 4
@CM_CENTR2LIN = common dso_local global i32 0, align 4
@CM_BASE2LIN = common dso_local global i32 0, align 4
@CM_REG_MIXER1 = common dso_local global i32 0, align 4
@CM_REAR2LIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)* @snd_cmipci_line_in_mode_put to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_cmipci_line_in_mode_put(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
  %3 = alloca %struct.snd_kcontrol*, align 8
  %4 = alloca %struct.snd_ctl_elem_value*, align 8
  %5 = alloca %struct.cmipci*, align 8
  %6 = alloca i32, align 4
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %3, align 8
  store %struct.snd_ctl_elem_value* %1, %struct.snd_ctl_elem_value** %4, align 8
  %7 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %8 = call %struct.cmipci* @snd_kcontrol_chip(%struct.snd_kcontrol* %7)
  store %struct.cmipci* %8, %struct.cmipci** %5, align 8
  %9 = load %struct.cmipci*, %struct.cmipci** %5, align 8
  %10 = getelementptr inbounds %struct.cmipci, %struct.cmipci* %9, i32 0, i32 0
  %11 = call i32 @spin_lock_irq(i32* %10)
  %12 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %13 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp eq i32 %18, 2
  br i1 %19, label %20, label %27

20:                                               ; preds = %2
  %21 = load %struct.cmipci*, %struct.cmipci** %5, align 8
  %22 = load i32, i32* @CM_REG_LEGACY_CTRL, align 4
  %23 = load i32, i32* @CM_CENTR2LIN, align 4
  %24 = load i32, i32* @CM_BASE2LIN, align 4
  %25 = or i32 %23, %24
  %26 = call i32 @snd_cmipci_set_bit(%struct.cmipci* %21, i32 %22, i32 %25)
  store i32 %26, i32* %6, align 4
  br label %34

27:                                               ; preds = %2
  %28 = load %struct.cmipci*, %struct.cmipci** %5, align 8
  %29 = load i32, i32* @CM_REG_LEGACY_CTRL, align 4
  %30 = load i32, i32* @CM_CENTR2LIN, align 4
  %31 = load i32, i32* @CM_BASE2LIN, align 4
  %32 = or i32 %30, %31
  %33 = call i32 @snd_cmipci_clear_bit(%struct.cmipci* %28, i32 %29, i32 %32)
  store i32 %33, i32* %6, align 4
  br label %34

34:                                               ; preds = %27, %20
  %35 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %36 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 0
  %41 = load i32, i32* %40, align 4
  %42 = icmp eq i32 %41, 1
  br i1 %42, label %43, label %50

43:                                               ; preds = %34
  %44 = load %struct.cmipci*, %struct.cmipci** %5, align 8
  %45 = load i32, i32* @CM_REG_MIXER1, align 4
  %46 = load i32, i32* @CM_REAR2LIN, align 4
  %47 = call i32 @snd_cmipci_set_bit_b(%struct.cmipci* %44, i32 %45, i32 %46)
  %48 = load i32, i32* %6, align 4
  %49 = or i32 %48, %47
  store i32 %49, i32* %6, align 4
  br label %57

50:                                               ; preds = %34
  %51 = load %struct.cmipci*, %struct.cmipci** %5, align 8
  %52 = load i32, i32* @CM_REG_MIXER1, align 4
  %53 = load i32, i32* @CM_REAR2LIN, align 4
  %54 = call i32 @snd_cmipci_clear_bit_b(%struct.cmipci* %51, i32 %52, i32 %53)
  %55 = load i32, i32* %6, align 4
  %56 = or i32 %55, %54
  store i32 %56, i32* %6, align 4
  br label %57

57:                                               ; preds = %50, %43
  %58 = load %struct.cmipci*, %struct.cmipci** %5, align 8
  %59 = getelementptr inbounds %struct.cmipci, %struct.cmipci* %58, i32 0, i32 0
  %60 = call i32 @spin_unlock_irq(i32* %59)
  %61 = load i32, i32* %6, align 4
  ret i32 %61
}

declare dso_local %struct.cmipci* @snd_kcontrol_chip(%struct.snd_kcontrol*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @snd_cmipci_set_bit(%struct.cmipci*, i32, i32) #1

declare dso_local i32 @snd_cmipci_clear_bit(%struct.cmipci*, i32, i32) #1

declare dso_local i32 @snd_cmipci_set_bit_b(%struct.cmipci*, i32, i32) #1

declare dso_local i32 @snd_cmipci_clear_bit_b(%struct.cmipci*, i32, i32) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
