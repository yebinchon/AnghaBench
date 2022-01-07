; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/trident/extr_trident_main.c_snd_trident_ac97_control_put.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/trident/extr_trident_main.c_snd_trident_ac97_control_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i32 }
%struct.snd_ctl_elem_value = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64* }
%struct.snd_trident = type { i8, i32 }

@NX_ACR0_AC97_COM_STAT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)* @snd_trident_ac97_control_put to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_trident_ac97_control_put(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
  %3 = alloca %struct.snd_kcontrol*, align 8
  %4 = alloca %struct.snd_ctl_elem_value*, align 8
  %5 = alloca %struct.snd_trident*, align 8
  %6 = alloca i8, align 1
  %7 = alloca i32, align 4
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %3, align 8
  store %struct.snd_ctl_elem_value* %1, %struct.snd_ctl_elem_value** %4, align 8
  %8 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %9 = call %struct.snd_trident* @snd_kcontrol_chip(%struct.snd_kcontrol* %8)
  store %struct.snd_trident* %9, %struct.snd_trident** %5, align 8
  store i32 0, i32* %7, align 4
  %10 = load %struct.snd_trident*, %struct.snd_trident** %5, align 8
  %11 = getelementptr inbounds %struct.snd_trident, %struct.snd_trident* %10, i32 0, i32 1
  %12 = call i32 @spin_lock_irq(i32* %11)
  %13 = load %struct.snd_trident*, %struct.snd_trident** %5, align 8
  %14 = load i32, i32* @NX_ACR0_AC97_COM_STAT, align 4
  %15 = call i32 @TRID_REG(%struct.snd_trident* %13, i32 %14)
  %16 = call zeroext i8 @inl(i32 %15)
  %17 = load %struct.snd_trident*, %struct.snd_trident** %5, align 8
  %18 = getelementptr inbounds %struct.snd_trident, %struct.snd_trident* %17, i32 0, i32 0
  store i8 %16, i8* %18, align 4
  store i8 %16, i8* %6, align 1
  %19 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %20 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = shl i32 1, %21
  %23 = xor i32 %22, -1
  %24 = load i8, i8* %6, align 1
  %25 = zext i8 %24 to i32
  %26 = and i32 %25, %23
  %27 = trunc i32 %26 to i8
  store i8 %27, i8* %6, align 1
  %28 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %29 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i64*, i64** %31, align 8
  %33 = getelementptr inbounds i64, i64* %32, i64 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %45

36:                                               ; preds = %2
  %37 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %38 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = shl i32 1, %39
  %41 = load i8, i8* %6, align 1
  %42 = zext i8 %41 to i32
  %43 = or i32 %42, %40
  %44 = trunc i32 %43 to i8
  store i8 %44, i8* %6, align 1
  br label %45

45:                                               ; preds = %36, %2
  %46 = load i8, i8* %6, align 1
  %47 = zext i8 %46 to i32
  %48 = load %struct.snd_trident*, %struct.snd_trident** %5, align 8
  %49 = getelementptr inbounds %struct.snd_trident, %struct.snd_trident* %48, i32 0, i32 0
  %50 = load i8, i8* %49, align 4
  %51 = zext i8 %50 to i32
  %52 = icmp ne i32 %47, %51
  %53 = zext i1 %52 to i32
  store i32 %53, i32* %7, align 4
  %54 = load i8, i8* %6, align 1
  %55 = load %struct.snd_trident*, %struct.snd_trident** %5, align 8
  %56 = getelementptr inbounds %struct.snd_trident, %struct.snd_trident* %55, i32 0, i32 0
  store i8 %54, i8* %56, align 4
  %57 = load i8, i8* %6, align 1
  %58 = load %struct.snd_trident*, %struct.snd_trident** %5, align 8
  %59 = getelementptr inbounds %struct.snd_trident, %struct.snd_trident* %58, i32 0, i32 0
  store i8 %57, i8* %59, align 4
  %60 = load %struct.snd_trident*, %struct.snd_trident** %5, align 8
  %61 = load i32, i32* @NX_ACR0_AC97_COM_STAT, align 4
  %62 = call i32 @TRID_REG(%struct.snd_trident* %60, i32 %61)
  %63 = call i32 @outl(i8 zeroext %57, i32 %62)
  %64 = load %struct.snd_trident*, %struct.snd_trident** %5, align 8
  %65 = getelementptr inbounds %struct.snd_trident, %struct.snd_trident* %64, i32 0, i32 1
  %66 = call i32 @spin_unlock_irq(i32* %65)
  %67 = load i32, i32* %7, align 4
  ret i32 %67
}

declare dso_local %struct.snd_trident* @snd_kcontrol_chip(%struct.snd_kcontrol*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local zeroext i8 @inl(i32) #1

declare dso_local i32 @TRID_REG(%struct.snd_trident*, i32) #1

declare dso_local i32 @outl(i8 zeroext, i32) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
