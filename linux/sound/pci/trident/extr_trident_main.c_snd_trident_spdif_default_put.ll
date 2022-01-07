; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/trident/extr_trident_main.c_snd_trident_spdif_default_put.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/trident/extr_trident_main.c_snd_trident_spdif_default_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i32 }
%struct.snd_ctl_elem_value = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }
%struct.snd_trident = type { i32, i64, i32, i32* }

@TRIDENT_DEVICE_ID_SI7018 = common dso_local global i64 0, align 8
@NX_SPCTRL_SPCSO = common dso_local global i64 0, align 8
@NX_SPCSTATUS = common dso_local global i64 0, align 8
@SI_SPDIF_CS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)* @snd_trident_spdif_default_put to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_trident_spdif_default_put(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
  %3 = alloca %struct.snd_kcontrol*, align 8
  %4 = alloca %struct.snd_ctl_elem_value*, align 8
  %5 = alloca %struct.snd_trident*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %3, align 8
  store %struct.snd_ctl_elem_value* %1, %struct.snd_ctl_elem_value** %4, align 8
  %8 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %9 = call %struct.snd_trident* @snd_kcontrol_chip(%struct.snd_kcontrol* %8)
  store %struct.snd_trident* %9, %struct.snd_trident** %5, align 8
  %10 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %11 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  %15 = getelementptr inbounds i32, i32* %14, i64 0
  %16 = load i32, i32* %15, align 4
  %17 = shl i32 %16, 0
  %18 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %19 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 1
  %24 = load i32, i32* %23, align 4
  %25 = shl i32 %24, 8
  %26 = or i32 %17, %25
  %27 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %28 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 2
  %33 = load i32, i32* %32, align 4
  %34 = shl i32 %33, 16
  %35 = or i32 %26, %34
  %36 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %37 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 3
  %42 = load i32, i32* %41, align 4
  %43 = shl i32 %42, 24
  %44 = or i32 %35, %43
  store i32 %44, i32* %6, align 4
  %45 = load %struct.snd_trident*, %struct.snd_trident** %5, align 8
  %46 = getelementptr inbounds %struct.snd_trident, %struct.snd_trident* %45, i32 0, i32 2
  %47 = call i32 @spin_lock_irq(i32* %46)
  %48 = load %struct.snd_trident*, %struct.snd_trident** %5, align 8
  %49 = getelementptr inbounds %struct.snd_trident, %struct.snd_trident* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* %6, align 4
  %52 = icmp ne i32 %50, %51
  %53 = zext i1 %52 to i32
  store i32 %53, i32* %7, align 4
  %54 = load i32, i32* %6, align 4
  %55 = load %struct.snd_trident*, %struct.snd_trident** %5, align 8
  %56 = getelementptr inbounds %struct.snd_trident, %struct.snd_trident* %55, i32 0, i32 0
  store i32 %54, i32* %56, align 8
  %57 = load %struct.snd_trident*, %struct.snd_trident** %5, align 8
  %58 = getelementptr inbounds %struct.snd_trident, %struct.snd_trident* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @TRIDENT_DEVICE_ID_SI7018, align 8
  %61 = icmp ne i64 %59, %60
  br i1 %61, label %62, label %79

62:                                               ; preds = %2
  %63 = load %struct.snd_trident*, %struct.snd_trident** %5, align 8
  %64 = load i64, i64* @NX_SPCTRL_SPCSO, align 8
  %65 = add nsw i64 %64, 3
  %66 = call i32 @TRID_REG(%struct.snd_trident* %63, i64 %65)
  %67 = call i32 @inb(i32 %66)
  %68 = and i32 %67, 16
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %78

70:                                               ; preds = %62
  %71 = load %struct.snd_trident*, %struct.snd_trident** %5, align 8
  %72 = getelementptr inbounds %struct.snd_trident, %struct.snd_trident* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load %struct.snd_trident*, %struct.snd_trident** %5, align 8
  %75 = load i64, i64* @NX_SPCSTATUS, align 8
  %76 = call i32 @TRID_REG(%struct.snd_trident* %74, i64 %75)
  %77 = call i32 @outl(i32 %73, i32 %76)
  br label %78

78:                                               ; preds = %70, %62
  br label %93

79:                                               ; preds = %2
  %80 = load %struct.snd_trident*, %struct.snd_trident** %5, align 8
  %81 = getelementptr inbounds %struct.snd_trident, %struct.snd_trident* %80, i32 0, i32 3
  %82 = load i32*, i32** %81, align 8
  %83 = icmp eq i32* %82, null
  br i1 %83, label %84, label %92

84:                                               ; preds = %79
  %85 = load %struct.snd_trident*, %struct.snd_trident** %5, align 8
  %86 = getelementptr inbounds %struct.snd_trident, %struct.snd_trident* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = load %struct.snd_trident*, %struct.snd_trident** %5, align 8
  %89 = load i64, i64* @SI_SPDIF_CS, align 8
  %90 = call i32 @TRID_REG(%struct.snd_trident* %88, i64 %89)
  %91 = call i32 @outl(i32 %87, i32 %90)
  br label %92

92:                                               ; preds = %84, %79
  br label %93

93:                                               ; preds = %92, %78
  %94 = load %struct.snd_trident*, %struct.snd_trident** %5, align 8
  %95 = getelementptr inbounds %struct.snd_trident, %struct.snd_trident* %94, i32 0, i32 2
  %96 = call i32 @spin_unlock_irq(i32* %95)
  %97 = load i32, i32* %7, align 4
  ret i32 %97
}

declare dso_local %struct.snd_trident* @snd_kcontrol_chip(%struct.snd_kcontrol*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @inb(i32) #1

declare dso_local i32 @TRID_REG(%struct.snd_trident*, i64) #1

declare dso_local i32 @outl(i32, i32) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
