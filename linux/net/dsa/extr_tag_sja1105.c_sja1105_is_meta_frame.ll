; ModuleID = '/home/carl/AnghaBench/linux/net/dsa/extr_tag_sja1105.c_sja1105_is_meta_frame.c'
source_filename = "/home/carl/AnghaBench/linux/net/dsa/extr_tag_sja1105.c_sja1105_is_meta_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.ethhdr = type { i32, i32, i32 }

@SJA1105_META_SMAC = common dso_local global i64 0, align 8
@SJA1105_META_DMAC = common dso_local global i64 0, align 8
@ETH_P_SJA1105_META = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*)* @sja1105_is_meta_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sja1105_is_meta_frame(%struct.sk_buff* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.ethhdr*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  %7 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %8 = call %struct.ethhdr* @eth_hdr(%struct.sk_buff* %7)
  store %struct.ethhdr* %8, %struct.ethhdr** %4, align 8
  %9 = load %struct.ethhdr*, %struct.ethhdr** %4, align 8
  %10 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 4
  %12 = call i64 @ether_addr_to_u64(i32 %11)
  store i64 %12, i64* %5, align 8
  %13 = load %struct.ethhdr*, %struct.ethhdr** %4, align 8
  %14 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call i64 @ether_addr_to_u64(i32 %15)
  store i64 %16, i64* %6, align 8
  %17 = load i64, i64* %5, align 8
  %18 = load i64, i64* @SJA1105_META_SMAC, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %35

21:                                               ; preds = %1
  %22 = load i64, i64* %6, align 8
  %23 = load i64, i64* @SJA1105_META_DMAC, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %21
  store i32 0, i32* %2, align 4
  br label %35

26:                                               ; preds = %21
  %27 = load %struct.ethhdr*, %struct.ethhdr** %4, align 8
  %28 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i64 @ntohs(i32 %29)
  %31 = load i64, i64* @ETH_P_SJA1105_META, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %26
  store i32 0, i32* %2, align 4
  br label %35

34:                                               ; preds = %26
  store i32 1, i32* %2, align 4
  br label %35

35:                                               ; preds = %34, %33, %25, %20
  %36 = load i32, i32* %2, align 4
  ret i32 %36
}

declare dso_local %struct.ethhdr* @eth_hdr(%struct.sk_buff*) #1

declare dso_local i64 @ether_addr_to_u64(i32) #1

declare dso_local i64 @ntohs(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
