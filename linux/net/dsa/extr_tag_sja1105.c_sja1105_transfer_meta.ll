; ModuleID = '/home/carl/AnghaBench/linux/net/dsa/extr_tag_sja1105.c_sja1105_transfer_meta.c'
source_filename = "/home/carl/AnghaBench/linux/net/dsa/extr_tag_sja1105.c_sja1105_transfer_meta.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.sja1105_meta = type { i32, i32, i32 }
%struct.ethhdr = type { i32* }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sk_buff*, %struct.sja1105_meta*)* @sja1105_transfer_meta to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sja1105_transfer_meta(%struct.sk_buff* %0, %struct.sja1105_meta* %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.sja1105_meta*, align 8
  %5 = alloca %struct.ethhdr*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  store %struct.sja1105_meta* %1, %struct.sja1105_meta** %4, align 8
  %6 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %7 = call %struct.ethhdr* @eth_hdr(%struct.sk_buff* %6)
  store %struct.ethhdr* %7, %struct.ethhdr** %5, align 8
  %8 = load %struct.sja1105_meta*, %struct.sja1105_meta** %4, align 8
  %9 = getelementptr inbounds %struct.sja1105_meta, %struct.sja1105_meta* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.ethhdr*, %struct.ethhdr** %5, align 8
  %12 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  %14 = getelementptr inbounds i32, i32* %13, i64 3
  store i32 %10, i32* %14, align 4
  %15 = load %struct.sja1105_meta*, %struct.sja1105_meta** %4, align 8
  %16 = getelementptr inbounds %struct.sja1105_meta, %struct.sja1105_meta* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.ethhdr*, %struct.ethhdr** %5, align 8
  %19 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 4
  store i32 %17, i32* %21, align 4
  %22 = load %struct.sja1105_meta*, %struct.sja1105_meta** %4, align 8
  %23 = getelementptr inbounds %struct.sja1105_meta, %struct.sja1105_meta* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %26 = call %struct.TYPE_2__* @SJA1105_SKB_CB(%struct.sk_buff* %25)
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  store i32 %24, i32* %27, align 4
  ret void
}

declare dso_local %struct.ethhdr* @eth_hdr(%struct.sk_buff*) #1

declare dso_local %struct.TYPE_2__* @SJA1105_SKB_CB(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
