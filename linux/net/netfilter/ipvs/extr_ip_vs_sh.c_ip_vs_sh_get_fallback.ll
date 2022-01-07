; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/ipvs/extr_ip_vs_sh.c_ip_vs_sh_get_fallback.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/ipvs/extr_ip_vs_sh.c_ip_vs_sh_get_fallback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip_vs_dest = type { i32, i32, i32 }
%struct.ip_vs_service = type { i32 }
%struct.ip_vs_sh_state = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%union.nf_inet_addr = type { i32 }

@.str = private unnamed_addr constant [51 x i8] c"SH: selected unavailable server %s:%d, reselecting\00", align 1
@IP_VS_SH_TAB_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [63 x i8] c"SH: selected unavailable server %s:%d (offset %d), reselecting\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ip_vs_dest* (%struct.ip_vs_service*, %struct.ip_vs_sh_state*, %union.nf_inet_addr*, i32)* @ip_vs_sh_get_fallback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ip_vs_dest* @ip_vs_sh_get_fallback(%struct.ip_vs_service* %0, %struct.ip_vs_sh_state* %1, %union.nf_inet_addr* %2, i32 %3) #0 {
  %5 = alloca %struct.ip_vs_dest*, align 8
  %6 = alloca %struct.ip_vs_service*, align 8
  %7 = alloca %struct.ip_vs_sh_state*, align 8
  %8 = alloca %union.nf_inet_addr*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.ip_vs_dest*, align 8
  store %struct.ip_vs_service* %0, %struct.ip_vs_service** %6, align 8
  store %struct.ip_vs_sh_state* %1, %struct.ip_vs_sh_state** %7, align 8
  store %union.nf_inet_addr* %2, %union.nf_inet_addr** %8, align 8
  store i32 %3, i32* %9, align 4
  %15 = load %struct.ip_vs_service*, %struct.ip_vs_service** %6, align 8
  %16 = getelementptr inbounds %struct.ip_vs_service, %struct.ip_vs_service* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load %union.nf_inet_addr*, %union.nf_inet_addr** %8, align 8
  %19 = load i32, i32* %9, align 4
  %20 = call i32 @ip_vs_sh_hashkey(i32 %17, %union.nf_inet_addr* %18, i32 %19, i32 0)
  store i32 %20, i32* %13, align 4
  %21 = load %struct.ip_vs_sh_state*, %struct.ip_vs_sh_state** %7, align 8
  %22 = getelementptr inbounds %struct.ip_vs_sh_state, %struct.ip_vs_sh_state* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = load i32, i32* %13, align 4
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call %struct.ip_vs_dest* @rcu_dereference(i32 %28)
  store %struct.ip_vs_dest* %29, %struct.ip_vs_dest** %14, align 8
  %30 = load %struct.ip_vs_dest*, %struct.ip_vs_dest** %14, align 8
  %31 = icmp ne %struct.ip_vs_dest* %30, null
  br i1 %31, label %33, label %32

32:                                               ; preds = %4
  store %struct.ip_vs_dest* null, %struct.ip_vs_dest** %5, align 8
  br label %103

