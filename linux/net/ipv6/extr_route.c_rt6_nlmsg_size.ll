; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_route.c_rt6_nlmsg_size.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_route.c_rt6_nlmsg_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fib6_info = type { i32, %struct.fib6_nh*, i64 }
%struct.fib6_nh = type { i32 }

@rt6_nh_nlmsg_size = common dso_local global i32 0, align 4
@RTAX_MAX = common dso_local global i32 0, align 4
@TCP_CA_NAME_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.fib6_info*)* @rt6_nlmsg_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @rt6_nlmsg_size(%struct.fib6_info* %0) #0 {
  %2 = alloca %struct.fib6_info*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.fib6_nh*, align 8
  store %struct.fib6_info* %0, %struct.fib6_info** %2, align 8
  %5 = load %struct.fib6_info*, %struct.fib6_info** %2, align 8
  %6 = getelementptr inbounds %struct.fib6_info, %struct.fib6_info* %5, i32 0, i32 2
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %16

9:                                                ; preds = %1
  %10 = call i32 @nla_total_size(i32 4)
  store i32 %10, i32* %3, align 4
  %11 = load %struct.fib6_info*, %struct.fib6_info** %2, align 8
  %12 = getelementptr inbounds %struct.fib6_info, %struct.fib6_info* %11, i32 0, i32 2
  %13 = load i64, i64* %12, align 8
  %14 = load i32, i32* @rt6_nh_nlmsg_size, align 4
  %15 = call i32 @nexthop_for_each_fib6_nh(i64 %13, i32 %14, i32* %3)
  br label %47

16:                                               ; preds = %1
  %17 = load %struct.fib6_info*, %struct.fib6_info** %2, align 8
  %18 = getelementptr inbounds %struct.fib6_info, %struct.fib6_info* %17, i32 0, i32 1
  %19 = load %struct.fib6_nh*, %struct.fib6_nh** %18, align 8
  store %struct.fib6_nh* %19, %struct.fib6_nh** %4, align 8
  store i32 0, i32* %3, align 4
  %20 = load %struct.fib6_info*, %struct.fib6_info** %2, align 8
  %21 = getelementptr inbounds %struct.fib6_info, %struct.fib6_info* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %40

24:                                               ; preds = %16
  %25 = call i32 @nla_total_size(i32 0)
  %26 = call i32 @NLA_ALIGN(i32 4)
  %27 = add nsw i32 %25, %26
  %28 = call i32 @nla_total_size(i32 16)
  %29 = add nsw i32 %27, %28
  %30 = load %struct.fib6_nh*, %struct.fib6_nh** %4, align 8
  %31 = getelementptr inbounds %struct.fib6_nh, %struct.fib6_nh* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @lwtunnel_get_encap_size(i32 %32)
  %34 = add nsw i32 %29, %33
  store i32 %34, i32* %3, align 4
  %35 = load %struct.fib6_info*, %struct.fib6_info** %2, align 8
  %36 = getelementptr inbounds %struct.fib6_info, %struct.fib6_info* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* %3, align 4
  %39 = mul nsw i32 %38, %37
  store i32 %39, i32* %3, align 4
  br label %40

40:                                               ; preds = %24, %16
  %41 = load %struct.fib6_nh*, %struct.fib6_nh** %4, align 8
  %42 = getelementptr inbounds %struct.fib6_nh, %struct.fib6_nh* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @lwtunnel_get_encap_size(i32 %43)
  %45 = load i32, i32* %3, align 4
  %46 = add nsw i32 %45, %44
  store i32 %46, i32* %3, align 4
  br label %47

47:                                               ; preds = %40, %9
  %48 = call i64 @NLMSG_ALIGN(i32 4)
  %49 = call i32 @nla_total_size(i32 16)
  %50 = sext i32 %49 to i64
  %51 = add i64 %48, %50
  %52 = call i32 @nla_total_size(i32 16)
  %53 = sext i32 %52 to i64
  %54 = add i64 %51, %53
  %55 = call i32 @nla_total_size(i32 16)
  %56 = sext i32 %55 to i64
  %57 = add i64 %54, %56
  %58 = call i32 @nla_total_size(i32 16)
  %59 = sext i32 %58 to i64
  %60 = add i64 %57, %59
  %61 = call i32 @nla_total_size(i32 4)
  %62 = sext i32 %61 to i64
  %63 = add i64 %60, %62
  %64 = call i32 @nla_total_size(i32 4)
  %65 = sext i32 %64 to i64
  %66 = add i64 %63, %65
  %67 = call i32 @nla_total_size(i32 4)
  %68 = sext i32 %67 to i64
  %69 = add i64 %66, %68
  %70 = call i32 @nla_total_size(i32 4)
  %71 = sext i32 %70 to i64
  %72 = add i64 %69, %71
  %73 = load i32, i32* @RTAX_MAX, align 4
  %74 = call i32 @nla_total_size(i32 4)
  %75 = mul nsw i32 %73, %74
  %76 = sext i32 %75 to i64
  %77 = add i64 %72, %76
  %78 = call i32 @nla_total_size(i32 4)
  %79 = sext i32 %78 to i64
  %80 = add i64 %77, %79
  %81 = load i32, i32* @TCP_CA_NAME_MAX, align 4
  %82 = call i32 @nla_total_size(i32 %81)
  %83 = sext i32 %82 to i64
  %84 = add i64 %80, %83
  %85 = call i32 @nla_total_size(i32 1)
  %86 = sext i32 %85 to i64
  %87 = add i64 %84, %86
  %88 = load i32, i32* %3, align 4
  %89 = sext i32 %88 to i64
  %90 = add i64 %87, %89
  ret i64 %90
}

declare dso_local i32 @nla_total_size(i32) #1

declare dso_local i32 @nexthop_for_each_fib6_nh(i64, i32, i32*) #1

declare dso_local i32 @NLA_ALIGN(i32) #1

declare dso_local i32 @lwtunnel_get_encap_size(i32) #1

declare dso_local i64 @NLMSG_ALIGN(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
