; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nf_tables_api.c_nf_tables_rule_notify.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nf_tables_api.c_nf_tables_rule_notify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nft_ctx = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.nft_rule = type { i32 }
%struct.sk_buff = type { i32 }

@NFNLGRP_NFTABLES = common dso_local global i32 0, align 4
@NLMSG_GOODSIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nft_ctx*, %struct.nft_rule*, i32)* @nf_tables_rule_notify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nf_tables_rule_notify(%struct.nft_ctx* %0, %struct.nft_rule* %1, i32 %2) #0 {
  %4 = alloca %struct.nft_ctx*, align 8
  %5 = alloca %struct.nft_rule*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca i32, align 4
  store %struct.nft_ctx* %0, %struct.nft_ctx** %4, align 8
  store %struct.nft_rule* %1, %struct.nft_rule** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.nft_ctx*, %struct.nft_ctx** %4, align 8
  %10 = getelementptr inbounds %struct.nft_ctx, %struct.nft_ctx* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %21, label %13

13:                                               ; preds = %3
  %14 = load %struct.nft_ctx*, %struct.nft_ctx** %4, align 8
  %15 = getelementptr inbounds %struct.nft_ctx, %struct.nft_ctx* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @NFNLGRP_NFTABLES, align 4
  %18 = call i32 @nfnetlink_has_listeners(i32 %16, i32 %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %13
  br label %81

21:                                               ; preds = %13, %3
  %22 = load i32, i32* @NLMSG_GOODSIZE, align 4
  %23 = load i32, i32* @GFP_KERNEL, align 4
  %24 = call %struct.sk_buff* @nlmsg_new(i32 %22, i32 %23)
  store %struct.sk_buff* %24, %struct.sk_buff** %7, align 8
  %25 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %26 = icmp eq %struct.sk_buff* %25, null
  br i1 %26, label %27, label %28

27:                                               ; preds = %21
  br label %70

28:                                               ; preds = %21
  %29 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %30 = load %struct.nft_ctx*, %struct.nft_ctx** %4, align 8
  %31 = getelementptr inbounds %struct.nft_ctx, %struct.nft_ctx* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.nft_ctx*, %struct.nft_ctx** %4, align 8
  %34 = getelementptr inbounds %struct.nft_ctx, %struct.nft_ctx* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.nft_ctx*, %struct.nft_ctx** %4, align 8
  %37 = getelementptr inbounds %struct.nft_ctx, %struct.nft_ctx* %36, i32 0, i32 6
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* %6, align 4
  %40 = load %struct.nft_ctx*, %struct.nft_ctx** %4, align 8
  %41 = getelementptr inbounds %struct.nft_ctx, %struct.nft_ctx* %40, i32 0, i32 5
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.nft_ctx*, %struct.nft_ctx** %4, align 8
  %44 = getelementptr inbounds %struct.nft_ctx, %struct.nft_ctx* %43, i32 0, i32 4
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.nft_ctx*, %struct.nft_ctx** %4, align 8
  %47 = getelementptr inbounds %struct.nft_ctx, %struct.nft_ctx* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.nft_rule*, %struct.nft_rule** %5, align 8
  %50 = call i32 @nf_tables_fill_rule_info(%struct.sk_buff* %29, i32 %32, i32 %35, i32 %38, i32 %39, i32 0, i32 %42, i32 %45, i32 %48, %struct.nft_rule* %49, i32* null)
  store i32 %50, i32* %8, align 4
  %51 = load i32, i32* %8, align 4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %28
  %54 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %55 = call i32 @kfree_skb(%struct.sk_buff* %54)
  br label %70

56:                                               ; preds = %28
  %57 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %58 = load %struct.nft_ctx*, %struct.nft_ctx** %4, align 8
  %59 = getelementptr inbounds %struct.nft_ctx, %struct.nft_ctx* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.nft_ctx*, %struct.nft_ctx** %4, align 8
  %62 = getelementptr inbounds %struct.nft_ctx, %struct.nft_ctx* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @NFNLGRP_NFTABLES, align 4
  %65 = load %struct.nft_ctx*, %struct.nft_ctx** %4, align 8
  %66 = getelementptr inbounds %struct.nft_ctx, %struct.nft_ctx* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @GFP_KERNEL, align 4
  %69 = call i32 @nfnetlink_send(%struct.sk_buff* %57, i32 %60, i32 %63, i32 %64, i32 %67, i32 %68)
  br label %81

70:                                               ; preds = %53, %27
  %71 = load %struct.nft_ctx*, %struct.nft_ctx** %4, align 8
  %72 = getelementptr inbounds %struct.nft_ctx, %struct.nft_ctx* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.nft_ctx*, %struct.nft_ctx** %4, align 8
  %75 = getelementptr inbounds %struct.nft_ctx, %struct.nft_ctx* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* @NFNLGRP_NFTABLES, align 4
  %78 = load i32, i32* @ENOBUFS, align 4
  %79 = sub nsw i32 0, %78
  %80 = call i32 @nfnetlink_set_err(i32 %73, i32 %76, i32 %77, i32 %79)
  br label %81

81:                                               ; preds = %70, %56, %20
  ret void
}

declare dso_local i32 @nfnetlink_has_listeners(i32, i32) #1

declare dso_local %struct.sk_buff* @nlmsg_new(i32, i32) #1

declare dso_local i32 @nf_tables_fill_rule_info(%struct.sk_buff*, i32, i32, i32, i32, i32, i32, i32, i32, %struct.nft_rule*, i32*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @nfnetlink_send(%struct.sk_buff*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @nfnetlink_set_err(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
