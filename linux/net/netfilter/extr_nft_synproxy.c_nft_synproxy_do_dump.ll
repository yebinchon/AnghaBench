; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nft_synproxy.c_nft_synproxy_do_dump.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nft_synproxy.c_nft_synproxy_do_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.nft_synproxy = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32 }

@NFTA_SYNPROXY_MSS = common dso_local global i32 0, align 4
@NFTA_SYNPROXY_WSCALE = common dso_local global i32 0, align 4
@NFTA_SYNPROXY_FLAGS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.nft_synproxy*)* @nft_synproxy_do_dump to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nft_synproxy_do_dump(%struct.sk_buff* %0, %struct.nft_synproxy* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.nft_synproxy*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.nft_synproxy* %1, %struct.nft_synproxy** %5, align 8
  %6 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %7 = load i32, i32* @NFTA_SYNPROXY_MSS, align 4
  %8 = load %struct.nft_synproxy*, %struct.nft_synproxy** %5, align 8
  %9 = getelementptr inbounds %struct.nft_synproxy, %struct.nft_synproxy* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @htons(i32 %11)
  %13 = call i64 @nla_put_be16(%struct.sk_buff* %6, i32 %7, i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %34, label %15

15:                                               ; preds = %2
  %16 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %17 = load i32, i32* @NFTA_SYNPROXY_WSCALE, align 4
  %18 = load %struct.nft_synproxy*, %struct.nft_synproxy** %5, align 8
  %19 = getelementptr inbounds %struct.nft_synproxy, %struct.nft_synproxy* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i64 @nla_put_u8(%struct.sk_buff* %16, i32 %17, i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %34, label %24

24:                                               ; preds = %15
  %25 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %26 = load i32, i32* @NFTA_SYNPROXY_FLAGS, align 4
  %27 = load %struct.nft_synproxy*, %struct.nft_synproxy** %5, align 8
  %28 = getelementptr inbounds %struct.nft_synproxy, %struct.nft_synproxy* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @htonl(i32 %30)
  %32 = call i64 @nla_put_be32(%struct.sk_buff* %25, i32 %26, i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %24, %15, %2
  br label %36

35:                                               ; preds = %24
  store i32 0, i32* %3, align 4
  br label %37

36:                                               ; preds = %34
  store i32 -1, i32* %3, align 4
  br label %37

37:                                               ; preds = %36, %35
  %38 = load i32, i32* %3, align 4
  ret i32 %38
}

declare dso_local i64 @nla_put_be16(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i64 @nla_put_u8(%struct.sk_buff*, i32, i32) #1

declare dso_local i64 @nla_put_be32(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @htonl(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
