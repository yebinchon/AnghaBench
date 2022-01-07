; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nf_conntrack_netlink.c_ctnetlink_del_expect.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nf_conntrack_netlink.c_ctnetlink_del_expect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.sock = type { i32 }
%struct.sk_buff = type { i32 }
%struct.nlmsghdr = type { i32 }
%struct.nlattr = type { i32 }
%struct.netlink_ext_ack = type { i32 }
%struct.nf_conntrack_expect = type { i32 }
%struct.nf_conntrack_tuple = type { i32 }
%struct.nfgenmsg = type { i32 }
%struct.nf_conntrack_zone = type { i32 }
%struct.TYPE_2__ = type { i32 }

@CTA_EXPECT_TUPLE = common dso_local global i64 0, align 8
@CTA_EXPECT_ZONE = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i32 0, align 4
@CTA_EXPECT_ID = common dso_local global i64 0, align 8
@nf_conntrack_expect_lock = common dso_local global i32 0, align 4
@CTA_EXPECT_HELP_NAME = common dso_local global i64 0, align 8
@expect_iter_name = common dso_local global i32 0, align 4
@expect_iter_all = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net*, %struct.sock*, %struct.sk_buff*, %struct.nlmsghdr*, %struct.nlattr**, %struct.netlink_ext_ack*)* @ctnetlink_del_expect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ctnetlink_del_expect(%struct.net* %0, %struct.sock* %1, %struct.sk_buff* %2, %struct.nlmsghdr* %3, %struct.nlattr** %4, %struct.netlink_ext_ack* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.net*, align 8
  %9 = alloca %struct.sock*, align 8
  %10 = alloca %struct.sk_buff*, align 8
  %11 = alloca %struct.nlmsghdr*, align 8
  %12 = alloca %struct.nlattr**, align 8
  %13 = alloca %struct.netlink_ext_ack*, align 8
  %14 = alloca %struct.nf_conntrack_expect*, align 8
  %15 = alloca %struct.nf_conntrack_tuple, align 4
  %16 = alloca %struct.nfgenmsg*, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.nf_conntrack_zone, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca %struct.TYPE_2__, align 4
  %22 = alloca i8*, align 8
  %23 = alloca %struct.TYPE_2__, align 4
  %24 = alloca %struct.TYPE_2__, align 4
  store %struct.net* %0, %struct.net** %8, align 8
  store %struct.sock* %1, %struct.sock** %9, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %10, align 8
  store %struct.nlmsghdr* %3, %struct.nlmsghdr** %11, align 8
  store %struct.nlattr** %4, %struct.nlattr*** %12, align 8
  store %struct.netlink_ext_ack* %5, %struct.netlink_ext_ack** %13, align 8
  %25 = load %struct.nlmsghdr*, %struct.nlmsghdr** %11, align 8
  %26 = call %struct.nfgenmsg* @nlmsg_data(%struct.nlmsghdr* %25)
  store %struct.nfgenmsg* %26, %struct.nfgenmsg** %16, align 8
  %27 = load %struct.nfgenmsg*, %struct.nfgenmsg** %16, align 8
  %28 = getelementptr inbounds %struct.nfgenmsg, %struct.nfgenmsg* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %17, align 4
  %30 = load %struct.nlattr**, %struct.nlattr*** %12, align 8
  %31 = load i64, i64* @CTA_EXPECT_TUPLE, align 8
  %32 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %30, i64 %31
  %33 = load %struct.nlattr*, %struct.nlattr** %32, align 8
  %34 = icmp ne %struct.nlattr* %33, null
  br i1 %34, label %35, label %107

35:                                               ; preds = %6
  %36 = load %struct.nlattr**, %struct.nlattr*** %12, align 8
  %37 = load i64, i64* @CTA_EXPECT_ZONE, align 8
  %38 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %36, i64 %37
  %39 = load %struct.nlattr*, %struct.nlattr** %38, align 8
  %40 = call i32 @ctnetlink_parse_zone(%struct.nlattr* %39, %struct.nf_conntrack_zone* %18)
  store i32 %40, i32* %19, align 4
  %41 = load i32, i32* %19, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %35
  %44 = load i32, i32* %19, align 4
  store i32 %44, i32* %7, align 4
  br label %143

45:                                               ; preds = %35
  %46 = load %struct.nlattr**, %struct.nlattr*** %12, align 8
  %47 = load i64, i64* @CTA_EXPECT_TUPLE, align 8
  %48 = load i32, i32* %17, align 4
  %49 = call i32 @ctnetlink_parse_tuple(%struct.nlattr** %46, %struct.nf_conntrack_tuple* %15, i64 %47, i32 %48, i32* null)
  store i32 %49, i32* %19, align 4
  %50 = load i32, i32* %19, align 4
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %45
  %53 = load i32, i32* %19, align 4
  store i32 %53, i32* %7, align 4
  br label %143

54:                                               ; preds = %45
  %55 = load %struct.net*, %struct.net** %8, align 8
  %56 = call %struct.nf_conntrack_expect* @nf_ct_expect_find_get(%struct.net* %55, %struct.nf_conntrack_zone* %18, %struct.nf_conntrack_tuple* %15)
  store %struct.nf_conntrack_expect* %56, %struct.nf_conntrack_expect** %14, align 8
  %57 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %14, align 8
  %58 = icmp ne %struct.nf_conntrack_expect* %57, null
  br i1 %58, label %62, label %59

59:                                               ; preds = %54
  %60 = load i32, i32* @ENOENT, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %7, align 4
  br label %143

62:                                               ; preds = %54
  %63 = load %struct.nlattr**, %struct.nlattr*** %12, align 8
  %64 = load i64, i64* @CTA_EXPECT_ID, align 8
  %65 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %63, i64 %64
  %66 = load %struct.nlattr*, %struct.nlattr** %65, align 8
  %67 = icmp ne %struct.nlattr* %66, null
  br i1 %67, label %68, label %85

68:                                               ; preds = %62
  %69 = load %struct.nlattr**, %struct.nlattr*** %12, align 8
  %70 = load i64, i64* @CTA_EXPECT_ID, align 8
  %71 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %69, i64 %70
  %72 = load %struct.nlattr*, %struct.nlattr** %71, align 8
  %73 = call i32 @nla_get_be32(%struct.nlattr* %72)
  store i32 %73, i32* %20, align 4
  %74 = load i32, i32* %20, align 4
  %75 = call i64 @ntohl(i32 %74)
  %76 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %14, align 8
  %77 = ptrtoint %struct.nf_conntrack_expect* %76 to i64
  %78 = icmp ne i64 %75, %77
  br i1 %78, label %79, label %84

79:                                               ; preds = %68
  %80 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %14, align 8
  %81 = call i32 @nf_ct_expect_put(%struct.nf_conntrack_expect* %80)
  %82 = load i32, i32* @ENOENT, align 4
  %83 = sub nsw i32 0, %82
  store i32 %83, i32* %7, align 4
  br label %143

84:                                               ; preds = %68
  br label %85

85:                                               ; preds = %84, %62
  %86 = call i32 @spin_lock_bh(i32* @nf_conntrack_expect_lock)
  %87 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %14, align 8
  %88 = getelementptr inbounds %struct.nf_conntrack_expect, %struct.nf_conntrack_expect* %87, i32 0, i32 0
  %89 = call i64 @del_timer(i32* %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %103

91:                                               ; preds = %85
  %92 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %14, align 8
  %93 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %94 = call i32 @NETLINK_CB(%struct.sk_buff* %93)
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  store i32 %94, i32* %95, align 4
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.nlmsghdr*, %struct.nlmsghdr** %11, align 8
  %99 = call i32 @nlmsg_report(%struct.nlmsghdr* %98)
  %100 = call i32 @nf_ct_unlink_expect_report(%struct.nf_conntrack_expect* %92, i32 %97, i32 %99)
  %101 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %14, align 8
  %102 = call i32 @nf_ct_expect_put(%struct.nf_conntrack_expect* %101)
  br label %103

103:                                              ; preds = %91, %85
  %104 = call i32 @spin_unlock_bh(i32* @nf_conntrack_expect_lock)
  %105 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %14, align 8
  %106 = call i32 @nf_ct_expect_put(%struct.nf_conntrack_expect* %105)
  br label %142

107:                                              ; preds = %6
  %108 = load %struct.nlattr**, %struct.nlattr*** %12, align 8
  %109 = load i64, i64* @CTA_EXPECT_HELP_NAME, align 8
  %110 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %108, i64 %109
  %111 = load %struct.nlattr*, %struct.nlattr** %110, align 8
  %112 = icmp ne %struct.nlattr* %111, null
  br i1 %112, label %113, label %130

113:                                              ; preds = %107
  %114 = load %struct.nlattr**, %struct.nlattr*** %12, align 8
  %115 = load i64, i64* @CTA_EXPECT_HELP_NAME, align 8
  %116 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %114, i64 %115
  %117 = load %struct.nlattr*, %struct.nlattr** %116, align 8
  %118 = call i8* @nla_data(%struct.nlattr* %117)
  store i8* %118, i8** %22, align 8
  %119 = load %struct.net*, %struct.net** %8, align 8
  %120 = load i32, i32* @expect_iter_name, align 4
  %121 = load i8*, i8** %22, align 8
  %122 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %123 = call i32 @NETLINK_CB(%struct.sk_buff* %122)
  %124 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  store i32 %123, i32* %124, align 4
  %125 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = load %struct.nlmsghdr*, %struct.nlmsghdr** %11, align 8
  %128 = call i32 @nlmsg_report(%struct.nlmsghdr* %127)
  %129 = call i32 @nf_ct_expect_iterate_net(%struct.net* %119, i32 %120, i8* %121, i32 %126, i32 %128)
  br label %141

130:                                              ; preds = %107
  %131 = load %struct.net*, %struct.net** %8, align 8
  %132 = load i32, i32* @expect_iter_all, align 4
  %133 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %134 = call i32 @NETLINK_CB(%struct.sk_buff* %133)
  %135 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  store i32 %134, i32* %135, align 4
  %136 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = load %struct.nlmsghdr*, %struct.nlmsghdr** %11, align 8
  %139 = call i32 @nlmsg_report(%struct.nlmsghdr* %138)
  %140 = call i32 @nf_ct_expect_iterate_net(%struct.net* %131, i32 %132, i8* null, i32 %137, i32 %139)
  br label %141

141:                                              ; preds = %130, %113
  br label %142

142:                                              ; preds = %141, %103
  store i32 0, i32* %7, align 4
  br label %143

143:                                              ; preds = %142, %79, %59, %52, %43
  %144 = load i32, i32* %7, align 4
  ret i32 %144
}

declare dso_local %struct.nfgenmsg* @nlmsg_data(%struct.nlmsghdr*) #1

declare dso_local i32 @ctnetlink_parse_zone(%struct.nlattr*, %struct.nf_conntrack_zone*) #1

declare dso_local i32 @ctnetlink_parse_tuple(%struct.nlattr**, %struct.nf_conntrack_tuple*, i64, i32, i32*) #1

declare dso_local %struct.nf_conntrack_expect* @nf_ct_expect_find_get(%struct.net*, %struct.nf_conntrack_zone*, %struct.nf_conntrack_tuple*) #1

declare dso_local i32 @nla_get_be32(%struct.nlattr*) #1

declare dso_local i64 @ntohl(i32) #1

declare dso_local i32 @nf_ct_expect_put(%struct.nf_conntrack_expect*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i64 @del_timer(i32*) #1

declare dso_local i32 @nf_ct_unlink_expect_report(%struct.nf_conntrack_expect*, i32, i32) #1

declare dso_local i32 @NETLINK_CB(%struct.sk_buff*) #1

declare dso_local i32 @nlmsg_report(%struct.nlmsghdr*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i8* @nla_data(%struct.nlattr*) #1

declare dso_local i32 @nf_ct_expect_iterate_net(%struct.net*, i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
