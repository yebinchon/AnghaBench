; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nfnetlink_cttimeout.c_cttimeout_default_set.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nfnetlink_cttimeout.c_cttimeout_default_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.sock = type { i32 }
%struct.sk_buff = type { i32 }
%struct.nlmsghdr = type { i32 }
%struct.nlattr = type { i32 }
%struct.netlink_ext_ack = type { i32 }
%struct.nf_conntrack_l4proto = type { i64 }

@CTA_TIMEOUT_L3PROTO = common dso_local global i64 0, align 8
@CTA_TIMEOUT_L4PROTO = common dso_local global i64 0, align 8
@CTA_TIMEOUT_DATA = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net*, %struct.sock*, %struct.sk_buff*, %struct.nlmsghdr*, %struct.nlattr**, %struct.netlink_ext_ack*)* @cttimeout_default_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cttimeout_default_set(%struct.net* %0, %struct.sock* %1, %struct.sk_buff* %2, %struct.nlmsghdr* %3, %struct.nlattr** %4, %struct.netlink_ext_ack* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.net*, align 8
  %9 = alloca %struct.sock*, align 8
  %10 = alloca %struct.sk_buff*, align 8
  %11 = alloca %struct.nlmsghdr*, align 8
  %12 = alloca %struct.nlattr**, align 8
  %13 = alloca %struct.netlink_ext_ack*, align 8
  %14 = alloca %struct.nf_conntrack_l4proto*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  store %struct.net* %0, %struct.net** %8, align 8
  store %struct.sock* %1, %struct.sock** %9, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %10, align 8
  store %struct.nlmsghdr* %3, %struct.nlmsghdr** %11, align 8
  store %struct.nlattr** %4, %struct.nlattr*** %12, align 8
  store %struct.netlink_ext_ack* %5, %struct.netlink_ext_ack** %13, align 8
  %17 = load %struct.nlattr**, %struct.nlattr*** %12, align 8
  %18 = load i64, i64* @CTA_TIMEOUT_L3PROTO, align 8
  %19 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %17, i64 %18
  %20 = load %struct.nlattr*, %struct.nlattr** %19, align 8
  %21 = icmp ne %struct.nlattr* %20, null
  br i1 %21, label %22, label %34

22:                                               ; preds = %6
  %23 = load %struct.nlattr**, %struct.nlattr*** %12, align 8
  %24 = load i64, i64* @CTA_TIMEOUT_L4PROTO, align 8
  %25 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %23, i64 %24
  %26 = load %struct.nlattr*, %struct.nlattr** %25, align 8
  %27 = icmp ne %struct.nlattr* %26, null
  br i1 %27, label %28, label %34

28:                                               ; preds = %22
  %29 = load %struct.nlattr**, %struct.nlattr*** %12, align 8
  %30 = load i64, i64* @CTA_TIMEOUT_DATA, align 8
  %31 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %29, i64 %30
  %32 = load %struct.nlattr*, %struct.nlattr** %31, align 8
  %33 = icmp ne %struct.nlattr* %32, null
  br i1 %33, label %37, label %34

34:                                               ; preds = %28, %22, %6
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %7, align 4
  br label %67

37:                                               ; preds = %28
  %38 = load %struct.nlattr**, %struct.nlattr*** %12, align 8
  %39 = load i64, i64* @CTA_TIMEOUT_L4PROTO, align 8
  %40 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %38, i64 %39
  %41 = load %struct.nlattr*, %struct.nlattr** %40, align 8
  %42 = call i64 @nla_get_u8(%struct.nlattr* %41)
  store i64 %42, i64* %15, align 8
  %43 = load i64, i64* %15, align 8
  %44 = call %struct.nf_conntrack_l4proto* @nf_ct_l4proto_find(i64 %43)
  store %struct.nf_conntrack_l4proto* %44, %struct.nf_conntrack_l4proto** %14, align 8
  %45 = load %struct.nf_conntrack_l4proto*, %struct.nf_conntrack_l4proto** %14, align 8
  %46 = getelementptr inbounds %struct.nf_conntrack_l4proto, %struct.nf_conntrack_l4proto* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* %15, align 8
  %49 = icmp ne i64 %47, %48
  br i1 %49, label %50, label %53

50:                                               ; preds = %37
  %51 = load i32, i32* @EOPNOTSUPP, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %16, align 4
  br label %65

53:                                               ; preds = %37
  %54 = load %struct.nf_conntrack_l4proto*, %struct.nf_conntrack_l4proto** %14, align 8
  %55 = load %struct.net*, %struct.net** %8, align 8
  %56 = load %struct.nlattr**, %struct.nlattr*** %12, align 8
  %57 = load i64, i64* @CTA_TIMEOUT_DATA, align 8
  %58 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %56, i64 %57
  %59 = load %struct.nlattr*, %struct.nlattr** %58, align 8
  %60 = call i32 @ctnl_timeout_parse_policy(i32* null, %struct.nf_conntrack_l4proto* %54, %struct.net* %55, %struct.nlattr* %59)
  store i32 %60, i32* %16, align 4
  %61 = load i32, i32* %16, align 4
  %62 = icmp slt i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %53
  br label %65

64:                                               ; preds = %53
  store i32 0, i32* %7, align 4
  br label %67

65:                                               ; preds = %63, %50
  %66 = load i32, i32* %16, align 4
  store i32 %66, i32* %7, align 4
  br label %67

67:                                               ; preds = %65, %64, %34
  %68 = load i32, i32* %7, align 4
  ret i32 %68
}

declare dso_local i64 @nla_get_u8(%struct.nlattr*) #1

declare dso_local %struct.nf_conntrack_l4proto* @nf_ct_l4proto_find(i64) #1

declare dso_local i32 @ctnl_timeout_parse_policy(i32*, %struct.nf_conntrack_l4proto*, %struct.net*, %struct.nlattr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
