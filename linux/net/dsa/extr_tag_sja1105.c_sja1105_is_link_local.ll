; ModuleID = '/home/carl/AnghaBench/linux/net/dsa/extr_tag_sja1105.c_sja1105_is_link_local.c'
source_filename = "/home/carl/AnghaBench/linux/net/dsa/extr_tag_sja1105.c_sja1105_is_link_local.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.ethhdr = type { i32, i32 }

@ETH_P_SJA1105_META = common dso_local global i64 0, align 8
@SJA1105_LINKLOCAL_FILTER_A_MASK = common dso_local global i32 0, align 4
@SJA1105_LINKLOCAL_FILTER_A = common dso_local global i32 0, align 4
@SJA1105_LINKLOCAL_FILTER_B_MASK = common dso_local global i32 0, align 4
@SJA1105_LINKLOCAL_FILTER_B = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*)* @sja1105_is_link_local to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sja1105_is_link_local(%struct.sk_buff* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.ethhdr*, align 8
  %5 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  %6 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %7 = call %struct.ethhdr* @eth_hdr(%struct.sk_buff* %6)
  store %struct.ethhdr* %7, %struct.ethhdr** %4, align 8
  %8 = load %struct.ethhdr*, %struct.ethhdr** %4, align 8
  %9 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @ether_addr_to_u64(i32 %10)
  store i32 %11, i32* %5, align 4
  %12 = load %struct.ethhdr*, %struct.ethhdr** %4, align 8
  %13 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i64 @ntohs(i32 %14)
  %16 = load i64, i64* @ETH_P_SJA1105_META, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %34

19:                                               ; preds = %1
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* @SJA1105_LINKLOCAL_FILTER_A_MASK, align 4
  %22 = and i32 %20, %21
  %23 = load i32, i32* @SJA1105_LINKLOCAL_FILTER_A, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %19
  store i32 1, i32* %2, align 4
  br label %34

26:                                               ; preds = %19
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* @SJA1105_LINKLOCAL_FILTER_B_MASK, align 4
  %29 = and i32 %27, %28
  %30 = load i32, i32* @SJA1105_LINKLOCAL_FILTER_B, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %26
  store i32 1, i32* %2, align 4
  br label %34

33:                                               ; preds = %26
  store i32 0, i32* %2, align 4
  br label %34

34:                                               ; preds = %33, %32, %25, %18
  %35 = load i32, i32* %2, align 4
  ret i32 %35
}

declare dso_local %struct.ethhdr* @eth_hdr(%struct.sk_buff*) #1

declare dso_local i32 @ether_addr_to_u64(i32) #1

declare dso_local i64 @ntohs(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
