; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/rme9652/extr_hdsp.c_snd_hdsp_put_spdif_in.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/rme9652/extr_hdsp.c_snd_hdsp_put_spdif_in.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i32 }
%struct.snd_ctl_elem_value = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }
%struct.hdsp = type { i64, i32 }

@EBUSY = common dso_local global i32 0, align 4
@H9632 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)* @snd_hdsp_put_spdif_in to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_hdsp_put_spdif_in(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_kcontrol*, align 8
  %5 = alloca %struct.snd_ctl_elem_value*, align 8
  %6 = alloca %struct.hdsp*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %4, align 8
  store %struct.snd_ctl_elem_value* %1, %struct.snd_ctl_elem_value** %5, align 8
  %9 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %10 = call %struct.hdsp* @snd_kcontrol_chip(%struct.snd_kcontrol* %9)
  store %struct.hdsp* %10, %struct.hdsp** %6, align 8
  %11 = load %struct.hdsp*, %struct.hdsp** %6, align 8
  %12 = call i32 @snd_hdsp_use_is_exclusive(%struct.hdsp* %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %2
  %15 = load i32, i32* @EBUSY, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %52

17:                                               ; preds = %2
  %18 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %5, align 8
  %19 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.hdsp*, %struct.hdsp** %6, align 8
  %26 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @H9632, align 8
  %29 = icmp eq i64 %27, %28
  %30 = zext i1 %29 to i64
  %31 = select i1 %29, i32 4, i32 3
  %32 = srem i32 %24, %31
  store i32 %32, i32* %8, align 4
  %33 = load %struct.hdsp*, %struct.hdsp** %6, align 8
  %34 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %33, i32 0, i32 1
  %35 = call i32 @spin_lock_irq(i32* %34)
  %36 = load i32, i32* %8, align 4
  %37 = load %struct.hdsp*, %struct.hdsp** %6, align 8
  %38 = call i32 @hdsp_spdif_in(%struct.hdsp* %37)
  %39 = icmp ne i32 %36, %38
  %40 = zext i1 %39 to i32
  store i32 %40, i32* %7, align 4
  %41 = load i32, i32* %7, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %17
  %44 = load %struct.hdsp*, %struct.hdsp** %6, align 8
  %45 = load i32, i32* %8, align 4
  %46 = call i32 @hdsp_set_spdif_input(%struct.hdsp* %44, i32 %45)
  br label %47

47:                                               ; preds = %43, %17
  %48 = load %struct.hdsp*, %struct.hdsp** %6, align 8
  %49 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %48, i32 0, i32 1
  %50 = call i32 @spin_unlock_irq(i32* %49)
  %51 = load i32, i32* %7, align 4
  store i32 %51, i32* %3, align 4
  br label %52

52:                                               ; preds = %47, %14
  %53 = load i32, i32* %3, align 4
  ret i32 %53
}

declare dso_local %struct.hdsp* @snd_kcontrol_chip(%struct.snd_kcontrol*) #1

declare dso_local i32 @snd_hdsp_use_is_exclusive(%struct.hdsp*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @hdsp_spdif_in(%struct.hdsp*) #1

declare dso_local i32 @hdsp_set_spdif_input(%struct.hdsp*, i32) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
