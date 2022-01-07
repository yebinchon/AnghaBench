; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_devinet.c_inet_fill_link_af.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_devinet.c_inet_fill_link_af.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.net_device = type { i32 }
%struct.in_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }
%struct.nlattr = type { i32 }

@ENODATA = common dso_local global i32 0, align 4
@IFLA_INET_CONF = common dso_local global i32 0, align 4
@IPV4_DEVCONF_MAX = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.net_device*, i32)* @inet_fill_link_af to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @inet_fill_link_af(%struct.sk_buff* %0, %struct.net_device* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.in_device*, align 8
  %9 = alloca %struct.nlattr*, align 8
  %10 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %5, align 8
  store %struct.net_device* %1, %struct.net_device** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.net_device*, %struct.net_device** %6, align 8
  %12 = getelementptr inbounds %struct.net_device, %struct.net_device* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.in_device* @rcu_dereference_rtnl(i32 %13)
  store %struct.in_device* %14, %struct.in_device** %8, align 8
  %15 = load %struct.in_device*, %struct.in_device** %8, align 8
  %16 = icmp ne %struct.in_device* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %3
  %18 = load i32, i32* @ENODATA, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %4, align 4
  br label %55

20:                                               ; preds = %3
  %21 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %22 = load i32, i32* @IFLA_INET_CONF, align 4
  %23 = load i32, i32* @IPV4_DEVCONF_MAX, align 4
  %24 = mul nsw i32 %23, 4
  %25 = call %struct.nlattr* @nla_reserve(%struct.sk_buff* %21, i32 %22, i32 %24)
  store %struct.nlattr* %25, %struct.nlattr** %9, align 8
  %26 = load %struct.nlattr*, %struct.nlattr** %9, align 8
  %27 = icmp ne %struct.nlattr* %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %20
  %29 = load i32, i32* @EMSGSIZE, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %4, align 4
  br label %55

31:                                               ; preds = %20
  store i32 0, i32* %10, align 4
  br label %32

32:                                               ; preds = %51, %31
  %33 = load i32, i32* %10, align 4
  %34 = load i32, i32* @IPV4_DEVCONF_MAX, align 4
  %35 = icmp slt i32 %33, %34
  br i1 %35, label %36, label %54

36:                                               ; preds = %32
  %37 = load %struct.in_device*, %struct.in_device** %8, align 8
  %38 = getelementptr inbounds %struct.in_device, %struct.in_device* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = load i32, i32* %10, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %40, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.nlattr*, %struct.nlattr** %9, align 8
  %46 = call i64 @nla_data(%struct.nlattr* %45)
  %47 = inttoptr i64 %46 to i32*
  %48 = load i32, i32* %10, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %47, i64 %49
  store i32 %44, i32* %50, align 4
  br label %51

51:                                               ; preds = %36
  %52 = load i32, i32* %10, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %10, align 4
  br label %32

54:                                               ; preds = %32
  store i32 0, i32* %4, align 4
  br label %55

55:                                               ; preds = %54, %28, %17
  %56 = load i32, i32* %4, align 4
  ret i32 %56
}

declare dso_local %struct.in_device* @rcu_dereference_rtnl(i32) #1

declare dso_local %struct.nlattr* @nla_reserve(%struct.sk_buff*, i32, i32) #1

declare dso_local i64 @nla_data(%struct.nlattr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
