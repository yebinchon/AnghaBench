; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/intel/skylake/extr_skl-messages.c_skl_suspend_dsp.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/intel/skylake/extr_skl-messages.c_skl_suspend_dsp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.skl_dev = type { i32 }
%struct.hdac_bus = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @skl_suspend_dsp(%struct.skl_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.skl_dev*, align 8
  %4 = alloca %struct.hdac_bus*, align 8
  %5 = alloca i32, align 4
  store %struct.skl_dev* %0, %struct.skl_dev** %3, align 8
  %6 = load %struct.skl_dev*, %struct.skl_dev** %3, align 8
  %7 = call %struct.hdac_bus* @skl_to_bus(%struct.skl_dev* %6)
  store %struct.hdac_bus* %7, %struct.hdac_bus** %4, align 8
  %8 = load %struct.hdac_bus*, %struct.hdac_bus** %4, align 8
  %9 = getelementptr inbounds %struct.hdac_bus, %struct.hdac_bus* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %27

13:                                               ; preds = %1
  %14 = load %struct.skl_dev*, %struct.skl_dev** %3, align 8
  %15 = getelementptr inbounds %struct.skl_dev, %struct.skl_dev* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @skl_dsp_sleep(i32 %16)
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* %5, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %13
  %21 = load i32, i32* %5, align 4
  store i32 %21, i32* %2, align 4
  br label %27

22:                                               ; preds = %13
  %23 = load %struct.hdac_bus*, %struct.hdac_bus** %4, align 8
  %24 = call i32 @snd_hdac_ext_bus_ppcap_int_enable(%struct.hdac_bus* %23, i32 0)
  %25 = load %struct.hdac_bus*, %struct.hdac_bus** %4, align 8
  %26 = call i32 @snd_hdac_ext_bus_ppcap_enable(%struct.hdac_bus* %25, i32 0)
  store i32 0, i32* %2, align 4
  br label %27

27:                                               ; preds = %22, %20, %12
  %28 = load i32, i32* %2, align 4
  ret i32 %28
}

declare dso_local %struct.hdac_bus* @skl_to_bus(%struct.skl_dev*) #1

declare dso_local i32 @skl_dsp_sleep(i32) #1

declare dso_local i32 @snd_hdac_ext_bus_ppcap_int_enable(%struct.hdac_bus*, i32) #1

declare dso_local i32 @snd_hdac_ext_bus_ppcap_enable(%struct.hdac_bus*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
