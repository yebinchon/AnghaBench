; ModuleID = '/home/carl/AnghaBench/linux/net/smc/extr_af_smc.c_smc_serv_conf_first_link.c'
source_filename = "/home/carl/AnghaBench/linux/net/smc/extr_af_smc.c_smc_serv_conf_first_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smc_sock = type { %struct.TYPE_6__, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32, %struct.smc_link_group* }
%struct.smc_link_group = type { %struct.smc_link* }
%struct.smc_link = type { i32, i32, i32, %struct.TYPE_7__*, i64, i32 }
%struct.TYPE_7__ = type { i32* }
%struct.TYPE_5__ = type { i32 }
%struct.net = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.smc_clc_msg_decline = type { i32 }

@SMC_SINGLE_LINK = common dso_local global i64 0, align 8
@SMC_CLC_DECL_ERR_REGRMB = common dso_local global i32 0, align 4
@SMC_LLC_REQ = common dso_local global i32 0, align 4
@SMC_CLC_DECL_TIMEOUT_CL = common dso_local global i32 0, align 4
@SMC_LLC_WAIT_FIRST_TIME = common dso_local global i32 0, align 4
@SMC_CLC_DECLINE = common dso_local global i32 0, align 4
@CLC_WAIT_TIME_SHORT = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@SMC_CLC_DECL_RMBE_EC = common dso_local global i32 0, align 4
@SMC_CLC_DECL_TIMEOUT_AL = common dso_local global i32 0, align 4
@SMC_LLC_WAIT_TIME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.smc_sock*)* @smc_serv_conf_first_link to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smc_serv_conf_first_link(%struct.smc_sock* %0) #0 {
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
  %27 = load %struct.smc_sock*, %struct.smc_sock** %3, align 8
  %28 = getelementptr inbounds %struct.smc_sock, %struct.smc_sock* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = call i64 @smc_reg_rmb(%struct.smc_link* %26, i32 %30, i32 0)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %1
  %34 = load i32, i32* @SMC_CLC_DECL_ERR_REGRMB, align 4
  store i32 %34, i32* %2, align 4
  br label %124

35:                                               ; preds = %1
  %36 = load %struct.smc_link*, %struct.smc_link** %6, align 8
  %37 = load i32, i32* @SMC_LLC_REQ, align 4
  %38 = call i32 @smc_llc_send_confirm_link(%struct.smc_link* %36, i32 %37)
  store i32 %38, i32* %8, align 4
  %39 = load i32, i32* %8, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %35
  %42 = load i32, i32* @SMC_CLC_DECL_TIMEOUT_CL, align 4
  store i32 %42, i32* %2, align 4
  br label %124

43:                                               ; preds = %35
  %44 = load %struct.smc_link*, %struct.smc_link** %6, align 8
  %45 = getelementptr inbounds %struct.smc_link, %struct.smc_link* %44, i32 0, i32 5
  %46 = load i32, i32* @SMC_LLC_WAIT_FIRST_TIME, align 4
  %47 = call i32 @wait_for_completion_interruptible_timeout(i32* %45, i32 %46)
  store i32 %47, i32* %7, align 4
  %48 = load i32, i32* %7, align 4
  %49 = icmp sle i32 %48, 0
  br i1 %49, label %50, label %65

50:                                               ; preds = %43
  %51 = load %struct.smc_sock*, %struct.smc_sock** %3, align 8
  %52 = load i32, i32* @SMC_CLC_DECLINE, align 4
  %53 = load i32, i32* @CLC_WAIT_TIME_SHORT, align 4
  %54 = call i32 @smc_clc_wait_msg(%struct.smc_sock* %51, %struct.smc_clc_msg_decline* %9, i32 4, i32 %52, i32 %53)
  store i32 %54, i32* %8, align 4
  %55 = load i32, i32* %8, align 4
  %56 = load i32, i32* @EAGAIN, align 4
  %57 = sub nsw i32 0, %56
  %58 = icmp eq i32 %55, %57
  br i1 %58, label %59, label %61

59:                                               ; preds = %50
  %60 = load i32, i32* @SMC_CLC_DECL_TIMEOUT_CL, align 4
  br label %63

61:                                               ; preds = %50
  %62 = load i32, i32* %8, align 4
  br label %63

63:                                               ; preds = %61, %59
  %64 = phi i32 [ %60, %59 ], [ %62, %61 ]
  store i32 %64, i32* %2, align 4
  br label %124

