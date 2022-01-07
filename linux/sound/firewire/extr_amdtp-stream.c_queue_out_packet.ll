; ModuleID = '/home/carl/AnghaBench/linux/sound/firewire/extr_amdtp-stream.c_queue_out_packet.c'
source_filename = "/home/carl/AnghaBench/linux/sound/firewire/extr_amdtp-stream.c_queue_out_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdtp_stream = type { i32 }
%struct.fw_iso_packet = type { i32, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amdtp_stream*, %struct.fw_iso_packet*)* @queue_out_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @queue_out_packet(%struct.amdtp_stream* %0, %struct.fw_iso_packet* %1) #0 {
  %3 = alloca %struct.amdtp_stream*, align 8
  %4 = alloca %struct.fw_iso_packet*, align 8
  store %struct.amdtp_stream* %0, %struct.amdtp_stream** %3, align 8
  store %struct.fw_iso_packet* %1, %struct.fw_iso_packet** %4, align 8
  %5 = load %struct.fw_iso_packet*, %struct.fw_iso_packet** %4, align 8
  %6 = getelementptr inbounds %struct.fw_iso_packet, %struct.fw_iso_packet* %5, i32 0, i32 1
  %7 = load i64, i64* %6, align 8
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %9, label %14

9:                                                ; preds = %2
  %10 = load %struct.fw_iso_packet*, %struct.fw_iso_packet** %4, align 8
  %11 = getelementptr inbounds %struct.fw_iso_packet, %struct.fw_iso_packet* %10, i32 0, i32 2
  %12 = load i64, i64* %11, align 8
  %13 = icmp eq i64 %12, 0
  br label %14

14:                                               ; preds = %9, %2
  %15 = phi i1 [ false, %2 ], [ %13, %9 ]
  %16 = xor i1 %15, true
  %17 = xor i1 %16, true
  %18 = zext i1 %17 to i32
  %19 = load %struct.fw_iso_packet*, %struct.fw_iso_packet** %4, align 8
  %20 = getelementptr inbounds %struct.fw_iso_packet, %struct.fw_iso_packet* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 8
  %21 = load %struct.amdtp_stream*, %struct.amdtp_stream** %3, align 8
  %22 = load %struct.fw_iso_packet*, %struct.fw_iso_packet** %4, align 8
  %23 = call i32 @queue_packet(%struct.amdtp_stream* %21, %struct.fw_iso_packet* %22)
  ret i32 %23
}

declare dso_local i32 @queue_packet(%struct.amdtp_stream*, %struct.fw_iso_packet*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
