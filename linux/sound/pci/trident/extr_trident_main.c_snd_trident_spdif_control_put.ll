; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/trident/extr_trident_main.c_snd_trident_spdif_control_put.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/trident/extr_trident_main.c_snd_trident_spdif_control_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i64 }
%struct.snd_ctl_elem_value = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64* }
%struct.snd_trident = type { i8, i64, i32, i32, i32* }

@TRIDENT_DEVICE_ID_SI7018 = common dso_local global i64 0, align 8
@NX_SPCTRL_SPCSO = common dso_local global i64 0, align 8
@NX_SPCSTATUS = common dso_local global i64 0, align 8
@SI_SPDIF_CS = common dso_local global i64 0, align 8
@SI_SERIAL_INTF_CTRL = common dso_local global i64 0, align 8
@SPDIF_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)* @snd_trident_spdif_control_put to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_trident_spdif_control_put(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
  %3 = alloca %struct.snd_kcontrol*, align 8
  %4 = alloca %struct.snd_ctl_elem_value*, align 8
  %5 = alloca %struct.snd_trident*, align 8
  %6 = alloca i8, align 1
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %3, align 8
  store %struct.snd_ctl_elem_value* %1, %struct.snd_ctl_elem_value** %4, align 8
  %9 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %10 = call %struct.snd_trident* @snd_kcontrol_chip(%struct.snd_kcontrol* %9)
  store %struct.snd_trident* %10, %struct.snd_trident** %5, align 8
  %11 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %12 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i64*, i64** %14, align 8
  %16 = getelementptr inbounds i64, i64* %15, i64 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %2
  %20 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %21 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = trunc i64 %22 to i8
  %24 = zext i8 %23 to i32
  br label %26

25:                                               ; preds = %2
  br label %26

26:                                               ; preds = %25, %19
  %27 = phi i32 [ %24, %19 ], [ 0, %25 ]
  %28 = trunc i32 %27 to i8
  store i8 %28, i8* %6, align 1
  %29 = load %struct.snd_trident*, %struct.snd_trident** %5, align 8
  %30 = getelementptr inbounds %struct.snd_trident, %struct.snd_trident* %29, i32 0, i32 3
  %31 = call i32 @spin_lock_irq(i32* %30)
  %32 = load %struct.snd_trident*, %struct.snd_trident** %5, align 8
  %33 = getelementptr inbounds %struct.snd_trident, %struct.snd_trident* %32, i32 0, i32 0
  %34 = load i8, i8* %33, align 8
  %35 = zext i8 %34 to i32
  %36 = load i8, i8* %6, align 1
  %37 = zext i8 %36 to i32
  %38 = icmp ne i32 %35, %37
  %39 = zext i1 %38 to i32
  store i32 %39, i32* %7, align 4
  %40 = load i8, i8* %6, align 1
  %41 = load %struct.snd_trident*, %struct.snd_trident** %5, align 8
  %42 = getelementptr inbounds %struct.snd_trident, %struct.snd_trident* %41, i32 0, i32 0
  store i8 %40, i8* %42, align 8
  %43 = load %struct.snd_trident*, %struct.snd_trident** %5, align 8
  %44 = getelementptr inbounds %struct.snd_trident, %struct.snd_trident* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @TRIDENT_DEVICE_ID_SI7018, align 8
  %47 = icmp ne i64 %45, %46
  br i1 %47, label %48, label %73

48:                                               ; preds = %26
  %49 = load %struct.snd_trident*, %struct.snd_trident** %5, align 8
  %50 = load i64, i64* @NX_SPCTRL_SPCSO, align 8
  %51 = add nsw i64 %50, 3
  %52 = call i32 @TRID_REG(%struct.snd_trident* %49, i64 %51)
  %53 = call i32 @inb(i32 %52)
  %54 = and i32 %53, 16
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %72

56:                                               ; preds = %48
  %57 = load %struct.snd_trident*, %struct.snd_trident** %5, align 8
  %58 = getelementptr inbounds %struct.snd_trident, %struct.snd_trident* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.snd_trident*, %struct.snd_trident** %5, align 8
  %61 = load i64, i64* @NX_SPCSTATUS, align 8
  %62 = call i32 @TRID_REG(%struct.snd_trident* %60, i64 %61)
  %63 = call i32 @outl(i32 %59, i32 %62)
  %64 = load %struct.snd_trident*, %struct.snd_trident** %5, align 8
  %65 = getelementptr inbounds %struct.snd_trident, %struct.snd_trident* %64, i32 0, i32 0
  %66 = load i8, i8* %65, align 8
  %67 = load %struct.snd_trident*, %struct.snd_trident** %5, align 8
  %68 = load i64, i64* @NX_SPCTRL_SPCSO, align 8
  %69 = add nsw i64 %68, 3
  %70 = call i32 @TRID_REG(%struct.snd_trident* %67, i64 %69)
  %71 = call i32 @outb(i8 zeroext %66, i32 %70)
  br label %72

72:                                               ; preds = %56, %48
  br label %106

73:                                               ; preds = %26
  %74 = load %struct.snd_trident*, %struct.snd_trident** %5, align 8
  %75 = getelementptr inbounds %struct.snd_trident, %struct.snd_trident* %74, i32 0, i32 4
  %76 = load i32*, i32** %75, align 8
  %77 = icmp eq i32* %76, null
  br i1 %77, label %78, label %105

78:                                               ; preds = %73
  %79 = load %struct.snd_trident*, %struct.snd_trident** %5, align 8
  %80 = getelementptr inbounds %struct.snd_trident, %struct.snd_trident* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 8
  %82 = load %struct.snd_trident*, %struct.snd_trident** %5, align 8
  %83 = load i64, i64* @SI_SPDIF_CS, align 8
  %84 = call i32 @TRID_REG(%struct.snd_trident* %82, i64 %83)
  %85 = call i32 @outl(i32 %81, i32 %84)
  %86 = load %struct.snd_trident*, %struct.snd_trident** %5, align 8
  %87 = load i64, i64* @SI_SERIAL_INTF_CTRL, align 8
  %88 = call i32 @TRID_REG(%struct.snd_trident* %86, i64 %87)
  %89 = call i32 @inl(i32 %88)
  %90 = load i32, i32* @SPDIF_EN, align 4
  %91 = xor i32 %90, -1
  %92 = and i32 %89, %91
  store i32 %92, i32* %8, align 4
  %93 = load i8, i8* %6, align 1
  %94 = icmp ne i8 %93, 0
  br i1 %94, label %95, label %99

95:                                               ; preds = %78
  %96 = load i32, i32* @SPDIF_EN, align 4
  %97 = load i32, i32* %8, align 4
  %98 = or i32 %97, %96
  store i32 %98, i32* %8, align 4
  br label %99

99:                                               ; preds = %95, %78
  %100 = load i32, i32* %8, align 4
  %101 = load %struct.snd_trident*, %struct.snd_trident** %5, align 8
  %102 = load i64, i64* @SI_SERIAL_INTF_CTRL, align 8
  %103 = call i32 @TRID_REG(%struct.snd_trident* %101, i64 %102)
  %104 = call i32 @outl(i32 %100, i32 %103)
  br label %105

105:                                              ; preds = %99, %73
  br label %106

106:                                              ; preds = %105, %72
  %107 = load %struct.snd_trident*, %struct.snd_trident** %5, align 8
  %108 = getelementptr inbounds %struct.snd_trident, %struct.snd_trident* %107, i32 0, i32 3
  %109 = call i32 @spin_unlock_irq(i32* %108)
  %110 = load i32, i32* %7, align 4
  ret i32 %110
}

declare dso_local %struct.snd_trident* @snd_kcontrol_chip(%struct.snd_kcontrol*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @inb(i32) #1

declare dso_local i32 @TRID_REG(%struct.snd_trident*, i64) #1

declare dso_local i32 @outl(i32, i32) #1

declare dso_local i32 @outb(i8 zeroext, i32) #1

declare dso_local i32 @inl(i32) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
