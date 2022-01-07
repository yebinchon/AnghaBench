; ModuleID = '/home/carl/AnghaBench/linux/sound/firewire/bebob/extr_bebob_maudio.c_add_special_controls.c'
source_filename = "/home/carl/AnghaBench/linux/sound/firewire/bebob/extr_bebob_maudio.c_add_special_controls.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_bebob = type { i32, %struct.special_params* }
%struct.special_params = type { i32* }
%struct.snd_kcontrol = type { i32 }

@special_clk_ctl = common dso_local global i32 0, align 4
@special_sync_ctl = common dso_local global i32 0, align 4
@special_dig_in_iface_ctl = common dso_local global i32 0, align 4
@special_dig_out_iface_ctl = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_bebob*)* @add_special_controls to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_special_controls(%struct.snd_bebob* %0) #0 {
  %2 = alloca %struct.snd_bebob*, align 8
  %3 = alloca %struct.snd_kcontrol*, align 8
  %4 = alloca %struct.special_params*, align 8
  %5 = alloca i32, align 4
  store %struct.snd_bebob* %0, %struct.snd_bebob** %2, align 8
  %6 = load %struct.snd_bebob*, %struct.snd_bebob** %2, align 8
  %7 = getelementptr inbounds %struct.snd_bebob, %struct.snd_bebob* %6, i32 0, i32 1
  %8 = load %struct.special_params*, %struct.special_params** %7, align 8
  store %struct.special_params* %8, %struct.special_params** %4, align 8
  %9 = load %struct.snd_bebob*, %struct.snd_bebob** %2, align 8
  %10 = call %struct.snd_kcontrol* @snd_ctl_new1(i32* @special_clk_ctl, %struct.snd_bebob* %9)
  store %struct.snd_kcontrol* %10, %struct.snd_kcontrol** %3, align 8
  %11 = load %struct.snd_bebob*, %struct.snd_bebob** %2, align 8
  %12 = getelementptr inbounds %struct.snd_bebob, %struct.snd_bebob* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %15 = call i32 @snd_ctl_add(i32 %13, %struct.snd_kcontrol* %14)
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %5, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %1
  br label %53

19:                                               ; preds = %1
  %20 = load %struct.snd_bebob*, %struct.snd_bebob** %2, align 8
  %21 = call %struct.snd_kcontrol* @snd_ctl_new1(i32* @special_sync_ctl, %struct.snd_bebob* %20)
  store %struct.snd_kcontrol* %21, %struct.snd_kcontrol** %3, align 8
  %22 = load %struct.snd_bebob*, %struct.snd_bebob** %2, align 8
  %23 = getelementptr inbounds %struct.snd_bebob, %struct.snd_bebob* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %26 = call i32 @snd_ctl_add(i32 %24, %struct.snd_kcontrol* %25)
  store i32 %26, i32* %5, align 4
  %27 = load i32, i32* %5, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %19
  br label %53

30:                                               ; preds = %19
  %31 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %32 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %31, i32 0, i32 0
  %33 = load %struct.special_params*, %struct.special_params** %4, align 8
  %34 = getelementptr inbounds %struct.special_params, %struct.special_params* %33, i32 0, i32 0
  store i32* %32, i32** %34, align 8
  %35 = load %struct.snd_bebob*, %struct.snd_bebob** %2, align 8
  %36 = call %struct.snd_kcontrol* @snd_ctl_new1(i32* @special_dig_in_iface_ctl, %struct.snd_bebob* %35)
  store %struct.snd_kcontrol* %36, %struct.snd_kcontrol** %3, align 8
  %37 = load %struct.snd_bebob*, %struct.snd_bebob** %2, align 8
  %38 = getelementptr inbounds %struct.snd_bebob, %struct.snd_bebob* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %41 = call i32 @snd_ctl_add(i32 %39, %struct.snd_kcontrol* %40)
  store i32 %41, i32* %5, align 4
  %42 = load i32, i32* %5, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %30
  br label %53

45:                                               ; preds = %30
  %46 = load %struct.snd_bebob*, %struct.snd_bebob** %2, align 8
  %47 = call %struct.snd_kcontrol* @snd_ctl_new1(i32* @special_dig_out_iface_ctl, %struct.snd_bebob* %46)
  store %struct.snd_kcontrol* %47, %struct.snd_kcontrol** %3, align 8
  %48 = load %struct.snd_bebob*, %struct.snd_bebob** %2, align 8
  %49 = getelementptr inbounds %struct.snd_bebob, %struct.snd_bebob* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %52 = call i32 @snd_ctl_add(i32 %50, %struct.snd_kcontrol* %51)
  store i32 %52, i32* %5, align 4
  br label %53

53:                                               ; preds = %45, %44, %29, %18
  %54 = load i32, i32* %5, align 4
  ret i32 %54
}

declare dso_local %struct.snd_kcontrol* @snd_ctl_new1(i32*, %struct.snd_bebob*) #1

declare dso_local i32 @snd_ctl_add(i32, %struct.snd_kcontrol*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
