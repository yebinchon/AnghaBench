; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/ipset/extr_ip_set_hash_ipportip.c_hash_ipportip4_data_list.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/ipset/extr_ip_set_hash_ipportip.c_hash_ipportip4_data_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.hash_ipportip4_elem = type { i32, i32, i32, i32 }

@IPSET_ATTR_IP = common dso_local global i32 0, align 4
@IPSET_ATTR_IP2 = common dso_local global i32 0, align 4
@IPSET_ATTR_PORT = common dso_local global i32 0, align 4
@IPSET_ATTR_PROTO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.hash_ipportip4_elem*)* @hash_ipportip4_data_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hash_ipportip4_data_list(%struct.sk_buff* %0, %struct.hash_ipportip4_elem* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.hash_ipportip4_elem*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.hash_ipportip4_elem* %1, %struct.hash_ipportip4_elem** %5, align 8
  %6 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %7 = load i32, i32* @IPSET_ATTR_IP, align 4
  %8 = load %struct.hash_ipportip4_elem*, %struct.hash_ipportip4_elem** %5, align 8
  %9 = getelementptr inbounds %struct.hash_ipportip4_elem, %struct.hash_ipportip4_elem* %8, i32 0, i32 3
  %10 = load i32, i32* %9, align 4
  %11 = call i64 @nla_put_ipaddr4(%struct.sk_buff* %6, i32 %7, i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %37, label %13

13:                                               ; preds = %2
  %14 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %15 = load i32, i32* @IPSET_ATTR_IP2, align 4
  %16 = load %struct.hash_ipportip4_elem*, %struct.hash_ipportip4_elem** %5, align 8
  %17 = getelementptr inbounds %struct.hash_ipportip4_elem, %struct.hash_ipportip4_elem* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = call i64 @nla_put_ipaddr4(%struct.sk_buff* %14, i32 %15, i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %37, label %21

21:                                               ; preds = %13
  %22 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %23 = load i32, i32* @IPSET_ATTR_PORT, align 4
  %24 = load %struct.hash_ipportip4_elem*, %struct.hash_ipportip4_elem** %5, align 8
  %25 = getelementptr inbounds %struct.hash_ipportip4_elem, %struct.hash_ipportip4_elem* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i64 @nla_put_net16(%struct.sk_buff* %22, i32 %23, i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %37, label %29

29:                                               ; preds = %21
  %30 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %31 = load i32, i32* @IPSET_ATTR_PROTO, align 4
  %32 = load %struct.hash_ipportip4_elem*, %struct.hash_ipportip4_elem** %5, align 8
  %33 = getelementptr inbounds %struct.hash_ipportip4_elem, %struct.hash_ipportip4_elem* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i64 @nla_put_u8(%struct.sk_buff* %30, i32 %31, i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %29, %21, %13, %2
  br label %39

38:                                               ; preds = %29
  store i32 0, i32* %3, align 4
  br label %40

39:                                               ; preds = %37
  store i32 1, i32* %3, align 4
  br label %40

40:                                               ; preds = %39, %38
  %41 = load i32, i32* %3, align 4
  ret i32 %41
}

declare dso_local i64 @nla_put_ipaddr4(%struct.sk_buff*, i32, i32) #1

declare dso_local i64 @nla_put_net16(%struct.sk_buff*, i32, i32) #1

declare dso_local i64 @nla_put_u8(%struct.sk_buff*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
