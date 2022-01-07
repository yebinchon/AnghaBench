; ModuleID = '/home/carl/AnghaBench/linux/net/packet/extr_af_packet.c_match_fanout_group.c'
source_filename = "/home/carl/AnghaBench/linux/net/packet/extr_af_packet.c_match_fanout_group.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.packet_type = type { i64 }
%struct.sock = type { i64 }
%struct.TYPE_2__ = type { i64 }

@PF_PACKET = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.packet_type*, %struct.sock*)* @match_fanout_group to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @match_fanout_group(%struct.packet_type* %0, %struct.sock* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.packet_type*, align 8
  %5 = alloca %struct.sock*, align 8
  store %struct.packet_type* %0, %struct.packet_type** %4, align 8
  store %struct.sock* %1, %struct.sock** %5, align 8
  %6 = load %struct.sock*, %struct.sock** %5, align 8
  %7 = getelementptr inbounds %struct.sock, %struct.sock* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @PF_PACKET, align 8
  %10 = icmp ne i64 %8, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %22

12:                                               ; preds = %2
  %13 = load %struct.packet_type*, %struct.packet_type** %4, align 8
  %14 = getelementptr inbounds %struct.packet_type, %struct.packet_type* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load %struct.sock*, %struct.sock** %5, align 8
  %17 = call %struct.TYPE_2__* @pkt_sk(%struct.sock* %16)
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp eq i64 %15, %19
  %21 = zext i1 %20 to i32
  store i32 %21, i32* %3, align 4
  br label %22

22:                                               ; preds = %12, %11
  %23 = load i32, i32* %3, align 4
  ret i32 %23
}

declare dso_local %struct.TYPE_2__* @pkt_sk(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
