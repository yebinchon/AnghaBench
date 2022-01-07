; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/ac97/extr_ac97_patch.c_snd_ac97_ad1986_miclisel_put.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/ac97/extr_ac97_patch.c_snd_ac97_ad1986_miclisel_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i32 }
%struct.snd_ctl_elem_value = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64* }
%struct.snd_ac97 = type { %struct.TYPE_6__*, %struct.TYPE_10__ }
%struct.TYPE_6__ = type { i32 (%struct.snd_ac97*)* }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i8 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)* @snd_ac97_ad1986_miclisel_put to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_ac97_ad1986_miclisel_put(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
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
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 0
  %14 = load i64*, i64** %13, align 8
  %15 = getelementptr inbounds i64, i64* %14, i64 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  %18 = zext i1 %17 to i32
  %19 = trunc i32 %18 to i8
  store i8 %19, i8* %7, align 1
  %20 = load i8, i8* %7, align 1
  %21 = zext i8 %20 to i32
  %22 = load %struct.snd_ac97*, %struct.snd_ac97** %6, align 8
  %23 = getelementptr inbounds %struct.snd_ac97, %struct.snd_ac97* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 0
  %26 = load i8, i8* %25, align 8
  %27 = zext i8 %26 to i32
  %28 = icmp ne i32 %21, %27
  br i1 %28, label %29, label %50

29:                                               ; preds = %2
  %30 = load i8, i8* %7, align 1
  %31 = load %struct.snd_ac97*, %struct.snd_ac97** %6, align 8
  %32 = getelementptr inbounds %struct.snd_ac97, %struct.snd_ac97* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 0
  store i8 %30, i8* %34, align 8
  %35 = load %struct.snd_ac97*, %struct.snd_ac97** %6, align 8
  %36 = getelementptr inbounds %struct.snd_ac97, %struct.snd_ac97* %35, i32 0, i32 0
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %39 = load i32 (%struct.snd_ac97*)*, i32 (%struct.snd_ac97*)** %38, align 8
  %40 = icmp ne i32 (%struct.snd_ac97*)* %39, null
  br i1 %40, label %41, label %49

41:                                               ; preds = %29
  %42 = load %struct.snd_ac97*, %struct.snd_ac97** %6, align 8
  %43 = getelementptr inbounds %struct.snd_ac97, %struct.snd_ac97* %42, i32 0, i32 0
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  %46 = load i32 (%struct.snd_ac97*)*, i32 (%struct.snd_ac97*)** %45, align 8
  %47 = load %struct.snd_ac97*, %struct.snd_ac97** %6, align 8
  %48 = call i32 %46(%struct.snd_ac97* %47)
  br label %49

49:                                               ; preds = %41, %29
  store i32 1, i32* %3, align 4
  br label %51

50:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %51

51:                                               ; preds = %50, %49
  %52 = load i32, i32* %3, align 4
  ret i32 %52
}

declare dso_local %struct.snd_ac97* @snd_kcontrol_chip(%struct.snd_kcontrol*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
