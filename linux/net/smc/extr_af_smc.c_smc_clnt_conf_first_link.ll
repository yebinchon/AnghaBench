; ModuleID = '/home/carl/AnghaBench/linux/net/smc/extr_af_smc.c_smc_clnt_conf_first_link.c'
source_filename = "/home/carl/AnghaBench/linux/net/smc/extr_af_smc.c_smc_clnt_conf_first_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smc_sock = type { %struct.TYPE_6__, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32, %struct.smc_link_group* }
%struct.smc_link_group = type { %struct.smc_link* }
%struct.smc_link = type { i32, i32, %struct.TYPE_7__*, i32, i64, i32 }
%struct.TYPE_7__ = type { i32* }
%struct.TYPE_5__ = type { i32 }
%struct.net = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.smc_clc_msg_decline = type { i32 }

@SMC_SINGLE_LINK = common dso_local global i64 0, align 8
@SMC_LLC_WAIT_FIRST_TIME = common dso_local global i32 0, align 4
@SMC_CLC_DECLINE = common dso_local global i32 0, align 4
@CLC_WAIT_TIME_SHORT = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@SMC_CLC_DECL_TIMEOUT_CL = common dso_local global i32 0, align 4
@SMC_CLC_DECL_RMBE_EC = common dso_local global i32 0, align 4
@SMC_CLC_DECL_ERR_RDYLNK = common dso_local global i32 0, align 4
@SMC_CLC_DECL_ERR_REGRMB = common dso_local global i32 0, align 4
@SMC_LLC_RESP = common dso_local global i32 0, align 4
@SMC_LLC_WAIT_TIME = common dso_local global i32 0, align 4
@SMC_CLC_DECL_TIMEOUT_AL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.smc_sock*)* @smc_clnt_conf_first_link to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smc_clnt_conf_first_link(%struct.smc_sock* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.smc_sock*, align 8
  %4 = alloca %struct.net*, align 8
  %5 = alloca %struct.smc_link_group*, align 8
  %6 = alloca %struct.smc_link*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.smc_clc_msg_decline, align 4
  %10 = alloca %struct.smc_clc_msg_decline, align 4
  store %struct.smc_sock* %0, %struct.smc_sock** %3, align 8
  %11 = load %struct.smc_sock*, %struct.smc_sock** %3, align 8
  %12 = getelementptr inbounds %struct.smc_sock, %struct.smc_sock* %11, i32 0, i32 1
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.net* @sock_net(i32 %15)
  store %struct.net* %16, %struct.net** %4, align 8
  %17 = load %struct.smc_sock*, %struct.smc_sock** %3, align 8
  %18 = getelementptr inbounds %struct.smc_sock, %struct.smc_sock* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 1
  %20 = load %struct.smc_link_group*, %struct.smc_link_group** %19, align 8
  store %struct.smc_link_group* %20, %struct.smc_link_group** %5, align 8
  %21 = load %struct.smc_link_group*, %struct.smc_link_group** %5, align 8
  %22 = getelementptr inbounds %struct.smc_link_group, %struct.smc_link_group* %21, i32 0, i32 0
  %23 = load %struct.smc_link*, %struct.smc_link** %22, align 8
  %24 = load i64, i64* @SMC_SINGLE_LINK, align 8
  %25 = getelementptr inbounds %struct.smc_link, %struct.smc_link* %23, i64 %24
  store %struct.smc_link* %25, %struct.smc_link** %6, align 8
  %26 = load %struct.smc_link*, %struct.smc_link** %6, align 8
  %27 = getelementptr inbounds %struct.smc_link, %struct.smc_link* %26, i32 0, i32 5
  %28 = load i32, i32* @SMC_LLC_WAIT_FIRST_TIME, align 4
  %29 = call i32 @wait_for_completion_interruptible_timeout(i32* %27, i32 %28)
  store i32 %29, i32* %7, align 4
  %30 = load i32, i32* %7, align 4
  %31 = icmp sle i32 %30, 0
  br i1 %31, label %32, label %47

32:                                               ; preds = %1
  %33 = load %struct.smc_sock*, %struct.smc_sock** %3, align 8
  %34 = load i32, i32* @SMC_CLC_DECLINE, align 4
  %35 = load i32, i32* @CLC_WAIT_TIME_SHORT, align 4
  %36 = call i32 @smc_clc_wait_msg(%struct.smc_sock* %33, %struct.smc_clc_msg_decline* %9, i32 4, i32 %34, i32 %35)
  store i32 %36, i32* %8, align 4
  %37 = load i32, i32* %8, align 4
  %38 = load i32, i32* @EAGAIN, align 4
  %39 = sub nsw i32 0, %38
  %40 = icmp eq i32 %37, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %32
  %42 = load i32, i32* @SMC_CLC_DECL_TIMEOUT_CL, align 4
  br label %45

43:                                               ; preds = %32
  %44 = load i32, i32* %8, align 4
  br label %45

45:                                               ; preds = %43, %41
  %46 = phi i32 [ %42, %41 ], [ %44, %43 ]
  store i32 %46, i32* %2, align 4
  br label %133

47:                                               ; preds = %1
  %48 = load %struct.smc_link*, %struct.smc_link** %6, align 8
  %49 = getelementptr inbounds %struct.smc_link, %struct.smc_link* %48, i32 0, i32 4
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %47
  %53 = load i32, i32* @SMC_CLC_DECL_RMBE_EC, align 4
  store i32 %53, i32* %2, align 4
  br label %133

54:                                               ; preds = %47
  %55 = load %struct.smc_link*, %struct.smc_link** %6, align 8
  %56 = call i32 @smc_ib_modify_qp_rts(%struct.smc_link* %55)
  store i32 %56, i32* %8, align 4
  %57 = load i32, i32* %8, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %54
  %60 = load i32, i32* @SMC_CLC_DECL_ERR_RDYLNK, align 4
  store i32 %60, i32* %2, align 4
  br label %133

61:                                               ; preds = %54
  %62 = load %struct.smc_link*, %struct.smc_link** %6, align 8
  %63 = call i32 @smc_wr_remember_qp_attr(%struct.smc_link* %62)
  %64 = load %struct.smc_link*, %struct.smc_link** %6, align 8
  %65 = load %struct.smc_sock*, %struct.smc_sock** %3, align 8
  %66 = getelementptr inbounds %struct.smc_sock, %struct.smc_sock* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = call i64 @smc_reg_rmb(%struct.smc_link* %64, i32 %68, i32 0)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %61
  %72 = load i32, i32* @SMC_CLC_DECL_ERR_REGRMB, align 4
  store i32 %72, i32* %2, align 4
  br label %133

73:                                               ; preds = %61
  %74 = load %struct.smc_link*, %struct.smc_link** %6, align 8
  %75 = load i32, i32* @SMC_LLC_RESP, align 4
  %76 = call i32 @smc_llc_send_confirm_link(%struct.smc_link* %74, i32 %75)
  store i32 %76, i32* %8, align 4
  %77 = load i32, i32* %8, align 4
  %78 = icmp slt i32 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %73
  %80 = load i32, i32* @SMC_CLC_DECL_TIMEOUT_CL, align 4
  store i32 %80, i32* %2, align 4
  br label %133

81:                                               ; preds = %73
  %82 = load %struct.smc_link*, %struct.smc_link** %6, align 8
  %83 = getelementptr inbounds %struct.smc_link, %struct.smc_link* %82, i32 0, i32 3
  %84 = load i32, i32* @SMC_LLC_WAIT_TIME, align 4
  %85 = call i32 @wait_for_completion_interruptible_timeout(i32* %83, i32 %84)
  store i32 %85, i32* %7, align 4
  %86 = load i32, i32* %7, align 4
  %87 = icmp sle i32 %86, 0
  br i1 %87, label %88, label %103

88:                                               ; preds = %81
  %89 = load %struct.smc_sock*, %struct.smc_sock** %3, align 8
  %90 = load i32, i32* @SMC_CLC_DECLINE, align 4
  %91 = load i32, i32* @CLC_WAIT_TIME_SHORT, align 4
  %92 = call i32 @smc_clc_wait_msg(%struct.smc_sock* %89, %struct.smc_clc_msg_decline* %10, i32 4, i32 %90, i32 %91)
  store i32 %92, i32* %8, align 4
  %93 = load i32, i32* %8, align 4
  %94 = load i32, i32* @EAGAIN, align 4
  %95 = sub nsw i32 0, %94
  %96 = icmp eq i32 %93, %95
  br i1 %96, label %97, label %99

97:                                               ; preds = %88
  %98 = load i32, i32* @SMC_CLC_DECL_TIMEOUT_AL, align 4
  br label %101

99:                                               ; preds = %88
  %100 = load i32, i32* %8, align 4
  br label %101

101:                                              ; preds = %99, %97
  %102 = phi i32 [ %98, %97 ], [ %100, %99 ]
  store i32 %102, i32* %2, align 4
  br label %133

103:                                              ; preds = %81
  %104 = load %struct.smc_link*, %struct.smc_link** %6, align 8
  %105 = load %struct.smc_link*, %struct.smc_link** %6, align 8
  %106 = getelementptr inbounds %struct.smc_link, %struct.smc_link* %105, i32 0, i32 2
  %107 = load %struct.TYPE_7__*, %struct.TYPE_7__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %107, i32 0, i32 0
  %109 = load i32*, i32** %108, align 8
  %110 = load %struct.smc_link*, %struct.smc_link** %6, align 8
  %111 = getelementptr inbounds %struct.smc_link, %struct.smc_link* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = sub nsw i32 %112, 1
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i32, i32* %109, i64 %114
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.smc_link*, %struct.smc_link** %6, align 8
  %118 = getelementptr inbounds %struct.smc_link, %struct.smc_link* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = load i32, i32* @SMC_LLC_RESP, align 4
  %121 = call i32 @smc_llc_send_add_link(%struct.smc_link* %104, i32 %116, i32 %119, i32 %120)
  store i32 %121, i32* %8, align 4
  %122 = load i32, i32* %8, align 4
  %123 = icmp slt i32 %122, 0
  br i1 %123, label %124, label %126

124:                                              ; preds = %103
  %125 = load i32, i32* @SMC_CLC_DECL_TIMEOUT_AL, align 4
  store i32 %125, i32* %2, align 4
  br label %133

126:                                              ; preds = %103
  %127 = load %struct.smc_link*, %struct.smc_link** %6, align 8
  %128 = load %struct.net*, %struct.net** %4, align 8
  %129 = getelementptr inbounds %struct.net, %struct.net* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = call i32 @smc_llc_link_active(%struct.smc_link* %127, i32 %131)
  store i32 0, i32* %2, align 4
  br label %133

133:                                              ; preds = %126, %124, %101, %79, %71, %59, %52, %45
  %134 = load i32, i32* %2, align 4
  ret i32 %134
}

declare dso_local %struct.net* @sock_net(i32) #1

declare dso_local i32 @wait_for_completion_interruptible_timeout(i32*, i32) #1

declare dso_local i32 @smc_clc_wait_msg(%struct.smc_sock*, %struct.smc_clc_msg_decline*, i32, i32, i32) #1

declare dso_local i32 @smc_ib_modify_qp_rts(%struct.smc_link*) #1

declare dso_local i32 @smc_wr_remember_qp_attr(%struct.smc_link*) #1

declare dso_local i64 @smc_reg_rmb(%struct.smc_link*, i32, i32) #1

declare dso_local i32 @smc_llc_send_confirm_link(%struct.smc_link*, i32) #1

declare dso_local i32 @smc_llc_send_add_link(%struct.smc_link*, i32, i32, i32) #1

declare dso_local i32 @smc_llc_link_active(%struct.smc_link*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
