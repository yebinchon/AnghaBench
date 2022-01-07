; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/ipset/extr_ip_set_hash_netnet.c_hash_netnet6_data_list.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/ipset/extr_ip_set_hash_netnet.c_hash_netnet6_data_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.hash_netnet6_elem = type { i32*, %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i32 }

@IPSET_FLAG_NOMATCH = common dso_local global i64 0, align 8
@IPSET_ATTR_IP = common dso_local global i32 0, align 4
@IPSET_ATTR_IP2 = common dso_local global i32 0, align 4
@IPSET_ATTR_CIDR = common dso_local global i32 0, align 4
@IPSET_ATTR_CIDR2 = common dso_local global i32 0, align 4
@IPSET_ATTR_CADT_FLAGS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.hash_netnet6_elem*)* @hash_netnet6_data_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hash_netnet6_data_list(%struct.sk_buff* %0, %struct.hash_netnet6_elem* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.hash_netnet6_elem*, align 8
  %6 = alloca i64, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.hash_netnet6_elem* %1, %struct.hash_netnet6_elem** %5, align 8
  %7 = load %struct.hash_netnet6_elem*, %struct.hash_netnet6_elem** %5, align 8
  %8 = getelementptr inbounds %struct.hash_netnet6_elem, %struct.hash_netnet6_elem* %7, i32 0, i32 2
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = load i64, i64* @IPSET_FLAG_NOMATCH, align 8
  br label %14

13:                                               ; preds = %2
  br label %14

14:                                               ; preds = %13, %11
  %15 = phi i64 [ %12, %11 ], [ 0, %13 ]
  store i64 %15, i64* %6, align 8
  %16 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %17 = load i32, i32* @IPSET_ATTR_IP, align 4
  %18 = load %struct.hash_netnet6_elem*, %struct.hash_netnet6_elem** %5, align 8
  %19 = getelementptr inbounds %struct.hash_netnet6_elem, %struct.hash_netnet6_elem* %18, i32 0, i32 1
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i64 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = call i64 @nla_put_ipaddr6(%struct.sk_buff* %16, i32 %17, i32* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %65, label %25

25:                                               ; preds = %14
  %26 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %27 = load i32, i32* @IPSET_ATTR_IP2, align 4
  %28 = load %struct.hash_netnet6_elem*, %struct.hash_netnet6_elem** %5, align 8
  %29 = getelementptr inbounds %struct.hash_netnet6_elem, %struct.hash_netnet6_elem* %28, i32 0, i32 1
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i64 1
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = call i64 @nla_put_ipaddr6(%struct.sk_buff* %26, i32 %27, i32* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %65, label %35

35:                                               ; preds = %25
  %36 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %37 = load i32, i32* @IPSET_ATTR_CIDR, align 4
  %38 = load %struct.hash_netnet6_elem*, %struct.hash_netnet6_elem** %5, align 8
  %39 = getelementptr inbounds %struct.hash_netnet6_elem, %struct.hash_netnet6_elem* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 0
  %42 = load i32, i32* %41, align 4
  %43 = call i64 @nla_put_u8(%struct.sk_buff* %36, i32 %37, i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %65, label %45

45:                                               ; preds = %35
  %46 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %47 = load i32, i32* @IPSET_ATTR_CIDR2, align 4
  %48 = load %struct.hash_netnet6_elem*, %struct.hash_netnet6_elem** %5, align 8
  %49 = getelementptr inbounds %struct.hash_netnet6_elem, %struct.hash_netnet6_elem* %48, i32 0, i32 0
  %50 = load i32*, i32** %49, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 1
  %52 = load i32, i32* %51, align 4
  %53 = call i64 @nla_put_u8(%struct.sk_buff* %46, i32 %47, i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %65, label %55

55:                                               ; preds = %45
  %56 = load i64, i64* %6, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %66

58:                                               ; preds = %55
  %59 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %60 = load i32, i32* @IPSET_ATTR_CADT_FLAGS, align 4
  %61 = load i64, i64* %6, align 8
  %62 = call i32 @htonl(i64 %61)
  %63 = call i64 @nla_put_net32(%struct.sk_buff* %59, i32 %60, i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %58, %45, %35, %25, %14
  br label %67

66:                                               ; preds = %58, %55
  store i32 0, i32* %3, align 4
  br label %68

67:                                               ; preds = %65
  store i32 1, i32* %3, align 4
  br label %68

68:                                               ; preds = %67, %66
  %69 = load i32, i32* %3, align 4
  ret i32 %69
}

declare dso_local i64 @nla_put_ipaddr6(%struct.sk_buff*, i32, i32*) #1

declare dso_local i64 @nla_put_u8(%struct.sk_buff*, i32, i32) #1

declare dso_local i64 @nla_put_net32(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @htonl(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
