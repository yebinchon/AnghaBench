; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_westwood.c_tcp_westwood_pkts_acked.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_westwood.c_tcp_westwood_pkts_acked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.ack_sample = type { i64 }
%struct.westwood = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sock*, %struct.ack_sample*)* @tcp_westwood_pkts_acked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tcp_westwood_pkts_acked(%struct.sock* %0, %struct.ack_sample* %1) #0 {
  %3 = alloca %struct.sock*, align 8
  %4 = alloca %struct.ack_sample*, align 8
  %5 = alloca %struct.westwood*, align 8
  store %struct.sock* %0, %struct.sock** %3, align 8
  store %struct.ack_sample* %1, %struct.ack_sample** %4, align 8
  %6 = load %struct.sock*, %struct.sock** %3, align 8
  %7 = call %struct.westwood* @inet_csk_ca(%struct.sock* %6)
  store %struct.westwood* %7, %struct.westwood** %5, align 8
  %8 = load %struct.ack_sample*, %struct.ack_sample** %4, align 8
  %9 = getelementptr inbounds %struct.ack_sample, %struct.ack_sample* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp sgt i64 %10, 0
  br i1 %11, label %12, label %19

12:                                               ; preds = %2
  %13 = load %struct.ack_sample*, %struct.ack_sample** %4, align 8
  %14 = getelementptr inbounds %struct.ack_sample, %struct.ack_sample* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = call i32 @usecs_to_jiffies(i64 %15)
  %17 = load %struct.westwood*, %struct.westwood** %5, align 8
  %18 = getelementptr inbounds %struct.westwood, %struct.westwood* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 4
  br label %19

19:                                               ; preds = %12, %2
  ret void
}

declare dso_local %struct.westwood* @inet_csk_ca(%struct.sock*) #1

declare dso_local i32 @usecs_to_jiffies(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
