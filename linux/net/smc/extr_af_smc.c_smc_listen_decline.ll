; ModuleID = '/home/carl/AnghaBench/linux/net/smc/extr_af_smc.c_smc_listen_decline.c'
source_filename = "/home/carl/AnghaBench/linux/net/smc/extr_af_smc.c_smc_listen_decline.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smc_sock = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@SMC_FIRST_CONTACT = common dso_local global i32 0, align 4
@SMC_CLC_DECL_PEERDECL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.smc_sock*, i32, i32)* @smc_listen_decline to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @smc_listen_decline(%struct.smc_sock* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.smc_sock*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.smc_sock* %0, %struct.smc_sock** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @SMC_FIRST_CONTACT, align 4
  %9 = icmp eq i32 %7, %8
  br i1 %9, label %10, label %16

10:                                               ; preds = %3
  %11 = load %struct.smc_sock*, %struct.smc_sock** %4, align 8
  %12 = getelementptr inbounds %struct.smc_sock, %struct.smc_sock* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @smc_lgr_forget(i32 %14)
  br label %16

16:                                               ; preds = %10, %3
  %17 = load i32, i32* %5, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %16
  %20 = load %struct.smc_sock*, %struct.smc_sock** %4, align 8
  %21 = call i32 @smc_listen_out_err(%struct.smc_sock* %20)
  br label %49

22:                                               ; preds = %16
  %23 = load %struct.smc_sock*, %struct.smc_sock** %4, align 8
  %24 = getelementptr inbounds %struct.smc_sock, %struct.smc_sock* %23, i32 0, i32 1
  %25 = call i32 @smc_conn_free(%struct.TYPE_2__* %24)
  %26 = load %struct.smc_sock*, %struct.smc_sock** %4, align 8
  %27 = call i32 @smc_switch_to_fallback(%struct.smc_sock* %26)
  %28 = load i32, i32* %5, align 4
  %29 = load %struct.smc_sock*, %struct.smc_sock** %4, align 8
  %30 = getelementptr inbounds %struct.smc_sock, %struct.smc_sock* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 4
  %31 = load i32, i32* %5, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %46

33:                                               ; preds = %22
  %34 = load i32, i32* %5, align 4
  %35 = load i32, i32* @SMC_CLC_DECL_PEERDECL, align 4
  %36 = icmp ne i32 %34, %35
  br i1 %36, label %37, label %46

37:                                               ; preds = %33
  %38 = load %struct.smc_sock*, %struct.smc_sock** %4, align 8
  %39 = load i32, i32* %5, align 4
  %40 = call i64 @smc_clc_send_decline(%struct.smc_sock* %38, i32 %39)
  %41 = icmp slt i64 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %37
  %43 = load %struct.smc_sock*, %struct.smc_sock** %4, align 8
  %44 = call i32 @smc_listen_out_err(%struct.smc_sock* %43)
  br label %49

45:                                               ; preds = %37
  br label %46

46:                                               ; preds = %45, %33, %22
  %47 = load %struct.smc_sock*, %struct.smc_sock** %4, align 8
  %48 = call i32 @smc_listen_out_connected(%struct.smc_sock* %47)
  br label %49

49:                                               ; preds = %46, %42, %19
  ret void
}

declare dso_local i32 @smc_lgr_forget(i32) #1

declare dso_local i32 @smc_listen_out_err(%struct.smc_sock*) #1

declare dso_local i32 @smc_conn_free(%struct.TYPE_2__*) #1

declare dso_local i32 @smc_switch_to_fallback(%struct.smc_sock*) #1

declare dso_local i64 @smc_clc_send_decline(%struct.smc_sock*, i32) #1

declare dso_local i32 @smc_listen_out_connected(%struct.smc_sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
