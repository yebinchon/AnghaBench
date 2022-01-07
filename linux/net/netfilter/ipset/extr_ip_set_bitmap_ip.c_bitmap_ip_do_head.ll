; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/ipset/extr_ip_set_bitmap_ip.c_bitmap_ip_do_head.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/ipset/extr_ip_set_bitmap_ip.c_bitmap_ip_do_head.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.bitmap_ip = type { i32, i32, i32 }

@IPSET_ATTR_IP = common dso_local global i32 0, align 4
@IPSET_ATTR_IP_TO = common dso_local global i32 0, align 4
@IPSET_ATTR_NETMASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.bitmap_ip*)* @bitmap_ip_do_head to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bitmap_ip_do_head(%struct.sk_buff* %0, %struct.bitmap_ip* %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.bitmap_ip*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  store %struct.bitmap_ip* %1, %struct.bitmap_ip** %4, align 8
  %5 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %6 = load i32, i32* @IPSET_ATTR_IP, align 4
  %7 = load %struct.bitmap_ip*, %struct.bitmap_ip** %4, align 8
  %8 = getelementptr inbounds %struct.bitmap_ip, %struct.bitmap_ip* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @htonl(i32 %9)
  %11 = call i64 @nla_put_ipaddr4(%struct.sk_buff* %5, i32 %6, i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %37, label %13

13:                                               ; preds = %2
  %14 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %15 = load i32, i32* @IPSET_ATTR_IP_TO, align 4
  %16 = load %struct.bitmap_ip*, %struct.bitmap_ip** %4, align 8
  %17 = getelementptr inbounds %struct.bitmap_ip, %struct.bitmap_ip* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @htonl(i32 %18)
  %20 = call i64 @nla_put_ipaddr4(%struct.sk_buff* %14, i32 %15, i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %37, label %22

22:                                               ; preds = %13
  %23 = load %struct.bitmap_ip*, %struct.bitmap_ip** %4, align 8
  %24 = getelementptr inbounds %struct.bitmap_ip, %struct.bitmap_ip* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = icmp ne i32 %25, 32
  br i1 %26, label %27, label %35

27:                                               ; preds = %22
  %28 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %29 = load i32, i32* @IPSET_ATTR_NETMASK, align 4
  %30 = load %struct.bitmap_ip*, %struct.bitmap_ip** %4, align 8
  %31 = getelementptr inbounds %struct.bitmap_ip, %struct.bitmap_ip* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i64 @nla_put_u8(%struct.sk_buff* %28, i32 %29, i32 %32)
  %34 = icmp ne i64 %33, 0
  br label %35

35:                                               ; preds = %27, %22
  %36 = phi i1 [ false, %22 ], [ %34, %27 ]
  br label %37

37:                                               ; preds = %35, %13, %2
  %38 = phi i1 [ true, %13 ], [ true, %2 ], [ %36, %35 ]
  %39 = zext i1 %38 to i32
  ret i32 %39
}

declare dso_local i64 @nla_put_ipaddr4(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @htonl(i32) #1

declare dso_local i64 @nla_put_u8(%struct.sk_buff*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
