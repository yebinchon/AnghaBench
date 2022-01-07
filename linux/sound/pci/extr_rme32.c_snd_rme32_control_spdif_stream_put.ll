; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/extr_rme32.c_snd_rme32_control_spdif_stream_put.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/extr_rme32.c_snd_rme32_control_spdif_stream_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i32 }
%struct.snd_ctl_elem_value = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.rme32 = type { i32, i32, i32, i64 }

@RME32_WCR_PRO = common dso_local global i32 0, align 4
@RME32_WCR_EMP = common dso_local global i32 0, align 4
@RME32_IO_CONTROL_REGISTER = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)* @snd_rme32_control_spdif_stream_put to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_rme32_control_spdif_stream_put(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
  %3 = alloca %struct.snd_kcontrol*, align 8
  %4 = alloca %struct.snd_ctl_elem_value*, align 8
  %5 = alloca %struct.rme32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %3, align 8
  store %struct.snd_ctl_elem_value* %1, %struct.snd_ctl_elem_value** %4, align 8
  %8 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %9 = call %struct.rme32* @snd_kcontrol_chip(%struct.snd_kcontrol* %8)
  store %struct.rme32* %9, %struct.rme32** %5, align 8
  %10 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %11 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = call i32 @snd_rme32_convert_from_aes(i32* %12)
  store i32 %13, i32* %7, align 4
  %14 = load %struct.rme32*, %struct.rme32** %5, align 8
  %15 = getelementptr inbounds %struct.rme32, %struct.rme32* %14, i32 0, i32 2
  %16 = call i32 @spin_lock_irq(i32* %15)
  %17 = load i32, i32* %7, align 4
  %18 = load %struct.rme32*, %struct.rme32** %5, align 8
  %19 = getelementptr inbounds %struct.rme32, %struct.rme32* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp ne i32 %17, %20
  %22 = zext i1 %21 to i32
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* %7, align 4
  %24 = load %struct.rme32*, %struct.rme32** %5, align 8
  %25 = getelementptr inbounds %struct.rme32, %struct.rme32* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 8
  %26 = load i32, i32* @RME32_WCR_PRO, align 4
  %27 = load i32, i32* @RME32_WCR_EMP, align 4
  %28 = or i32 %26, %27
  %29 = xor i32 %28, -1
  %30 = load %struct.rme32*, %struct.rme32** %5, align 8
  %31 = getelementptr inbounds %struct.rme32, %struct.rme32* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = and i32 %32, %29
  store i32 %33, i32* %31, align 4
  %34 = load i32, i32* %7, align 4
  %35 = load %struct.rme32*, %struct.rme32** %5, align 8
  %36 = getelementptr inbounds %struct.rme32, %struct.rme32* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = or i32 %37, %34
  store i32 %38, i32* %36, align 4
  %39 = load %struct.rme32*, %struct.rme32** %5, align 8
  %40 = getelementptr inbounds %struct.rme32, %struct.rme32* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.rme32*, %struct.rme32** %5, align 8
  %43 = getelementptr inbounds %struct.rme32, %struct.rme32* %42, i32 0, i32 3
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @RME32_IO_CONTROL_REGISTER, align 8
  %46 = add nsw i64 %44, %45
  %47 = call i32 @writel(i32 %41, i64 %46)
  %48 = load %struct.rme32*, %struct.rme32** %5, align 8
  %49 = getelementptr inbounds %struct.rme32, %struct.rme32* %48, i32 0, i32 2
  %50 = call i32 @spin_unlock_irq(i32* %49)
  %51 = load i32, i32* %6, align 4
  ret i32 %51
}

declare dso_local %struct.rme32* @snd_kcontrol_chip(%struct.snd_kcontrol*) #1

declare dso_local i32 @snd_rme32_convert_from_aes(i32*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
