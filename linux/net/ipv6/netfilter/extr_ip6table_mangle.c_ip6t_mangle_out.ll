; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/netfilter/extr_ip6table_mangle.c_ip6t_mangle_out.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/netfilter/extr_ip6table_mangle.c_ip6t_mangle_out.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64 }
%struct.nf_hook_state = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.in6_addr = type { i32 }
%struct.TYPE_5__ = type { i64, i32, i32 }

@NF_DROP = common dso_local global i32 0, align 4
@NF_STOLEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.nf_hook_state*)* @ip6t_mangle_out to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ip6t_mangle_out(%struct.sk_buff* %0, %struct.nf_hook_state* %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.nf_hook_state*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.in6_addr, align 4
  %7 = alloca %struct.in6_addr, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  store %struct.nf_hook_state* %1, %struct.nf_hook_state** %4, align 8
  %12 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %13 = call %struct.TYPE_5__* @ipv6_hdr(%struct.sk_buff* %12)
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 2
  %15 = call i32 @memcpy(%struct.in6_addr* %6, i32* %14, i32 4)
  %16 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %17 = call %struct.TYPE_5__* @ipv6_hdr(%struct.sk_buff* %16)
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 1
  %19 = call i32 @memcpy(%struct.in6_addr* %7, i32* %18, i32 4)
  %20 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %21 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  store i64 %22, i64* %10, align 8
  %23 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %24 = call %struct.TYPE_5__* @ipv6_hdr(%struct.sk_buff* %23)
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  store i64 %26, i64* %8, align 8
  %27 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %28 = call %struct.TYPE_5__* @ipv6_hdr(%struct.sk_buff* %27)
  %29 = bitcast %struct.TYPE_5__* %28 to i64*
  %30 = load i64, i64* %29, align 8
  store i64 %30, i64* %9, align 8
  %31 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %32 = load %struct.nf_hook_state*, %struct.nf_hook_state** %4, align 8
  %33 = load %struct.nf_hook_state*, %struct.nf_hook_state** %4, align 8
  %34 = getelementptr inbounds %struct.nf_hook_state, %struct.nf_hook_state* %33, i32 0, i32 0
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @ip6t_do_table(%struct.sk_buff* %31, %struct.nf_hook_state* %32, i32 %38)
  store i32 %39, i32* %5, align 4
  %40 = load i32, i32* %5, align 4
  %41 = load i32, i32* @NF_DROP, align 4
  %42 = icmp ne i32 %40, %41
  br i1 %42, label %43, label %91

43:                                               ; preds = %2
  %44 = load i32, i32* %5, align 4
  %45 = load i32, i32* @NF_STOLEN, align 4
  %46 = icmp ne i32 %44, %45
  br i1 %46, label %47, label %91

47:                                               ; preds = %43
  %48 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %49 = call %struct.TYPE_5__* @ipv6_hdr(%struct.sk_buff* %48)
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 2
  %51 = call i32 @ipv6_addr_equal(i32* %50, %struct.in6_addr* %6)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %79

53:                                               ; preds = %47
  %54 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %55 = call %struct.TYPE_5__* @ipv6_hdr(%struct.sk_buff* %54)
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 1
  %57 = call i32 @ipv6_addr_equal(i32* %56, %struct.in6_addr* %7)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %79

59:                                               ; preds = %53
  %60 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %61 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* %10, align 8
  %64 = icmp ne i64 %62, %63
  br i1 %64, label %79, label %65

65:                                               ; preds = %59
  %66 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %67 = call %struct.TYPE_5__* @ipv6_hdr(%struct.sk_buff* %66)
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* %8, align 8
  %71 = icmp ne i64 %69, %70
  br i1 %71, label %79, label %72

72:                                               ; preds = %65
  %73 = load i64, i64* %9, align 8
  %74 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %75 = call %struct.TYPE_5__* @ipv6_hdr(%struct.sk_buff* %74)
  %76 = bitcast %struct.TYPE_5__* %75 to i64*
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %73, %77
  br i1 %78, label %79, label %91

79:                                               ; preds = %72, %65, %59, %53, %47
  %80 = load %struct.nf_hook_state*, %struct.nf_hook_state** %4, align 8
  %81 = getelementptr inbounds %struct.nf_hook_state, %struct.nf_hook_state* %80, i32 0, i32 0
  %82 = load %struct.TYPE_6__*, %struct.TYPE_6__** %81, align 8
  %83 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %84 = call i32 @ip6_route_me_harder(%struct.TYPE_6__* %82, %struct.sk_buff* %83)
  store i32 %84, i32* %11, align 4
  %85 = load i32, i32* %11, align 4
  %86 = icmp slt i32 %85, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %79
  %88 = load i32, i32* %11, align 4
  %89 = call i32 @NF_DROP_ERR(i32 %88)
  store i32 %89, i32* %5, align 4
  br label %90

90:                                               ; preds = %87, %79
  br label %91

91:                                               ; preds = %90, %72, %43, %2
  %92 = load i32, i32* %5, align 4
  ret i32 %92
}

declare dso_local i32 @memcpy(%struct.in6_addr*, i32*, i32) #1

declare dso_local %struct.TYPE_5__* @ipv6_hdr(%struct.sk_buff*) #1

declare dso_local i32 @ip6t_do_table(%struct.sk_buff*, %struct.nf_hook_state*, i32) #1

declare dso_local i32 @ipv6_addr_equal(i32*, %struct.in6_addr*) #1

declare dso_local i32 @ip6_route_me_harder(%struct.TYPE_6__*, %struct.sk_buff*) #1

declare dso_local i32 @NF_DROP_ERR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
