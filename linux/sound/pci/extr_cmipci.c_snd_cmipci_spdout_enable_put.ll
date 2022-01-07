; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/extr_cmipci.c_snd_cmipci_spdout_enable_put.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/extr_cmipci.c_snd_cmipci_spdout_enable_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i32 }
%struct.snd_ctl_elem_value = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64* }
%struct.cmipci = type { i64, i64 }

@cmipci_switch_arg_spdif_enable = common dso_local global i32 0, align 4
@cmipci_switch_arg_spdo2dac = common dso_local global i32 0, align 4
@CM_REG_FUNCTRL1 = common dso_local global i32 0, align 4
@CM_PLAYBACK_SPDF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)* @snd_cmipci_spdout_enable_put to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_cmipci_spdout_enable_put(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
  %3 = alloca %struct.snd_kcontrol*, align 8
  %4 = alloca %struct.snd_ctl_elem_value*, align 8
  %5 = alloca %struct.cmipci*, align 8
  %6 = alloca i32, align 4
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %3, align 8
  store %struct.snd_ctl_elem_value* %1, %struct.snd_ctl_elem_value** %4, align 8
  %7 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %8 = call %struct.cmipci* @snd_kcontrol_chip(%struct.snd_kcontrol* %7)
  store %struct.cmipci* %8, %struct.cmipci** %5, align 8
  %9 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %10 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %11 = call i32 @_snd_cmipci_uswitch_put(%struct.snd_kcontrol* %9, %struct.snd_ctl_elem_value* %10, i32* @cmipci_switch_arg_spdif_enable)
  store i32 %11, i32* %6, align 4
  %12 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %13 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %14 = call i32 @_snd_cmipci_uswitch_put(%struct.snd_kcontrol* %12, %struct.snd_ctl_elem_value* %13, i32* @cmipci_switch_arg_spdo2dac)
  %15 = load i32, i32* %6, align 4
  %16 = or i32 %15, %14
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %51

19:                                               ; preds = %2
  %20 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %21 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i64*, i64** %23, align 8
  %25 = getelementptr inbounds i64, i64* %24, i64 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %39

28:                                               ; preds = %19
  %29 = load %struct.cmipci*, %struct.cmipci** %5, align 8
  %30 = getelementptr inbounds %struct.cmipci, %struct.cmipci* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %28
  %34 = load %struct.cmipci*, %struct.cmipci** %5, align 8
  %35 = load i32, i32* @CM_REG_FUNCTRL1, align 4
  %36 = load i32, i32* @CM_PLAYBACK_SPDF, align 4
  %37 = call i32 @snd_cmipci_set_bit(%struct.cmipci* %34, i32 %35, i32 %36)
  br label %38

38:                                               ; preds = %33, %28
  br label %50

39:                                               ; preds = %19
  %40 = load %struct.cmipci*, %struct.cmipci** %5, align 8
  %41 = getelementptr inbounds %struct.cmipci, %struct.cmipci* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %39
  %45 = load %struct.cmipci*, %struct.cmipci** %5, align 8
  %46 = load i32, i32* @CM_REG_FUNCTRL1, align 4
  %47 = load i32, i32* @CM_PLAYBACK_SPDF, align 4
  %48 = call i32 @snd_cmipci_clear_bit(%struct.cmipci* %45, i32 %46, i32 %47)
  br label %49

49:                                               ; preds = %44, %39
  br label %50

50:                                               ; preds = %49, %38
  br label %51

51:                                               ; preds = %50, %2
  %52 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %53 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 0
  %56 = load i64*, i64** %55, align 8
  %57 = getelementptr inbounds i64, i64* %56, i64 0
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.cmipci*, %struct.cmipci** %5, align 8
  %60 = getelementptr inbounds %struct.cmipci, %struct.cmipci* %59, i32 0, i32 0
  store i64 %58, i64* %60, align 8
  %61 = load i32, i32* %6, align 4
  ret i32 %61
}

declare dso_local %struct.cmipci* @snd_kcontrol_chip(%struct.snd_kcontrol*) #1

declare dso_local i32 @_snd_cmipci_uswitch_put(%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*, i32*) #1

declare dso_local i32 @snd_cmipci_set_bit(%struct.cmipci*, i32, i32) #1

declare dso_local i32 @snd_cmipci_clear_bit(%struct.cmipci*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
