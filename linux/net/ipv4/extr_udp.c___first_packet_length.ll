; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_udp.c___first_packet_length.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_udp.c___first_packet_length.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64 }
%struct.sock = type { i32 }
%struct.sk_buff_head = type { i32 }

@UDP_MIB_CSUMERRORS = common dso_local global i32 0, align 4
@UDP_MIB_INERRORS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sk_buff* (%struct.sock*, %struct.sk_buff_head*, i32*)* @__first_packet_length to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sk_buff* @__first_packet_length(%struct.sock* %0, %struct.sk_buff_head* %1, i32* %2) #0 {
  %4 = alloca %struct.sock*, align 8
  %5 = alloca %struct.sk_buff_head*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  store %struct.sock* %0, %struct.sock** %4, align 8
  store %struct.sk_buff_head* %1, %struct.sk_buff_head** %5, align 8
  store i32* %2, i32** %6, align 8
  br label %8

8:                                                ; preds = %48, %3
  %9 = load %struct.sk_buff_head*, %struct.sk_buff_head** %5, align 8
  %10 = call %struct.sk_buff* @skb_peek(%struct.sk_buff_head* %9)
  store %struct.sk_buff* %10, %struct.sk_buff** %7, align 8
  %11 = icmp ne %struct.sk_buff* %10, null
  br i1 %11, label %12, label %49

12:                                               ; preds = %8
  %13 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %14 = call i64 @udp_lib_checksum_complete(%struct.sk_buff* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %45

16:                                               ; preds = %12
  %17 = load %struct.sock*, %struct.sock** %4, align 8
  %18 = call i32 @sock_net(%struct.sock* %17)
  %19 = load i32, i32* @UDP_MIB_CSUMERRORS, align 4
  %20 = load %struct.sock*, %struct.sock** %4, align 8
  %21 = call i32 @IS_UDPLITE(%struct.sock* %20)
  %22 = call i32 @__UDP_INC_STATS(i32 %18, i32 %19, i32 %21)
  %23 = load %struct.sock*, %struct.sock** %4, align 8
  %24 = call i32 @sock_net(%struct.sock* %23)
  %25 = load i32, i32* @UDP_MIB_INERRORS, align 4
  %26 = load %struct.sock*, %struct.sock** %4, align 8
  %27 = call i32 @IS_UDPLITE(%struct.sock* %26)
  %28 = call i32 @__UDP_INC_STATS(i32 %24, i32 %25, i32 %27)
  %29 = load %struct.sock*, %struct.sock** %4, align 8
  %30 = getelementptr inbounds %struct.sock, %struct.sock* %29, i32 0, i32 0
  %31 = call i32 @atomic_inc(i32* %30)
  %32 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %33 = load %struct.sk_buff_head*, %struct.sk_buff_head** %5, align 8
  %34 = call i32 @__skb_unlink(%struct.sk_buff* %32, %struct.sk_buff_head* %33)
  %35 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %36 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i32*, i32** %6, align 8
  %39 = load i32, i32* %38, align 4
  %40 = sext i32 %39 to i64
  %41 = add nsw i64 %40, %37
  %42 = trunc i64 %41 to i32
  store i32 %42, i32* %38, align 4
  %43 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %44 = call i32 @kfree_skb(%struct.sk_buff* %43)
  br label %48

45:                                               ; preds = %12
  %46 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %47 = call i32 @udp_skb_csum_unnecessary_set(%struct.sk_buff* %46)
  br label %49

48:                                               ; preds = %16
  br label %8

49:                                               ; preds = %45, %8
  %50 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  ret %struct.sk_buff* %50
}

declare dso_local %struct.sk_buff* @skb_peek(%struct.sk_buff_head*) #1

declare dso_local i64 @udp_lib_checksum_complete(%struct.sk_buff*) #1

declare dso_local i32 @__UDP_INC_STATS(i32, i32, i32) #1

declare dso_local i32 @sock_net(%struct.sock*) #1

declare dso_local i32 @IS_UDPLITE(%struct.sock*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @__skb_unlink(%struct.sk_buff*, %struct.sk_buff_head*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @udp_skb_csum_unnecessary_set(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
