; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_mip6.c_mip6_rthdr_input.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_mip6.c_mip6_rthdr_input.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfrm_state = type { i32, i64 }
%struct.sk_buff = type { i64 }
%struct.ipv6hdr = type { i32 }
%struct.rt2_hdr = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.in6_addr = type { i32 }

@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xfrm_state*, %struct.sk_buff*)* @mip6_rthdr_input to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mip6_rthdr_input(%struct.xfrm_state* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.xfrm_state*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.ipv6hdr*, align 8
  %6 = alloca %struct.rt2_hdr*, align 8
  %7 = alloca i32, align 4
  store %struct.xfrm_state* %0, %struct.xfrm_state** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %8 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %9 = call %struct.ipv6hdr* @ipv6_hdr(%struct.sk_buff* %8)
  store %struct.ipv6hdr* %9, %struct.ipv6hdr** %5, align 8
  %10 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %11 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to %struct.rt2_hdr*
  store %struct.rt2_hdr* %13, %struct.rt2_hdr** %6, align 8
  %14 = load %struct.rt2_hdr*, %struct.rt2_hdr** %6, align 8
  %15 = getelementptr inbounds %struct.rt2_hdr, %struct.rt2_hdr* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %7, align 4
  %18 = load %struct.xfrm_state*, %struct.xfrm_state** %3, align 8
  %19 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %18, i32 0, i32 0
  %20 = call i32 @spin_lock(i32* %19)
  %21 = load %struct.ipv6hdr*, %struct.ipv6hdr** %5, align 8
  %22 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %21, i32 0, i32 0
  %23 = load %struct.xfrm_state*, %struct.xfrm_state** %3, align 8
  %24 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = inttoptr i64 %25 to %struct.in6_addr*
  %27 = call i32 @ipv6_addr_equal(i32* %22, %struct.in6_addr* %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %39, label %29

29:                                               ; preds = %2
  %30 = load %struct.xfrm_state*, %struct.xfrm_state** %3, align 8
  %31 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = inttoptr i64 %32 to %struct.in6_addr*
  %34 = call i32 @ipv6_addr_any(%struct.in6_addr* %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %39, label %36

36:                                               ; preds = %29
  %37 = load i32, i32* @ENOENT, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %7, align 4
  br label %39

39:                                               ; preds = %36, %29, %2
  %40 = load %struct.xfrm_state*, %struct.xfrm_state** %3, align 8
  %41 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %40, i32 0, i32 0
  %42 = call i32 @spin_unlock(i32* %41)
  %43 = load i32, i32* %7, align 4
  ret i32 %43
}

declare dso_local %struct.ipv6hdr* @ipv6_hdr(%struct.sk_buff*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @ipv6_addr_equal(i32*, %struct.in6_addr*) #1

declare dso_local i32 @ipv6_addr_any(%struct.in6_addr*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
