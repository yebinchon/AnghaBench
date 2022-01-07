; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/rme9652/extr_hdspm.c_snd_hdspm_put_pref_sync_ref.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/rme9652/extr_hdspm.c_snd_hdspm_put_pref_sync_ref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i32 }
%struct.snd_ctl_elem_value = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32* }
%struct.hdspm = type { i32, i32 }

@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)* @snd_hdspm_put_pref_sync_ref to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_hdspm_put_pref_sync_ref(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_kcontrol*, align 8
  %5 = alloca %struct.snd_ctl_elem_value*, align 8
  %6 = alloca %struct.hdspm*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %4, align 8
  store %struct.snd_ctl_elem_value* %1, %struct.snd_ctl_elem_value** %5, align 8
  %9 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %10 = call %struct.hdspm* @snd_kcontrol_chip(%struct.snd_kcontrol* %9)
  store %struct.hdspm* %10, %struct.hdspm** %6, align 8
  store i32 0, i32* %8, align 4
  %11 = load %struct.hdspm*, %struct.hdspm** %6, align 8
  %12 = call i32 @snd_hdspm_use_is_exclusive(%struct.hdspm* %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %2
  %15 = load i32, i32* @EBUSY, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %60

17:                                               ; preds = %2
  %18 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %5, align 8
  %19 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 0
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* %7, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %17
  store i32 0, i32* %7, align 4
  br label %40

28:                                               ; preds = %17
  %29 = load i32, i32* %7, align 4
  %30 = load %struct.hdspm*, %struct.hdspm** %6, align 8
  %31 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = icmp sge i32 %29, %32
  br i1 %33, label %34, label %39

34:                                               ; preds = %28
  %35 = load %struct.hdspm*, %struct.hdspm** %6, align 8
  %36 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = sub nsw i32 %37, 1
  store i32 %38, i32* %7, align 4
  br label %39

39:                                               ; preds = %34, %28
  br label %40

40:                                               ; preds = %39, %27
  %41 = load %struct.hdspm*, %struct.hdspm** %6, align 8
  %42 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %41, i32 0, i32 1
  %43 = call i32 @spin_lock_irq(i32* %42)
  %44 = load i32, i32* %7, align 4
  %45 = load %struct.hdspm*, %struct.hdspm** %6, align 8
  %46 = call i32 @hdspm_pref_sync_ref(%struct.hdspm* %45)
  %47 = icmp ne i32 %44, %46
  br i1 %47, label %48, label %55

48:                                               ; preds = %40
  %49 = load %struct.hdspm*, %struct.hdspm** %6, align 8
  %50 = load i32, i32* %7, align 4
  %51 = call i64 @hdspm_set_pref_sync_ref(%struct.hdspm* %49, i32 %50)
  %52 = icmp eq i64 0, %51
  %53 = zext i1 %52 to i64
  %54 = select i1 %52, i32 1, i32 0
  store i32 %54, i32* %8, align 4
  br label %55

55:                                               ; preds = %48, %40
  %56 = load %struct.hdspm*, %struct.hdspm** %6, align 8
  %57 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %56, i32 0, i32 1
  %58 = call i32 @spin_unlock_irq(i32* %57)
  %59 = load i32, i32* %8, align 4
  store i32 %59, i32* %3, align 4
  br label %60

60:                                               ; preds = %55, %14
  %61 = load i32, i32* %3, align 4
  ret i32 %61
}

declare dso_local %struct.hdspm* @snd_kcontrol_chip(%struct.snd_kcontrol*) #1

declare dso_local i32 @snd_hdspm_use_is_exclusive(%struct.hdspm*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @hdspm_pref_sync_ref(%struct.hdspm*) #1

declare dso_local i64 @hdspm_set_pref_sync_ref(%struct.hdspm*, i32) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
