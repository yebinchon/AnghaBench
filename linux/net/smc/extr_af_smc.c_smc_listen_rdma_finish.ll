; ModuleID = '/home/carl/AnghaBench/linux/net/smc/extr_af_smc.c_smc_listen_rdma_finish.c'
source_filename = "/home/carl/AnghaBench/linux/net/smc/extr_af_smc.c_smc_listen_rdma_finish.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smc_sock = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.smc_link* }
%struct.smc_link = type { i32 }
%struct.smc_clc_msg_accept_confirm = type { i32 }

@SMC_SINGLE_LINK = common dso_local global i64 0, align 8
@SMC_FIRST_CONTACT = common dso_local global i32 0, align 4
@SMC_CLC_DECL_ERR_RTOK = common dso_local global i32 0, align 4
@SMC_CLC_DECL_ERR_RDYLNK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.smc_sock*, %struct.smc_clc_msg_accept_confirm*, i32)* @smc_listen_rdma_finish to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smc_listen_rdma_finish(%struct.smc_sock* %0, %struct.smc_clc_msg_accept_confirm* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.smc_sock*, align 8
  %6 = alloca %struct.smc_clc_msg_accept_confirm*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.smc_link*, align 8
  %9 = alloca i32, align 4
  store %struct.smc_sock* %0, %struct.smc_sock** %5, align 8
  store %struct.smc_clc_msg_accept_confirm* %1, %struct.smc_clc_msg_accept_confirm** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.smc_sock*, %struct.smc_sock** %5, align 8
  %11 = getelementptr inbounds %struct.smc_sock, %struct.smc_sock* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load %struct.smc_link*, %struct.smc_link** %14, align 8
  %16 = load i64, i64* @SMC_SINGLE_LINK, align 8
  %17 = getelementptr inbounds %struct.smc_link, %struct.smc_link* %15, i64 %16
  store %struct.smc_link* %17, %struct.smc_link** %8, align 8
  store i32 0, i32* %9, align 4
  %18 = load i32, i32* %7, align 4
  %19 = load i32, i32* @SMC_FIRST_CONTACT, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %25

21:                                               ; preds = %3
  %22 = load %struct.smc_link*, %struct.smc_link** %8, align 8
  %23 = load %struct.smc_clc_msg_accept_confirm*, %struct.smc_clc_msg_accept_confirm** %6, align 8
  %24 = call i32 @smc_link_save_peer_info(%struct.smc_link* %22, %struct.smc_clc_msg_accept_confirm* %23)
  br label %25

25:                                               ; preds = %21, %3
  %26 = load %struct.smc_sock*, %struct.smc_sock** %5, align 8
  %27 = getelementptr inbounds %struct.smc_sock, %struct.smc_sock* %26, i32 0, i32 0
  %28 = load %struct.smc_clc_msg_accept_confirm*, %struct.smc_clc_msg_accept_confirm** %6, align 8
  %29 = call i64 @smc_rmb_rtoken_handling(%struct.TYPE_4__* %27, %struct.smc_clc_msg_accept_confirm* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %25
  %32 = load i32, i32* @SMC_CLC_DECL_ERR_RTOK, align 4
  store i32 %32, i32* %9, align 4
  br label %51

33:                                               ; preds = %25
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* @SMC_FIRST_CONTACT, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %50

37:                                               ; preds = %33
  %38 = load %struct.smc_link*, %struct.smc_link** %8, align 8
  %39 = call i64 @smc_ib_ready_link(%struct.smc_link* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %37
  %42 = load i32, i32* @SMC_CLC_DECL_ERR_RDYLNK, align 4
  store i32 %42, i32* %9, align 4
  br label %51

43:                                               ; preds = %37
  %44 = load %struct.smc_sock*, %struct.smc_sock** %5, align 8
  %45 = call i32 @smc_serv_conf_first_link(%struct.smc_sock* %44)
  store i32 %45, i32* %9, align 4
  %46 = load i32, i32* %9, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %43
  br label %51

49:                                               ; preds = %43
  br label %50

50:                                               ; preds = %49, %33
  store i32 0, i32* %4, align 4
  br label %57

51:                                               ; preds = %48, %41, %31
  %52 = load %struct.smc_sock*, %struct.smc_sock** %5, align 8
  %53 = load i32, i32* %9, align 4
  %54 = load i32, i32* %7, align 4
  %55 = call i32 @smc_listen_decline(%struct.smc_sock* %52, i32 %53, i32 %54)
  %56 = load i32, i32* %9, align 4
  store i32 %56, i32* %4, align 4
  br label %57

57:                                               ; preds = %51, %50
  %58 = load i32, i32* %4, align 4
  ret i32 %58
}

declare dso_local i32 @smc_link_save_peer_info(%struct.smc_link*, %struct.smc_clc_msg_accept_confirm*) #1

declare dso_local i64 @smc_rmb_rtoken_handling(%struct.TYPE_4__*, %struct.smc_clc_msg_accept_confirm*) #1

declare dso_local i64 @smc_ib_ready_link(%struct.smc_link*) #1

declare dso_local i32 @smc_serv_conf_first_link(%struct.smc_sock*) #1

declare dso_local i32 @smc_listen_decline(%struct.smc_sock*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
