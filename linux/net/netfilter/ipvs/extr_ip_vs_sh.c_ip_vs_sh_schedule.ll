; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/ipvs/extr_ip_vs_sh.c_ip_vs_sh_schedule.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/ipvs/extr_ip_vs_sh.c_ip_vs_sh_schedule.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip_vs_dest = type { i32, %union.nf_inet_addr, i32 }
%union.nf_inet_addr = type { i32 }
%struct.ip_vs_service = type { i32, i32, i64 }
%struct.sk_buff = type { i32 }
%struct.ip_vs_iphdr = type { %union.nf_inet_addr, %union.nf_inet_addr }
%struct.ip_vs_sh_state = type { i32 }

@.str = private unnamed_addr constant [36 x i8] c"ip_vs_sh_schedule(): Scheduling...\0A\00", align 1
@IP_VS_SVC_F_SCHED_SH_PORT = common dso_local global i32 0, align 4
@IP_VS_SVC_F_SCHED_SH_FALLBACK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"no destination available\00", align 1
@.str.2 = private unnamed_addr constant [43 x i8] c"SH: source IP address %s --> server %s:%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ip_vs_dest* (%struct.ip_vs_service*, %struct.sk_buff*, %struct.ip_vs_iphdr*)* @ip_vs_sh_schedule to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ip_vs_dest* @ip_vs_sh_schedule(%struct.ip_vs_service* %0, %struct.sk_buff* %1, %struct.ip_vs_iphdr* %2) #0 {
  %4 = alloca %struct.ip_vs_dest*, align 8
  %5 = alloca %struct.ip_vs_service*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.ip_vs_iphdr*, align 8
  %8 = alloca %struct.ip_vs_dest*, align 8
  %9 = alloca %struct.ip_vs_sh_state*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %union.nf_inet_addr*, align 8
  store %struct.ip_vs_service* %0, %struct.ip_vs_service** %5, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %6, align 8
  store %struct.ip_vs_iphdr* %2, %struct.ip_vs_iphdr** %7, align 8
  store i32 0, i32* %10, align 4
  %12 = load %struct.ip_vs_iphdr*, %struct.ip_vs_iphdr** %7, align 8
  %13 = call i64 @ip_vs_iph_inverse(%struct.ip_vs_iphdr* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %3
  %16 = load %struct.ip_vs_iphdr*, %struct.ip_vs_iphdr** %7, align 8
  %17 = getelementptr inbounds %struct.ip_vs_iphdr, %struct.ip_vs_iphdr* %16, i32 0, i32 1
  br label %21

18:                                               ; preds = %3
  %19 = load %struct.ip_vs_iphdr*, %struct.ip_vs_iphdr** %7, align 8
  %20 = getelementptr inbounds %struct.ip_vs_iphdr, %struct.ip_vs_iphdr* %19, i32 0, i32 0
  br label %21

21:                                               ; preds = %18, %15
  %22 = phi %union.nf_inet_addr* [ %17, %15 ], [ %20, %18 ]
  store %union.nf_inet_addr* %22, %union.nf_inet_addr** %11, align 8
  %23 = call i32 @IP_VS_DBG(i32 6, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %24 = load %struct.ip_vs_service*, %struct.ip_vs_service** %5, align 8
  %25 = getelementptr inbounds %struct.ip_vs_service, %struct.ip_vs_service* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @IP_VS_SVC_F_SCHED_SH_PORT, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %21
  %31 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %32 = load %struct.ip_vs_iphdr*, %struct.ip_vs_iphdr** %7, align 8
  %33 = call i32 @ip_vs_sh_get_port(%struct.sk_buff* %31, %struct.ip_vs_iphdr* %32)
  store i32 %33, i32* %10, align 4
  br label %34

34:                                               ; preds = %30, %21
  %35 = load %struct.ip_vs_service*, %struct.ip_vs_service** %5, align 8
  %36 = getelementptr inbounds %struct.ip_vs_service, %struct.ip_vs_service* %35, i32 0, i32 2
  %37 = load i64, i64* %36, align 8
  %38 = inttoptr i64 %37 to %struct.ip_vs_sh_state*
  store %struct.ip_vs_sh_state* %38, %struct.ip_vs_sh_state** %9, align 8
  %39 = load %struct.ip_vs_service*, %struct.ip_vs_service** %5, align 8
  %40 = getelementptr inbounds %struct.ip_vs_service, %struct.ip_vs_service* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @IP_VS_SVC_F_SCHED_SH_FALLBACK, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %51

45:                                               ; preds = %34
  %46 = load %struct.ip_vs_service*, %struct.ip_vs_service** %5, align 8
  %47 = load %struct.ip_vs_sh_state*, %struct.ip_vs_sh_state** %9, align 8
  %48 = load %union.nf_inet_addr*, %union.nf_inet_addr** %11, align 8
  %49 = load i32, i32* %10, align 4
  %50 = call %struct.ip_vs_dest* @ip_vs_sh_get_fallback(%struct.ip_vs_service* %46, %struct.ip_vs_sh_state* %47, %union.nf_inet_addr* %48, i32 %49)
  store %struct.ip_vs_dest* %50, %struct.ip_vs_dest** %8, align 8
  br label %57

51:                                               ; preds = %34
  %52 = load %struct.ip_vs_service*, %struct.ip_vs_service** %5, align 8
  %53 = load %struct.ip_vs_sh_state*, %struct.ip_vs_sh_state** %9, align 8
  %54 = load %union.nf_inet_addr*, %union.nf_inet_addr** %11, align 8
  %55 = load i32, i32* %10, align 4
  %56 = call %struct.ip_vs_dest* @ip_vs_sh_get(%struct.ip_vs_service* %52, %struct.ip_vs_sh_state* %53, %union.nf_inet_addr* %54, i32 %55)
  store %struct.ip_vs_dest* %56, %struct.ip_vs_dest** %8, align 8
  br label %57

57:                                               ; preds = %51, %45
  %58 = load %struct.ip_vs_dest*, %struct.ip_vs_dest** %8, align 8
  %59 = icmp ne %struct.ip_vs_dest* %58, null
  br i1 %59, label %63, label %60

60:                                               ; preds = %57
  %61 = load %struct.ip_vs_service*, %struct.ip_vs_service** %5, align 8
  %62 = call i32 @ip_vs_scheduler_err(%struct.ip_vs_service* %61, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  store %struct.ip_vs_dest* null, %struct.ip_vs_dest** %4, align 8
  br label %81

63:                                               ; preds = %57
  %64 = load %struct.ip_vs_service*, %struct.ip_vs_service** %5, align 8
  %65 = getelementptr inbounds %struct.ip_vs_service, %struct.ip_vs_service* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load %union.nf_inet_addr*, %union.nf_inet_addr** %11, align 8
  %68 = call i32 @IP_VS_DBG_ADDR(i32 %66, %union.nf_inet_addr* %67)
  %69 = load %struct.ip_vs_dest*, %struct.ip_vs_dest** %8, align 8
  %70 = getelementptr inbounds %struct.ip_vs_dest, %struct.ip_vs_dest* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.ip_vs_dest*, %struct.ip_vs_dest** %8, align 8
  %73 = getelementptr inbounds %struct.ip_vs_dest, %struct.ip_vs_dest* %72, i32 0, i32 1
  %74 = call i32 @IP_VS_DBG_ADDR(i32 %71, %union.nf_inet_addr* %73)
  %75 = load %struct.ip_vs_dest*, %struct.ip_vs_dest** %8, align 8
  %76 = getelementptr inbounds %struct.ip_vs_dest, %struct.ip_vs_dest* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @ntohs(i32 %77)
  %79 = call i32 @IP_VS_DBG_BUF(i32 6, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0), i32 %68, i32 %74, i32 %78)
  %80 = load %struct.ip_vs_dest*, %struct.ip_vs_dest** %8, align 8
  store %struct.ip_vs_dest* %80, %struct.ip_vs_dest** %4, align 8
  br label %81

81:                                               ; preds = %63, %60
  %82 = load %struct.ip_vs_dest*, %struct.ip_vs_dest** %4, align 8
  ret %struct.ip_vs_dest* %82
}

declare dso_local i64 @ip_vs_iph_inverse(%struct.ip_vs_iphdr*) #1

declare dso_local i32 @IP_VS_DBG(i32, i8*) #1

declare dso_local i32 @ip_vs_sh_get_port(%struct.sk_buff*, %struct.ip_vs_iphdr*) #1

declare dso_local %struct.ip_vs_dest* @ip_vs_sh_get_fallback(%struct.ip_vs_service*, %struct.ip_vs_sh_state*, %union.nf_inet_addr*, i32) #1

declare dso_local %struct.ip_vs_dest* @ip_vs_sh_get(%struct.ip_vs_service*, %struct.ip_vs_sh_state*, %union.nf_inet_addr*, i32) #1

declare dso_local i32 @ip_vs_scheduler_err(%struct.ip_vs_service*, i8*) #1

declare dso_local i32 @IP_VS_DBG_BUF(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @IP_VS_DBG_ADDR(i32, %union.nf_inet_addr*) #1

declare dso_local i32 @ntohs(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
