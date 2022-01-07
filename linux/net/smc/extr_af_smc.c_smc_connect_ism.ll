; ModuleID = '/home/carl/AnghaBench/linux/net/smc/extr_af_smc.c_smc_connect_ism.c'
source_filename = "/home/carl/AnghaBench/linux/net/smc/extr_af_smc.c_smc_connect_ism.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smc_sock = type { %struct.TYPE_4__, i64 }
%struct.TYPE_4__ = type { i64 }
%struct.smc_clc_msg_accept_confirm = type { %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.smc_init_info = type { i32, i32, i32, i32 }

@smc_server_lgr_pending = common dso_local global i32 0, align 4
@SMC_CLC_DECL_MEM = common dso_local global i32 0, align 4
@SMC_INIT = common dso_local global i64 0, align 8
@SMC_ACTIVE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.smc_sock*, %struct.smc_clc_msg_accept_confirm*, %struct.smc_init_info*)* @smc_connect_ism to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smc_connect_ism(%struct.smc_sock* %0, %struct.smc_clc_msg_accept_confirm* %1, %struct.smc_init_info* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.smc_sock*, align 8
  %6 = alloca %struct.smc_clc_msg_accept_confirm*, align 8
  %7 = alloca %struct.smc_init_info*, align 8
  %8 = alloca i32, align 4
  store %struct.smc_sock* %0, %struct.smc_sock** %5, align 8
  store %struct.smc_clc_msg_accept_confirm* %1, %struct.smc_clc_msg_accept_confirm** %6, align 8
  store %struct.smc_init_info* %2, %struct.smc_init_info** %7, align 8
  store i32 0, i32* %8, align 4
  %9 = load %struct.smc_init_info*, %struct.smc_init_info** %7, align 8
  %10 = getelementptr inbounds %struct.smc_init_info, %struct.smc_init_info* %9, i32 0, i32 0
  store i32 1, i32* %10, align 4
  %11 = load %struct.smc_clc_msg_accept_confirm*, %struct.smc_clc_msg_accept_confirm** %6, align 8
  %12 = getelementptr inbounds %struct.smc_clc_msg_accept_confirm, %struct.smc_clc_msg_accept_confirm* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.smc_init_info*, %struct.smc_init_info** %7, align 8
  %15 = getelementptr inbounds %struct.smc_init_info, %struct.smc_init_info* %14, i32 0, i32 3
  store i32 %13, i32* %15, align 4
  %16 = load %struct.smc_clc_msg_accept_confirm*, %struct.smc_clc_msg_accept_confirm** %6, align 8
  %17 = getelementptr inbounds %struct.smc_clc_msg_accept_confirm, %struct.smc_clc_msg_accept_confirm* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.smc_init_info*, %struct.smc_init_info** %7, align 8
  %21 = getelementptr inbounds %struct.smc_init_info, %struct.smc_init_info* %20, i32 0, i32 2
  store i32 %19, i32* %21, align 4
  %22 = call i32 @mutex_lock(i32* @smc_server_lgr_pending)
  %23 = load %struct.smc_sock*, %struct.smc_sock** %5, align 8
  %24 = load %struct.smc_init_info*, %struct.smc_init_info** %7, align 8
  %25 = call i32 @smc_conn_create(%struct.smc_sock* %23, %struct.smc_init_info* %24)
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* %8, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %3
  %29 = call i32 @mutex_unlock(i32* @smc_server_lgr_pending)
  %30 = load i32, i32* %8, align 4
  store i32 %30, i32* %4, align 4
  br label %81

31:                                               ; preds = %3
  %32 = load %struct.smc_sock*, %struct.smc_sock** %5, align 8
  %33 = call i64 @smc_buf_create(%struct.smc_sock* %32, i32 1)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %42

35:                                               ; preds = %31
  %36 = load %struct.smc_sock*, %struct.smc_sock** %5, align 8
  %37 = load i32, i32* @SMC_CLC_DECL_MEM, align 4
  %38 = load %struct.smc_init_info*, %struct.smc_init_info** %7, align 8
  %39 = getelementptr inbounds %struct.smc_init_info, %struct.smc_init_info* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @smc_connect_abort(%struct.smc_sock* %36, i32 %37, i32 %40)
  store i32 %41, i32* %4, align 4
  br label %81

42:                                               ; preds = %31
  %43 = load %struct.smc_sock*, %struct.smc_sock** %5, align 8
  %44 = load %struct.smc_clc_msg_accept_confirm*, %struct.smc_clc_msg_accept_confirm** %6, align 8
  %45 = call i32 @smc_conn_save_peer_info(%struct.smc_sock* %43, %struct.smc_clc_msg_accept_confirm* %44)
  %46 = load %struct.smc_sock*, %struct.smc_sock** %5, align 8
  %47 = call i32 @smc_close_init(%struct.smc_sock* %46)
  %48 = load %struct.smc_sock*, %struct.smc_sock** %5, align 8
  %49 = call i32 @smc_rx_init(%struct.smc_sock* %48)
  %50 = load %struct.smc_sock*, %struct.smc_sock** %5, align 8
  %51 = call i32 @smc_tx_init(%struct.smc_sock* %50)
  %52 = load %struct.smc_sock*, %struct.smc_sock** %5, align 8
  %53 = call i32 @smc_clc_send_confirm(%struct.smc_sock* %52)
  store i32 %53, i32* %8, align 4
  %54 = load i32, i32* %8, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %63

56:                                               ; preds = %42
  %57 = load %struct.smc_sock*, %struct.smc_sock** %5, align 8
  %58 = load i32, i32* %8, align 4
  %59 = load %struct.smc_init_info*, %struct.smc_init_info** %7, align 8
  %60 = getelementptr inbounds %struct.smc_init_info, %struct.smc_init_info* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @smc_connect_abort(%struct.smc_sock* %57, i32 %58, i32 %61)
  store i32 %62, i32* %4, align 4
  br label %81

63:                                               ; preds = %42
  %64 = call i32 @mutex_unlock(i32* @smc_server_lgr_pending)
  %65 = load %struct.smc_sock*, %struct.smc_sock** %5, align 8
  %66 = call i32 @smc_copy_sock_settings_to_clc(%struct.smc_sock* %65)
  %67 = load %struct.smc_sock*, %struct.smc_sock** %5, align 8
  %68 = getelementptr inbounds %struct.smc_sock, %struct.smc_sock* %67, i32 0, i32 1
  store i64 0, i64* %68, align 8
  %69 = load %struct.smc_sock*, %struct.smc_sock** %5, align 8
  %70 = getelementptr inbounds %struct.smc_sock, %struct.smc_sock* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @SMC_INIT, align 8
  %74 = icmp eq i64 %72, %73
  br i1 %74, label %75, label %80

75:                                               ; preds = %63
  %76 = load i64, i64* @SMC_ACTIVE, align 8
  %77 = load %struct.smc_sock*, %struct.smc_sock** %5, align 8
  %78 = getelementptr inbounds %struct.smc_sock, %struct.smc_sock* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 0
  store i64 %76, i64* %79, align 8
  br label %80

80:                                               ; preds = %75, %63
  store i32 0, i32* %4, align 4
  br label %81

81:                                               ; preds = %80, %56, %35, %28
  %82 = load i32, i32* %4, align 4
  ret i32 %82
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @smc_conn_create(%struct.smc_sock*, %struct.smc_init_info*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i64 @smc_buf_create(%struct.smc_sock*, i32) #1

declare dso_local i32 @smc_connect_abort(%struct.smc_sock*, i32, i32) #1

declare dso_local i32 @smc_conn_save_peer_info(%struct.smc_sock*, %struct.smc_clc_msg_accept_confirm*) #1

declare dso_local i32 @smc_close_init(%struct.smc_sock*) #1

declare dso_local i32 @smc_rx_init(%struct.smc_sock*) #1

declare dso_local i32 @smc_tx_init(%struct.smc_sock*) #1

declare dso_local i32 @smc_clc_send_confirm(%struct.smc_sock*) #1

declare dso_local i32 @smc_copy_sock_settings_to_clc(%struct.smc_sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
