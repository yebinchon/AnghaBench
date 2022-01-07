; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/ipset/extr_ip_set_hash_netportnet.c_hash_netportnet6_data_list.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/ipset/extr_ip_set_hash_netportnet.c_hash_netportnet6_data_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.hash_netportnet6_elem = type { i32, i32*, i32, %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i32 }

@IPSET_FLAG_NOMATCH = common dso_local global i64 0, align 8
@IPSET_ATTR_IP = common dso_local global i32 0, align 4
@IPSET_ATTR_IP2 = common dso_local global i32 0, align 4
@IPSET_ATTR_PORT = common dso_local global i32 0, align 4
@IPSET_ATTR_CIDR = common dso_local global i32 0, align 4
@IPSET_ATTR_CIDR2 = common dso_local global i32 0, align 4
@IPSET_ATTR_PROTO = common dso_local global i32 0, align 4
@IPSET_ATTR_CADT_FLAGS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.hash_netportnet6_elem*)* @hash_netportnet6_data_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hash_netportnet6_data_list(%struct.sk_buff* %0, %struct.hash_netportnet6_elem* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.hash_netportnet6_elem*, align 8
  %6 = alloca i64, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.hash_netportnet6_elem* %1, %struct.hash_netportnet6_elem** %5, align 8
  %7 = load %struct.hash_netportnet6_elem*, %struct.hash_netportnet6_elem** %5, align 8
  %8 = getelementptr inbounds %struct.hash_netportnet6_elem, %struct.hash_netportnet6_elem* %7, i32 0, i32 4
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
  %18 = load %struct.hash_netportnet6_elem*, %struct.hash_netportnet6_elem** %5, align 8
  %19 = getelementptr inbounds %struct.hash_netportnet6_elem, %struct.hash_netportnet6_elem* %18, i32 0, i32 3
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i64 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = call i64 @nla_put_ipaddr6(%struct.sk_buff* %16, i32 %17, i32* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %81, label %25

25:                                               ; preds = %14
  %26 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %27 = load i32, i32* @IPSET_ATTR_IP2, align 4
  %28 = load %struct.hash_netportnet6_elem*, %struct.hash_netportnet6_elem** %5, align 8
  %29 = getelementptr inbounds %struct.hash_netportnet6_elem, %struct.hash_netportnet6_elem* %28, i32 0, i32 3
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i64 1
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = call i64 @nla_put_ipaddr6(%struct.sk_buff* %26, i32 %27, i32* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %81, label %35

35:                                               ; preds = %25
  %36 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %37 = load i32, i32* @IPSET_ATTR_PORT, align 4
  %38 = load %struct.hash_netportnet6_elem*, %struct.hash_netportnet6_elem** %5, align 8
  %39 = getelementptr inbounds %struct.hash_netportnet6_elem, %struct.hash_netportnet6_elem* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = call i64 @nla_put_net16(%struct.sk_buff* %36, i32 %37, i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %81, label %43

43:                                               ; preds = %35
  %44 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %45 = load i32, i32* @IPSET_ATTR_CIDR, align 4
  %46 = load %struct.hash_netportnet6_elem*, %struct.hash_netportnet6_elem** %5, align 8
  %47 = getelementptr inbounds %struct.hash_netportnet6_elem, %struct.hash_netportnet6_elem* %46, i32 0, i32 1
  %48 = load i32*, i32** %47, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 0
  %50 = load i32, i32* %49, align 4
  %51 = call i64 @nla_put_u8(%struct.sk_buff* %44, i32 %45, i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %81, label %53

53:                                               ; preds = %43
  %54 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %55 = load i32, i32* @IPSET_ATTR_CIDR2, align 4
  %56 = load %struct.hash_netportnet6_elem*, %struct.hash_netportnet6_elem** %5, align 8
  %57 = getelementptr inbounds %struct.hash_netportnet6_elem, %struct.hash_netportnet6_elem* %56, i32 0, i32 1
  %58 = load i32*, i32** %57, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 1
  %60 = load i32, i32* %59, align 4
  %61 = call i64 @nla_put_u8(%struct.sk_buff* %54, i32 %55, i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %81, label %63

63:                                               ; preds = %53
  %64 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %65 = load i32, i32* @IPSET_ATTR_PROTO, align 4
  %66 = load %struct.hash_netportnet6_elem*, %struct.hash_netportnet6_elem** %5, align 8
  %67 = getelementptr inbounds %struct.hash_netportnet6_elem, %struct.hash_netportnet6_elem* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = call i64 @nla_put_u8(%struct.sk_buff* %64, i32 %65, i32 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %81, label %71

71:                                               ; preds = %63
  %72 = load i64, i64* %6, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %82

74:                                               ; preds = %71
  %75 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %76 = load i32, i32* @IPSET_ATTR_CADT_FLAGS, align 4
  %77 = load i64, i64* %6, align 8
  %78 = call i32 @htonl(i64 %77)
  %79 = call i64 @nla_put_net32(%struct.sk_buff* %75, i32 %76, i32 %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %74, %63, %53, %43, %35, %25, %14
  br label %83

82:                                               ; preds = %74, %71
  store i32 0, i32* %3, align 4
  br label %84

83:                                               ; preds = %81
  store i32 1, i32* %3, align 4
  br label %84

84:                                               ; preds = %83, %82
  %85 = load i32, i32* %3, align 4
  ret i32 %85
}

declare dso_local i64 @nla_put_ipaddr6(%struct.sk_buff*, i32, i32*) #1

declare dso_local i64 @nla_put_net16(%struct.sk_buff*, i32, i32) #1

declare dso_local i64 @nla_put_u8(%struct.sk_buff*, i32, i32) #1

declare dso_local i64 @nla_put_net32(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @htonl(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