33:                                               ; preds = %4
  %34 = load %struct.ip_vs_dest*, %struct.ip_vs_dest** %14, align 8
  %35 = call i32 @is_unavailable(%struct.ip_vs_dest* %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %39, label %37

37:                                               ; preds = %33
  %38 = load %struct.ip_vs_dest*, %struct.ip_vs_dest** %14, align 8
  store %struct.ip_vs_dest* %38, %struct.ip_vs_dest** %5, align 8
  br label %103

39:                                               ; preds = %33
  %40 = load %struct.ip_vs_dest*, %struct.ip_vs_dest** %14, align 8
  %41 = getelementptr inbounds %struct.ip_vs_dest, %struct.ip_vs_dest* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.ip_vs_dest*, %struct.ip_vs_dest** %14, align 8
  %44 = getelementptr inbounds %struct.ip_vs_dest, %struct.ip_vs_dest* %43, i32 0, i32 1
  %45 = call i32 @IP_VS_DBG_ADDR(i32 %42, i32* %44)
  %46 = load %struct.ip_vs_dest*, %struct.ip_vs_dest** %14, align 8
  %47 = getelementptr inbounds %struct.ip_vs_dest, %struct.ip_vs_dest* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @ntohs(i32 %48)
  %50 = call i32 (i32, i8*, i32, i32, ...) @IP_VS_DBG_BUF(i32 6, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i32 %45, i32 %49)
  store i32 0, i32* %10, align 4
  br label %51

51:                                               ; preds = %99, %39
  %52 = load i32, i32* %10, align 4
  %53 = load i32, i32* @IP_VS_SH_TAB_SIZE, align 4
  %54 = icmp ult i32 %52, %53
  br i1 %54, label %55, label %102

55:                                               ; preds = %51
  %56 = load i32, i32* %10, align 4
  %57 = load i32, i32* %13, align 4
  %58 = add i32 %56, %57
  %59 = load i32, i32* @IP_VS_SH_TAB_SIZE, align 4
  %60 = urem i32 %58, %59
  store i32 %60, i32* %11, align 4
  %61 = load %struct.ip_vs_service*, %struct.ip_vs_service** %6, align 8
  %62 = getelementptr inbounds %struct.ip_vs_service, %struct.ip_vs_service* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load %union.nf_inet_addr*, %union.nf_inet_addr** %8, align 8
  %65 = load i32, i32* %9, align 4
  %66 = load i32, i32* %11, align 4
  %67 = call i32 @ip_vs_sh_hashkey(i32 %63, %union.nf_inet_addr* %64, i32 %65, i32 %66)
  store i32 %67, i32* %12, align 4
  %68 = load %struct.ip_vs_sh_state*, %struct.ip_vs_sh_state** %7, align 8
  %69 = getelementptr inbounds %struct.ip_vs_sh_state, %struct.ip_vs_sh_state* %68, i32 0, i32 0
  %70 = load %struct.TYPE_2__*, %struct.TYPE_2__** %69, align 8
  %71 = load i32, i32* %12, align 4
  %72 = zext i32 %71 to i64
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i64 %72
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call %struct.ip_vs_dest* @rcu_dereference(i32 %75)
  store %struct.ip_vs_dest* %76, %struct.ip_vs_dest** %14, align 8
  %77 = load %struct.ip_vs_dest*, %struct.ip_vs_dest** %14, align 8
  %78 = icmp ne %struct.ip_vs_dest* %77, null
  br i1 %78, label %80, label %79

79:                                               ; preds = %55
  br label %102

80:                                               ; preds = %55
  %81 = load %struct.ip_vs_dest*, %struct.ip_vs_dest** %14, align 8
  %82 = call i32 @is_unavailable(%struct.ip_vs_dest* %81)
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %86, label %84

84:                                               ; preds = %80
  %85 = load %struct.ip_vs_dest*, %struct.ip_vs_dest** %14, align 8
  store %struct.ip_vs_dest* %85, %struct.ip_vs_dest** %5, align 8
  br label %103

86:                                               ; preds = %80
  %87 = load %struct.ip_vs_dest*, %struct.ip_vs_dest** %14, align 8
  %88 = getelementptr inbounds %struct.ip_vs_dest, %struct.ip_vs_dest* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.ip_vs_dest*, %struct.ip_vs_dest** %14, align 8
  %91 = getelementptr inbounds %struct.ip_vs_dest, %struct.ip_vs_dest* %90, i32 0, i32 1
  %92 = call i32 @IP_VS_DBG_ADDR(i32 %89, i32* %91)
  %93 = load %struct.ip_vs_dest*, %struct.ip_vs_dest** %14, align 8
  %94 = getelementptr inbounds %struct.ip_vs_dest, %struct.ip_vs_dest* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @ntohs(i32 %95)
  %97 = load i32, i32* %11, align 4
  %98 = call i32 (i32, i8*, i32, i32, ...) @IP_VS_DBG_BUF(i32 6, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.1, i64 0, i64 0), i32 %92, i32 %96, i32 %97)
  br label %99

99:                                               ; preds = %86
  %100 = load i32, i32* %10, align 4
  %101 = add i32 %100, 1
  store i32 %101, i32* %10, align 4
  br label %51

102:                                              ; preds = %79, %51
  store %struct.ip_vs_dest* null, %struct.ip_vs_dest** %5, align 8
  br label %103

103:                                              ; preds = %102, %84, %37, %32
  %104 = load %struct.ip_vs_dest*, %struct.ip_vs_dest** %5, align 8
  ret %struct.ip_vs_dest* %104
}

declare dso_local i32 @ip_vs_sh_hashkey(i32, %union.nf_inet_addr*, i32, i32) #1

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
