; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/extr_rme96.c_snd_rme96_dac_volume_put.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/extr_rme96.c_snd_rme96_dac_volume_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i32 }
%struct.snd_ctl_elem_value = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }
%struct.rme96 = type { i32*, i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)* @snd_rme96_dac_volume_put to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_rme96_dac_volume_put(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_kcontrol*, align 8
  %5 = alloca %struct.snd_ctl_elem_value*, align 8
  %6 = alloca %struct.rme96*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %4, align 8
  store %struct.snd_ctl_elem_value* %1, %struct.snd_ctl_elem_value** %5, align 8
  %10 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %11 = call %struct.rme96* @snd_kcontrol_chip(%struct.snd_kcontrol* %10)
  store %struct.rme96* %11, %struct.rme96** %6, align 8
  store i32 0, i32* %7, align 4
  %12 = load %struct.rme96*, %struct.rme96** %6, align 8
  %13 = call i32 @RME96_HAS_ANALOG_OUT(%struct.rme96* %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %84

18:                                               ; preds = %2
  %19 = load %struct.rme96*, %struct.rme96** %6, align 8
  %20 = call i32 @RME96_185X_MAX_OUT(%struct.rme96* %19)
  store i32 %20, i32* %9, align 4
  %21 = load %struct.rme96*, %struct.rme96** %6, align 8
  %22 = getelementptr inbounds %struct.rme96, %struct.rme96* %21, i32 0, i32 1
  %23 = call i32 @spin_lock_irq(i32* %22)
  %24 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %5, align 8
  %25 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 0
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %8, align 4
  %31 = load i32, i32* %8, align 4
  %32 = load %struct.rme96*, %struct.rme96** %6, align 8
  %33 = getelementptr inbounds %struct.rme96, %struct.rme96* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 0
  %36 = load i32, i32* %35, align 4
  %37 = icmp ne i32 %31, %36
  br i1 %37, label %38, label %48

38:                                               ; preds = %18
  %39 = load i32, i32* %8, align 4
  %40 = load i32, i32* %9, align 4
  %41 = icmp ule i32 %39, %40
  br i1 %41, label %42, label %48

42:                                               ; preds = %38
  %43 = load i32, i32* %8, align 4
  %44 = load %struct.rme96*, %struct.rme96** %6, align 8
  %45 = getelementptr inbounds %struct.rme96, %struct.rme96* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 0
  store i32 %43, i32* %47, align 4
  store i32 1, i32* %7, align 4
  br label %48

48:                                               ; preds = %42, %38, %18
  %49 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %5, align 8
  %50 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 1
  %55 = load i32, i32* %54, align 4
  store i32 %55, i32* %8, align 4
  %56 = load i32, i32* %8, align 4
  %57 = load %struct.rme96*, %struct.rme96** %6, align 8
  %58 = getelementptr inbounds %struct.rme96, %struct.rme96* %57, i32 0, i32 0
  %59 = load i32*, i32** %58, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 1
  %61 = load i32, i32* %60, align 4
  %62 = icmp ne i32 %56, %61
  br i1 %62, label %63, label %73

63:                                               ; preds = %48
  %64 = load i32, i32* %8, align 4
  %65 = load i32, i32* %9, align 4
  %66 = icmp ule i32 %64, %65
  br i1 %66, label %67, label %73

67:                                               ; preds = %63
  %68 = load i32, i32* %8, align 4
  %69 = load %struct.rme96*, %struct.rme96** %6, align 8
  %70 = getelementptr inbounds %struct.rme96, %struct.rme96* %69, i32 0, i32 0
  %71 = load i32*, i32** %70, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 1
  store i32 %68, i32* %72, align 4
  store i32 1, i32* %7, align 4
  br label %73

73:                                               ; preds = %67, %63, %48
  %74 = load i32, i32* %7, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %73
  %77 = load %struct.rme96*, %struct.rme96** %6, align 8
  %78 = call i32 @snd_rme96_apply_dac_volume(%struct.rme96* %77)
  br label %79

79:                                               ; preds = %76, %73
  %80 = load %struct.rme96*, %struct.rme96** %6, align 8
  %81 = getelementptr inbounds %struct.rme96, %struct.rme96* %80, i32 0, i32 1
  %82 = call i32 @spin_unlock_irq(i32* %81)
  %83 = load i32, i32* %7, align 4
  store i32 %83, i32* %3, align 4
  br label %84

84:                                               ; preds = %79, %15
  %85 = load i32, i32* %3, align 4
  ret i32 %85
}

declare dso_local %struct.rme96* @snd_kcontrol_chip(%struct.snd_kcontrol*) #1

declare dso_local i32 @RME96_HAS_ANALOG_OUT(%struct.rme96*) #1

declare dso_local i32 @RME96_185X_MAX_OUT(%struct.rme96*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @snd_rme96_apply_dac_volume(%struct.rme96*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
