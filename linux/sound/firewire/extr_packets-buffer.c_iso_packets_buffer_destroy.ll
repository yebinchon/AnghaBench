; ModuleID = '/home/carl/AnghaBench/linux/sound/firewire/extr_packets-buffer.c_iso_packets_buffer_destroy.c'
source_filename = "/home/carl/AnghaBench/linux/sound/firewire/extr_packets-buffer.c_iso_packets_buffer_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iso_packets_buffer = type { i32, i32 }
%struct.fw_unit = type { i32 }
%struct.TYPE_2__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @iso_packets_buffer_destroy(%struct.iso_packets_buffer* %0, %struct.fw_unit* %1) #0 {
  %3 = alloca %struct.iso_packets_buffer*, align 8
  %4 = alloca %struct.fw_unit*, align 8
  store %struct.iso_packets_buffer* %0, %struct.iso_packets_buffer** %3, align 8
  store %struct.fw_unit* %1, %struct.fw_unit** %4, align 8
  %5 = load %struct.iso_packets_buffer*, %struct.iso_packets_buffer** %3, align 8
  %6 = getelementptr inbounds %struct.iso_packets_buffer, %struct.iso_packets_buffer* %5, i32 0, i32 1
  %7 = load %struct.fw_unit*, %struct.fw_unit** %4, align 8
  %8 = call %struct.TYPE_2__* @fw_parent_device(%struct.fw_unit* %7)
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @fw_iso_buffer_destroy(i32* %6, i32 %10)
  %12 = load %struct.iso_packets_buffer*, %struct.iso_packets_buffer** %3, align 8
  %13 = getelementptr inbounds %struct.iso_packets_buffer, %struct.iso_packets_buffer* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @kfree(i32 %14)
  ret void
}

declare dso_local i32 @fw_iso_buffer_destroy(i32*, i32) #1

declare dso_local %struct.TYPE_2__* @fw_parent_device(%struct.fw_unit*) #1

declare dso_local i32 @kfree(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
