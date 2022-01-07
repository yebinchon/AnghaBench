; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_udp.c_udp_set_dev_scratch.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_udp.c_udp_set_dev_scratch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32, i32 }
%struct.udp_dev_scratch = type { i32, i32, i32, i32 }

@UDP_SKB_IS_STATELESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sk_buff*)* @udp_set_dev_scratch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @udp_set_dev_scratch(%struct.sk_buff* %0) #0 {
  %2 = alloca %struct.sk_buff*, align 8
  %3 = alloca %struct.udp_dev_scratch*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %2, align 8
  %4 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %5 = call %struct.udp_dev_scratch* @udp_skb_scratch(%struct.sk_buff* %4)
  store %struct.udp_dev_scratch* %5, %struct.udp_dev_scratch** %3, align 8
  %6 = call i32 @BUILD_BUG_ON(i32 1)
  %7 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %8 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.udp_dev_scratch*, %struct.udp_dev_scratch** %3, align 8
  %11 = getelementptr inbounds %struct.udp_dev_scratch, %struct.udp_dev_scratch* %10, i32 0, i32 2
  store i32 %9, i32* %11, align 4
  %12 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %13 = call i32 @skb_sec_path(%struct.sk_buff* %12)
  %14 = icmp ne i32 %13, 0
  %15 = xor i1 %14, true
  %16 = zext i1 %15 to i32
  %17 = call i64 @likely(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %1
  %20 = load i32, i32* @UDP_SKB_IS_STATELESS, align 4
  %21 = load %struct.udp_dev_scratch*, %struct.udp_dev_scratch** %3, align 8
  %22 = getelementptr inbounds %struct.udp_dev_scratch, %struct.udp_dev_scratch* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = or i32 %23, %20
  store i32 %24, i32* %22, align 4
  br label %25

25:                                               ; preds = %19, %1
  ret void
}

declare dso_local %struct.udp_dev_scratch* @udp_skb_scratch(%struct.sk_buff*) #1

declare dso_local i32 @BUILD_BUG_ON(i32) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @skb_sec_path(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
