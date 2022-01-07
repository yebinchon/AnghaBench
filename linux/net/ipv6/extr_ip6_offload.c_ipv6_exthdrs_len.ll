; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_ip6_offload.c_ipv6_exthdrs_len.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_ip6_offload.c_ipv6_exthdrs_len.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipv6hdr = type { i32 }
%struct.net_offload = type { i32 }
%struct.ipv6_opt_hdr = type { i32 }

@NEXTHDR_HOP = common dso_local global i32 0, align 4
@inet6_offloads = common dso_local global i32* null, align 8
@INET6_PROTO_GSO_EXTHDR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ipv6hdr*, %struct.net_offload**)* @ipv6_exthdrs_len to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipv6_exthdrs_len(%struct.ipv6hdr* %0, %struct.net_offload** %1) #0 {
  %3 = alloca %struct.ipv6hdr*, align 8
  %4 = alloca %struct.net_offload**, align 8
  %5 = alloca %struct.ipv6_opt_hdr*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ipv6hdr* %0, %struct.ipv6hdr** %3, align 8
  store %struct.net_offload** %1, %struct.net_offload*** %4, align 8
  %9 = load %struct.ipv6hdr*, %struct.ipv6hdr** %3, align 8
  %10 = bitcast %struct.ipv6hdr* %9 to i8*
  %11 = bitcast i8* %10 to %struct.ipv6_opt_hdr*
  store %struct.ipv6_opt_hdr* %11, %struct.ipv6_opt_hdr** %5, align 8
  store i32 0, i32* %6, align 4
  store i32 4, i32* %8, align 4
  %12 = load %struct.ipv6hdr*, %struct.ipv6hdr** %3, align 8
  %13 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %7, align 4
  br label %15

15:                                               ; preds = %45, %2
  %16 = load i32, i32* %7, align 4
  %17 = load i32, i32* @NEXTHDR_HOP, align 4
  %18 = icmp ne i32 %16, %17
  br i1 %18, label %19, label %45

19:                                               ; preds = %15
  %20 = load i32*, i32** @inet6_offloads, align 8
  %21 = load i32, i32* %7, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i32, i32* %20, i64 %22
  %24 = load i32, i32* %23, align 4
  %25 = call %struct.net_offload* @rcu_dereference(i32 %24)
  %26 = load %struct.net_offload**, %struct.net_offload*** %4, align 8
  store %struct.net_offload* %25, %struct.net_offload** %26, align 8
  %27 = load %struct.net_offload**, %struct.net_offload*** %4, align 8
  %28 = load %struct.net_offload*, %struct.net_offload** %27, align 8
  %29 = icmp ne %struct.net_offload* %28, null
  %30 = xor i1 %29, true
  %31 = zext i1 %30 to i32
  %32 = call i64 @unlikely(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %19
  br label %60

35:                                               ; preds = %19
  %36 = load %struct.net_offload**, %struct.net_offload*** %4, align 8
  %37 = load %struct.net_offload*, %struct.net_offload** %36, align 8
  %38 = getelementptr inbounds %struct.net_offload, %struct.net_offload* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @INET6_PROTO_GSO_EXTHDR, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %35
  br label %60

44:                                               ; preds = %35
  br label %45

45:                                               ; preds = %44, %15
  %46 = load %struct.ipv6_opt_hdr*, %struct.ipv6_opt_hdr** %5, align 8
  %47 = bitcast %struct.ipv6_opt_hdr* %46 to i8*
  %48 = load i32, i32* %8, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr i8, i8* %47, i64 %49
  %51 = bitcast i8* %50 to %struct.ipv6_opt_hdr*
  store %struct.ipv6_opt_hdr* %51, %struct.ipv6_opt_hdr** %5, align 8
  %52 = load %struct.ipv6_opt_hdr*, %struct.ipv6_opt_hdr** %5, align 8
  %53 = call i32 @ipv6_optlen(%struct.ipv6_opt_hdr* %52)
  store i32 %53, i32* %8, align 4
  %54 = load i32, i32* %8, align 4
  %55 = load i32, i32* %6, align 4
  %56 = add nsw i32 %55, %54
  store i32 %56, i32* %6, align 4
  %57 = load %struct.ipv6_opt_hdr*, %struct.ipv6_opt_hdr** %5, align 8
  %58 = getelementptr inbounds %struct.ipv6_opt_hdr, %struct.ipv6_opt_hdr* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  store i32 %59, i32* %7, align 4
  br label %15

60:                                               ; preds = %43, %34
  %61 = load i32, i32* %6, align 4
  ret i32 %61
}

declare dso_local %struct.net_offload* @rcu_dereference(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @ipv6_optlen(%struct.ipv6_opt_hdr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
