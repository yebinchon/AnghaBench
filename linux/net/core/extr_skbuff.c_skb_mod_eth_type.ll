; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_skbuff.c_skb_mod_eth_type.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_skbuff.c_skb_mod_eth_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64, i32 }
%struct.ethhdr = type { i32 }

@CHECKSUM_COMPLETE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sk_buff*, %struct.ethhdr*, i32)* @skb_mod_eth_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @skb_mod_eth_type(%struct.sk_buff* %0, %struct.ethhdr* %1, i32 %2) #0 {
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.ethhdr*, align 8
  %6 = alloca i32, align 4
  %7 = alloca [2 x i32], align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.ethhdr* %1, %struct.ethhdr** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %9 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @CHECKSUM_COMPLETE, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %29

13:                                               ; preds = %3
  %14 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %15 = load %struct.ethhdr*, %struct.ethhdr** %5, align 8
  %16 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = xor i32 %17, -1
  store i32 %18, i32* %14, align 4
  %19 = getelementptr inbounds i32, i32* %14, i64 1
  %20 = load i32, i32* %6, align 4
  store i32 %20, i32* %19, align 4
  %21 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %22 = bitcast i32* %21 to i8*
  %23 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %24 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @csum_partial(i8* %22, i32 8, i32 %25)
  %27 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %28 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %27, i32 0, i32 1
  store i32 %26, i32* %28, align 8
  br label %29

29:                                               ; preds = %13, %3
  %30 = load i32, i32* %6, align 4
  %31 = load %struct.ethhdr*, %struct.ethhdr** %5, align 8
  %32 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 4
  ret void
}

declare dso_local i32 @csum_partial(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
