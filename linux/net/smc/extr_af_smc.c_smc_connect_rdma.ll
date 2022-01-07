; ModuleID = '/home/carl/AnghaBench/linux/net/smc/extr_af_smc.c_smc_connect_rdma.c'
source_filename = "/home/carl/AnghaBench/linux/net/smc/extr_af_smc.c_smc_connect_rdma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smc_sock = type { %struct.TYPE_8__, i64, %struct.TYPE_9__ }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_9__ = type { i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.smc_link* }
%struct.smc_link = type { i32 }
%struct.smc_clc_msg_accept_confirm = type { %struct.TYPE_6__, i32, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.smc_init_info = type { i32, i64, i32, i32, i32* }

@smc_client_lgr_pending = common dso_local global i32 0, align 4
@SMC_SINGLE_LINK = common dso_local global i64 0, align 8
@SMC_CLC_DECL_MEM = common dso_local global i32 0, align 4
@SMC_FIRST_CONTACT = common dso_local global i64 0, align 8
@SMC_CLC_DECL_ERR_RTOK = common dso_local global i32 0, align 4
@SMC_CLC_DECL_ERR_RDYLNK = common dso_local global i32 0, align 4
@SMC_CLC_DECL_ERR_REGRMB = common dso_local global i32 0, align 4
@SMC_INIT = common dso_local global i64 0, align 8
@SMC_ACTIVE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.smc_sock*, %struct.smc_clc_msg_accept_confirm*, %struct.smc_init_info*)* @smc_connect_rdma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smc_connect_rdma(%struct.smc_sock* %0, %struct.smc_clc_msg_accept_confirm* %1, %struct.smc_init_info* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.smc_sock*, align 8
  %6 = alloca %struct.smc_clc_msg_accept_confirm*, align 8
  %7 = alloca %struct.smc_init_info*, align 8
  %8 = alloca %struct.smc_link*, align 8
  %9 = alloca i32, align 4
  store %struct.smc_sock* %0, %struct.smc_sock** %5, align 8
  store %struct.smc_clc_msg_accept_confirm* %1, %struct.smc_clc_msg_accept_confirm** %6, align 8
  store %struct.smc_init_info* %2, %struct.smc_init_info** %7, align 8
  store i32 0, i32* %9, align 4
  %10 = load %struct.smc_init_info*, %struct.smc_init_info** %7, align 8
  %11 = getelementptr inbounds %struct.smc_init_info, %struct.smc_init_info* %10, i32 0, i32 0
  store i32 0, i32* %11, align 8
  %12 = load %struct.smc_clc_msg_accept_confirm*, %struct.smc_clc_msg_accept_confirm** %6, align 8
  %13 = getelementptr inbounds %struct.smc_clc_msg_accept_confirm, %struct.smc_clc_msg_accept_confirm* %12, i32 0, i32 2
  %14 = load %struct.smc_init_info*, %struct.smc_init_info** %7, align 8
  %15 = getelementptr inbounds %struct.smc_init_info, %struct.smc_init_info* %14, i32 0, i32 4
  store i32* %13, i32** %15, align 8
  %16 = load %struct.smc_clc_msg_accept_confirm*, %struct.smc_clc_msg_accept_confirm** %6, align 8
  %17 = getelementptr inbounds %struct.smc_clc_msg_accept_confirm, %struct.smc_clc_msg_accept_confirm* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @ntoh24(i32 %18)
  %20 = load %struct.smc_init_info*, %struct.smc_init_info** %7, align 8
  %21 = getelementptr inbounds %struct.smc_init_info, %struct.smc_init_info* %20, i32 0, i32 3
  store i32 %19, i32* %21, align 4
  %22 = load %struct.smc_clc_msg_accept_confirm*, %struct.smc_clc_msg_accept_confirm** %6, align 8
  %23 = getelementptr inbounds %struct.smc_clc_msg_accept_confirm, %struct.smc_clc_msg_accept_confirm* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.smc_init_info*, %struct.smc_init_info** %7, align 8
  %27 = getelementptr inbounds %struct.smc_init_info, %struct.smc_init_info* %26, i32 0, i32 2
  store i32 %25, i32* %27, align 8
  %28 = call i32 @mutex_lock(i32* @smc_client_lgr_pending)
  %29 = load %struct.smc_sock*, %struct.smc_sock** %5, align 8
  %30 = load %struct.smc_init_info*, %struct.smc_init_info** %7, align 8
  %31 = call i32 @smc_conn_create(%struct.smc_sock* %29, %struct.smc_init_info* %30)
  store i32 %31, i32* %9, align 4
  %32 = load i32, i32* %9, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %3
  %35 = call i32 @mutex_unlock(i32* @smc_client_lgr_pending)
  %36 = load i32, i32* %9, align 4
  store i32 %36, i32* %4, align 4
  br label %174

37:                                               ; preds = %3
  %38 = load %struct.smc_sock*, %struct.smc_sock** %5, align 8
  %39 = getelementptr inbounds %struct.smc_sock, %struct.smc_sock* %38, i32 0, i32 2
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 1
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 0
  %43 = load %struct.smc_link*, %struct.smc_link** %42, align 8
  %44 = load i64, i64* @SMC_SINGLE_LINK, align 8
  %45 = getelementptr inbounds %struct.smc_link, %struct.smc_link* %43, i64 %44
  store %struct.smc_link* %45, %struct.smc_link** %8, align 8
  %46 = load %struct.smc_sock*, %struct.smc_sock** %5, align 8
  %47 = load %struct.smc_clc_msg_accept_confirm*, %struct.smc_clc_msg_accept_confirm** %6, align 8
  %48 = call i32 @smc_conn_save_peer_info(%struct.smc_sock* %46, %struct.smc_clc_msg_accept_confirm* %47)
  %49 = load %struct.smc_sock*, %struct.smc_sock** %5, align 8
  %50 = call i64 @smc_buf_create(%struct.smc_sock* %49, i32 0)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %59

52:                                               ; preds = %37
  %53 = load %struct.smc_sock*, %struct.smc_sock** %5, align 8
  %54 = load i32, i32* @SMC_CLC_DECL_MEM, align 4
  %55 = load %struct.smc_init_info*, %struct.smc_init_info** %7, align 8
  %56 = getelementptr inbounds %struct.smc_init_info, %struct.smc_init_info* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = call i32 @smc_connect_abort(%struct.smc_sock* %53, i32 %54, i64 %57)
  store i32 %58, i32* %4, align 4
  br label %174

59:                                               ; preds = %37
  %60 = load %struct.smc_init_info*, %struct.smc_init_info** %7, align 8
  %61 = getelementptr inbounds %struct.smc_init_info, %struct.smc_init_info* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @SMC_FIRST_CONTACT, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %69

65:                                               ; preds = %59
  %66 = load %struct.smc_link*, %struct.smc_link** %8, align 8
  %67 = load %struct.smc_clc_msg_accept_confirm*, %struct.smc_clc_msg_accept_confirm** %6, align 8
  %68 = call i32 @smc_link_save_peer_info(%struct.smc_link* %66, %struct.smc_clc_msg_accept_confirm* %67)
  br label %69

69:                                               ; preds = %65, %59
  %70 = load %struct.smc_sock*, %struct.smc_sock** %5, align 8
  %71 = getelementptr inbounds %struct.smc_sock, %struct.smc_sock* %70, i32 0, i32 2
  %72 = load %struct.smc_clc_msg_accept_confirm*, %struct.smc_clc_msg_accept_confirm** %6, align 8
  %73 = call i64 @smc_rmb_rtoken_handling(%struct.TYPE_9__* %71, %struct.smc_clc_msg_accept_confirm* %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %82

75:                                               ; preds = %69
  %76 = load %struct.smc_sock*, %struct.smc_sock** %5, align 8
  %77 = load i32, i32* @SMC_CLC_DECL_ERR_RTOK, align 4
  %78 = load %struct.smc_init_info*, %struct.smc_init_info** %7, align 8
  %79 = getelementptr inbounds %struct.smc_init_info, %struct.smc_init_info* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = call i32 @smc_connect_abort(%struct.smc_sock* %76, i32 %77, i64 %80)
  store i32 %81, i32* %4, align 4
  br label %174

82:                                               ; preds = %69
  %83 = load %struct.smc_sock*, %struct.smc_sock** %5, align 8
  %84 = call i32 @smc_close_init(%struct.smc_sock* %83)
  %85 = load %struct.smc_sock*, %struct.smc_sock** %5, align 8
  %86 = call i32 @smc_rx_init(%struct.smc_sock* %85)
  %87 = load %struct.smc_init_info*, %struct.smc_init_info** %7, align 8
  %88 = getelementptr inbounds %struct.smc_init_info, %struct.smc_init_info* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* @SMC_FIRST_CONTACT, align 8
  %91 = icmp eq i64 %89, %90
  br i1 %91, label %92, label %104

92:                                               ; preds = %82
  %93 = load %struct.smc_link*, %struct.smc_link** %8, align 8
  %94 = call i64 @smc_ib_ready_link(%struct.smc_link* %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %103

96:                                               ; preds = %92
  %97 = load %struct.smc_sock*, %struct.smc_sock** %5, align 8
  %98 = load i32, i32* @SMC_CLC_DECL_ERR_RDYLNK, align 4
  %99 = load %struct.smc_init_info*, %struct.smc_init_info** %7, align 8
  %100 = getelementptr inbounds %struct.smc_init_info, %struct.smc_init_info* %99, i32 0, i32 1
  %101 = load i64, i64* %100, align 8
  %102 = call i32 @smc_connect_abort(%struct.smc_sock* %97, i32 %98, i64 %101)
  store i32 %102, i32* %4, align 4
  br label %174

103:                                              ; preds = %92
  br label %120

104:                                              ; preds = %82
  %105 = load %struct.smc_link*, %struct.smc_link** %8, align 8
  %106 = load %struct.smc_sock*, %struct.smc_sock** %5, align 8
  %107 = getelementptr inbounds %struct.smc_sock, %struct.smc_sock* %106, i32 0, i32 2
  %108 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = call i64 @smc_reg_rmb(%struct.smc_link* %105, i32 %109, i32 1)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %119

112:                                              ; preds = %104
  %113 = load %struct.smc_sock*, %struct.smc_sock** %5, align 8
  %114 = load i32, i32* @SMC_CLC_DECL_ERR_REGRMB, align 4
  %115 = load %struct.smc_init_info*, %struct.smc_init_info** %7, align 8
  %116 = getelementptr inbounds %struct.smc_init_info, %struct.smc_init_info* %115, i32 0, i32 1
  %117 = load i64, i64* %116, align 8
  %118 = call i32 @smc_connect_abort(%struct.smc_sock* %113, i32 %114, i64 %117)
  store i32 %118, i32* %4, align 4
  br label %174

119:                                              ; preds = %104
  br label %120

120:                                              ; preds = %119, %103
  %121 = load %struct.smc_sock*, %struct.smc_sock** %5, align 8
  %122 = getelementptr inbounds %struct.smc_sock, %struct.smc_sock* %121, i32 0, i32 2
  %123 = call i32 @smc_rmb_sync_sg_for_device(%struct.TYPE_9__* %122)
  %124 = load %struct.smc_sock*, %struct.smc_sock** %5, align 8
  %125 = call i32 @smc_clc_send_confirm(%struct.smc_sock* %124)
  store i32 %125, i32* %9, align 4
  %126 = load i32, i32* %9, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %135

128:                                              ; preds = %120
  %129 = load %struct.smc_sock*, %struct.smc_sock** %5, align 8
  %130 = load i32, i32* %9, align 4
  %131 = load %struct.smc_init_info*, %struct.smc_init_info** %7, align 8
  %132 = getelementptr inbounds %struct.smc_init_info, %struct.smc_init_info* %131, i32 0, i32 1
  %133 = load i64, i64* %132, align 8
  %134 = call i32 @smc_connect_abort(%struct.smc_sock* %129, i32 %130, i64 %133)
  store i32 %134, i32* %4, align 4
  br label %174

135:                                              ; preds = %120
  %136 = load %struct.smc_sock*, %struct.smc_sock** %5, align 8
  %137 = call i32 @smc_tx_init(%struct.smc_sock* %136)
  %138 = load %struct.smc_init_info*, %struct.smc_init_info** %7, align 8
  %139 = getelementptr inbounds %struct.smc_init_info, %struct.smc_init_info* %138, i32 0, i32 1
  %140 = load i64, i64* %139, align 8
  %141 = load i64, i64* @SMC_FIRST_CONTACT, align 8
  %142 = icmp eq i64 %140, %141
  br i1 %142, label %143, label %156

143:                                              ; preds = %135
  %144 = load %struct.smc_sock*, %struct.smc_sock** %5, align 8
  %145 = call i32 @smc_clnt_conf_first_link(%struct.smc_sock* %144)
  store i32 %145, i32* %9, align 4
  %146 = load i32, i32* %9, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %155

148:                                              ; preds = %143
  %149 = load %struct.smc_sock*, %struct.smc_sock** %5, align 8
  %150 = load i32, i32* %9, align 4
  %151 = load %struct.smc_init_info*, %struct.smc_init_info** %7, align 8
  %152 = getelementptr inbounds %struct.smc_init_info, %struct.smc_init_info* %151, i32 0, i32 1
  %153 = load i64, i64* %152, align 8
  %154 = call i32 @smc_connect_abort(%struct.smc_sock* %149, i32 %150, i64 %153)
  store i32 %154, i32* %4, align 4
  br label %174

155:                                              ; preds = %143
  br label %156

156:                                              ; preds = %155, %135
  %157 = call i32 @mutex_unlock(i32* @smc_client_lgr_pending)
  %158 = load %struct.smc_sock*, %struct.smc_sock** %5, align 8
  %159 = call i32 @smc_copy_sock_settings_to_clc(%struct.smc_sock* %158)
  %160 = load %struct.smc_sock*, %struct.smc_sock** %5, align 8
  %161 = getelementptr inbounds %struct.smc_sock, %struct.smc_sock* %160, i32 0, i32 1
  store i64 0, i64* %161, align 8
  %162 = load %struct.smc_sock*, %struct.smc_sock** %5, align 8
  %163 = getelementptr inbounds %struct.smc_sock, %struct.smc_sock* %162, i32 0, i32 0
  %164 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %163, i32 0, i32 0
  %165 = load i64, i64* %164, align 8
  %166 = load i64, i64* @SMC_INIT, align 8
  %167 = icmp eq i64 %165, %166
  br i1 %167, label %168, label %173

168:                                              ; preds = %156
  %169 = load i64, i64* @SMC_ACTIVE, align 8
  %170 = load %struct.smc_sock*, %struct.smc_sock** %5, align 8
  %171 = getelementptr inbounds %struct.smc_sock, %struct.smc_sock* %170, i32 0, i32 0
  %172 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %171, i32 0, i32 0
  store i64 %169, i64* %172, align 8
  br label %173

173:                                              ; preds = %168, %156
  store i32 0, i32* %4, align 4
  br label %174

174:                                              ; preds = %173, %148, %128, %112, %96, %75, %52, %34
  %175 = load i32, i32* %4, align 4
  ret i32 %175
}

declare dso_local i32 @ntoh24(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @smc_conn_create(%struct.smc_sock*, %struct.smc_init_info*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @smc_conn_save_peer_info(%struct.smc_sock*, %struct.smc_clc_msg_accept_confirm*) #1

declare dso_local i64 @smc_buf_create(%struct.smc_sock*, i32) #1

declare dso_local i32 @smc_connect_abort(%struct.smc_sock*, i32, i64) #1

declare dso_local i32 @smc_link_save_peer_info(%struct.smc_link*, %struct.smc_clc_msg_accept_confirm*) #1

declare dso_local i64 @smc_rmb_rtoken_handling(%struct.TYPE_9__*, %struct.smc_clc_msg_accept_confirm*) #1

declare dso_local i32 @smc_close_init(%struct.smc_sock*) #1

declare dso_local i32 @smc_rx_init(%struct.smc_sock*) #1

declare dso_local i64 @smc_ib_ready_link(%struct.smc_link*) #1

declare dso_local i64 @smc_reg_rmb(%struct.smc_link*, i32, i32) #1

declare dso_local i32 @smc_rmb_sync_sg_for_device(%struct.TYPE_9__*) #1

declare dso_local i32 @smc_clc_send_confirm(%struct.smc_sock*) #1

declare dso_local i32 @smc_tx_init(%struct.smc_sock*) #1

declare dso_local i32 @smc_clnt_conf_first_link(%struct.smc_sock*) #1

declare dso_local i32 @smc_copy_sock_settings_to_clc(%struct.smc_sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