65:                                               ; preds = %43
  %66 = load %struct.smc_link*, %struct.smc_link** %6, align 8
  %67 = getelementptr inbounds %struct.smc_link, %struct.smc_link* %66, i32 0, i32 4
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %65
  %71 = load i32, i32* @SMC_CLC_DECL_RMBE_EC, align 4
  store i32 %71, i32* %2, align 4
  br label %124

72:                                               ; preds = %65
  %73 = load %struct.smc_link*, %struct.smc_link** %6, align 8
  %74 = load %struct.smc_link*, %struct.smc_link** %6, align 8
  %75 = getelementptr inbounds %struct.smc_link, %struct.smc_link* %74, i32 0, i32 3
  %76 = load %struct.TYPE_7__*, %struct.TYPE_7__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 0
  %78 = load i32*, i32** %77, align 8
  %79 = load %struct.smc_link*, %struct.smc_link** %6, align 8
  %80 = getelementptr inbounds %struct.smc_link, %struct.smc_link* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = sub nsw i32 %81, 1
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i32, i32* %78, i64 %83
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.smc_link*, %struct.smc_link** %6, align 8
  %87 = getelementptr inbounds %struct.smc_link, %struct.smc_link* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 8
  %89 = load i32, i32* @SMC_LLC_REQ, align 4
  %90 = call i32 @smc_llc_send_add_link(%struct.smc_link* %73, i32 %85, i32 %88, i32 %89)
  store i32 %90, i32* %8, align 4
  %91 = load i32, i32* %8, align 4
  %92 = icmp slt i32 %91, 0
  br i1 %92, label %93, label %95

93:                                               ; preds = %72
  %94 = load i32, i32* @SMC_CLC_DECL_TIMEOUT_AL, align 4
  store i32 %94, i32* %2, align 4
  br label %124

95:                                               ; preds = %72
  %96 = load %struct.smc_link*, %struct.smc_link** %6, align 8
  %97 = getelementptr inbounds %struct.smc_link, %struct.smc_link* %96, i32 0, i32 1
  %98 = load i32, i32* @SMC_LLC_WAIT_TIME, align 4
  %99 = call i32 @wait_for_completion_interruptible_timeout(i32* %97, i32 %98)
  store i32 %99, i32* %7, align 4
  %100 = load i32, i32* %7, align 4
  %101 = icmp sle i32 %100, 0
  br i1 %101, label %102, label %117

102:                                              ; preds = %95
  %103 = load %struct.smc_sock*, %struct.smc_sock** %3, align 8
  %104 = load i32, i32* @SMC_CLC_DECLINE, align 4
  %105 = load i32, i32* @CLC_WAIT_TIME_SHORT, align 4
  %106 = call i32 @smc_clc_wait_msg(%struct.smc_sock* %103, %struct.smc_clc_msg_decline* %10, i32 4, i32 %104, i32 %105)
  store i32 %106, i32* %8, align 4
  %107 = load i32, i32* %8, align 4
  %108 = load i32, i32* @EAGAIN, align 4
  %109 = sub nsw i32 0, %108
  %110 = icmp eq i32 %107, %109
  br i1 %110, label %111, label %113

111:                                              ; preds = %102
  %112 = load i32, i32* @SMC_CLC_DECL_TIMEOUT_AL, align 4
  br label %115

113:                                              ; preds = %102
  %114 = load i32, i32* %8, align 4
  br label %115

115:                                              ; preds = %113, %111
  %116 = phi i32 [ %112, %111 ], [ %114, %113 ]
  store i32 %116, i32* %2, align 4
  br label %124

117:                                              ; preds = %95
  %118 = load %struct.smc_link*, %struct.smc_link** %6, align 8
  %119 = load %struct.net*, %struct.net** %4, align 8
  %120 = getelementptr inbounds %struct.net, %struct.net* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = call i32 @smc_llc_link_active(%struct.smc_link* %118, i32 %122)
  store i32 0, i32* %2, align 4
  br label %124

124:                                              ; preds = %117, %115, %93, %70, %63, %41, %33
  %125 = load i32, i32* %2, align 4
  ret i32 %125
}

declare dso_local %struct.net* @sock_net(i32) #1

declare dso_local i64 @smc_reg_rmb(%struct.smc_link*, i32, i32) #1

declare dso_local i32 @smc_llc_send_confirm_link(%struct.smc_link*, i32) #1

declare dso_local i32 @wait_for_completion_interruptible_timeout(i32*, i32) #1

declare dso_local i32 @smc_clc_wait_msg(%struct.smc_sock*, %struct.smc_clc_msg_decline*, i32, i32, i32) #1

declare dso_local i32 @smc_llc_send_add_link(%struct.smc_link*, i32, i32, i32) #1

declare dso_local i32 @smc_llc_link_active(%struct.smc_link*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
