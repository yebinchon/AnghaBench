; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/rme9652/extr_hdspm.c_snd_hdspm_put_tristate.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/rme9652/extr_hdspm.c_snd_hdspm_put_tristate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i32 }
%struct.snd_ctl_elem_value = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32* }
%struct.hdspm = type { i32 }

@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)* @snd_hdspm_put_tristate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_hdspm_put_tristate(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_kcontrol*, align 8
  %5 = alloca %struct.snd_ctl_elem_value*, align 8
  %6 = alloca %struct.hdspm*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %4, align 8
  store %struct.snd_ctl_elem_value* %1, %struct.snd_ctl_elem_value** %5, align 8
  %10 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %11 = call %struct.hdspm* @snd_kcontrol_chip(%struct.snd_kcontrol* %10)
  store %struct.hdspm* %11, %struct.hdspm** %6, align 8
  %12 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %13 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %7, align 4
  %15 = load %struct.hdspm*, %struct.hdspm** %6, align 8
  %16 = call i32 @snd_hdspm_use_is_exclusive(%struct.hdspm* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %2
  %19 = load i32, i32* @EBUSY, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %54

21:                                               ; preds = %2
  %22 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %5, align 8
  %23 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 0
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %9, align 4
  %29 = load i32, i32* %9, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %21
  store i32 0, i32* %9, align 4
  br label %32

32:                                               ; preds = %31, %21
  %33 = load i32, i32* %9, align 4
  %34 = icmp sgt i32 %33, 2
  br i1 %34, label %35, label %36

35:                                               ; preds = %32
  store i32 2, i32* %9, align 4
  br label %36

36:                                               ; preds = %35, %32
  %37 = load %struct.hdspm*, %struct.hdspm** %6, align 8
  %38 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %37, i32 0, i32 0
  %39 = call i32 @spin_lock_irq(i32* %38)
  %40 = load i32, i32* %9, align 4
  %41 = load %struct.hdspm*, %struct.hdspm** %6, align 8
  %42 = load i32, i32* %7, align 4
  %43 = call i32 @hdspm_tristate(%struct.hdspm* %41, i32 %42)
  %44 = icmp ne i32 %40, %43
  %45 = zext i1 %44 to i32
  store i32 %45, i32* %8, align 4
  %46 = load %struct.hdspm*, %struct.hdspm** %6, align 8
  %47 = load i32, i32* %9, align 4
  %48 = load i32, i32* %7, align 4
  %49 = call i32 @hdspm_set_tristate(%struct.hdspm* %46, i32 %47, i32 %48)
  %50 = load %struct.hdspm*, %struct.hdspm** %6, align 8
  %51 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %50, i32 0, i32 0
  %52 = call i32 @spin_unlock_irq(i32* %51)
  %53 = load i32, i32* %8, align 4
  store i32 %53, i32* %3, align 4
  br label %54

54:                                               ; preds = %36, %18
  %55 = load i32, i32* %3, align 4
  ret i32 %55
}

declare dso_local %struct.hdspm* @snd_kcontrol_chip(%struct.snd_kcontrol*) #1

declare dso_local i32 @snd_hdspm_use_is_exclusive(%struct.hdspm*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @hdspm_tristate(%struct.hdspm*, i32) #1

declare dso_local i32 @hdspm_set_tristate(%struct.hdspm*, i32, i32) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
