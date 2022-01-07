; ModuleID = '/home/carl/AnghaBench/linux/net/smc/extr_af_smc.c_smc_connect_ism_vlan_cleanup.c'
source_filename = "/home/carl/AnghaBench/linux/net/smc/extr_af_smc.c_smc_connect_ism_vlan_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smc_sock = type { i32 }
%struct.smc_init_info = type { i64, i32 }

@SMC_CLC_DECL_CNFERR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.smc_sock*, i32, %struct.smc_init_info*)* @smc_connect_ism_vlan_cleanup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smc_connect_ism_vlan_cleanup(%struct.smc_sock* %0, i32 %1, %struct.smc_init_info* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.smc_sock*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.smc_init_info*, align 8
  store %struct.smc_sock* %0, %struct.smc_sock** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.smc_init_info* %2, %struct.smc_init_info** %7, align 8
  %8 = load i32, i32* %6, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %28

11:                                               ; preds = %3
  %12 = load %struct.smc_init_info*, %struct.smc_init_info** %7, align 8
  %13 = getelementptr inbounds %struct.smc_init_info, %struct.smc_init_info* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %27

16:                                               ; preds = %11
  %17 = load %struct.smc_init_info*, %struct.smc_init_info** %7, align 8
  %18 = getelementptr inbounds %struct.smc_init_info, %struct.smc_init_info* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.smc_init_info*, %struct.smc_init_info** %7, align 8
  %21 = getelementptr inbounds %struct.smc_init_info, %struct.smc_init_info* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = call i64 @smc_ism_put_vlan(i32 %19, i64 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %16
  %26 = load i32, i32* @SMC_CLC_DECL_CNFERR, align 4
  store i32 %26, i32* %4, align 4
  br label %28

27:                                               ; preds = %16, %11
  store i32 0, i32* %4, align 4
  br label %28

28:                                               ; preds = %27, %25, %10
  %29 = load i32, i32* %4, align 4
  ret i32 %29
}

declare dso_local i64 @smc_ism_put_vlan(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
