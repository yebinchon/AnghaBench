; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nf_tables_api.c_nf_tables_flowtable_notify.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nf_tables_api.c_nf_tables_flowtable_notify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nft_ctx = type { i32, i32, i64, i32, i32 }
%struct.nft_flowtable = type { i32 }
%struct.sk_buff = type { i32 }

@NFNLGRP_NFTABLES = common dso_local global i32 0, align 4
@NLMSG_GOODSIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nft_ctx*, %struct.nft_flowtable*, i32)* @nf_tables_flowtable_notify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nf_tables_flowtable_notify(%struct.nft_ctx* %0, %struct.nft_flowtable* %1, i32 %2) #0 {
  %4 = alloca %struct.nft_ctx*, align 8
  %5 = alloca %struct.nft_flowtable*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca i32, align 4
  store %struct.nft_ctx* %0, %struct.nft_ctx** %4, align 8
  store %struct.nft_flowtable* %1, %struct.nft_flowtable** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.nft_ctx*, %struct.nft_ctx** %4, align 8
  %10 = getelementptr inbounds %struct.nft_ctx, %struct.nft_ctx* %9, i32 0, i32 2
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %21

13:                                               ; preds = %3
  %14 = load %struct.nft_ctx*, %struct.nft_ctx** %4, align 8
  %15 = getelementptr inbounds %struct.nft_ctx, %struct.nft_ctx* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @NFNLGRP_NFTABLES, align 4
  %18 = call i32 @nfnetlink_has_listeners(i32 %16, i32 %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %13
  br label %75

21:                                               ; preds = %13, %3
  %22 = load i32, i32* @NLMSG_GOODSIZE, align 4
  %23 = load i32, i32* @GFP_KERNEL, align 4
  %24 = call %struct.sk_buff* @nlmsg_new(i32 %22, i32 %23)
  store %struct.sk_buff* %24, %struct.sk_buff** %7, align 8
  %25 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %26 = icmp eq %struct.sk_buff* %25, null
  br i1 %26, label %27, label %28

27:                                               ; preds = %21
  br label %64

28:                                               ; preds = %21
  %29 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %30 = load %struct.nft_ctx*, %struct.nft_ctx** %4, align 8
  %31 = getelementptr inbounds %struct.nft_ctx, %struct.nft_ctx* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.nft_ctx*, %struct.nft_ctx** %4, align 8
  %34 = getelementptr inbounds %struct.nft_ctx, %struct.nft_ctx* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.nft_ctx*, %struct.nft_ctx** %4, align 8
  %37 = getelementptr inbounds %struct.nft_ctx, %struct.nft_ctx* %36, i32 0, i32 4
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* %6, align 4
  %40 = load %struct.nft_ctx*, %struct.nft_ctx** %4, align 8
  %41 = getelementptr inbounds %struct.nft_ctx, %struct.nft_ctx* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.nft_flowtable*, %struct.nft_flowtable** %5, align 8
  %44 = call i32 @nf_tables_fill_flowtable_info(%struct.sk_buff* %29, i32 %32, i32 %35, i32 %38, i32 %39, i32 0, i32 %42, %struct.nft_flowtable* %43)
  store i32 %44, i32* %8, align 4
  %45 = load i32, i32* %8, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %28
  %48 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %49 = call i32 @kfree_skb(%struct.sk_buff* %48)
  br label %64

50:                                               ; preds = %28
  %51 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %52 = load %struct.nft_ctx*, %struct.nft_ctx** %4, align 8
  %53 = getelementptr inbounds %struct.nft_ctx, %struct.nft_ctx* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.nft_ctx*, %struct.nft_ctx** %4, align 8
  %56 = getelementptr inbounds %struct.nft_ctx, %struct.nft_ctx* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* @NFNLGRP_NFTABLES, align 4
  %59 = load %struct.nft_ctx*, %struct.nft_ctx** %4, align 8
  %60 = getelementptr inbounds %struct.nft_ctx, %struct.nft_ctx* %59, i32 0, i32 2
  %61 = load i64, i64* %60, align 8
  %62 = load i32, i32* @GFP_KERNEL, align 4
  %63 = call i32 @nfnetlink_send(%struct.sk_buff* %51, i32 %54, i32 %57, i32 %58, i64 %61, i32 %62)
  br label %75

64:                                               ; preds = %47, %27
  %65 = load %struct.nft_ctx*, %struct.nft_ctx** %4, align 8
  %66 = getelementptr inbounds %struct.nft_ctx, %struct.nft_ctx* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.nft_ctx*, %struct.nft_ctx** %4, align 8
  %69 = getelementptr inbounds %struct.nft_ctx, %struct.nft_ctx* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* @NFNLGRP_NFTABLES, align 4
  %72 = load i32, i32* @ENOBUFS, align 4
  %73 = sub nsw i32 0, %72
  %74 = call i32 @nfnetlink_set_err(i32 %67, i32 %70, i32 %71, i32 %73)
  br label %75

75:                                               ; preds = %64, %50, %20
  ret void
}

declare dso_local i32 @nfnetlink_has_listeners(i32, i32) #1

declare dso_local %struct.sk_buff* @nlmsg_new(i32, i32) #1

declare dso_local i32 @nf_tables_fill_flowtable_info(%struct.sk_buff*, i32, i32, i32, i32, i32, i32, %struct.nft_flowtable*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @nfnetlink_send(%struct.sk_buff*, i32, i32, i32, i64, i32) #1

declare dso_local i32 @nfnetlink_set_err(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
