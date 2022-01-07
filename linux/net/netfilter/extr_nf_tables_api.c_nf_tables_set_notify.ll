; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nf_tables_api.c_nf_tables_set_notify.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nf_tables_api.c_nf_tables_set_notify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nft_ctx = type { i32, i32, i32 }
%struct.nft_set = type { i32 }
%struct.sk_buff = type { i32 }

@NFNLGRP_NFTABLES = common dso_local global i32 0, align 4
@NLMSG_GOODSIZE = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nft_ctx*, %struct.nft_set*, i32, i32)* @nf_tables_set_notify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nf_tables_set_notify(%struct.nft_ctx* %0, %struct.nft_set* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.nft_ctx*, align 8
  %6 = alloca %struct.nft_set*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.nft_ctx* %0, %struct.nft_ctx** %5, align 8
  store %struct.nft_set* %1, %struct.nft_set** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = load %struct.nft_ctx*, %struct.nft_ctx** %5, align 8
  %13 = getelementptr inbounds %struct.nft_ctx, %struct.nft_ctx* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %10, align 4
  %15 = load %struct.nft_ctx*, %struct.nft_ctx** %5, align 8
  %16 = getelementptr inbounds %struct.nft_ctx, %struct.nft_ctx* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %27, label %19

19:                                               ; preds = %4
  %20 = load %struct.nft_ctx*, %struct.nft_ctx** %5, align 8
  %21 = getelementptr inbounds %struct.nft_ctx, %struct.nft_ctx* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @NFNLGRP_NFTABLES, align 4
  %24 = call i32 @nfnetlink_has_listeners(i32 %22, i32 %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %19
  br label %66

27:                                               ; preds = %19, %4
  %28 = load i32, i32* @NLMSG_GOODSIZE, align 4
  %29 = load i32, i32* %8, align 4
  %30 = call %struct.sk_buff* @nlmsg_new(i32 %28, i32 %29)
  store %struct.sk_buff* %30, %struct.sk_buff** %9, align 8
  %31 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %32 = icmp eq %struct.sk_buff* %31, null
  br i1 %32, label %33, label %34

33:                                               ; preds = %27
  br label %57

34:                                               ; preds = %27
  %35 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %36 = load %struct.nft_ctx*, %struct.nft_ctx** %5, align 8
  %37 = load %struct.nft_set*, %struct.nft_set** %6, align 8
  %38 = load i32, i32* %7, align 4
  %39 = call i32 @nf_tables_fill_set(%struct.sk_buff* %35, %struct.nft_ctx* %36, %struct.nft_set* %37, i32 %38, i32 0)
  store i32 %39, i32* %11, align 4
  %40 = load i32, i32* %11, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %34
  %43 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %44 = call i32 @kfree_skb(%struct.sk_buff* %43)
  br label %57

45:                                               ; preds = %34
  %46 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %47 = load %struct.nft_ctx*, %struct.nft_ctx** %5, align 8
  %48 = getelementptr inbounds %struct.nft_ctx, %struct.nft_ctx* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* %10, align 4
  %51 = load i32, i32* @NFNLGRP_NFTABLES, align 4
  %52 = load %struct.nft_ctx*, %struct.nft_ctx** %5, align 8
  %53 = getelementptr inbounds %struct.nft_ctx, %struct.nft_ctx* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* %8, align 4
  %56 = call i32 @nfnetlink_send(%struct.sk_buff* %46, i32 %49, i32 %50, i32 %51, i32 %54, i32 %55)
  br label %66

57:                                               ; preds = %42, %33
  %58 = load %struct.nft_ctx*, %struct.nft_ctx** %5, align 8
  %59 = getelementptr inbounds %struct.nft_ctx, %struct.nft_ctx* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* %10, align 4
  %62 = load i32, i32* @NFNLGRP_NFTABLES, align 4
  %63 = load i32, i32* @ENOBUFS, align 4
  %64 = sub nsw i32 0, %63
  %65 = call i32 @nfnetlink_set_err(i32 %60, i32 %61, i32 %62, i32 %64)
  br label %66

66:                                               ; preds = %57, %45, %26
  ret void
}

declare dso_local i32 @nfnetlink_has_listeners(i32, i32) #1

declare dso_local %struct.sk_buff* @nlmsg_new(i32, i32) #1

declare dso_local i32 @nf_tables_fill_set(%struct.sk_buff*, %struct.nft_ctx*, %struct.nft_set*, i32, i32) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @nfnetlink_send(%struct.sk_buff*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @nfnetlink_set_err(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
