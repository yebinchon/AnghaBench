; ModuleID = '/home/carl/AnghaBench/linux/sound/firewire/fireworks/extr_fireworks_command.c_snd_efw_command_get_phys_meters.c'
source_filename = "/home/carl/AnghaBench/linux/sound/firewire/fireworks/extr_fireworks_command.c_snd_efw_command_get_phys_meters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_efw = type { i32 }
%struct.snd_efw_phys_meters = type { i32 }

@EFC_CAT_HWINFO = common dso_local global i32 0, align 4
@EFC_CMD_HWINFO_GET_POLLED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_efw_command_get_phys_meters(%struct.snd_efw* %0, %struct.snd_efw_phys_meters* %1, i32 %2) #0 {
  %4 = alloca %struct.snd_efw*, align 8
  %5 = alloca %struct.snd_efw_phys_meters*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.snd_efw* %0, %struct.snd_efw** %4, align 8
  store %struct.snd_efw_phys_meters* %1, %struct.snd_efw_phys_meters** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.snd_efw_phys_meters*, %struct.snd_efw_phys_meters** %5, align 8
  %11 = bitcast %struct.snd_efw_phys_meters* %10 to i32*
  store i32* %11, i32** %7, align 8
  %12 = load %struct.snd_efw*, %struct.snd_efw** %4, align 8
  %13 = load i32, i32* @EFC_CAT_HWINFO, align 4
  %14 = load i32, i32* @EFC_CMD_HWINFO_GET_POLLED, align 4
  %15 = load %struct.snd_efw_phys_meters*, %struct.snd_efw_phys_meters** %5, align 8
  %16 = bitcast %struct.snd_efw_phys_meters* %15 to i32*
  %17 = load i32, i32* %6, align 4
  %18 = call i32 @efw_transaction(%struct.snd_efw* %12, i32 %13, i32 %14, i32* null, i32 0, i32* %16, i32 %17)
  store i32 %18, i32* %9, align 4
  %19 = load i32, i32* %9, align 4
  %20 = icmp sge i32 %19, 0
  br i1 %20, label %21, label %39

21:                                               ; preds = %3
  store i32 0, i32* %8, align 4
  br label %22

22:                                               ; preds = %35, %21
  %23 = load i32, i32* %8, align 4
  %24 = zext i32 %23 to i64
  %25 = load i32, i32* %6, align 4
  %26 = zext i32 %25 to i64
  %27 = udiv i64 %26, 4
  %28 = icmp ult i64 %24, %27
  br i1 %28, label %29, label %38

29:                                               ; preds = %22
  %30 = load i32*, i32** %7, align 8
  %31 = load i32, i32* %8, align 4
  %32 = zext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %30, i64 %32
  %34 = call i32 @be32_to_cpus(i32* %33)
  br label %35

35:                                               ; preds = %29
  %36 = load i32, i32* %8, align 4
  %37 = add i32 %36, 1
  store i32 %37, i32* %8, align 4
  br label %22

38:                                               ; preds = %22
  br label %39

39:                                               ; preds = %38, %3
  %40 = load i32, i32* %9, align 4
  ret i32 %40
}

declare dso_local i32 @efw_transaction(%struct.snd_efw*, i32, i32, i32*, i32, i32*, i32) #1

declare dso_local i32 @be32_to_cpus(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
