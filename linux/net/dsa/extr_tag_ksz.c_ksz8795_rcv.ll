; ModuleID = '/home/carl/AnghaBench/linux/net/dsa/extr_tag_ksz.c_ksz8795_rcv.c'
source_filename = "/home/carl/AnghaBench/linux/net/dsa/extr_tag_ksz.c_ksz8795_rcv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.net_device = type { i32 }
%struct.packet_type = type { i32 }

@KSZ_EGRESS_TAG_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sk_buff* (%struct.sk_buff*, %struct.net_device*, %struct.packet_type*)* @ksz8795_rcv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sk_buff* @ksz8795_rcv(%struct.sk_buff* %0, %struct.net_device* %1, %struct.packet_type* %2) #0 {
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.packet_type*, align 8
  %7 = alloca i32*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.net_device* %1, %struct.net_device** %5, align 8
  store %struct.packet_type* %2, %struct.packet_type** %6, align 8
  %8 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %9 = call i32 @skb_tail_pointer(%struct.sk_buff* %8)
  %10 = load i32, i32* @KSZ_EGRESS_TAG_LEN, align 4
  %11 = sub nsw i32 %9, %10
  %12 = sext i32 %11 to i64
  %13 = inttoptr i64 %12 to i32*
  store i32* %13, i32** %7, align 8
  %14 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %15 = load %struct.net_device*, %struct.net_device** %5, align 8
  %16 = load i32*, i32** %7, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 0
  %18 = load i32, i32* %17, align 4
  %19 = and i32 %18, 7
  %20 = load i32, i32* @KSZ_EGRESS_TAG_LEN, align 4
  %21 = call %struct.sk_buff* @ksz_common_rcv(%struct.sk_buff* %14, %struct.net_device* %15, i32 %19, i32 %20)
  ret %struct.sk_buff* %21
}

declare dso_local i32 @skb_tail_pointer(%struct.sk_buff*) #1

declare dso_local %struct.sk_buff* @ksz_common_rcv(%struct.sk_buff*, %struct.net_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
