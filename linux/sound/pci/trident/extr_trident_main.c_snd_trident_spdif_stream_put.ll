; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/trident/extr_trident_main.c_snd_trident_spdif_stream_put.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/trident/extr_trident_main.c_snd_trident_spdif_stream_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i32 }
%struct.snd_ctl_elem_value = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }
%struct.snd_trident = type { i32, i64, i32, i32, i32* }

@TRIDENT_DEVICE_ID_SI7018 = common dso_local global i64 0, align 8
@NX_SPCSTATUS = common dso_local global i32 0, align 4
@SI_SPDIF_CS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)* @snd_trident_spdif_stream_put to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_trident_spdif_stream_put(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
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
  %46 = getelementptr inbounds %struct.snd_trident, %struct.snd_trident* %45, i32 0, i32 3
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
  %58 = getelementptr inbounds %struct.snd_trident, %struct.snd_trident* %57, i32 0, i32 4
  %59 = load i32*, i32** %58, align 8
  %60 = icmp ne i32* %59, null
  br i1 %60, label %61, label %84

61:                                               ; preds = %2
  %62 = load %struct.snd_trident*, %struct.snd_trident** %5, align 8
  %63 = getelementptr inbounds %struct.snd_trident, %struct.snd_trident* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @TRIDENT_DEVICE_ID_SI7018, align 8
  %66 = icmp ne i64 %64, %65
  br i1 %66, label %67, label %75

67:                                               ; preds = %61
  %68 = load %struct.snd_trident*, %struct.snd_trident** %5, align 8
  %69 = getelementptr inbounds %struct.snd_trident, %struct.snd_trident* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load %struct.snd_trident*, %struct.snd_trident** %5, align 8
  %72 = load i32, i32* @NX_SPCSTATUS, align 4
  %73 = call i32 @TRID_REG(%struct.snd_trident* %71, i32 %72)
  %74 = call i32 @outl(i32 %70, i32 %73)
  br label %83

75:                                               ; preds = %61
  %76 = load %struct.snd_trident*, %struct.snd_trident** %5, align 8
  %77 = getelementptr inbounds %struct.snd_trident, %struct.snd_trident* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 8
  %79 = load %struct.snd_trident*, %struct.snd_trident** %5, align 8
  %80 = load i32, i32* @SI_SPDIF_CS, align 4
  %81 = call i32 @TRID_REG(%struct.snd_trident* %79, i32 %80)
  %82 = call i32 @outl(i32 %78, i32 %81)
  br label %83

83:                                               ; preds = %75, %67
  br label %84

84:                                               ; preds = %83, %2
  %85 = load %struct.snd_trident*, %struct.snd_trident** %5, align 8
  %86 = getelementptr inbounds %struct.snd_trident, %struct.snd_trident* %85, i32 0, i32 3
  %87 = call i32 @spin_unlock_irq(i32* %86)
  %88 = load i32, i32* %7, align 4
  ret i32 %88
}

declare dso_local %struct.snd_trident* @snd_kcontrol_chip(%struct.snd_kcontrol*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @outl(i32, i32) #1

declare dso_local i32 @TRID_REG(%struct.snd_trident*, i32) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
