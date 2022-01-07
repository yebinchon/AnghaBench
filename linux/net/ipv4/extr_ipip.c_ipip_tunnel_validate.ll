; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_ipip.c_ipip_tunnel_validate.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_ipip.c_ipip_tunnel_validate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nlattr = type { i32 }
%struct.netlink_ext_ack = type { i32 }

@IFLA_IPTUN_PROTO = common dso_local global i64 0, align 8
@IPPROTO_IPIP = common dso_local global i64 0, align 8
@IPPROTO_MPLS = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nlattr**, %struct.nlattr**, %struct.netlink_ext_ack*)* @ipip_tunnel_validate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipip_tunnel_validate(%struct.nlattr** %0, %struct.nlattr** %1, %struct.netlink_ext_ack* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nlattr**, align 8
  %6 = alloca %struct.nlattr**, align 8
  %7 = alloca %struct.netlink_ext_ack*, align 8
  %8 = alloca i64, align 8
  store %struct.nlattr** %0, %struct.nlattr*** %5, align 8
  store %struct.nlattr** %1, %struct.nlattr*** %6, align 8
  store %struct.netlink_ext_ack* %2, %struct.netlink_ext_ack** %7, align 8
  %9 = load %struct.nlattr**, %struct.nlattr*** %6, align 8
  %10 = icmp ne %struct.nlattr** %9, null
  br i1 %10, label %11, label %17

11:                                               ; preds = %3
  %12 = load %struct.nlattr**, %struct.nlattr*** %6, align 8
  %13 = load i64, i64* @IFLA_IPTUN_PROTO, align 8
  %14 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %12, i64 %13
  %15 = load %struct.nlattr*, %struct.nlattr** %14, align 8
  %16 = icmp ne %struct.nlattr* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %11, %3
  store i32 0, i32* %4, align 4
  br label %38

18:                                               ; preds = %11
  %19 = load %struct.nlattr**, %struct.nlattr*** %6, align 8
  %20 = load i64, i64* @IFLA_IPTUN_PROTO, align 8
  %21 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %19, i64 %20
  %22 = load %struct.nlattr*, %struct.nlattr** %21, align 8
  %23 = call i64 @nla_get_u8(%struct.nlattr* %22)
  store i64 %23, i64* %8, align 8
  %24 = load i64, i64* %8, align 8
  %25 = load i64, i64* @IPPROTO_IPIP, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %37

27:                                               ; preds = %18
  %28 = load i64, i64* %8, align 8
  %29 = load i64, i64* @IPPROTO_MPLS, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %37

31:                                               ; preds = %27
  %32 = load i64, i64* %8, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %31
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %4, align 4
  br label %38

37:                                               ; preds = %31, %27, %18
  store i32 0, i32* %4, align 4
  br label %38

38:                                               ; preds = %37, %34, %17
  %39 = load i32, i32* %4, align 4
  ret i32 %39
}

declare dso_local i64 @nla_get_u8(%struct.nlattr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
