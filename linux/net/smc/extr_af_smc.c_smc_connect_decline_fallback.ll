; ModuleID = '/home/carl/AnghaBench/linux/net/smc/extr_af_smc.c_smc_connect_decline_fallback.c'
source_filename = "/home/carl/AnghaBench/linux/net/smc/extr_af_smc.c_smc_connect_decline_fallback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smc_sock = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@SMC_INIT = common dso_local global i64 0, align 8
@SMC_CLC_DECL_PEERDECL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.smc_sock*, i32)* @smc_connect_decline_fallback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smc_connect_decline_fallback(%struct.smc_sock* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.smc_sock*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.smc_sock* %0, %struct.smc_sock** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %9, label %22

9:                                                ; preds = %2
  %10 = load %struct.smc_sock*, %struct.smc_sock** %4, align 8
  %11 = getelementptr inbounds %struct.smc_sock, %struct.smc_sock* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @SMC_INIT, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %20

16:                                               ; preds = %9
  %17 = load %struct.smc_sock*, %struct.smc_sock** %4, align 8
  %18 = getelementptr inbounds %struct.smc_sock, %struct.smc_sock* %17, i32 0, i32 0
  %19 = call i32 @sock_put(%struct.TYPE_2__* %18)
  br label %20

20:                                               ; preds = %16, %9
  %21 = load i32, i32* %5, align 4
  store i32 %21, i32* %3, align 4
  br label %50

22:                                               ; preds = %2
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* @SMC_CLC_DECL_PEERDECL, align 4
  %25 = icmp ne i32 %23, %24
  br i1 %25, label %26, label %46

26:                                               ; preds = %22
  %27 = load %struct.smc_sock*, %struct.smc_sock** %4, align 8
  %28 = load i32, i32* %5, align 4
  %29 = call i32 @smc_clc_send_decline(%struct.smc_sock* %27, i32 %28)
  store i32 %29, i32* %6, align 4
  %30 = load i32, i32* %6, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %45

32:                                               ; preds = %26
  %33 = load %struct.smc_sock*, %struct.smc_sock** %4, align 8
  %34 = getelementptr inbounds %struct.smc_sock, %struct.smc_sock* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @SMC_INIT, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %43

39:                                               ; preds = %32
  %40 = load %struct.smc_sock*, %struct.smc_sock** %4, align 8
  %41 = getelementptr inbounds %struct.smc_sock, %struct.smc_sock* %40, i32 0, i32 0
  %42 = call i32 @sock_put(%struct.TYPE_2__* %41)
  br label %43

43:                                               ; preds = %39, %32
  %44 = load i32, i32* %6, align 4
  store i32 %44, i32* %3, align 4
  br label %50

45:                                               ; preds = %26
  br label %46

46:                                               ; preds = %45, %22
  %47 = load %struct.smc_sock*, %struct.smc_sock** %4, align 8
  %48 = load i32, i32* %5, align 4
  %49 = call i32 @smc_connect_fallback(%struct.smc_sock* %47, i32 %48)
  store i32 %49, i32* %3, align 4
  br label %50

50:                                               ; preds = %46, %43, %20
  %51 = load i32, i32* %3, align 4
  ret i32 %51
}

declare dso_local i32 @sock_put(%struct.TYPE_2__*) #1

declare dso_local i32 @smc_clc_send_decline(%struct.smc_sock*, i32) #1

declare dso_local i32 @smc_connect_fallback(%struct.smc_sock*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
