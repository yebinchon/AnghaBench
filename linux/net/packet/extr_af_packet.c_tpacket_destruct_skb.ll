; ModuleID = '/home/carl/AnghaBench/linux/net/packet/extr_af_packet.c_tpacket_destruct_skb.c'
source_filename = "/home/carl/AnghaBench/linux/net/packet/extr_af_packet.c_tpacket_destruct_skb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.packet_sock = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@TP_STATUS_AVAILABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sk_buff*)* @tpacket_destruct_skb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tpacket_destruct_skb(%struct.sk_buff* %0) #0 {
  %2 = alloca %struct.sk_buff*, align 8
  %3 = alloca %struct.packet_sock*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %2, align 8
  %6 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %7 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call %struct.packet_sock* @pkt_sk(i32 %8)
  store %struct.packet_sock* %9, %struct.packet_sock** %3, align 8
  %10 = load %struct.packet_sock*, %struct.packet_sock** %3, align 8
  %11 = getelementptr inbounds %struct.packet_sock, %struct.packet_sock* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i64 @likely(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %41

16:                                               ; preds = %1
  %17 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %18 = call i8* @skb_zcopy_get_nouarg(%struct.sk_buff* %17)
  store i8* %18, i8** %4, align 8
  %19 = load %struct.packet_sock*, %struct.packet_sock** %3, align 8
  %20 = getelementptr inbounds %struct.packet_sock, %struct.packet_sock* %19, i32 0, i32 1
  %21 = call i32 @packet_dec_pending(%struct.TYPE_3__* %20)
  %22 = load %struct.packet_sock*, %struct.packet_sock** %3, align 8
  %23 = load i8*, i8** %4, align 8
  %24 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %25 = call i32 @__packet_set_timestamp(%struct.packet_sock* %22, i8* %23, %struct.sk_buff* %24)
  store i32 %25, i32* %5, align 4
  %26 = load %struct.packet_sock*, %struct.packet_sock** %3, align 8
  %27 = load i8*, i8** %4, align 8
  %28 = load i32, i32* @TP_STATUS_AVAILABLE, align 4
  %29 = load i32, i32* %5, align 4
  %30 = or i32 %28, %29
  %31 = call i32 @__packet_set_status(%struct.packet_sock* %26, i8* %27, i32 %30)
  %32 = load %struct.packet_sock*, %struct.packet_sock** %3, align 8
  %33 = getelementptr inbounds %struct.packet_sock, %struct.packet_sock* %32, i32 0, i32 1
  %34 = call i32 @packet_read_pending(%struct.TYPE_3__* %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %40, label %36

36:                                               ; preds = %16
  %37 = load %struct.packet_sock*, %struct.packet_sock** %3, align 8
  %38 = getelementptr inbounds %struct.packet_sock, %struct.packet_sock* %37, i32 0, i32 0
  %39 = call i32 @complete(i32* %38)
  br label %40

40:                                               ; preds = %36, %16
  br label %41

41:                                               ; preds = %40, %1
  %42 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %43 = call i32 @sock_wfree(%struct.sk_buff* %42)
  ret void
}

declare dso_local %struct.packet_sock* @pkt_sk(i32) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i8* @skb_zcopy_get_nouarg(%struct.sk_buff*) #1

declare dso_local i32 @packet_dec_pending(%struct.TYPE_3__*) #1

declare dso_local i32 @__packet_set_timestamp(%struct.packet_sock*, i8*, %struct.sk_buff*) #1

declare dso_local i32 @__packet_set_status(%struct.packet_sock*, i8*, i32) #1

declare dso_local i32 @packet_read_pending(%struct.TYPE_3__*) #1

declare dso_local i32 @complete(i32*) #1

declare dso_local i32 @sock_wfree(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
