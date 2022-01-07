; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nf_tables_api.c_nf_tables_chain_notify.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nf_tables_api.c_nf_tables_chain_notify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nft_ctx = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.sk_buff = type { i32 }

@NFNLGRP_NFTABLES = common dso_local global i32 0, align 4
@NLMSG_GOODSIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nft_ctx*, i32)* @nf_tables_chain_notify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nf_tables_chain_notify(%struct.nft_ctx* %0, i32 %1) #0 {
  %3 = alloca %struct.nft_ctx*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca i32, align 4
  store %struct.nft_ctx* %0, %struct.nft_ctx** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.nft_ctx*, %struct.nft_ctx** %3, align 8
  %8 = getelementptr inbounds %struct.nft_ctx, %struct.nft_ctx* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %19, label %11

11:                                               ; preds = %2
  %12 = load %struct.nft_ctx*, %struct.nft_ctx** %3, align 8
  %13 = getelementptr inbounds %struct.nft_ctx, %struct.nft_ctx* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @NFNLGRP_NFTABLES, align 4
  %16 = call i32 @nfnetlink_has_listeners(i32 %14, i32 %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %11
  br label %78

19:                                               ; preds = %11, %2
  %20 = load i32, i32* @NLMSG_GOODSIZE, align 4
  %21 = load i32, i32* @GFP_KERNEL, align 4
  %22 = call %struct.sk_buff* @nlmsg_new(i32 %20, i32 %21)
  store %struct.sk_buff* %22, %struct.sk_buff** %5, align 8
  %23 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %24 = icmp eq %struct.sk_buff* %23, null
  br i1 %24, label %25, label %26

25:                                               ; preds = %19
  br label %67

26:                                               ; preds = %19
  %27 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %28 = load %struct.nft_ctx*, %struct.nft_ctx** %3, align 8
  %29 = getelementptr inbounds %struct.nft_ctx, %struct.nft_ctx* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.nft_ctx*, %struct.nft_ctx** %3, align 8
  %32 = getelementptr inbounds %struct.nft_ctx, %struct.nft_ctx* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.nft_ctx*, %struct.nft_ctx** %3, align 8
  %35 = getelementptr inbounds %struct.nft_ctx, %struct.nft_ctx* %34, i32 0, i32 6
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %4, align 4
  %38 = load %struct.nft_ctx*, %struct.nft_ctx** %3, align 8
  %39 = getelementptr inbounds %struct.nft_ctx, %struct.nft_ctx* %38, i32 0, i32 5
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.nft_ctx*, %struct.nft_ctx** %3, align 8
  %42 = getelementptr inbounds %struct.nft_ctx, %struct.nft_ctx* %41, i32 0, i32 4
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.nft_ctx*, %struct.nft_ctx** %3, align 8
  %45 = getelementptr inbounds %struct.nft_ctx, %struct.nft_ctx* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @nf_tables_fill_chain_info(%struct.sk_buff* %27, i32 %30, i32 %33, i32 %36, i32 %37, i32 0, i32 %40, i32 %43, i32 %46)
  store i32 %47, i32* %6, align 4
  %48 = load i32, i32* %6, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %26
  %51 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %52 = call i32 @kfree_skb(%struct.sk_buff* %51)
  br label %67

53:                                               ; preds = %26
  %54 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %55 = load %struct.nft_ctx*, %struct.nft_ctx** %3, align 8
  %56 = getelementptr inbounds %struct.nft_ctx, %struct.nft_ctx* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.nft_ctx*, %struct.nft_ctx** %3, align 8
  %59 = getelementptr inbounds %struct.nft_ctx, %struct.nft_ctx* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @NFNLGRP_NFTABLES, align 4
  %62 = load %struct.nft_ctx*, %struct.nft_ctx** %3, align 8
  %63 = getelementptr inbounds %struct.nft_ctx, %struct.nft_ctx* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @GFP_KERNEL, align 4
  %66 = call i32 @nfnetlink_send(%struct.sk_buff* %54, i32 %57, i32 %60, i32 %61, i32 %64, i32 %65)
  br label %78

67:                                               ; preds = %50, %25
  %68 = load %struct.nft_ctx*, %struct.nft_ctx** %3, align 8
  %69 = getelementptr inbounds %struct.nft_ctx, %struct.nft_ctx* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.nft_ctx*, %struct.nft_ctx** %3, align 8
  %72 = getelementptr inbounds %struct.nft_ctx, %struct.nft_ctx* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* @NFNLGRP_NFTABLES, align 4
  %75 = load i32, i32* @ENOBUFS, align 4
  %76 = sub nsw i32 0, %75
  %77 = call i32 @nfnetlink_set_err(i32 %70, i32 %73, i32 %74, i32 %76)
  br label %78

78:                                               ; preds = %67, %53, %18
  ret void
}

declare dso_local i32 @nfnetlink_has_listeners(i32, i32) #1

declare dso_local %struct.sk_buff* @nlmsg_new(i32, i32) #1

declare dso_local i32 @nf_tables_fill_chain_info(%struct.sk_buff*, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @nfnetlink_send(%struct.sk_buff*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @nfnetlink_set_err(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
