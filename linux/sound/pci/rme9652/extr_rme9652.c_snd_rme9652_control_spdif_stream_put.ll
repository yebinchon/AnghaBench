; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/rme9652/extr_rme9652.c_snd_rme9652_control_spdif_stream_put.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/rme9652/extr_rme9652.c_snd_rme9652_control_spdif_stream_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i32 }
%struct.snd_ctl_elem_value = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.snd_rme9652 = type { i32, i32, i32 }

@RME9652_PRO = common dso_local global i32 0, align 4
@RME9652_Dolby = common dso_local global i32 0, align 4
@RME9652_EMP = common dso_local global i32 0, align 4
@RME9652_control_register = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)* @snd_rme9652_control_spdif_stream_put to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_rme9652_control_spdif_stream_put(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
  %3 = alloca %struct.snd_kcontrol*, align 8
  %4 = alloca %struct.snd_ctl_elem_value*, align 8
  %5 = alloca %struct.snd_rme9652*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %3, align 8
  store %struct.snd_ctl_elem_value* %1, %struct.snd_ctl_elem_value** %4, align 8
  %8 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %9 = call %struct.snd_rme9652* @snd_kcontrol_chip(%struct.snd_kcontrol* %8)
  store %struct.snd_rme9652* %9, %struct.snd_rme9652** %5, align 8
  %10 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %11 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = call i32 @snd_rme9652_convert_from_aes(i32* %12)
  store i32 %13, i32* %7, align 4
  %14 = load %struct.snd_rme9652*, %struct.snd_rme9652** %5, align 8
  %15 = getelementptr inbounds %struct.snd_rme9652, %struct.snd_rme9652* %14, i32 0, i32 2
  %16 = call i32 @spin_lock_irq(i32* %15)
  %17 = load i32, i32* %7, align 4
  %18 = load %struct.snd_rme9652*, %struct.snd_rme9652** %5, align 8
  %19 = getelementptr inbounds %struct.snd_rme9652, %struct.snd_rme9652* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %17, %20
  %22 = zext i1 %21 to i32
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* %7, align 4
  %24 = load %struct.snd_rme9652*, %struct.snd_rme9652** %5, align 8
  %25 = getelementptr inbounds %struct.snd_rme9652, %struct.snd_rme9652* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 4
  %26 = load i32, i32* @RME9652_PRO, align 4
  %27 = load i32, i32* @RME9652_Dolby, align 4
  %28 = or i32 %26, %27
  %29 = load i32, i32* @RME9652_EMP, align 4
  %30 = or i32 %28, %29
  %31 = xor i32 %30, -1
  %32 = load %struct.snd_rme9652*, %struct.snd_rme9652** %5, align 8
  %33 = getelementptr inbounds %struct.snd_rme9652, %struct.snd_rme9652* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = and i32 %34, %31
  store i32 %35, i32* %33, align 4
  %36 = load %struct.snd_rme9652*, %struct.snd_rme9652** %5, align 8
  %37 = load i32, i32* @RME9652_control_register, align 4
  %38 = load i32, i32* %7, align 4
  %39 = load %struct.snd_rme9652*, %struct.snd_rme9652** %5, align 8
  %40 = getelementptr inbounds %struct.snd_rme9652, %struct.snd_rme9652* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = or i32 %41, %38
  store i32 %42, i32* %40, align 4
  %43 = call i32 @rme9652_write(%struct.snd_rme9652* %36, i32 %37, i32 %42)
  %44 = load %struct.snd_rme9652*, %struct.snd_rme9652** %5, align 8
  %45 = getelementptr inbounds %struct.snd_rme9652, %struct.snd_rme9652* %44, i32 0, i32 2
  %46 = call i32 @spin_unlock_irq(i32* %45)
  %47 = load i32, i32* %6, align 4
  ret i32 %47
}

declare dso_local %struct.snd_rme9652* @snd_kcontrol_chip(%struct.snd_kcontrol*) #1

declare dso_local i32 @snd_rme9652_convert_from_aes(i32*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @rme9652_write(%struct.snd_rme9652*, i32, i32) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
