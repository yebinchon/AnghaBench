; ModuleID = '/home/carl/AnghaBench/linux/sound/firewire/bebob/extr_bebob_maudio.c_special_clk_ctl_put.c'
source_filename = "/home/carl/AnghaBench/linux/sound/firewire/bebob/extr_bebob_maudio.c_special_clk_ctl_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i32 }
%struct.snd_ctl_elem_value = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32* }
%struct.snd_bebob = type { i32, %struct.special_params* }
%struct.special_params = type { i32, i32, i32 }

@special_clk_types = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)* @special_clk_ctl_put to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @special_clk_ctl_put(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_kcontrol*, align 8
  %5 = alloca %struct.snd_ctl_elem_value*, align 8
  %6 = alloca %struct.snd_bebob*, align 8
  %7 = alloca %struct.special_params*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %4, align 8
  store %struct.snd_ctl_elem_value* %1, %struct.snd_ctl_elem_value** %5, align 8
  %10 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %11 = call %struct.snd_bebob* @snd_kcontrol_chip(%struct.snd_kcontrol* %10)
  store %struct.snd_bebob* %11, %struct.snd_bebob** %6, align 8
  %12 = load %struct.snd_bebob*, %struct.snd_bebob** %6, align 8
  %13 = getelementptr inbounds %struct.snd_bebob, %struct.snd_bebob* %12, i32 0, i32 1
  %14 = load %struct.special_params*, %struct.special_params** %13, align 8
  store %struct.special_params* %14, %struct.special_params** %7, align 8
  %15 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %5, align 8
  %16 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 0
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %9, align 4
  %22 = load i32, i32* %9, align 4
  %23 = load i32, i32* @special_clk_types, align 4
  %24 = call i32 @ARRAY_SIZE(i32 %23)
  %25 = icmp sge i32 %22, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %2
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %3, align 4
  br label %53

29:                                               ; preds = %2
  %30 = load %struct.snd_bebob*, %struct.snd_bebob** %6, align 8
  %31 = getelementptr inbounds %struct.snd_bebob, %struct.snd_bebob* %30, i32 0, i32 0
  %32 = call i32 @mutex_lock(i32* %31)
  %33 = load %struct.snd_bebob*, %struct.snd_bebob** %6, align 8
  %34 = load i32, i32* %9, align 4
  %35 = load %struct.special_params*, %struct.special_params** %7, align 8
  %36 = getelementptr inbounds %struct.special_params, %struct.special_params* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.special_params*, %struct.special_params** %7, align 8
  %39 = getelementptr inbounds %struct.special_params, %struct.special_params* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.special_params*, %struct.special_params** %7, align 8
  %42 = getelementptr inbounds %struct.special_params, %struct.special_params* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @avc_maudio_set_special_clk(%struct.snd_bebob* %33, i32 %34, i32 %37, i32 %40, i32 %43)
  store i32 %44, i32* %8, align 4
  %45 = load %struct.snd_bebob*, %struct.snd_bebob** %6, align 8
  %46 = getelementptr inbounds %struct.snd_bebob, %struct.snd_bebob* %45, i32 0, i32 0
  %47 = call i32 @mutex_unlock(i32* %46)
  %48 = load i32, i32* %8, align 4
  %49 = icmp sge i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %29
  store i32 1, i32* %8, align 4
  br label %51

51:                                               ; preds = %50, %29
  %52 = load i32, i32* %8, align 4
  store i32 %52, i32* %3, align 4
  br label %53

53:                                               ; preds = %51, %26
  %54 = load i32, i32* %3, align 4
  ret i32 %54
}

declare dso_local %struct.snd_bebob* @snd_kcontrol_chip(%struct.snd_kcontrol*) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @avc_maudio_set_special_clk(%struct.snd_bebob*, i32, i32, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
