; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_sigmadsp.c_sigmadsp_ctrl_get.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_sigmadsp.c_sigmadsp_ctrl_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i64 }
%struct.snd_ctl_elem_value = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.sigmadsp_control = type { i32, i32, i32, i32 }
%struct.sigmadsp = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)* @sigmadsp_ctrl_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sigmadsp_ctrl_get(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
  %3 = alloca %struct.snd_kcontrol*, align 8
  %4 = alloca %struct.snd_ctl_elem_value*, align 8
  %5 = alloca %struct.sigmadsp_control*, align 8
  %6 = alloca %struct.sigmadsp*, align 8
  %7 = alloca i32, align 4
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %3, align 8
  store %struct.snd_ctl_elem_value* %1, %struct.snd_ctl_elem_value** %4, align 8
  %8 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %9 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = inttoptr i64 %10 to i8*
  %12 = bitcast i8* %11 to %struct.sigmadsp_control*
  store %struct.sigmadsp_control* %12, %struct.sigmadsp_control** %5, align 8
  %13 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %14 = call %struct.sigmadsp* @snd_kcontrol_chip(%struct.snd_kcontrol* %13)
  store %struct.sigmadsp* %14, %struct.sigmadsp** %6, align 8
  store i32 0, i32* %7, align 4
  %15 = load %struct.sigmadsp*, %struct.sigmadsp** %6, align 8
  %16 = getelementptr inbounds %struct.sigmadsp, %struct.sigmadsp* %15, i32 0, i32 0
  %17 = call i32 @mutex_lock(i32* %16)
  %18 = load %struct.sigmadsp_control*, %struct.sigmadsp_control** %5, align 8
  %19 = getelementptr inbounds %struct.sigmadsp_control, %struct.sigmadsp_control* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %34, label %22

22:                                               ; preds = %2
  %23 = load %struct.sigmadsp*, %struct.sigmadsp** %6, align 8
  %24 = load %struct.sigmadsp_control*, %struct.sigmadsp_control** %5, align 8
  %25 = getelementptr inbounds %struct.sigmadsp_control, %struct.sigmadsp_control* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.sigmadsp_control*, %struct.sigmadsp_control** %5, align 8
  %28 = getelementptr inbounds %struct.sigmadsp_control, %struct.sigmadsp_control* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.sigmadsp_control*, %struct.sigmadsp_control** %5, align 8
  %31 = getelementptr inbounds %struct.sigmadsp_control, %struct.sigmadsp_control* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @sigmadsp_read(%struct.sigmadsp* %23, i32 %26, i32 %29, i32 %32)
  store i32 %33, i32* %7, align 4
  br label %34

34:                                               ; preds = %22, %2
  %35 = load i32, i32* %7, align 4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %52

37:                                               ; preds = %34
  %38 = load %struct.sigmadsp_control*, %struct.sigmadsp_control** %5, align 8
  %39 = getelementptr inbounds %struct.sigmadsp_control, %struct.sigmadsp_control* %38, i32 0, i32 0
  store i32 1, i32* %39, align 4
  %40 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %41 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.sigmadsp_control*, %struct.sigmadsp_control** %5, align 8
  %46 = getelementptr inbounds %struct.sigmadsp_control, %struct.sigmadsp_control* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.sigmadsp_control*, %struct.sigmadsp_control** %5, align 8
  %49 = getelementptr inbounds %struct.sigmadsp_control, %struct.sigmadsp_control* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @memcpy(i32 %44, i32 %47, i32 %50)
  br label %52

52:                                               ; preds = %37, %34
  %53 = load %struct.sigmadsp*, %struct.sigmadsp** %6, align 8
  %54 = getelementptr inbounds %struct.sigmadsp, %struct.sigmadsp* %53, i32 0, i32 0
  %55 = call i32 @mutex_unlock(i32* %54)
  %56 = load i32, i32* %7, align 4
  ret i32 %56
}

declare dso_local %struct.sigmadsp* @snd_kcontrol_chip(%struct.snd_kcontrol*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @sigmadsp_read(%struct.sigmadsp*, i32, i32, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
