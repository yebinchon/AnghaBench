; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/rme9652/extr_hdsp.c_snd_hdsp_put_mixer.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/rme9652/extr_hdsp.c_snd_hdsp_put_mixer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i32 }
%struct.snd_ctl_elem_value = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }
%struct.hdsp = type { i32, i32 }

@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)* @snd_hdsp_put_mixer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_hdsp_put_mixer(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_kcontrol*, align 8
  %5 = alloca %struct.snd_ctl_elem_value*, align 8
  %6 = alloca %struct.hdsp*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %4, align 8
  store %struct.snd_ctl_elem_value* %1, %struct.snd_ctl_elem_value** %5, align 8
  %12 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %13 = call %struct.hdsp* @snd_kcontrol_chip(%struct.snd_kcontrol* %12)
  store %struct.hdsp* %13, %struct.hdsp** %6, align 8
  %14 = load %struct.hdsp*, %struct.hdsp** %6, align 8
  %15 = call i32 @snd_hdsp_use_is_exclusive(%struct.hdsp* %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %2
  %18 = load i32, i32* @EBUSY, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %83

20:                                               ; preds = %2
  %21 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %5, align 8
  %22 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 0
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %8, align 4
  %28 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %5, align 8
  %29 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 1
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %9, align 4
  %35 = load i32, i32* %8, align 4
  %36 = load %struct.hdsp*, %struct.hdsp** %6, align 8
  %37 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = icmp sge i32 %35, %38
  br i1 %39, label %40, label %49

40:                                               ; preds = %20
  %41 = load %struct.hdsp*, %struct.hdsp** %6, align 8
  %42 = load i32, i32* %8, align 4
  %43 = load %struct.hdsp*, %struct.hdsp** %6, align 8
  %44 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = sub nsw i32 %42, %45
  %47 = load i32, i32* %9, align 4
  %48 = call i32 @hdsp_playback_to_output_key(%struct.hdsp* %41, i32 %46, i32 %47)
  store i32 %48, i32* %11, align 4
  br label %54

49:                                               ; preds = %20
  %50 = load %struct.hdsp*, %struct.hdsp** %6, align 8
  %51 = load i32, i32* %8, align 4
  %52 = load i32, i32* %9, align 4
  %53 = call i32 @hdsp_input_to_output_key(%struct.hdsp* %50, i32 %51, i32 %52)
  store i32 %53, i32* %11, align 4
  br label %54

54:                                               ; preds = %49, %40
  %55 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %5, align 8
  %56 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 0
  %59 = load i32*, i32** %58, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 2
  %61 = load i32, i32* %60, align 4
  store i32 %61, i32* %10, align 4
  %62 = load %struct.hdsp*, %struct.hdsp** %6, align 8
  %63 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %62, i32 0, i32 1
  %64 = call i32 @spin_lock_irq(i32* %63)
  %65 = load i32, i32* %10, align 4
  %66 = load %struct.hdsp*, %struct.hdsp** %6, align 8
  %67 = load i32, i32* %11, align 4
  %68 = call i32 @hdsp_read_gain(%struct.hdsp* %66, i32 %67)
  %69 = icmp ne i32 %65, %68
  %70 = zext i1 %69 to i32
  store i32 %70, i32* %7, align 4
  %71 = load i32, i32* %7, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %78

73:                                               ; preds = %54
  %74 = load %struct.hdsp*, %struct.hdsp** %6, align 8
  %75 = load i32, i32* %11, align 4
  %76 = load i32, i32* %10, align 4
  %77 = call i32 @hdsp_write_gain(%struct.hdsp* %74, i32 %75, i32 %76)
  br label %78

78:                                               ; preds = %73, %54
  %79 = load %struct.hdsp*, %struct.hdsp** %6, align 8
  %80 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %79, i32 0, i32 1
  %81 = call i32 @spin_unlock_irq(i32* %80)
  %82 = load i32, i32* %7, align 4
  store i32 %82, i32* %3, align 4
  br label %83

83:                                               ; preds = %78, %17
  %84 = load i32, i32* %3, align 4
  ret i32 %84
}

declare dso_local %struct.hdsp* @snd_kcontrol_chip(%struct.snd_kcontrol*) #1

declare dso_local i32 @snd_hdsp_use_is_exclusive(%struct.hdsp*) #1

declare dso_local i32 @hdsp_playback_to_output_key(%struct.hdsp*, i32, i32) #1

declare dso_local i32 @hdsp_input_to_output_key(%struct.hdsp*, i32, i32) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @hdsp_read_gain(%struct.hdsp*, i32) #1

declare dso_local i32 @hdsp_write_gain(%struct.hdsp*, i32, i32) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
