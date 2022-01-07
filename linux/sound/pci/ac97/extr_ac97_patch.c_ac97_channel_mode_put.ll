; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/ac97/extr_ac97_patch.c_ac97_channel_mode_put.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/ac97/extr_ac97_patch.c_ac97_channel_mode_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i8 }
%struct.snd_ctl_elem_value = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i8* }
%struct.snd_ac97 = type { i8, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 (%struct.snd_ac97*)* }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)* @ac97_channel_mode_put to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ac97_channel_mode_put(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
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
  %14 = load i8*, i8** %13, align 8
  %15 = getelementptr inbounds i8, i8* %14, i64 0
  %16 = load i8, i8* %15, align 1
  store i8 %16, i8* %7, align 1
  %17 = load i8, i8* %7, align 1
  %18 = zext i8 %17 to i32
  %19 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %20 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %19, i32 0, i32 0
  %21 = load i8, i8* %20, align 1
  %22 = zext i8 %21 to i32
  %23 = icmp sge i32 %18, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %2
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %3, align 4
  br label %55

27:                                               ; preds = %2
  %28 = load i8, i8* %7, align 1
  %29 = zext i8 %28 to i32
  %30 = load %struct.snd_ac97*, %struct.snd_ac97** %6, align 8
  %31 = getelementptr inbounds %struct.snd_ac97, %struct.snd_ac97* %30, i32 0, i32 0
  %32 = load i8, i8* %31, align 8
  %33 = zext i8 %32 to i32
  %34 = icmp ne i32 %29, %33
  br i1 %34, label %35, label %54

35:                                               ; preds = %27
  %36 = load i8, i8* %7, align 1
  %37 = load %struct.snd_ac97*, %struct.snd_ac97** %6, align 8
  %38 = getelementptr inbounds %struct.snd_ac97, %struct.snd_ac97* %37, i32 0, i32 0
  store i8 %36, i8* %38, align 8
  %39 = load %struct.snd_ac97*, %struct.snd_ac97** %6, align 8
  %40 = getelementptr inbounds %struct.snd_ac97, %struct.snd_ac97* %39, i32 0, i32 1
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = load i32 (%struct.snd_ac97*)*, i32 (%struct.snd_ac97*)** %42, align 8
  %44 = icmp ne i32 (%struct.snd_ac97*)* %43, null
  br i1 %44, label %45, label %53

45:                                               ; preds = %35
  %46 = load %struct.snd_ac97*, %struct.snd_ac97** %6, align 8
  %47 = getelementptr inbounds %struct.snd_ac97, %struct.snd_ac97* %46, i32 0, i32 1
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  %50 = load i32 (%struct.snd_ac97*)*, i32 (%struct.snd_ac97*)** %49, align 8
  %51 = load %struct.snd_ac97*, %struct.snd_ac97** %6, align 8
  %52 = call i32 %50(%struct.snd_ac97* %51)
  br label %53

53:                                               ; preds = %45, %35
  store i32 1, i32* %3, align 4
  br label %55

54:                                               ; preds = %27
  store i32 0, i32* %3, align 4
  br label %55

55:                                               ; preds = %54, %53, %24
  %56 = load i32, i32* %3, align 4
  ret i32 %56
}

declare dso_local %struct.snd_ac97* @snd_kcontrol_chip(%struct.snd_kcontrol*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
