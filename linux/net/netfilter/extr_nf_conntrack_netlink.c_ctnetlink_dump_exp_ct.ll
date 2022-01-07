; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nf_conntrack_netlink.c_ctnetlink_dump_exp_ct.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nf_conntrack_netlink.c_ctnetlink_dump_exp_ct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.sock = type { i32 }
%struct.sk_buff = type { i32 }
%struct.nlmsghdr = type { i32 }
%struct.nlattr = type { i32 }
%struct.netlink_ext_ack = type { i32 }
%struct.nfgenmsg = type { i32 }
%struct.nf_conntrack_tuple = type { i32 }
%struct.nf_conntrack_tuple_hash = type { i32 }
%struct.nf_conn = type { i32 }
%struct.nf_conntrack_zone = type { i32 }
%struct.netlink_dump_control = type { %struct.nf_conn*, i32, i32 }

@ctnetlink_exp_done = common dso_local global i32 0, align 4
@ctnetlink_exp_ct_dump_table = common dso_local global i32 0, align 4
@CTA_EXPECT_MASTER = common dso_local global i32 0, align 4
@CTA_EXPECT_ZONE = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net*, %struct.sock*, %struct.sk_buff*, %struct.nlmsghdr*, %struct.nlattr**, %struct.netlink_ext_ack*)* @ctnetlink_dump_exp_ct to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ctnetlink_dump_exp_ct(%struct.net* %0, %struct.sock* %1, %struct.sk_buff* %2, %struct.nlmsghdr* %3, %struct.nlattr** %4, %struct.netlink_ext_ack* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.net*, align 8
  %9 = alloca %struct.sock*, align 8
  %10 = alloca %struct.sk_buff*, align 8
  %11 = alloca %struct.nlmsghdr*, align 8
  %12 = alloca %struct.nlattr**, align 8
  %13 = alloca %struct.netlink_ext_ack*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.nfgenmsg*, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.nf_conntrack_tuple, align 4
  %18 = alloca %struct.nf_conntrack_tuple_hash*, align 8
  %19 = alloca %struct.nf_conn*, align 8
  %20 = alloca %struct.nf_conntrack_zone, align 4
  %21 = alloca %struct.netlink_dump_control, align 8
  store %struct.net* %0, %struct.net** %8, align 8
  store %struct.sock* %1, %struct.sock** %9, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %10, align 8
  store %struct.nlmsghdr* %3, %struct.nlmsghdr** %11, align 8
  store %struct.nlattr** %4, %struct.nlattr*** %12, align 8
  store %struct.netlink_ext_ack* %5, %struct.netlink_ext_ack** %13, align 8
  %22 = load %struct.nlmsghdr*, %struct.nlmsghdr** %11, align 8
  %23 = call %struct.nfgenmsg* @nlmsg_data(%struct.nlmsghdr* %22)
  store %struct.nfgenmsg* %23, %struct.nfgenmsg** %15, align 8
  %24 = load %struct.nfgenmsg*, %struct.nfgenmsg** %15, align 8
  %25 = getelementptr inbounds %struct.nfgenmsg, %struct.nfgenmsg* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %16, align 4
  %27 = getelementptr inbounds %struct.netlink_dump_control, %struct.netlink_dump_control* %21, i32 0, i32 0
  store %struct.nf_conn* null, %struct.nf_conn** %27, align 8
  %28 = getelementptr inbounds %struct.netlink_dump_control, %struct.netlink_dump_control* %21, i32 0, i32 1
  %29 = load i32, i32* @ctnetlink_exp_done, align 4
  store i32 %29, i32* %28, align 8
  %30 = getelementptr inbounds %struct.netlink_dump_control, %struct.netlink_dump_control* %21, i32 0, i32 2
  %31 = load i32, i32* @ctnetlink_exp_ct_dump_table, align 4
  store i32 %31, i32* %30, align 4
  %32 = load %struct.nlattr**, %struct.nlattr*** %12, align 8
  %33 = load i32, i32* @CTA_EXPECT_MASTER, align 4
  %34 = load i32, i32* %16, align 4
  %35 = call i32 @ctnetlink_parse_tuple(%struct.nlattr** %32, %struct.nf_conntrack_tuple* %17, i32 %33, i32 %34, i32* null)
  store i32 %35, i32* %14, align 4
  %36 = load i32, i32* %14, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %6
  %39 = load i32, i32* %14, align 4
  store i32 %39, i32* %7, align 4
  br label %77

40:                                               ; preds = %6
  %41 = load %struct.nlattr**, %struct.nlattr*** %12, align 8
  %42 = load i64, i64* @CTA_EXPECT_ZONE, align 8
  %43 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %41, i64 %42
  %44 = load %struct.nlattr*, %struct.nlattr** %43, align 8
  %45 = call i32 @ctnetlink_parse_zone(%struct.nlattr* %44, %struct.nf_conntrack_zone* %20)
  store i32 %45, i32* %14, align 4
  %46 = load i32, i32* %14, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %40
  %49 = load i32, i32* %14, align 4
  store i32 %49, i32* %7, align 4
  br label %77

50:                                               ; preds = %40
  %51 = load %struct.net*, %struct.net** %8, align 8
  %52 = call %struct.nf_conntrack_tuple_hash* @nf_conntrack_find_get(%struct.net* %51, %struct.nf_conntrack_zone* %20, %struct.nf_conntrack_tuple* %17)
  store %struct.nf_conntrack_tuple_hash* %52, %struct.nf_conntrack_tuple_hash** %18, align 8
  %53 = load %struct.nf_conntrack_tuple_hash*, %struct.nf_conntrack_tuple_hash** %18, align 8
  %54 = icmp ne %struct.nf_conntrack_tuple_hash* %53, null
  br i1 %54, label %58, label %55

55:                                               ; preds = %50
  %56 = load i32, i32* @ENOENT, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %7, align 4
  br label %77

58:                                               ; preds = %50
  %59 = load %struct.nf_conntrack_tuple_hash*, %struct.nf_conntrack_tuple_hash** %18, align 8
  %60 = call %struct.nf_conn* @nf_ct_tuplehash_to_ctrack(%struct.nf_conntrack_tuple_hash* %59)
  store %struct.nf_conn* %60, %struct.nf_conn** %19, align 8
  %61 = load %struct.nf_conn*, %struct.nf_conn** %19, align 8
  %62 = call i32 @nfct_help(%struct.nf_conn* %61)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %67, label %64

64:                                               ; preds = %58
  %65 = load %struct.nf_conn*, %struct.nf_conn** %19, align 8
  %66 = call i32 @nf_ct_put(%struct.nf_conn* %65)
  store i32 0, i32* %7, align 4
  br label %77

67:                                               ; preds = %58
  %68 = load %struct.nf_conn*, %struct.nf_conn** %19, align 8
  %69 = getelementptr inbounds %struct.netlink_dump_control, %struct.netlink_dump_control* %21, i32 0, i32 0
  store %struct.nf_conn* %68, %struct.nf_conn** %69, align 8
  %70 = load %struct.sock*, %struct.sock** %9, align 8
  %71 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %72 = load %struct.nlmsghdr*, %struct.nlmsghdr** %11, align 8
  %73 = call i32 @netlink_dump_start(%struct.sock* %70, %struct.sk_buff* %71, %struct.nlmsghdr* %72, %struct.netlink_dump_control* %21)
  store i32 %73, i32* %14, align 4
  %74 = load %struct.nf_conn*, %struct.nf_conn** %19, align 8
  %75 = call i32 @nf_ct_put(%struct.nf_conn* %74)
  %76 = load i32, i32* %14, align 4
  store i32 %76, i32* %7, align 4
  br label %77

77:                                               ; preds = %67, %64, %55, %48, %38
  %78 = load i32, i32* %7, align 4
  ret i32 %78
}

declare dso_local %struct.nfgenmsg* @nlmsg_data(%struct.nlmsghdr*) #1

declare dso_local i32 @ctnetlink_parse_tuple(%struct.nlattr**, %struct.nf_conntrack_tuple*, i32, i32, i32*) #1

declare dso_local i32 @ctnetlink_parse_zone(%struct.nlattr*, %struct.nf_conntrack_zone*) #1

declare dso_local %struct.nf_conntrack_tuple_hash* @nf_conntrack_find_get(%struct.net*, %struct.nf_conntrack_zone*, %struct.nf_conntrack_tuple*) #1

declare dso_local %struct.nf_conn* @nf_ct_tuplehash_to_ctrack(%struct.nf_conntrack_tuple_hash*) #1

declare dso_local i32 @nfct_help(%struct.nf_conn*) #1

declare dso_local i32 @nf_ct_put(%struct.nf_conn*) #1

declare dso_local i32 @netlink_dump_start(%struct.sock*, %struct.sk_buff*, %struct.nlmsghdr*, %struct.netlink_dump_control*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
