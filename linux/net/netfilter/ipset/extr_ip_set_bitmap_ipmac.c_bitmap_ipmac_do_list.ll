; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/ipset/extr_ip_set_bitmap_ipmac.c_bitmap_ipmac_do_list.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/ipset/extr_ip_set_bitmap_ipmac.c_bitmap_ipmac_do_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.bitmap_ipmac = type { i64, i32 }
%struct.bitmap_ipmac_elem = type { i64, i32 }

@IPSET_ATTR_IP = common dso_local global i32 0, align 4
@MAC_FILLED = common dso_local global i64 0, align 8
@IPSET_ATTR_ETHER = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.bitmap_ipmac*, i64, i64)* @bitmap_ipmac_do_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bitmap_ipmac_do_list(%struct.sk_buff* %0, %struct.bitmap_ipmac* %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.bitmap_ipmac*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.bitmap_ipmac_elem*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %5, align 8
  store %struct.bitmap_ipmac* %1, %struct.bitmap_ipmac** %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %10 = load %struct.bitmap_ipmac*, %struct.bitmap_ipmac** %6, align 8
  %11 = getelementptr inbounds %struct.bitmap_ipmac, %struct.bitmap_ipmac* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = load i64, i64* %7, align 8
  %14 = load i64, i64* %8, align 8
  %15 = call %struct.bitmap_ipmac_elem* @get_const_elem(i32 %12, i64 %13, i64 %14)
  store %struct.bitmap_ipmac_elem* %15, %struct.bitmap_ipmac_elem** %9, align 8
  %16 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %17 = load i32, i32* @IPSET_ATTR_IP, align 4
  %18 = load %struct.bitmap_ipmac*, %struct.bitmap_ipmac** %6, align 8
  %19 = getelementptr inbounds %struct.bitmap_ipmac, %struct.bitmap_ipmac* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* %7, align 8
  %22 = add nsw i64 %20, %21
  %23 = call i32 @htonl(i64 %22)
  %24 = call i64 @nla_put_ipaddr4(%struct.sk_buff* %16, i32 %17, i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %43, label %26

26:                                               ; preds = %4
  %27 = load %struct.bitmap_ipmac_elem*, %struct.bitmap_ipmac_elem** %9, align 8
  %28 = getelementptr inbounds %struct.bitmap_ipmac_elem, %struct.bitmap_ipmac_elem* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @MAC_FILLED, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %41

32:                                               ; preds = %26
  %33 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %34 = load i32, i32* @IPSET_ATTR_ETHER, align 4
  %35 = load i32, i32* @ETH_ALEN, align 4
  %36 = load %struct.bitmap_ipmac_elem*, %struct.bitmap_ipmac_elem** %9, align 8
  %37 = getelementptr inbounds %struct.bitmap_ipmac_elem, %struct.bitmap_ipmac_elem* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = call i64 @nla_put(%struct.sk_buff* %33, i32 %34, i32 %35, i32 %38)
  %40 = icmp ne i64 %39, 0
  br label %41

41:                                               ; preds = %32, %26
  %42 = phi i1 [ false, %26 ], [ %40, %32 ]
  br label %43

43:                                               ; preds = %41, %4
  %44 = phi i1 [ true, %4 ], [ %42, %41 ]
  %45 = zext i1 %44 to i32
  ret i32 %45
}

declare dso_local %struct.bitmap_ipmac_elem* @get_const_elem(i32, i64, i64) #1

declare dso_local i64 @nla_put_ipaddr4(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @htonl(i64) #1

declare dso_local i64 @nla_put(%struct.sk_buff*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
