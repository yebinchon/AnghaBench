; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nf_tables_api.c_nft_obj_notify.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nf_tables_api.c_nft_obj_notify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.nft_table = type { i32 }
%struct.nft_object = type { i32 }
%struct.sk_buff = type { i32 }

@NFNLGRP_NFTABLES = common dso_local global i32 0, align 4
@NLMSG_GOODSIZE = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nft_obj_notify(%struct.net* %0, %struct.nft_table* %1, %struct.nft_object* %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8) #0 {
  %10 = alloca %struct.net*, align 8
  %11 = alloca %struct.nft_table*, align 8
  %12 = alloca %struct.nft_object*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.sk_buff*, align 8
  %20 = alloca i32, align 4
  store %struct.net* %0, %struct.net** %10, align 8
  store %struct.nft_table* %1, %struct.nft_table** %11, align 8
  store %struct.nft_object* %2, %struct.nft_object** %12, align 8
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  store i32 %8, i32* %18, align 4
  %21 = load i32, i32* %17, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %29, label %23

23:                                               ; preds = %9
  %24 = load %struct.net*, %struct.net** %10, align 8
  %25 = load i32, i32* @NFNLGRP_NFTABLES, align 4
  %26 = call i32 @nfnetlink_has_listeners(%struct.net* %24, i32 %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %23
  br label %66

29:                                               ; preds = %23, %9
  %30 = load i32, i32* @NLMSG_GOODSIZE, align 4
  %31 = load i32, i32* %18, align 4
  %32 = call %struct.sk_buff* @nlmsg_new(i32 %30, i32 %31)
  store %struct.sk_buff* %32, %struct.sk_buff** %19, align 8
  %33 = load %struct.sk_buff*, %struct.sk_buff** %19, align 8
  %34 = icmp eq %struct.sk_buff* %33, null
  br i1 %34, label %35, label %36

35:                                               ; preds = %29
  br label %59

36:                                               ; preds = %29
  %37 = load %struct.sk_buff*, %struct.sk_buff** %19, align 8
  %38 = load %struct.net*, %struct.net** %10, align 8
  %39 = load i32, i32* %13, align 4
  %40 = load i32, i32* %14, align 4
  %41 = load i32, i32* %15, align 4
  %42 = load i32, i32* %16, align 4
  %43 = load %struct.nft_table*, %struct.nft_table** %11, align 8
  %44 = load %struct.nft_object*, %struct.nft_object** %12, align 8
  %45 = call i32 @nf_tables_fill_obj_info(%struct.sk_buff* %37, %struct.net* %38, i32 %39, i32 %40, i32 %41, i32 0, i32 %42, %struct.nft_table* %43, %struct.nft_object* %44, i32 0)
  store i32 %45, i32* %20, align 4
  %46 = load i32, i32* %20, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %36
  %49 = load %struct.sk_buff*, %struct.sk_buff** %19, align 8
  %50 = call i32 @kfree_skb(%struct.sk_buff* %49)
  br label %59

51:                                               ; preds = %36
  %52 = load %struct.sk_buff*, %struct.sk_buff** %19, align 8
  %53 = load %struct.net*, %struct.net** %10, align 8
  %54 = load i32, i32* %13, align 4
  %55 = load i32, i32* @NFNLGRP_NFTABLES, align 4
  %56 = load i32, i32* %17, align 4
  %57 = load i32, i32* %18, align 4
  %58 = call i32 @nfnetlink_send(%struct.sk_buff* %52, %struct.net* %53, i32 %54, i32 %55, i32 %56, i32 %57)
  br label %66

59:                                               ; preds = %48, %35
  %60 = load %struct.net*, %struct.net** %10, align 8
  %61 = load i32, i32* %13, align 4
  %62 = load i32, i32* @NFNLGRP_NFTABLES, align 4
  %63 = load i32, i32* @ENOBUFS, align 4
  %64 = sub nsw i32 0, %63
  %65 = call i32 @nfnetlink_set_err(%struct.net* %60, i32 %61, i32 %62, i32 %64)
  br label %66

66:                                               ; preds = %59, %51, %28
  ret void
}

declare dso_local i32 @nfnetlink_has_listeners(%struct.net*, i32) #1

declare dso_local %struct.sk_buff* @nlmsg_new(i32, i32) #1

declare dso_local i32 @nf_tables_fill_obj_info(%struct.sk_buff*, %struct.net*, i32, i32, i32, i32, i32, %struct.nft_table*, %struct.nft_object*, i32) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @nfnetlink_send(%struct.sk_buff*, %struct.net*, i32, i32, i32, i32) #1

declare dso_local i32 @nfnetlink_set_err(%struct.net*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
