; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/hda/extr_hda_controller.c_azx_send_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/hda/extr_hda_controller.c_azx_send_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hdac_bus = type { i32 }
%struct.azx = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hdac_bus*, i32)* @azx_send_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @azx_send_cmd(%struct.hdac_bus* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hdac_bus*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.azx*, align 8
  store %struct.hdac_bus* %0, %struct.hdac_bus** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.hdac_bus*, %struct.hdac_bus** %4, align 8
  %8 = call %struct.azx* @bus_to_azx(%struct.hdac_bus* %7)
  store %struct.azx* %8, %struct.azx** %6, align 8
  %9 = load %struct.azx*, %struct.azx** %6, align 8
  %10 = getelementptr inbounds %struct.azx, %struct.azx* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %27

14:                                               ; preds = %2
  %15 = load %struct.azx*, %struct.azx** %6, align 8
  %16 = getelementptr inbounds %struct.azx, %struct.azx* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %14
  %20 = load %struct.hdac_bus*, %struct.hdac_bus** %4, align 8
  %21 = load i32, i32* %5, align 4
  %22 = call i32 @azx_single_send_cmd(%struct.hdac_bus* %20, i32 %21)
  store i32 %22, i32* %3, align 4
  br label %27

23:                                               ; preds = %14
  %24 = load %struct.hdac_bus*, %struct.hdac_bus** %4, align 8
  %25 = load i32, i32* %5, align 4
  %26 = call i32 @snd_hdac_bus_send_cmd(%struct.hdac_bus* %24, i32 %25)
  store i32 %26, i32* %3, align 4
  br label %27

27:                                               ; preds = %23, %19, %13
  %28 = load i32, i32* %3, align 4
  ret i32 %28
}

declare dso_local %struct.azx* @bus_to_azx(%struct.hdac_bus*) #1

declare dso_local i32 @azx_single_send_cmd(%struct.hdac_bus*, i32) #1

declare dso_local i32 @snd_hdac_bus_send_cmd(%struct.hdac_bus*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
