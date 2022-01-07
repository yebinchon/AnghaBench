; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_mcast_snoop.c_ipv6_mc_check_mld_query.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_mcast_snoop.c_ipv6_mc_check_mld_query.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.mld_msg = type { i32 }
%struct.TYPE_2__ = type { i32, i32 }

@IPV6_ADDR_LINKLOCAL = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*)* @ipv6_mc_check_mld_query to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipv6_mc_check_mld_query(%struct.sk_buff* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.mld_msg*, align 8
  %6 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  %7 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %8 = call i32 @ipv6_transport_len(%struct.sk_buff* %7)
  store i32 %8, i32* %4, align 4
  %9 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %10 = call %struct.TYPE_2__* @ipv6_hdr(%struct.sk_buff* %9)
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 1
  %12 = call i32 @ipv6_addr_type(i32* %11)
  %13 = load i32, i32* @IPV6_ADDR_LINKLOCAL, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %1
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %62

19:                                               ; preds = %1
  %20 = load i32, i32* %4, align 4
  %21 = zext i32 %20 to i64
  %22 = icmp ne i64 %21, 4
  br i1 %22, label %23, label %44

23:                                               ; preds = %19
  %24 = load i32, i32* %4, align 4
  %25 = zext i32 %24 to i64
  %26 = icmp ult i64 %25, 4
  br i1 %26, label %27, label %30

27:                                               ; preds = %23
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %2, align 4
  br label %62

30:                                               ; preds = %23
  %31 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %32 = call i32 @skb_transport_offset(%struct.sk_buff* %31)
  %33 = sext i32 %32 to i64
  %34 = add i64 %33, 4
  %35 = trunc i64 %34 to i32
  store i32 %35, i32* %6, align 4
  %36 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %37 = load i32, i32* %6, align 4
  %38 = call i32 @ipv6_mc_may_pull(%struct.sk_buff* %36, i32 %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %43, label %40

40:                                               ; preds = %30
  %41 = load i32, i32* @EINVAL, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %2, align 4
  br label %62

43:                                               ; preds = %30
  br label %44

44:                                               ; preds = %43, %19
  %45 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %46 = call i64 @skb_transport_header(%struct.sk_buff* %45)
  %47 = inttoptr i64 %46 to %struct.mld_msg*
  store %struct.mld_msg* %47, %struct.mld_msg** %5, align 8
  %48 = load %struct.mld_msg*, %struct.mld_msg** %5, align 8
  %49 = getelementptr inbounds %struct.mld_msg, %struct.mld_msg* %48, i32 0, i32 0
  %50 = call i64 @ipv6_addr_any(i32* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %61

52:                                               ; preds = %44
  %53 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %54 = call %struct.TYPE_2__* @ipv6_hdr(%struct.sk_buff* %53)
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  %56 = call i32 @ipv6_addr_is_ll_all_nodes(i32* %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %61, label %58

58:                                               ; preds = %52
  %59 = load i32, i32* @EINVAL, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %2, align 4
  br label %62

61:                                               ; preds = %52, %44
  store i32 0, i32* %2, align 4
  br label %62

62:                                               ; preds = %61, %58, %40, %27, %16
  %63 = load i32, i32* %2, align 4
  ret i32 %63
}

declare dso_local i32 @ipv6_transport_len(%struct.sk_buff*) #1

declare dso_local i32 @ipv6_addr_type(i32*) #1

declare dso_local %struct.TYPE_2__* @ipv6_hdr(%struct.sk_buff*) #1

declare dso_local i32 @skb_transport_offset(%struct.sk_buff*) #1

declare dso_local i32 @ipv6_mc_may_pull(%struct.sk_buff*, i32) #1

declare dso_local i64 @skb_transport_header(%struct.sk_buff*) #1

declare dso_local i64 @ipv6_addr_any(i32*) #1

declare dso_local i32 @ipv6_addr_is_ll_all_nodes(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
