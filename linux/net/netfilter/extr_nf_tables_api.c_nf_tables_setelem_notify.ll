; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nf_tables_api.c_nf_tables_setelem_notify.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nf_tables_api.c_nf_tables_setelem_notify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nft_ctx = type { i32, i32, %struct.net* }
%struct.net = type { i32 }
%struct.nft_set = type { i32 }
%struct.nft_set_elem = type { i32 }
%struct.sk_buff = type { i32 }

@NFNLGRP_NFTABLES = common dso_local global i32 0, align 4
@NLMSG_GOODSIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nft_ctx*, %struct.nft_set*, %struct.nft_set_elem*, i32, i32)* @nf_tables_setelem_notify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nf_tables_setelem_notify(%struct.nft_ctx* %0, %struct.nft_set* %1, %struct.nft_set_elem* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.nft_ctx*, align 8
  %7 = alloca %struct.nft_set*, align 8
  %8 = alloca %struct.nft_set_elem*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.net*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.sk_buff*, align 8
  %14 = alloca i32, align 4
  store %struct.nft_ctx* %0, %struct.nft_ctx** %6, align 8
  store %struct.nft_set* %1, %struct.nft_set** %7, align 8
  store %struct.nft_set_elem* %2, %struct.nft_set_elem** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %15 = load %struct.nft_ctx*, %struct.nft_ctx** %6, align 8
  %16 = getelementptr inbounds %struct.nft_ctx, %struct.nft_ctx* %15, i32 0, i32 2
  %17 = load %struct.net*, %struct.net** %16, align 8
  store %struct.net* %17, %struct.net** %11, align 8
  %18 = load %struct.nft_ctx*, %struct.nft_ctx** %6, align 8
  %19 = getelementptr inbounds %struct.nft_ctx, %struct.nft_ctx* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %12, align 4
  %21 = load %struct.nft_ctx*, %struct.nft_ctx** %6, align 8
  %22 = getelementptr inbounds %struct.nft_ctx, %struct.nft_ctx* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %31, label %25

25:                                               ; preds = %5
  %26 = load %struct.net*, %struct.net** %11, align 8
  %27 = load i32, i32* @NFNLGRP_NFTABLES, align 4
  %28 = call i32 @nfnetlink_has_listeners(%struct.net* %26, i32 %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %25
  br label %69

31:                                               ; preds = %25, %5
  %32 = load i32, i32* @NLMSG_GOODSIZE, align 4
  %33 = load i32, i32* @GFP_KERNEL, align 4
  %34 = call %struct.sk_buff* @nlmsg_new(i32 %32, i32 %33)
  store %struct.sk_buff* %34, %struct.sk_buff** %13, align 8
  %35 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %36 = icmp eq %struct.sk_buff* %35, null
  br i1 %36, label %37, label %38

37:                                               ; preds = %31
  br label %62

38:                                               ; preds = %31
  %39 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %40 = load %struct.nft_ctx*, %struct.nft_ctx** %6, align 8
  %41 = load i32, i32* %12, align 4
  %42 = load i32, i32* %9, align 4
  %43 = load i32, i32* %10, align 4
  %44 = load %struct.nft_set*, %struct.nft_set** %7, align 8
  %45 = load %struct.nft_set_elem*, %struct.nft_set_elem** %8, align 8
  %46 = call i32 @nf_tables_fill_setelem_info(%struct.sk_buff* %39, %struct.nft_ctx* %40, i32 0, i32 %41, i32 %42, i32 %43, %struct.nft_set* %44, %struct.nft_set_elem* %45)
  store i32 %46, i32* %14, align 4
  %47 = load i32, i32* %14, align 4
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %38
  %50 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %51 = call i32 @kfree_skb(%struct.sk_buff* %50)
  br label %62

52:                                               ; preds = %38
  %53 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %54 = load %struct.net*, %struct.net** %11, align 8
  %55 = load i32, i32* %12, align 4
  %56 = load i32, i32* @NFNLGRP_NFTABLES, align 4
  %57 = load %struct.nft_ctx*, %struct.nft_ctx** %6, align 8
  %58 = getelementptr inbounds %struct.nft_ctx, %struct.nft_ctx* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* @GFP_KERNEL, align 4
  %61 = call i32 @nfnetlink_send(%struct.sk_buff* %53, %struct.net* %54, i32 %55, i32 %56, i32 %59, i32 %60)
  br label %69

62:                                               ; preds = %49, %37
  %63 = load %struct.net*, %struct.net** %11, align 8
  %64 = load i32, i32* %12, align 4
  %65 = load i32, i32* @NFNLGRP_NFTABLES, align 4
  %66 = load i32, i32* @ENOBUFS, align 4
  %67 = sub nsw i32 0, %66
  %68 = call i32 @nfnetlink_set_err(%struct.net* %63, i32 %64, i32 %65, i32 %67)
  br label %69

69:                                               ; preds = %62, %52, %30
  ret void
}

declare dso_local i32 @nfnetlink_has_listeners(%struct.net*, i32) #1

declare dso_local %struct.sk_buff* @nlmsg_new(i32, i32) #1

declare dso_local i32 @nf_tables_fill_setelem_info(%struct.sk_buff*, %struct.nft_ctx*, i32, i32, i32, i32, %struct.nft_set*, %struct.nft_set_elem*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @nfnetlink_send(%struct.sk_buff*, %struct.net*, i32, i32, i32, i32) #1

declare dso_local i32 @nfnetlink_set_err(%struct.net*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
