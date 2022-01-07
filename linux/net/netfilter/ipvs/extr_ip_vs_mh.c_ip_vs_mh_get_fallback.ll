; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/ipvs/extr_ip_vs_mh.c_ip_vs_mh_get_fallback.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/ipvs/extr_ip_vs_mh.c_ip_vs_mh_get_fallback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip_vs_dest = type { i32, i32, i32 }
%struct.ip_vs_service = type { i32 }
%struct.ip_vs_mh_state = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%union.nf_inet_addr = type { i32 }

@IP_VS_MH_TAB_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"MH: selected unavailable server %s:%u, reselecting\00", align 1
@.str.1 = private unnamed_addr constant [63 x i8] c"MH: selected unavailable server %s:%u (offset %u), reselecting\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ip_vs_dest* (%struct.ip_vs_service*, %struct.ip_vs_mh_state*, %union.nf_inet_addr*, i32)* @ip_vs_mh_get_fallback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ip_vs_dest* @ip_vs_mh_get_fallback(%struct.ip_vs_service* %0, %struct.ip_vs_mh_state* %1, %union.nf_inet_addr* %2, i32 %3) #0 {
  %5 = alloca %struct.ip_vs_dest*, align 8
  %6 = alloca %struct.ip_vs_service*, align 8
  %7 = alloca %struct.ip_vs_mh_state*, align 8
  %8 = alloca %union.nf_inet_addr*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.ip_vs_dest*, align 8
  store %struct.ip_vs_service* %0, %struct.ip_vs_service** %6, align 8
  store %struct.ip_vs_mh_state* %1, %struct.ip_vs_mh_state** %7, align 8
  store %union.nf_inet_addr* %2, %union.nf_inet_addr** %8, align 8
  store i32 %3, i32* %9, align 4
  %15 = load %struct.ip_vs_service*, %struct.ip_vs_service** %6, align 8
  %16 = getelementptr inbounds %struct.ip_vs_service, %struct.ip_vs_service* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load %union.nf_inet_addr*, %union.nf_inet_addr** %8, align 8
  %19 = load i32, i32* %9, align 4
  %20 = load %struct.ip_vs_mh_state*, %struct.ip_vs_mh_state** %7, align 8
  %21 = getelementptr inbounds %struct.ip_vs_mh_state, %struct.ip_vs_mh_state* %20, i32 0, i32 1
  %22 = call i32 @ip_vs_mh_hashkey(i32 %17, %union.nf_inet_addr* %18, i32 %19, i32* %21, i32 0)
  %23 = load i32, i32* @IP_VS_MH_TAB_SIZE, align 4
  %24 = urem i32 %22, %23
  store i32 %24, i32* %13, align 4
  %25 = load %struct.ip_vs_mh_state*, %struct.ip_vs_mh_state** %7, align 8
  %26 = getelementptr inbounds %struct.ip_vs_mh_state, %struct.ip_vs_mh_state* %25, i32 0, i32 0
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = load i32, i32* %13, align 4
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call %struct.ip_vs_dest* @rcu_dereference(i32 %32)
  store %struct.ip_vs_dest* %33, %struct.ip_vs_dest** %14, align 8
  %34 = load %struct.ip_vs_dest*, %struct.ip_vs_dest** %14, align 8
  %35 = icmp ne %struct.ip_vs_dest* %34, null
  br i1 %35, label %37, label %36

36:                                               ; preds = %4
  store %struct.ip_vs_dest* null, %struct.ip_vs_dest** %5, align 8
  br label %111

