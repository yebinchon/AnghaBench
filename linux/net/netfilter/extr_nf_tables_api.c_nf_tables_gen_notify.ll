; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nf_tables_api.c_nf_tables_gen_notify.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nf_tables_api.c_nf_tables_gen_notify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.sk_buff = type { i32 }
%struct.nlmsghdr = type { i32 }
%struct.TYPE_2__ = type { i32 }

@NFNLGRP_NFTABLES = common dso_local global i32 0, align 4
@NLMSG_GOODSIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net*, %struct.sk_buff*, i32)* @nf_tables_gen_notify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nf_tables_gen_notify(%struct.net* %0, %struct.sk_buff* %1, i32 %2) #0 {
  %4 = alloca %struct.net*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.nlmsghdr*, align 8
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_2__, align 4
  %11 = alloca %struct.TYPE_2__, align 4
  %12 = alloca %struct.TYPE_2__, align 4
  store %struct.net* %0, %struct.net** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  store i32 %2, i32* %6, align 4
  %13 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %14 = call %struct.nlmsghdr* @nlmsg_hdr(%struct.sk_buff* %13)
  store %struct.nlmsghdr* %14, %struct.nlmsghdr** %7, align 8
  %15 = load %struct.nlmsghdr*, %struct.nlmsghdr** %7, align 8
  %16 = call i64 @nlmsg_report(%struct.nlmsghdr* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %3
  %19 = load %struct.net*, %struct.net** %4, align 8
  %20 = load i32, i32* @NFNLGRP_NFTABLES, align 4
  %21 = call i32 @nfnetlink_has_listeners(%struct.net* %19, i32 %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %18
  br label %72

24:                                               ; preds = %18, %3
  %25 = load i32, i32* @NLMSG_GOODSIZE, align 4
  %26 = load i32, i32* @GFP_KERNEL, align 4
  %27 = call %struct.sk_buff* @nlmsg_new(i32 %25, i32 %26)
  store %struct.sk_buff* %27, %struct.sk_buff** %8, align 8
  %28 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %29 = icmp eq %struct.sk_buff* %28, null
  br i1 %29, label %30, label %31

30:                                               ; preds = %24
  br label %61

31:                                               ; preds = %24
  %32 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %33 = load %struct.net*, %struct.net** %4, align 8
  %34 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %35 = call i32 @NETLINK_CB(%struct.sk_buff* %34)
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  store i32 %35, i32* %36, align 4
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.nlmsghdr*, %struct.nlmsghdr** %7, align 8
  %40 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @nf_tables_fill_gen_info(%struct.sk_buff* %32, %struct.net* %33, i32 %38, i32 %41)
  store i32 %42, i32* %9, align 4
  %43 = load i32, i32* %9, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %31
  %46 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %47 = call i32 @kfree_skb(%struct.sk_buff* %46)
  br label %61

48:                                               ; preds = %31
  %49 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %50 = load %struct.net*, %struct.net** %4, align 8
  %51 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %52 = call i32 @NETLINK_CB(%struct.sk_buff* %51)
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  store i32 %52, i32* %53, align 4
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @NFNLGRP_NFTABLES, align 4
  %57 = load %struct.nlmsghdr*, %struct.nlmsghdr** %7, align 8
  %58 = call i64 @nlmsg_report(%struct.nlmsghdr* %57)
  %59 = load i32, i32* @GFP_KERNEL, align 4
  %60 = call i32 @nfnetlink_send(%struct.sk_buff* %49, %struct.net* %50, i32 %55, i32 %56, i64 %58, i32 %59)
  br label %72

61:                                               ; preds = %45, %30
  %62 = load %struct.net*, %struct.net** %4, align 8
  %63 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %64 = call i32 @NETLINK_CB(%struct.sk_buff* %63)
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  store i32 %64, i32* %65, align 4
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @NFNLGRP_NFTABLES, align 4
  %69 = load i32, i32* @ENOBUFS, align 4
  %70 = sub nsw i32 0, %69
  %71 = call i32 @nfnetlink_set_err(%struct.net* %62, i32 %67, i32 %68, i32 %70)
  br label %72

72:                                               ; preds = %61, %48, %23
  ret void
}

declare dso_local %struct.nlmsghdr* @nlmsg_hdr(%struct.sk_buff*) #1

declare dso_local i64 @nlmsg_report(%struct.nlmsghdr*) #1

declare dso_local i32 @nfnetlink_has_listeners(%struct.net*, i32) #1

declare dso_local %struct.sk_buff* @nlmsg_new(i32, i32) #1

declare dso_local i32 @nf_tables_fill_gen_info(%struct.sk_buff*, %struct.net*, i32, i32) #1

declare dso_local i32 @NETLINK_CB(%struct.sk_buff*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @nfnetlink_send(%struct.sk_buff*, %struct.net*, i32, i32, i64, i32) #1

declare dso_local i32 @nfnetlink_set_err(%struct.net*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
