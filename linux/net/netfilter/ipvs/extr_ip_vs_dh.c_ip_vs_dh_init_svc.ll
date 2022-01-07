; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/ipvs/extr_ip_vs_dh.c_ip_vs_dh_init_svc.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/ipvs/extr_ip_vs_dh.c_ip_vs_dh_init_svc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip_vs_service = type { %struct.ip_vs_dh_state* }
%struct.ip_vs_dh_state = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [63 x i8] c"DH hash table (memory=%zdbytes) allocated for current service\0A\00", align 1
@IP_VS_DH_TAB_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ip_vs_service*)* @ip_vs_dh_init_svc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ip_vs_dh_init_svc(%struct.ip_vs_service* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ip_vs_service*, align 8
  %4 = alloca %struct.ip_vs_dh_state*, align 8
  store %struct.ip_vs_service* %0, %struct.ip_vs_service** %3, align 8
  %5 = load i32, i32* @GFP_KERNEL, align 4
  %6 = call %struct.ip_vs_dh_state* @kzalloc(i32 4, i32 %5)
  store %struct.ip_vs_dh_state* %6, %struct.ip_vs_dh_state** %4, align 8
  %7 = load %struct.ip_vs_dh_state*, %struct.ip_vs_dh_state** %4, align 8
  %8 = icmp eq %struct.ip_vs_dh_state* %7, null
  br i1 %8, label %9, label %12

9:                                                ; preds = %1
  %10 = load i32, i32* @ENOMEM, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %2, align 4
  br label %24

12:                                               ; preds = %1
  %13 = load %struct.ip_vs_dh_state*, %struct.ip_vs_dh_state** %4, align 8
  %14 = load %struct.ip_vs_service*, %struct.ip_vs_service** %3, align 8
  %15 = getelementptr inbounds %struct.ip_vs_service, %struct.ip_vs_service* %14, i32 0, i32 0
  store %struct.ip_vs_dh_state* %13, %struct.ip_vs_dh_state** %15, align 8
  %16 = load i32, i32* @IP_VS_DH_TAB_SIZE, align 4
  %17 = sext i32 %16 to i64
  %18 = mul i64 4, %17
  %19 = trunc i64 %18 to i32
  %20 = call i32 @IP_VS_DBG(i32 6, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str, i64 0, i64 0), i32 %19)
  %21 = load %struct.ip_vs_dh_state*, %struct.ip_vs_dh_state** %4, align 8
  %22 = load %struct.ip_vs_service*, %struct.ip_vs_service** %3, align 8
  %23 = call i32 @ip_vs_dh_reassign(%struct.ip_vs_dh_state* %21, %struct.ip_vs_service* %22)
  store i32 0, i32* %2, align 4
  br label %24

24:                                               ; preds = %12, %9
  %25 = load i32, i32* %2, align 4
  ret i32 %25
}

declare dso_local %struct.ip_vs_dh_state* @kzalloc(i32, i32) #1

declare dso_local i32 @IP_VS_DBG(i32, i8*, i32) #1

declare dso_local i32 @ip_vs_dh_reassign(%struct.ip_vs_dh_state*, %struct.ip_vs_service*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
