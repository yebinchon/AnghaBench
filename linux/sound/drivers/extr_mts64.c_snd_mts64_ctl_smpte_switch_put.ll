; ModuleID = '/home/carl/AnghaBench/linux/sound/drivers/extr_mts64.c_snd_mts64_ctl_smpte_switch_put.c'
source_filename = "/home/carl/AnghaBench/linux/sound/drivers/extr_mts64.c_snd_mts64_ctl_smpte_switch_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i32 }
%struct.snd_ctl_elem_value = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32* }
%struct.mts64 = type { i32, i32, %struct.TYPE_6__*, i32, i32* }
%struct.TYPE_6__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)* @snd_mts64_ctl_smpte_switch_put to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_mts64_ctl_smpte_switch_put(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
  %3 = alloca %struct.snd_kcontrol*, align 8
  %4 = alloca %struct.snd_ctl_elem_value*, align 8
  %5 = alloca %struct.mts64*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %3, align 8
  store %struct.snd_ctl_elem_value* %1, %struct.snd_ctl_elem_value** %4, align 8
  %8 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %9 = call %struct.mts64* @snd_kcontrol_chip(%struct.snd_kcontrol* %8)
  store %struct.mts64* %9, %struct.mts64** %5, align 8
  store i32 0, i32* %6, align 4
  %10 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %11 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  %15 = getelementptr inbounds i32, i32* %14, i64 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  %18 = xor i1 %17, true
  %19 = xor i1 %18, true
  %20 = zext i1 %19 to i32
  store i32 %20, i32* %7, align 4
  %21 = load %struct.mts64*, %struct.mts64** %5, align 8
  %22 = getelementptr inbounds %struct.mts64, %struct.mts64* %21, i32 0, i32 1
  %23 = call i32 @spin_lock_irq(i32* %22)
  %24 = load %struct.mts64*, %struct.mts64** %5, align 8
  %25 = getelementptr inbounds %struct.mts64, %struct.mts64* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* %7, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %2
  br label %76

30:                                               ; preds = %2
  store i32 1, i32* %6, align 4
  %31 = load i32, i32* %7, align 4
  %32 = load %struct.mts64*, %struct.mts64** %5, align 8
  %33 = getelementptr inbounds %struct.mts64, %struct.mts64* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 8
  %34 = load %struct.mts64*, %struct.mts64** %5, align 8
  %35 = getelementptr inbounds %struct.mts64, %struct.mts64* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %68

38:                                               ; preds = %30
  %39 = load %struct.mts64*, %struct.mts64** %5, align 8
  %40 = getelementptr inbounds %struct.mts64, %struct.mts64* %39, i32 0, i32 2
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.mts64*, %struct.mts64** %5, align 8
  %45 = getelementptr inbounds %struct.mts64, %struct.mts64* %44, i32 0, i32 4
  %46 = load i32*, i32** %45, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 0
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.mts64*, %struct.mts64** %5, align 8
  %50 = getelementptr inbounds %struct.mts64, %struct.mts64* %49, i32 0, i32 4
  %51 = load i32*, i32** %50, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 1
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.mts64*, %struct.mts64** %5, align 8
  %55 = getelementptr inbounds %struct.mts64, %struct.mts64* %54, i32 0, i32 4
  %56 = load i32*, i32** %55, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 2
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.mts64*, %struct.mts64** %5, align 8
  %60 = getelementptr inbounds %struct.mts64, %struct.mts64* %59, i32 0, i32 4
  %61 = load i32*, i32** %60, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 3
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.mts64*, %struct.mts64** %5, align 8
  %65 = getelementptr inbounds %struct.mts64, %struct.mts64* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @mts64_smpte_start(i32 %43, i32 %48, i32 %53, i32 %58, i32 %63, i32 %66)
  br label %75

68:                                               ; preds = %30
  %69 = load %struct.mts64*, %struct.mts64** %5, align 8
  %70 = getelementptr inbounds %struct.mts64, %struct.mts64* %69, i32 0, i32 2
  %71 = load %struct.TYPE_6__*, %struct.TYPE_6__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @mts64_smpte_stop(i32 %73)
  br label %75

75:                                               ; preds = %68, %38
  br label %76

76:                                               ; preds = %75, %29
  %77 = load %struct.mts64*, %struct.mts64** %5, align 8
  %78 = getelementptr inbounds %struct.mts64, %struct.mts64* %77, i32 0, i32 1
  %79 = call i32 @spin_unlock_irq(i32* %78)
  %80 = load i32, i32* %6, align 4
  ret i32 %80
}

declare dso_local %struct.mts64* @snd_kcontrol_chip(%struct.snd_kcontrol*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @mts64_smpte_start(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @mts64_smpte_stop(i32) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
