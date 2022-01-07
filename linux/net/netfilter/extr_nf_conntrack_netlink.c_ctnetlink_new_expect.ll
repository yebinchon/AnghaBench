; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nf_conntrack_netlink.c_ctnetlink_new_expect.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nf_conntrack_netlink.c_ctnetlink_new_expect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.sock = type { i32 }
%struct.sk_buff = type { i32 }
%struct.nlmsghdr = type { i32 }
%struct.nlattr = type { i32 }
%struct.netlink_ext_ack = type { i32 }
%struct.nf_conntrack_tuple = type { i32 }
%struct.nf_conntrack_expect = type { i32 }
%struct.nfgenmsg = type { i32 }
%struct.nf_conntrack_zone = type { i32 }
%struct.TYPE_2__ = type { i32 }

@CTA_EXPECT_TUPLE = common dso_local global i64 0, align 8
@CTA_EXPECT_MASK = common dso_local global i64 0, align 8
@CTA_EXPECT_MASTER = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@CTA_EXPECT_ZONE = common dso_local global i64 0, align 8
@nf_conntrack_expect_lock = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@NLM_F_CREATE = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4
@NLM_F_EXCL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net*, %struct.sock*, %struct.sk_buff*, %struct.nlmsghdr*, %struct.nlattr**, %struct.netlink_ext_ack*)* @ctnetlink_new_expect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ctnetlink_new_expect(%struct.net* %0, %struct.sock* %1, %struct.sk_buff* %2, %struct.nlmsghdr* %3, %struct.nlattr** %4, %struct.netlink_ext_ack* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.net*, align 8
  %9 = alloca %struct.sock*, align 8
  %10 = alloca %struct.sk_buff*, align 8
  %11 = alloca %struct.nlmsghdr*, align 8
  %12 = alloca %struct.nlattr**, align 8
  %13 = alloca %struct.netlink_ext_ack*, align 8
  %14 = alloca %struct.nf_conntrack_tuple, align 4
  %15 = alloca %struct.nf_conntrack_expect*, align 8
  %16 = alloca %struct.nfgenmsg*, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.nf_conntrack_zone, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.TYPE_2__, align 4
  store %struct.net* %0, %struct.net** %8, align 8
  store %struct.sock* %1, %struct.sock** %9, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %10, align 8
  store %struct.nlmsghdr* %3, %struct.nlmsghdr** %11, align 8
  store %struct.nlattr** %4, %struct.nlattr*** %12, align 8
  store %struct.netlink_ext_ack* %5, %struct.netlink_ext_ack** %13, align 8
  %21 = load %struct.nlmsghdr*, %struct.nlmsghdr** %11, align 8
  %22 = call %struct.nfgenmsg* @nlmsg_data(%struct.nlmsghdr* %21)
  store %struct.nfgenmsg* %22, %struct.nfgenmsg** %16, align 8
  %23 = load %struct.nfgenmsg*, %struct.nfgenmsg** %16, align 8
  %24 = getelementptr inbounds %struct.nfgenmsg, %struct.nfgenmsg* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %17, align 4
  %26 = load %struct.nlattr**, %struct.nlattr*** %12, align 8
  %27 = load i64, i64* @CTA_EXPECT_TUPLE, align 8
  %28 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %26, i64 %27
  %29 = load %struct.nlattr*, %struct.nlattr** %28, align 8
  %30 = icmp ne %struct.nlattr* %29, null
  br i1 %30, label %31, label %43

31:                                               ; preds = %6
  %32 = load %struct.nlattr**, %struct.nlattr*** %12, align 8
  %33 = load i64, i64* @CTA_EXPECT_MASK, align 8
  %34 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %32, i64 %33
  %35 = load %struct.nlattr*, %struct.nlattr** %34, align 8
  %36 = icmp ne %struct.nlattr* %35, null
  br i1 %36, label %37, label %43

37:                                               ; preds = %31
  %38 = load %struct.nlattr**, %struct.nlattr*** %12, align 8
  %39 = load i64, i64* @CTA_EXPECT_MASTER, align 8
  %40 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %38, i64 %39
  %41 = load %struct.nlattr*, %struct.nlattr** %40, align 8
  %42 = icmp ne %struct.nlattr* %41, null
  br i1 %42, label %46, label %43

43:                                               ; preds = %37, %31, %6
  %44 = load i32, i32* @EINVAL, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %7, align 4
  br label %111

46:                                               ; preds = %37
  %47 = load %struct.nlattr**, %struct.nlattr*** %12, align 8
  %48 = load i64, i64* @CTA_EXPECT_ZONE, align 8
  %49 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %47, i64 %48
  %50 = load %struct.nlattr*, %struct.nlattr** %49, align 8
  %51 = call i32 @ctnetlink_parse_zone(%struct.nlattr* %50, %struct.nf_conntrack_zone* %18)
  store i32 %51, i32* %19, align 4
  %52 = load i32, i32* %19, align 4
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %46
  %55 = load i32, i32* %19, align 4
  store i32 %55, i32* %7, align 4
  br label %111

56:                                               ; preds = %46
  %57 = load %struct.nlattr**, %struct.nlattr*** %12, align 8
  %58 = load i64, i64* @CTA_EXPECT_TUPLE, align 8
  %59 = load i32, i32* %17, align 4
  %60 = call i32 @ctnetlink_parse_tuple(%struct.nlattr** %57, %struct.nf_conntrack_tuple* %14, i64 %58, i32 %59, i32* null)
  store i32 %60, i32* %19, align 4
  %61 = load i32, i32* %19, align 4
  %62 = icmp slt i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %56
  %64 = load i32, i32* %19, align 4
  store i32 %64, i32* %7, align 4
  br label %111

65:                                               ; preds = %56
  %66 = call i32 @spin_lock_bh(i32* @nf_conntrack_expect_lock)
  %67 = load %struct.net*, %struct.net** %8, align 8
  %68 = call %struct.nf_conntrack_expect* @__nf_ct_expect_find(%struct.net* %67, %struct.nf_conntrack_zone* %18, %struct.nf_conntrack_tuple* %14)
  store %struct.nf_conntrack_expect* %68, %struct.nf_conntrack_expect** %15, align 8
  %69 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %15, align 8
  %70 = icmp ne %struct.nf_conntrack_expect* %69, null
  br i1 %70, label %95, label %71

71:                                               ; preds = %65
  %72 = call i32 @spin_unlock_bh(i32* @nf_conntrack_expect_lock)
  %73 = load i32, i32* @ENOENT, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %19, align 4
  %75 = load %struct.nlmsghdr*, %struct.nlmsghdr** %11, align 8
  %76 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* @NLM_F_CREATE, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %93

81:                                               ; preds = %71
  %82 = load %struct.net*, %struct.net** %8, align 8
  %83 = load %struct.nlattr**, %struct.nlattr*** %12, align 8
  %84 = load i32, i32* %17, align 4
  %85 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %86 = call i32 @NETLINK_CB(%struct.sk_buff* %85)
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  store i32 %86, i32* %87, align 4
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.nlmsghdr*, %struct.nlmsghdr** %11, align 8
  %91 = call i32 @nlmsg_report(%struct.nlmsghdr* %90)
  %92 = call i32 @ctnetlink_create_expect(%struct.net* %82, %struct.nf_conntrack_zone* %18, %struct.nlattr** %83, i32 %84, i32 %89, i32 %91)
  store i32 %92, i32* %19, align 4
  br label %93

93:                                               ; preds = %81, %71
  %94 = load i32, i32* %19, align 4
  store i32 %94, i32* %7, align 4
  br label %111

95:                                               ; preds = %65
  %96 = load i32, i32* @EEXIST, align 4
  %97 = sub nsw i32 0, %96
  store i32 %97, i32* %19, align 4
  %98 = load %struct.nlmsghdr*, %struct.nlmsghdr** %11, align 8
  %99 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* @NLM_F_EXCL, align 4
  %102 = and i32 %100, %101
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %108, label %104

104:                                              ; preds = %95
  %105 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %15, align 8
  %106 = load %struct.nlattr**, %struct.nlattr*** %12, align 8
  %107 = call i32 @ctnetlink_change_expect(%struct.nf_conntrack_expect* %105, %struct.nlattr** %106)
  store i32 %107, i32* %19, align 4
  br label %108

108:                                              ; preds = %104, %95
  %109 = call i32 @spin_unlock_bh(i32* @nf_conntrack_expect_lock)
  %110 = load i32, i32* %19, align 4
  store i32 %110, i32* %7, align 4
  br label %111

111:                                              ; preds = %108, %93, %63, %54, %43
  %112 = load i32, i32* %7, align 4
  ret i32 %112
}

declare dso_local %struct.nfgenmsg* @nlmsg_data(%struct.nlmsghdr*) #1

declare dso_local i32 @ctnetlink_parse_zone(%struct.nlattr*, %struct.nf_conntrack_zone*) #1

declare dso_local i32 @ctnetlink_parse_tuple(%struct.nlattr**, %struct.nf_conntrack_tuple*, i64, i32, i32*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local %struct.nf_conntrack_expect* @__nf_ct_expect_find(%struct.net*, %struct.nf_conntrack_zone*, %struct.nf_conntrack_tuple*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @ctnetlink_create_expect(%struct.net*, %struct.nf_conntrack_zone*, %struct.nlattr**, i32, i32, i32) #1

declare dso_local i32 @NETLINK_CB(%struct.sk_buff*) #1

declare dso_local i32 @nlmsg_report(%struct.nlmsghdr*) #1

declare dso_local i32 @ctnetlink_change_expect(%struct.nf_conntrack_expect*, %struct.nlattr**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