37:                                               ; preds = %4
  %38 = load %struct.ip_vs_dest*, %struct.ip_vs_dest** %14, align 8
  %39 = call i32 @is_unavailable(%struct.ip_vs_dest* %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %43, label %41

41:                                               ; preds = %37
  %42 = load %struct.ip_vs_dest*, %struct.ip_vs_dest** %14, align 8
  store %struct.ip_vs_dest* %42, %struct.ip_vs_dest** %5, align 8
  br label %111

43:                                               ; preds = %37
  %44 = load %struct.ip_vs_dest*, %struct.ip_vs_dest** %14, align 8
  %45 = getelementptr inbounds %struct.ip_vs_dest, %struct.ip_vs_dest* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.ip_vs_dest*, %struct.ip_vs_dest** %14, align 8
  %48 = getelementptr inbounds %struct.ip_vs_dest, %struct.ip_vs_dest* %47, i32 0, i32 1
  %49 = call i32 @IP_VS_DBG_ADDR(i32 %46, i32* %48)
  %50 = load %struct.ip_vs_dest*, %struct.ip_vs_dest** %14, align 8
  %51 = getelementptr inbounds %struct.ip_vs_dest, %struct.ip_vs_dest* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @ntohs(i32 %52)
  %54 = call i32 (i32, i8*, i32, i32, ...) @IP_VS_DBG_BUF(i32 6, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i32 %49, i32 %53)
  store i32 0, i32* %10, align 4
  br label %55

55:                                               ; preds = %107, %43
  %56 = load i32, i32* %10, align 4
  %57 = load i32, i32* @IP_VS_MH_TAB_SIZE, align 4
  %58 = icmp ult i32 %56, %57
  br i1 %58, label %59, label %110

59:                                               ; preds = %55
  %60 = load i32, i32* %10, align 4
  %61 = load i32, i32* %13, align 4
  %62 = add i32 %60, %61
  %63 = load i32, i32* @IP_VS_MH_TAB_SIZE, align 4
  %64 = urem i32 %62, %63
  store i32 %64, i32* %11, align 4
  %65 = load %struct.ip_vs_service*, %struct.ip_vs_service** %6, align 8
  %66 = getelementptr inbounds %struct.ip_vs_service, %struct.ip_vs_service* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load %union.nf_inet_addr*, %union.nf_inet_addr** %8, align 8
  %69 = load i32, i32* %9, align 4
  %70 = load %struct.ip_vs_mh_state*, %struct.ip_vs_mh_state** %7, align 8
  %71 = getelementptr inbounds %struct.ip_vs_mh_state, %struct.ip_vs_mh_state* %70, i32 0, i32 1
  %72 = load i32, i32* %11, align 4
  %73 = call i32 @ip_vs_mh_hashkey(i32 %67, %union.nf_inet_addr* %68, i32 %69, i32* %71, i32 %72)
  %74 = load i32, i32* @IP_VS_MH_TAB_SIZE, align 4
  %75 = urem i32 %73, %74
  store i32 %75, i32* %12, align 4
  %76 = load %struct.ip_vs_mh_state*, %struct.ip_vs_mh_state** %7, align 8
  %77 = getelementptr inbounds %struct.ip_vs_mh_state, %struct.ip_vs_mh_state* %76, i32 0, i32 0
  %78 = load %struct.TYPE_2__*, %struct.TYPE_2__** %77, align 8
  %79 = load i32, i32* %12, align 4
  %80 = zext i32 %79 to i64
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i64 %80
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = call %struct.ip_vs_dest* @rcu_dereference(i32 %83)
  store %struct.ip_vs_dest* %84, %struct.ip_vs_dest** %14, align 8
  %85 = load %struct.ip_vs_dest*, %struct.ip_vs_dest** %14, align 8
  %86 = icmp ne %struct.ip_vs_dest* %85, null
  br i1 %86, label %88, label %87

87:                                               ; preds = %59
  br label %110

88:                                               ; preds = %59
  %89 = load %struct.ip_vs_dest*, %struct.ip_vs_dest** %14, align 8
  %90 = call i32 @is_unavailable(%struct.ip_vs_dest* %89)
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %94, label %92

92:                                               ; preds = %88
  %93 = load %struct.ip_vs_dest*, %struct.ip_vs_dest** %14, align 8
  store %struct.ip_vs_dest* %93, %struct.ip_vs_dest** %5, align 8
  br label %111

94:                                               ; preds = %88
  %95 = load %struct.ip_vs_dest*, %struct.ip_vs_dest** %14, align 8
  %96 = getelementptr inbounds %struct.ip_vs_dest, %struct.ip_vs_dest* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.ip_vs_dest*, %struct.ip_vs_dest** %14, align 8
  %99 = getelementptr inbounds %struct.ip_vs_dest, %struct.ip_vs_dest* %98, i32 0, i32 1
  %100 = call i32 @IP_VS_DBG_ADDR(i32 %97, i32* %99)
  %101 = load %struct.ip_vs_dest*, %struct.ip_vs_dest** %14, align 8
  %102 = getelementptr inbounds %struct.ip_vs_dest, %struct.ip_vs_dest* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @ntohs(i32 %103)
  %105 = load i32, i32* %11, align 4
  %106 = call i32 (i32, i8*, i32, i32, ...) @IP_VS_DBG_BUF(i32 6, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.1, i64 0, i64 0), i32 %100, i32 %104, i32 %105)
  br label %107

107:                                              ; preds = %94
  %108 = load i32, i32* %10, align 4
  %109 = add i32 %108, 1
  store i32 %109, i32* %10, align 4
  br label %55

110:                                              ; preds = %87, %55
  store %struct.ip_vs_dest* null, %struct.ip_vs_dest** %5, align 8
  br label %111

111:                                              ; preds = %110, %92, %41, %36
  %112 = load %struct.ip_vs_dest*, %struct.ip_vs_dest** %5, align 8
  ret %struct.ip_vs_dest* %112
}

declare dso_local i32 @ip_vs_mh_hashkey(i32, %union.nf_inet_addr*, i32, i32*, i32) #1

declare dso_local %struct.ip_vs_dest* @rcu_dereference(i32) #1

declare dso_local i32 @is_unavailable(%struct.ip_vs_dest*) #1

declare dso_local i32 @IP_VS_DBG_BUF(i32, i8*, i32, i32, ...) #1

declare dso_local i32 @IP_VS_DBG_ADDR(i32, i32*) #1

declare dso_local i32 @ntohs(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
