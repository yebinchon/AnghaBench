; ModuleID = '/home/carl/AnghaBench/linux/sound/sparc/extr_amd7930.c_snd_amd7930_put_volume.c'
source_filename = "/home/carl/AnghaBench/linux/sound/sparc/extr_amd7930.c_snd_amd7930_put_volume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i32 }
%struct.snd_ctl_elem_value = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }
%struct.snd_amd7930 = type { i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)* @snd_amd7930_put_volume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_amd7930_put_volume(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
  %3 = alloca %struct.snd_kcontrol*, align 8
  %4 = alloca %struct.snd_ctl_elem_value*, align 8
  %5 = alloca %struct.snd_amd7930*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %3, align 8
  store %struct.snd_ctl_elem_value* %1, %struct.snd_ctl_elem_value** %4, align 8
  %10 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %11 = call %struct.snd_amd7930* @snd_kcontrol_chip(%struct.snd_kcontrol* %10)
  store %struct.snd_amd7930* %11, %struct.snd_amd7930** %5, align 8
  %12 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %13 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %7, align 4
  switch i32 %15, label %23 [
    i32 129, label %16
    i32 130, label %19
    i32 128, label %22
  ]

16:                                               ; preds = %2
  %17 = load %struct.snd_amd7930*, %struct.snd_amd7930** %5, align 8
  %18 = getelementptr inbounds %struct.snd_amd7930, %struct.snd_amd7930* %17, i32 0, i32 0
  store i32* %18, i32** %8, align 8
  br label %26

19:                                               ; preds = %2
  %20 = load %struct.snd_amd7930*, %struct.snd_amd7930** %5, align 8
  %21 = getelementptr inbounds %struct.snd_amd7930, %struct.snd_amd7930* %20, i32 0, i32 1
  store i32* %21, i32** %8, align 8
  br label %26

22:                                               ; preds = %2
  br label %23

23:                                               ; preds = %2, %22
  %24 = load %struct.snd_amd7930*, %struct.snd_amd7930** %5, align 8
  %25 = getelementptr inbounds %struct.snd_amd7930, %struct.snd_amd7930* %24, i32 0, i32 2
  store i32* %25, i32** %8, align 8
  br label %26

26:                                               ; preds = %23, %19, %16
  %27 = load %struct.snd_amd7930*, %struct.snd_amd7930** %5, align 8
  %28 = getelementptr inbounds %struct.snd_amd7930, %struct.snd_amd7930* %27, i32 0, i32 3
  %29 = load i64, i64* %6, align 8
  %30 = call i32 @spin_lock_irqsave(i32* %28, i64 %29)
  %31 = load i32*, i32** %8, align 8
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %34 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 0
  %39 = load i32, i32* %38, align 4
  %40 = icmp ne i32 %32, %39
  br i1 %40, label %41, label %53

41:                                               ; preds = %26
  %42 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %43 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 0
  %48 = load i32, i32* %47, align 4
  %49 = and i32 %48, 255
  %50 = load i32*, i32** %8, align 8
  store i32 %49, i32* %50, align 4
  %51 = load %struct.snd_amd7930*, %struct.snd_amd7930** %5, align 8
  %52 = call i32 @__amd7930_update_map(%struct.snd_amd7930* %51)
  store i32 1, i32* %9, align 4
  br label %54

53:                                               ; preds = %26
  store i32 0, i32* %9, align 4
  br label %54

54:                                               ; preds = %53, %41
  %55 = load %struct.snd_amd7930*, %struct.snd_amd7930** %5, align 8
  %56 = getelementptr inbounds %struct.snd_amd7930, %struct.snd_amd7930* %55, i32 0, i32 3
  %57 = load i64, i64* %6, align 8
  %58 = call i32 @spin_unlock_irqrestore(i32* %56, i64 %57)
  %59 = load i32, i32* %9, align 4
  ret i32 %59
}

declare dso_local %struct.snd_amd7930* @snd_kcontrol_chip(%struct.snd_kcontrol*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @__amd7930_update_map(%struct.snd_amd7930*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
