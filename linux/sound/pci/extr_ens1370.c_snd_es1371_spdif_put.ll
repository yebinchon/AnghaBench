; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/extr_ens1370.c_snd_es1371_spdif_put.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/extr_ens1370.c_snd_es1371_spdif_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i32 }
%struct.snd_ctl_elem_value = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64* }
%struct.ensoniq = type { i32, i32, i32 }

@ES_1373_SPDIF_THRU = common dso_local global i32 0, align 4
@ES_1373_SPDIF_EN = common dso_local global i32 0, align 4
@CONTROL = common dso_local global i32 0, align 4
@STATUS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)* @snd_es1371_spdif_put to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_es1371_spdif_put(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
  %3 = alloca %struct.snd_kcontrol*, align 8
  %4 = alloca %struct.snd_ctl_elem_value*, align 8
  %5 = alloca %struct.ensoniq*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %3, align 8
  store %struct.snd_ctl_elem_value* %1, %struct.snd_ctl_elem_value** %4, align 8
  %9 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %10 = call %struct.ensoniq* @snd_kcontrol_chip(%struct.snd_kcontrol* %9)
  store %struct.ensoniq* %10, %struct.ensoniq** %5, align 8
  %11 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %12 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i64*, i64** %14, align 8
  %16 = getelementptr inbounds i64, i64* %15, i64 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %2
  %20 = load i32, i32* @ES_1373_SPDIF_THRU, align 4
  br label %22

21:                                               ; preds = %2
  br label %22

22:                                               ; preds = %21, %19
  %23 = phi i32 [ %20, %19 ], [ 0, %21 ]
  store i32 %23, i32* %6, align 4
  %24 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %25 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i64*, i64** %27, align 8
  %29 = getelementptr inbounds i64, i64* %28, i64 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %22
  %33 = load i32, i32* @ES_1373_SPDIF_EN, align 4
  br label %35

34:                                               ; preds = %22
  br label %35

35:                                               ; preds = %34, %32
  %36 = phi i32 [ %33, %32 ], [ 0, %34 ]
  store i32 %36, i32* %7, align 4
  %37 = load %struct.ensoniq*, %struct.ensoniq** %5, align 8
  %38 = getelementptr inbounds %struct.ensoniq, %struct.ensoniq* %37, i32 0, i32 2
  %39 = call i32 @spin_lock_irq(i32* %38)
  %40 = load %struct.ensoniq*, %struct.ensoniq** %5, align 8
  %41 = getelementptr inbounds %struct.ensoniq, %struct.ensoniq* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @ES_1373_SPDIF_THRU, align 4
  %44 = and i32 %42, %43
  %45 = load i32, i32* %6, align 4
  %46 = icmp ne i32 %44, %45
  %47 = zext i1 %46 to i32
  store i32 %47, i32* %8, align 4
  %48 = load i32, i32* @ES_1373_SPDIF_THRU, align 4
  %49 = xor i32 %48, -1
  %50 = load %struct.ensoniq*, %struct.ensoniq** %5, align 8
  %51 = getelementptr inbounds %struct.ensoniq, %struct.ensoniq* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = and i32 %52, %49
  store i32 %53, i32* %51, align 4
  %54 = load i32, i32* %6, align 4
  %55 = load %struct.ensoniq*, %struct.ensoniq** %5, align 8
  %56 = getelementptr inbounds %struct.ensoniq, %struct.ensoniq* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = or i32 %57, %54
  store i32 %58, i32* %56, align 4
  %59 = load i32, i32* @ES_1373_SPDIF_EN, align 4
  %60 = xor i32 %59, -1
  %61 = load %struct.ensoniq*, %struct.ensoniq** %5, align 8
  %62 = getelementptr inbounds %struct.ensoniq, %struct.ensoniq* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = and i32 %63, %60
  store i32 %64, i32* %62, align 4
  %65 = load i32, i32* %7, align 4
  %66 = load %struct.ensoniq*, %struct.ensoniq** %5, align 8
  %67 = getelementptr inbounds %struct.ensoniq, %struct.ensoniq* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = or i32 %68, %65
  store i32 %69, i32* %67, align 4
  %70 = load %struct.ensoniq*, %struct.ensoniq** %5, align 8
  %71 = getelementptr inbounds %struct.ensoniq, %struct.ensoniq* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.ensoniq*, %struct.ensoniq** %5, align 8
  %74 = load i32, i32* @CONTROL, align 4
  %75 = call i32 @ES_REG(%struct.ensoniq* %73, i32 %74)
  %76 = call i32 @outl(i32 %72, i32 %75)
  %77 = load %struct.ensoniq*, %struct.ensoniq** %5, align 8
  %78 = getelementptr inbounds %struct.ensoniq, %struct.ensoniq* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.ensoniq*, %struct.ensoniq** %5, align 8
  %81 = load i32, i32* @STATUS, align 4
  %82 = call i32 @ES_REG(%struct.ensoniq* %80, i32 %81)
  %83 = call i32 @outl(i32 %79, i32 %82)
  %84 = load %struct.ensoniq*, %struct.ensoniq** %5, align 8
  %85 = getelementptr inbounds %struct.ensoniq, %struct.ensoniq* %84, i32 0, i32 2
  %86 = call i32 @spin_unlock_irq(i32* %85)
  %87 = load i32, i32* %8, align 4
  ret i32 %87
}

declare dso_local %struct.ensoniq* @snd_kcontrol_chip(%struct.snd_kcontrol*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @outl(i32, i32) #1

declare dso_local i32 @ES_REG(%struct.ensoniq*, i32) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
