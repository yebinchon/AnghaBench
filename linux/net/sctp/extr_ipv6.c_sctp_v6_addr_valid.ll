; ModuleID = '/home/carl/AnghaBench/linux/net/sctp/extr_ipv6.c_sctp_v6_addr_valid.c'
source_filename = "/home/carl/AnghaBench/linux/net/sctp/extr_ipv6.c_sctp_v6_addr_valid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.sctp_addr = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.sctp_sock = type { i32 }
%struct.sk_buff = type { i32 }
%struct.TYPE_4__ = type { i32 (%union.sctp_addr*, %struct.sctp_sock*, %struct.sk_buff*)* }

@IPV6_ADDR_MAPPED = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i32 0, align 4
@IPV6_ADDR_UNICAST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%union.sctp_addr*, %struct.sctp_sock*, %struct.sk_buff*)* @sctp_v6_addr_valid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sctp_v6_addr_valid(%union.sctp_addr* %0, %struct.sctp_sock* %1, %struct.sk_buff* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %union.sctp_addr*, align 8
  %6 = alloca %struct.sctp_sock*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca i32, align 4
  store %union.sctp_addr* %0, %union.sctp_addr** %5, align 8
  store %struct.sctp_sock* %1, %struct.sctp_sock** %6, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %7, align 8
  %9 = load %union.sctp_addr*, %union.sctp_addr** %5, align 8
  %10 = bitcast %union.sctp_addr* %9 to %struct.TYPE_3__*
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = call i32 @ipv6_addr_type(i32* %11)
  store i32 %12, i32* %8, align 4
  %13 = load i32, i32* %8, align 4
  %14 = load i32, i32* @IPV6_ADDR_MAPPED, align 4
  %15 = icmp eq i32 %13, %14
  br i1 %15, label %16, label %36

16:                                               ; preds = %3
  %17 = load %struct.sctp_sock*, %struct.sctp_sock** %6, align 8
  %18 = icmp ne %struct.sctp_sock* %17, null
  br i1 %18, label %19, label %25

19:                                               ; preds = %16
  %20 = load %struct.sctp_sock*, %struct.sctp_sock** %6, align 8
  %21 = call i32 @sctp_opt2sk(%struct.sctp_sock* %20)
  %22 = call i64 @ipv6_only_sock(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %19
  store i32 0, i32* %4, align 4
  br label %43

25:                                               ; preds = %19, %16
  %26 = load %union.sctp_addr*, %union.sctp_addr** %5, align 8
  %27 = call i32 @sctp_v6_map_v4(%union.sctp_addr* %26)
  %28 = load i32, i32* @AF_INET, align 4
  %29 = call %struct.TYPE_4__* @sctp_get_af_specific(i32 %28)
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i32 (%union.sctp_addr*, %struct.sctp_sock*, %struct.sk_buff*)*, i32 (%union.sctp_addr*, %struct.sctp_sock*, %struct.sk_buff*)** %30, align 8
  %32 = load %union.sctp_addr*, %union.sctp_addr** %5, align 8
  %33 = load %struct.sctp_sock*, %struct.sctp_sock** %6, align 8
  %34 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %35 = call i32 %31(%union.sctp_addr* %32, %struct.sctp_sock* %33, %struct.sk_buff* %34)
  store i32 %35, i32* %4, align 4
  br label %43

36:                                               ; preds = %3
  %37 = load i32, i32* %8, align 4
  %38 = load i32, i32* @IPV6_ADDR_UNICAST, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %36
  store i32 0, i32* %4, align 4
  br label %43

42:                                               ; preds = %36
  store i32 1, i32* %4, align 4
  br label %43

43:                                               ; preds = %42, %41, %25, %24
  %44 = load i32, i32* %4, align 4
  ret i32 %44
}

declare dso_local i32 @ipv6_addr_type(i32*) #1

declare dso_local i64 @ipv6_only_sock(i32) #1

declare dso_local i32 @sctp_opt2sk(%struct.sctp_sock*) #1

declare dso_local i32 @sctp_v6_map_v4(%union.sctp_addr*) #1

declare dso_local %struct.TYPE_4__* @sctp_get_af_specific(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
