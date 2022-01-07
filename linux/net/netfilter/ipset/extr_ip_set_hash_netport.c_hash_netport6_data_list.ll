; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/ipset/extr_ip_set_hash_netport.c_hash_netport6_data_list.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/ipset/extr_ip_set_hash_netport.c_hash_netport6_data_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.hash_netport6_elem = type { i64, i64, i32, %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i32 }

@IPSET_FLAG_NOMATCH = common dso_local global i64 0, align 8
@IPSET_ATTR_IP = common dso_local global i32 0, align 4
@IPSET_ATTR_PORT = common dso_local global i32 0, align 4
@IPSET_ATTR_CIDR = common dso_local global i32 0, align 4
@IPSET_ATTR_PROTO = common dso_local global i32 0, align 4
@IPSET_ATTR_CADT_FLAGS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.hash_netport6_elem*)* @hash_netport6_data_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hash_netport6_data_list(%struct.sk_buff* %0, %struct.hash_netport6_elem* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.hash_netport6_elem*, align 8
  %6 = alloca i64, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.hash_netport6_elem* %1, %struct.hash_netport6_elem** %5, align 8
  %7 = load %struct.hash_netport6_elem*, %struct.hash_netport6_elem** %5, align 8
  %8 = getelementptr inbounds %struct.hash_netport6_elem, %struct.hash_netport6_elem* %7, i32 0, i32 4
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
  %18 = load %struct.hash_netport6_elem*, %struct.hash_netport6_elem** %5, align 8
  %19 = getelementptr inbounds %struct.hash_netport6_elem, %struct.hash_netport6_elem* %18, i32 0, i32 3
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = call i64 @nla_put_ipaddr6(%struct.sk_buff* %16, i32 %17, i32* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %58, label %23

23:                                               ; preds = %14
  %24 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %25 = load i32, i32* @IPSET_ATTR_PORT, align 4
  %26 = load %struct.hash_netport6_elem*, %struct.hash_netport6_elem** %5, align 8
  %27 = getelementptr inbounds %struct.hash_netport6_elem, %struct.hash_netport6_elem* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = call i64 @nla_put_net16(%struct.sk_buff* %24, i32 %25, i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %58, label %31

31:                                               ; preds = %23
  %32 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %33 = load i32, i32* @IPSET_ATTR_CIDR, align 4
  %34 = load %struct.hash_netport6_elem*, %struct.hash_netport6_elem** %5, align 8
  %35 = getelementptr inbounds %struct.hash_netport6_elem, %struct.hash_netport6_elem* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = add nsw i64 %36, 1
  %38 = call i64 @nla_put_u8(%struct.sk_buff* %32, i32 %33, i64 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %58, label %40

40:                                               ; preds = %31
  %41 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %42 = load i32, i32* @IPSET_ATTR_PROTO, align 4
  %43 = load %struct.hash_netport6_elem*, %struct.hash_netport6_elem** %5, align 8
  %44 = getelementptr inbounds %struct.hash_netport6_elem, %struct.hash_netport6_elem* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = call i64 @nla_put_u8(%struct.sk_buff* %41, i32 %42, i64 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %58, label %48

48:                                               ; preds = %40
  %49 = load i64, i64* %6, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %59

51:                                               ; preds = %48
  %52 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %53 = load i32, i32* @IPSET_ATTR_CADT_FLAGS, align 4
  %54 = load i64, i64* %6, align 8
  %55 = call i32 @htonl(i64 %54)
  %56 = call i64 @nla_put_net32(%struct.sk_buff* %52, i32 %53, i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %51, %40, %31, %23, %14
  br label %60

59:                                               ; preds = %51, %48
  store i32 0, i32* %3, align 4
  br label %61

60:                                               ; preds = %58
  store i32 1, i32* %3, align 4
  br label %61

61:                                               ; preds = %60, %59
  %62 = load i32, i32* %3, align 4
  ret i32 %62
}

declare dso_local i64 @nla_put_ipaddr6(%struct.sk_buff*, i32, i32*) #1

declare dso_local i64 @nla_put_net16(%struct.sk_buff*, i32, i32) #1

declare dso_local i64 @nla_put_u8(%struct.sk_buff*, i32, i64) #1

declare dso_local i64 @nla_put_net32(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @htonl(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
