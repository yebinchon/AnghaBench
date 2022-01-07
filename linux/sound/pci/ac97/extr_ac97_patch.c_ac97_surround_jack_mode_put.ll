; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/ac97/extr_ac97_patch.c_ac97_surround_jack_mode_put.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/ac97/extr_ac97_patch.c_ac97_surround_jack_mode_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i32 }
%struct.snd_ctl_elem_value = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32* }
%struct.snd_ac97 = type { i8, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 (%struct.snd_ac97*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)* @ac97_surround_jack_mode_put to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ac97_surround_jack_mode_put(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_kcontrol*, align 8
  %5 = alloca %struct.snd_ctl_elem_value*, align 8
  %6 = alloca %struct.snd_ac97*, align 8
  %7 = alloca i8, align 1
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %4, align 8
  store %struct.snd_ctl_elem_value* %1, %struct.snd_ctl_elem_value** %5, align 8
  %8 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %9 = call %struct.snd_ac97* @snd_kcontrol_chip(%struct.snd_kcontrol* %8)
  store %struct.snd_ac97* %9, %struct.snd_ac97** %6, align 8
  %10 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %5, align 8
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
  %21 = trunc i32 %20 to i8
  store i8 %21, i8* %7, align 1
  %22 = load i8, i8* %7, align 1
  %23 = zext i8 %22 to i32
  %24 = load %struct.snd_ac97*, %struct.snd_ac97** %6, align 8
  %25 = getelementptr inbounds %struct.snd_ac97, %struct.snd_ac97* %24, i32 0, i32 0
  %26 = load i8, i8* %25, align 8
  %27 = zext i8 %26 to i32
  %28 = icmp ne i32 %23, %27
  br i1 %28, label %29, label %48

29:                                               ; preds = %2
  %30 = load i8, i8* %7, align 1
  %31 = load %struct.snd_ac97*, %struct.snd_ac97** %6, align 8
  %32 = getelementptr inbounds %struct.snd_ac97, %struct.snd_ac97* %31, i32 0, i32 0
  store i8 %30, i8* %32, align 8
  %33 = load %struct.snd_ac97*, %struct.snd_ac97** %6, align 8
  %34 = getelementptr inbounds %struct.snd_ac97, %struct.snd_ac97* %33, i32 0, i32 1
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = load i32 (%struct.snd_ac97*)*, i32 (%struct.snd_ac97*)** %36, align 8
  %38 = icmp ne i32 (%struct.snd_ac97*)* %37, null
  br i1 %38, label %39, label %47

39:                                               ; preds = %29
  %40 = load %struct.snd_ac97*, %struct.snd_ac97** %6, align 8
  %41 = getelementptr inbounds %struct.snd_ac97, %struct.snd_ac97* %40, i32 0, i32 1
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  %44 = load i32 (%struct.snd_ac97*)*, i32 (%struct.snd_ac97*)** %43, align 8
  %45 = load %struct.snd_ac97*, %struct.snd_ac97** %6, align 8
  %46 = call i32 %44(%struct.snd_ac97* %45)
  br label %47

47:                                               ; preds = %39, %29
  store i32 1, i32* %3, align 4
  br label %49

48:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %49

49:                                               ; preds = %48, %47
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

declare dso_local %struct.snd_ac97* @snd_kcontrol_chip(%struct.snd_kcontrol*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
