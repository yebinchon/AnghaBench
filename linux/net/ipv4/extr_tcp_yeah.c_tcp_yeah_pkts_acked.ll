; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_yeah.c_tcp_yeah_pkts_acked.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_yeah.c_tcp_yeah_pkts_acked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.ack_sample = type { i32 }
%struct.inet_connection_sock = type { i64 }
%struct.yeah = type { i32 }

@TCP_CA_Open = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sock*, %struct.ack_sample*)* @tcp_yeah_pkts_acked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tcp_yeah_pkts_acked(%struct.sock* %0, %struct.ack_sample* %1) #0 {
  %3 = alloca %struct.sock*, align 8
  %4 = alloca %struct.ack_sample*, align 8
  %5 = alloca %struct.inet_connection_sock*, align 8
  %6 = alloca %struct.yeah*, align 8
  store %struct.sock* %0, %struct.sock** %3, align 8
  store %struct.ack_sample* %1, %struct.ack_sample** %4, align 8
  %7 = load %struct.sock*, %struct.sock** %3, align 8
  %8 = call %struct.inet_connection_sock* @inet_csk(%struct.sock* %7)
  store %struct.inet_connection_sock* %8, %struct.inet_connection_sock** %5, align 8
  %9 = load %struct.sock*, %struct.sock** %3, align 8
  %10 = call %struct.yeah* @inet_csk_ca(%struct.sock* %9)
  store %struct.yeah* %10, %struct.yeah** %6, align 8
  %11 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %5, align 8
  %12 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @TCP_CA_Open, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %22

16:                                               ; preds = %2
  %17 = load %struct.ack_sample*, %struct.ack_sample** %4, align 8
  %18 = getelementptr inbounds %struct.ack_sample, %struct.ack_sample* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.yeah*, %struct.yeah** %6, align 8
  %21 = getelementptr inbounds %struct.yeah, %struct.yeah* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 4
  br label %22

22:                                               ; preds = %16, %2
  %23 = load %struct.sock*, %struct.sock** %3, align 8
  %24 = load %struct.ack_sample*, %struct.ack_sample** %4, align 8
  %25 = call i32 @tcp_vegas_pkts_acked(%struct.sock* %23, %struct.ack_sample* %24)
  ret void
}

declare dso_local %struct.inet_connection_sock* @inet_csk(%struct.sock*) #1

declare dso_local %struct.yeah* @inet_csk_ca(%struct.sock*) #1

declare dso_local i32 @tcp_vegas_pkts_acked(%struct.sock*, %struct.ack_sample*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
