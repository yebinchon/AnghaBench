; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/rme9652/extr_rme9652.c_snd_rme9652_put_sync_pref.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/rme9652/extr_rme9652.c_snd_rme9652_put_sync_pref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i32 }
%struct.snd_ctl_elem_value = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }
%struct.snd_rme9652 = type { i64, i32 }

@EBUSY = common dso_local global i32 0, align 4
@RME9652_NCHANNELS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)* @snd_rme9652_put_sync_pref to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_rme9652_put_sync_pref(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_kcontrol*, align 8
  %5 = alloca %struct.snd_ctl_elem_value*, align 8
  %6 = alloca %struct.snd_rme9652*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %4, align 8
  store %struct.snd_ctl_elem_value* %1, %struct.snd_ctl_elem_value** %5, align 8
  %10 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %11 = call %struct.snd_rme9652* @snd_kcontrol_chip(%struct.snd_kcontrol* %10)
  store %struct.snd_rme9652* %11, %struct.snd_rme9652** %6, align 8
  %12 = load %struct.snd_rme9652*, %struct.snd_rme9652** %6, align 8
  %13 = call i32 @snd_rme9652_use_is_exclusive(%struct.snd_rme9652* %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* @EBUSY, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %50

18:                                               ; preds = %2
  %19 = load %struct.snd_rme9652*, %struct.snd_rme9652** %6, align 8
  %20 = getelementptr inbounds %struct.snd_rme9652, %struct.snd_rme9652* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @RME9652_NCHANNELS, align 8
  %23 = icmp eq i64 %21, %22
  %24 = zext i1 %23 to i64
  %25 = select i1 %23, i32 4, i32 3
  store i32 %25, i32* %8, align 4
  %26 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %5, align 8
  %27 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* %8, align 4
  %34 = srem i32 %32, %33
  store i32 %34, i32* %9, align 4
  %35 = load %struct.snd_rme9652*, %struct.snd_rme9652** %6, align 8
  %36 = getelementptr inbounds %struct.snd_rme9652, %struct.snd_rme9652* %35, i32 0, i32 1
  %37 = call i32 @spin_lock_irq(i32* %36)
  %38 = load i32, i32* %9, align 4
  %39 = load %struct.snd_rme9652*, %struct.snd_rme9652** %6, align 8
  %40 = call i32 @rme9652_sync_pref(%struct.snd_rme9652* %39)
  %41 = icmp ne i32 %38, %40
  %42 = zext i1 %41 to i32
  store i32 %42, i32* %7, align 4
  %43 = load %struct.snd_rme9652*, %struct.snd_rme9652** %6, align 8
  %44 = load i32, i32* %9, align 4
  %45 = call i32 @rme9652_set_sync_pref(%struct.snd_rme9652* %43, i32 %44)
  %46 = load %struct.snd_rme9652*, %struct.snd_rme9652** %6, align 8
  %47 = getelementptr inbounds %struct.snd_rme9652, %struct.snd_rme9652* %46, i32 0, i32 1
  %48 = call i32 @spin_unlock_irq(i32* %47)
  %49 = load i32, i32* %7, align 4
  store i32 %49, i32* %3, align 4
  br label %50

50:                                               ; preds = %18, %15
  %51 = load i32, i32* %3, align 4
  ret i32 %51
}

declare dso_local %struct.snd_rme9652* @snd_kcontrol_chip(%struct.snd_kcontrol*) #1

declare dso_local i32 @snd_rme9652_use_is_exclusive(%struct.snd_rme9652*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @rme9652_sync_pref(%struct.snd_rme9652*) #1

declare dso_local i32 @rme9652_set_sync_pref(%struct.snd_rme9652*, i32) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
