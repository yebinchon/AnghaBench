; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/pcxhr/extr_pcxhr_mix22.c_hr222_mic_boost_put.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/pcxhr/extr_pcxhr_mix22.c_hr222_mic_boost_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i32 }
%struct.snd_ctl_elem_value = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64* }
%struct.snd_pcxhr = type { i64, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)* @hr222_mic_boost_put to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hr222_mic_boost_put(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
  %3 = alloca %struct.snd_kcontrol*, align 8
  %4 = alloca %struct.snd_ctl_elem_value*, align 8
  %5 = alloca %struct.snd_pcxhr*, align 8
  %6 = alloca i32, align 4
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %3, align 8
  store %struct.snd_ctl_elem_value* %1, %struct.snd_ctl_elem_value** %4, align 8
  %7 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %8 = call %struct.snd_pcxhr* @snd_kcontrol_chip(%struct.snd_kcontrol* %7)
  store %struct.snd_pcxhr* %8, %struct.snd_pcxhr** %5, align 8
  store i32 0, i32* %6, align 4
  %9 = load %struct.snd_pcxhr*, %struct.snd_pcxhr** %5, align 8
  %10 = getelementptr inbounds %struct.snd_pcxhr, %struct.snd_pcxhr* %9, i32 0, i32 1
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = call i32 @mutex_lock(i32* %12)
  %14 = load %struct.snd_pcxhr*, %struct.snd_pcxhr** %5, align 8
  %15 = getelementptr inbounds %struct.snd_pcxhr, %struct.snd_pcxhr* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %18 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i64*, i64** %20, align 8
  %22 = getelementptr inbounds i64, i64* %21, i64 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %16, %23
  br i1 %24, label %25, label %42

25:                                               ; preds = %2
  store i32 1, i32* %6, align 4
  %26 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %27 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i64*, i64** %29, align 8
  %31 = getelementptr inbounds i64, i64* %30, i64 0
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.snd_pcxhr*, %struct.snd_pcxhr** %5, align 8
  %34 = getelementptr inbounds %struct.snd_pcxhr, %struct.snd_pcxhr* %33, i32 0, i32 0
  store i64 %32, i64* %34, align 8
  %35 = load %struct.snd_pcxhr*, %struct.snd_pcxhr** %5, align 8
  %36 = getelementptr inbounds %struct.snd_pcxhr, %struct.snd_pcxhr* %35, i32 0, i32 1
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %36, align 8
  %38 = load %struct.snd_pcxhr*, %struct.snd_pcxhr** %5, align 8
  %39 = getelementptr inbounds %struct.snd_pcxhr, %struct.snd_pcxhr* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = call i32 @hr222_micro_boost(%struct.TYPE_6__* %37, i64 %40)
  br label %42

42:                                               ; preds = %25, %2
  %43 = load %struct.snd_pcxhr*, %struct.snd_pcxhr** %5, align 8
  %44 = getelementptr inbounds %struct.snd_pcxhr, %struct.snd_pcxhr* %43, i32 0, i32 1
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  %47 = call i32 @mutex_unlock(i32* %46)
  %48 = load i32, i32* %6, align 4
  ret i32 %48
}

declare dso_local %struct.snd_pcxhr* @snd_kcontrol_chip(%struct.snd_kcontrol*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @hr222_micro_boost(%struct.TYPE_6__*, i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
