; ModuleID = '/home/carl/AnghaBench/linux/net/packet/extr_af_packet.c___register_prot_hook.c'
source_filename = "/home/carl/AnghaBench/linux/net/packet/extr_af_packet.c___register_prot_hook.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.packet_sock = type { i32, i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sock*)* @__register_prot_hook to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__register_prot_hook(%struct.sock* %0) #0 {
  %2 = alloca %struct.sock*, align 8
  %3 = alloca %struct.packet_sock*, align 8
  store %struct.sock* %0, %struct.sock** %2, align 8
  %4 = load %struct.sock*, %struct.sock** %2, align 8
  %5 = call %struct.packet_sock* @pkt_sk(%struct.sock* %4)
  store %struct.packet_sock* %5, %struct.packet_sock** %3, align 8
  %6 = load %struct.packet_sock*, %struct.packet_sock** %3, align 8
  %7 = getelementptr inbounds %struct.packet_sock, %struct.packet_sock* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %28, label %10

10:                                               ; preds = %1
  %11 = load %struct.packet_sock*, %struct.packet_sock** %3, align 8
  %12 = getelementptr inbounds %struct.packet_sock, %struct.packet_sock* %11, i32 0, i32 2
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %10
  %16 = load %struct.sock*, %struct.sock** %2, align 8
  %17 = load %struct.packet_sock*, %struct.packet_sock** %3, align 8
  %18 = call i32 @__fanout_link(%struct.sock* %16, %struct.packet_sock* %17)
  br label %23

19:                                               ; preds = %10
  %20 = load %struct.packet_sock*, %struct.packet_sock** %3, align 8
  %21 = getelementptr inbounds %struct.packet_sock, %struct.packet_sock* %20, i32 0, i32 1
  %22 = call i32 @dev_add_pack(i32* %21)
  br label %23

23:                                               ; preds = %19, %15
  %24 = load %struct.sock*, %struct.sock** %2, align 8
  %25 = call i32 @sock_hold(%struct.sock* %24)
  %26 = load %struct.packet_sock*, %struct.packet_sock** %3, align 8
  %27 = getelementptr inbounds %struct.packet_sock, %struct.packet_sock* %26, i32 0, i32 0
  store i32 1, i32* %27, align 8
  br label %28

28:                                               ; preds = %23, %1
  ret void
}

declare dso_local %struct.packet_sock* @pkt_sk(%struct.sock*) #1

declare dso_local i32 @__fanout_link(%struct.sock*, %struct.packet_sock*) #1

declare dso_local i32 @dev_add_pack(i32*) #1

declare dso_local i32 @sock_hold(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
