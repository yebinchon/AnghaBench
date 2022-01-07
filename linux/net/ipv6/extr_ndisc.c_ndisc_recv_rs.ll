; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_ndisc.c_ndisc_recv_rs.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_ndisc.c_ndisc_recv_rs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32, i32 }
%struct.rs_msg = type { i32 }
%struct.neighbour = type { i32 }
%struct.inet6_dev = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.in6_addr = type { i32 }
%struct.ndisc_options = type { i64 }
%struct.TYPE_4__ = type { %struct.in6_addr }

@err = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"RS: can't find in6 device\0A\00", align 1
@notice = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"NS: invalid ND option, ignored\0A\00", align 1
@nd_tbl = common dso_local global i32 0, align 4
@NUD_STALE = common dso_local global i32 0, align 4
@NEIGH_UPDATE_F_WEAK_OVERRIDE = common dso_local global i32 0, align 4
@NEIGH_UPDATE_F_OVERRIDE = common dso_local global i32 0, align 4
@NEIGH_UPDATE_F_OVERRIDE_ISROUTER = common dso_local global i32 0, align 4
@NDISC_ROUTER_SOLICITATION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sk_buff*)* @ndisc_recv_rs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ndisc_recv_rs(%struct.sk_buff* %0) #0 {
  %2 = alloca %struct.sk_buff*, align 8
  %3 = alloca %struct.rs_msg*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.neighbour*, align 8
  %6 = alloca %struct.inet6_dev*, align 8
  %7 = alloca %struct.in6_addr*, align 8
  %8 = alloca %struct.ndisc_options, align 8
  %9 = alloca i32*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %2, align 8
  %10 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %11 = call i64 @skb_transport_header(%struct.sk_buff* %10)
  %12 = inttoptr i64 %11 to %struct.rs_msg*
  store %struct.rs_msg* %12, %struct.rs_msg** %3, align 8
  %13 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %14 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = sext i32 %15 to i64
  %17 = sub i64 %16, 4
  store i64 %17, i64* %4, align 8
  %18 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %19 = call %struct.TYPE_4__* @ipv6_hdr(%struct.sk_buff* %18)
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  store %struct.in6_addr* %20, %struct.in6_addr** %7, align 8
  store i32* null, i32** %9, align 8
  %21 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %22 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = sext i32 %23 to i64
  %25 = icmp ult i64 %24, 4
  br i1 %25, label %26, label %27

26:                                               ; preds = %1
  br label %103

27:                                               ; preds = %1
  %28 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %29 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call %struct.inet6_dev* @__in6_dev_get(i32 %30)
  store %struct.inet6_dev* %31, %struct.inet6_dev** %6, align 8
  %32 = load %struct.inet6_dev*, %struct.inet6_dev** %6, align 8
  %33 = icmp ne %struct.inet6_dev* %32, null
  br i1 %33, label %37, label %34

34:                                               ; preds = %27
  %35 = load i32, i32* @err, align 4
  %36 = call i32 @ND_PRINTK(i32 1, i32 %35, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  br label %103

37:                                               ; preds = %27
  %38 = load %struct.inet6_dev*, %struct.inet6_dev** %6, align 8
  %39 = getelementptr inbounds %struct.inet6_dev, %struct.inet6_dev* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %37
  br label %102

44:                                               ; preds = %37
  %45 = load %struct.in6_addr*, %struct.in6_addr** %7, align 8
  %46 = call i64 @ipv6_addr_any(%struct.in6_addr* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %44
  br label %102

49:                                               ; preds = %44
  %50 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %51 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.rs_msg*, %struct.rs_msg** %3, align 8
  %54 = getelementptr inbounds %struct.rs_msg, %struct.rs_msg* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i64, i64* %4, align 8
  %57 = call i32 @ndisc_parse_options(i32 %52, i32 %55, i64 %56, %struct.ndisc_options* %8)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %62, label %59

59:                                               ; preds = %49
  %60 = load i32, i32* @notice, align 4
  %61 = call i32 @ND_PRINTK(i32 2, i32 %60, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  br label %102

62:                                               ; preds = %49
  %63 = getelementptr inbounds %struct.ndisc_options, %struct.ndisc_options* %8, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %77

66:                                               ; preds = %62
  %67 = getelementptr inbounds %struct.ndisc_options, %struct.ndisc_options* %8, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %70 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = call i32* @ndisc_opt_addr_data(i64 %68, i32 %71)
  store i32* %72, i32** %9, align 8
  %73 = load i32*, i32** %9, align 8
  %74 = icmp ne i32* %73, null
  br i1 %74, label %76, label %75

75:                                               ; preds = %66
  br label %102

76:                                               ; preds = %66
  br label %77

77:                                               ; preds = %76, %62
  %78 = load %struct.in6_addr*, %struct.in6_addr** %7, align 8
  %79 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %80 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = call %struct.neighbour* @__neigh_lookup(i32* @nd_tbl, %struct.in6_addr* %78, i32 %81, i32 1)
  store %struct.neighbour* %82, %struct.neighbour** %5, align 8
  %83 = load %struct.neighbour*, %struct.neighbour** %5, align 8
  %84 = icmp ne %struct.neighbour* %83, null
  br i1 %84, label %85, label %101

85:                                               ; preds = %77
  %86 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %87 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.neighbour*, %struct.neighbour** %5, align 8
  %90 = load i32*, i32** %9, align 8
  %91 = load i32, i32* @NUD_STALE, align 4
  %92 = load i32, i32* @NEIGH_UPDATE_F_WEAK_OVERRIDE, align 4
  %93 = load i32, i32* @NEIGH_UPDATE_F_OVERRIDE, align 4
  %94 = or i32 %92, %93
  %95 = load i32, i32* @NEIGH_UPDATE_F_OVERRIDE_ISROUTER, align 4
  %96 = or i32 %94, %95
  %97 = load i32, i32* @NDISC_ROUTER_SOLICITATION, align 4
  %98 = call i32 @ndisc_update(i32 %88, %struct.neighbour* %89, i32* %90, i32 %91, i32 %96, i32 %97, %struct.ndisc_options* %8)
  %99 = load %struct.neighbour*, %struct.neighbour** %5, align 8
  %100 = call i32 @neigh_release(%struct.neighbour* %99)
  br label %101

101:                                              ; preds = %85, %77
  br label %102

102:                                              ; preds = %101, %75, %59, %48, %43
  br label %103

103:                                              ; preds = %102, %34, %26
  ret void
}

declare dso_local i64 @skb_transport_header(%struct.sk_buff*) #1

declare dso_local %struct.TYPE_4__* @ipv6_hdr(%struct.sk_buff*) #1

declare dso_local %struct.inet6_dev* @__in6_dev_get(i32) #1

declare dso_local i32 @ND_PRINTK(i32, i32, i8*) #1

declare dso_local i64 @ipv6_addr_any(%struct.in6_addr*) #1

declare dso_local i32 @ndisc_parse_options(i32, i32, i64, %struct.ndisc_options*) #1

declare dso_local i32* @ndisc_opt_addr_data(i64, i32) #1

declare dso_local %struct.neighbour* @__neigh_lookup(i32*, %struct.in6_addr*, i32, i32) #1

declare dso_local i32 @ndisc_update(i32, %struct.neighbour*, i32*, i32, i32, i32, %struct.ndisc_options*) #1

declare dso_local i32 @neigh_release(%struct.neighbour*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
