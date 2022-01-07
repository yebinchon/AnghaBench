; ModuleID = '/home/carl/AnghaBench/linux/net/llc/extr_af_llc.c_llc_cmsg_rcv.c'
source_filename = "/home/carl/AnghaBench/linux/net/llc/extr_af_llc.c_llc_cmsg_rcv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msghdr = type { i32 }
%struct.sk_buff = type { i32 }
%struct.llc_sock = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.llc_pktinfo = type { i32, i32, i32 }

@LLC_CMSG_PKTINFO = common dso_local global i32 0, align 4
@SOL_LLC = common dso_local global i32 0, align 4
@LLC_OPT_PKTINFO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.msghdr*, %struct.sk_buff*)* @llc_cmsg_rcv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @llc_cmsg_rcv(%struct.msghdr* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.msghdr*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.llc_sock*, align 8
  %6 = alloca %struct.llc_pktinfo, align 4
  store %struct.msghdr* %0, %struct.msghdr** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %7 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %8 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call %struct.llc_sock* @llc_sk(i32 %9)
  store %struct.llc_sock* %10, %struct.llc_sock** %5, align 8
  %11 = load %struct.llc_sock*, %struct.llc_sock** %5, align 8
  %12 = getelementptr inbounds %struct.llc_sock, %struct.llc_sock* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @LLC_CMSG_PKTINFO, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %39

17:                                               ; preds = %2
  %18 = call i32 @memset(%struct.llc_pktinfo* %6, i32 0, i32 12)
  %19 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %20 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call %struct.llc_sock* @llc_sk(i32 %21)
  %23 = getelementptr inbounds %struct.llc_sock, %struct.llc_sock* %22, i32 0, i32 1
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = getelementptr inbounds %struct.llc_pktinfo, %struct.llc_pktinfo* %6, i32 0, i32 2
  store i32 %26, i32* %27, align 4
  %28 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %29 = getelementptr inbounds %struct.llc_pktinfo, %struct.llc_pktinfo* %6, i32 0, i32 1
  %30 = call i32 @llc_pdu_decode_dsap(%struct.sk_buff* %28, i32* %29)
  %31 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %32 = getelementptr inbounds %struct.llc_pktinfo, %struct.llc_pktinfo* %6, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @llc_pdu_decode_da(%struct.sk_buff* %31, i32 %33)
  %35 = load %struct.msghdr*, %struct.msghdr** %3, align 8
  %36 = load i32, i32* @SOL_LLC, align 4
  %37 = load i32, i32* @LLC_OPT_PKTINFO, align 4
  %38 = call i32 @put_cmsg(%struct.msghdr* %35, i32 %36, i32 %37, i32 12, %struct.llc_pktinfo* %6)
  br label %39

39:                                               ; preds = %17, %2
  ret void
}

declare dso_local %struct.llc_sock* @llc_sk(i32) #1

declare dso_local i32 @memset(%struct.llc_pktinfo*, i32, i32) #1

declare dso_local i32 @llc_pdu_decode_dsap(%struct.sk_buff*, i32*) #1

declare dso_local i32 @llc_pdu_decode_da(%struct.sk_buff*, i32) #1

declare dso_local i32 @put_cmsg(%struct.msghdr*, i32, i32, i32, %struct.llc_pktinfo*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
