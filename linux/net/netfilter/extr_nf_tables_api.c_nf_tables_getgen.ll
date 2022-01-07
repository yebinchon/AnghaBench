; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nf_tables_api.c_nf_tables_getgen.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nf_tables_api.c_nf_tables_getgen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.sock = type { i32 }
%struct.sk_buff = type { i32 }
%struct.nlmsghdr = type { i32 }
%struct.nlattr = type { i32 }
%struct.netlink_ext_ack = type { i32 }
%struct.TYPE_2__ = type { i32 }

@NLMSG_GOODSIZE = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net*, %struct.sock*, %struct.sk_buff*, %struct.nlmsghdr*, %struct.nlattr**, %struct.netlink_ext_ack*)* @nf_tables_getgen to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nf_tables_getgen(%struct.net* %0, %struct.sock* %1, %struct.sk_buff* %2, %struct.nlmsghdr* %3, %struct.nlattr** %4, %struct.netlink_ext_ack* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.net*, align 8
  %9 = alloca %struct.sock*, align 8
  %10 = alloca %struct.sk_buff*, align 8
  %11 = alloca %struct.nlmsghdr*, align 8
  %12 = alloca %struct.nlattr**, align 8
  %13 = alloca %struct.netlink_ext_ack*, align 8
  %14 = alloca %struct.sk_buff*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_2__, align 4
  %17 = alloca %struct.TYPE_2__, align 4
  store %struct.net* %0, %struct.net** %8, align 8
  store %struct.sock* %1, %struct.sock** %9, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %10, align 8
  store %struct.nlmsghdr* %3, %struct.nlmsghdr** %11, align 8
  store %struct.nlattr** %4, %struct.nlattr*** %12, align 8
  store %struct.netlink_ext_ack* %5, %struct.netlink_ext_ack** %13, align 8
  %18 = load i32, i32* @NLMSG_GOODSIZE, align 4
  %19 = load i32, i32* @GFP_ATOMIC, align 4
  %20 = call %struct.sk_buff* @alloc_skb(i32 %18, i32 %19)
  store %struct.sk_buff* %20, %struct.sk_buff** %14, align 8
  %21 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %22 = icmp eq %struct.sk_buff* %21, null
  br i1 %22, label %23, label %26

23:                                               ; preds = %6
  %24 = load i32, i32* @ENOMEM, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %7, align 4
  br label %54

26:                                               ; preds = %6
  %27 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %28 = load %struct.net*, %struct.net** %8, align 8
  %29 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %30 = call i32 @NETLINK_CB(%struct.sk_buff* %29)
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  store i32 %30, i32* %31, align 4
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.nlmsghdr*, %struct.nlmsghdr** %11, align 8
  %35 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @nf_tables_fill_gen_info(%struct.sk_buff* %27, %struct.net* %28, i32 %33, i32 %36)
  store i32 %37, i32* %15, align 4
  %38 = load i32, i32* %15, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %26
  br label %50

41:                                               ; preds = %26
  %42 = load %struct.sock*, %struct.sock** %9, align 8
  %43 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %44 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %45 = call i32 @NETLINK_CB(%struct.sk_buff* %44)
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  store i32 %45, i32* %46, align 4
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @nlmsg_unicast(%struct.sock* %42, %struct.sk_buff* %43, i32 %48)
  store i32 %49, i32* %7, align 4
  br label %54

50:                                               ; preds = %40
  %51 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %52 = call i32 @kfree_skb(%struct.sk_buff* %51)
  %53 = load i32, i32* %15, align 4
  store i32 %53, i32* %7, align 4
  br label %54

54:                                               ; preds = %50, %41, %23
  %55 = load i32, i32* %7, align 4
  ret i32 %55
}

declare dso_local %struct.sk_buff* @alloc_skb(i32, i32) #1

declare dso_local i32 @nf_tables_fill_gen_info(%struct.sk_buff*, %struct.net*, i32, i32) #1

declare dso_local i32 @NETLINK_CB(%struct.sk_buff*) #1

declare dso_local i32 @nlmsg_unicast(%struct.sock*, %struct.sk_buff*, i32) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
