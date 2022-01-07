; ModuleID = '/home/carl/AnghaBench/linux/net/atm/extr_mpc.c_msg_from_mpoad.c'
source_filename = "/home/carl/AnghaBench/linux/net/atm/extr_mpc.c_msg_from_mpoad.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atm_vcc = type { i32 }
%struct.sk_buff = type { i32, i64 }
%struct.mpoa_client = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i8* }
%struct.k_message = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i32 }

@.str = private unnamed_addr constant [14 x i8] c"no mpc found\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"(%s)\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"<unknown>\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"mpoa_res_reply_rcvd\0A\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"mpoa_trigger_rcvd\0A\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"nhrp_purge_rcvd\0A\00", align 1
@.str.6 = private unnamed_addr constant [25 x i8] c"egress_purge_reply_rcvd\0A\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"mps_death\0A\00", align 1
@.str.8 = private unnamed_addr constant [18 x i8] c"cache_impos_rcvd\0A\00", align 1
@.str.9 = private unnamed_addr constant [19 x i8] c"set_mpc_ctrl_addr\0A\00", align 1
@.str.10 = private unnamed_addr constant [18 x i8] c"set_mps_mac_addr\0A\00", align 1
@.str.11 = private unnamed_addr constant [19 x i8] c"clean_up_and_exit\0A\00", align 1
@DIE = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [8 x i8] c"reload\0A\00", align 1
@.str.13 = private unnamed_addr constant [16 x i8] c"set_mpc_params\0A\00", align 1
@.str.14 = private unnamed_addr constant [20 x i8] c"unknown message %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.atm_vcc*, %struct.sk_buff*)* @msg_from_mpoad to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @msg_from_mpoad(%struct.atm_vcc* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.atm_vcc*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.mpoa_client*, align 8
  %7 = alloca %struct.k_message*, align 8
  store %struct.atm_vcc* %0, %struct.atm_vcc** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %8 = load %struct.atm_vcc*, %struct.atm_vcc** %4, align 8
  %9 = call %struct.mpoa_client* @find_mpc_by_vcc(%struct.atm_vcc* %8)
  store %struct.mpoa_client* %9, %struct.mpoa_client** %6, align 8
  %10 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %11 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to %struct.k_message*
  store %struct.k_message* %13, %struct.k_message** %7, align 8
  %14 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %15 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.atm_vcc*, %struct.atm_vcc** %4, align 8
  %18 = call %struct.TYPE_6__* @sk_atm(%struct.atm_vcc* %17)
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = call i32 @refcount_sub_and_test(i32 %16, i32* %19)
  %21 = call i32 @WARN_ON(i32 %20)
  %22 = load %struct.mpoa_client*, %struct.mpoa_client** %6, align 8
  %23 = icmp eq %struct.mpoa_client* %22, null
  br i1 %23, label %24, label %26

24:                                               ; preds = %2
  %25 = call i32 @pr_info(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %111

26:                                               ; preds = %2
  %27 = load %struct.mpoa_client*, %struct.mpoa_client** %6, align 8
  %28 = getelementptr inbounds %struct.mpoa_client, %struct.mpoa_client* %27, i32 0, i32 1
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = icmp ne %struct.TYPE_4__* %29, null
  br i1 %30, label %31, label %37

31:                                               ; preds = %26
  %32 = load %struct.mpoa_client*, %struct.mpoa_client** %6, align 8
  %33 = getelementptr inbounds %struct.mpoa_client, %struct.mpoa_client* %32, i32 0, i32 1
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i8*, i8** %35, align 8
  br label %38

37:                                               ; preds = %26
  br label %38

38:                                               ; preds = %37, %31
  %39 = phi i8* [ %36, %31 ], [ getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), %37 ]
  %40 = call i32 @dprintk(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* %39)
  %41 = load %struct.k_message*, %struct.k_message** %7, align 8
  %42 = getelementptr inbounds %struct.k_message, %struct.k_message* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  switch i32 %43, label %103 [
    i32 134, label %44
    i32 133, label %49
    i32 135, label %54
    i32 136, label %59
    i32 132, label %64
    i32 138, label %69
    i32 130, label %74
    i32 128, label %79
    i32 137, label %84
    i32 131, label %90
    i32 129, label %95
  ]

44:                                               ; preds = %38
  %45 = call i32 (i8*, ...) @dprintk_cont(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  %46 = load %struct.k_message*, %struct.k_message** %7, align 8
  %47 = load %struct.mpoa_client*, %struct.mpoa_client** %6, align 8
  %48 = call i32 @MPOA_res_reply_rcvd(%struct.k_message* %46, %struct.mpoa_client* %47)
  br label %108

49:                                               ; preds = %38
  %50 = call i32 (i8*, ...) @dprintk_cont(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0))
  %51 = load %struct.k_message*, %struct.k_message** %7, align 8
  %52 = load %struct.mpoa_client*, %struct.mpoa_client** %6, align 8
  %53 = call i32 @MPOA_trigger_rcvd(%struct.k_message* %51, %struct.mpoa_client* %52)
  br label %108

54:                                               ; preds = %38
  %55 = call i32 (i8*, ...) @dprintk_cont(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0))
  %56 = load %struct.k_message*, %struct.k_message** %7, align 8
  %57 = load %struct.mpoa_client*, %struct.mpoa_client** %6, align 8
  %58 = call i32 @ingress_purge_rcvd(%struct.k_message* %56, %struct.mpoa_client* %57)
  br label %108

59:                                               ; preds = %38
  %60 = call i32 (i8*, ...) @dprintk_cont(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i64 0, i64 0))
  %61 = load %struct.k_message*, %struct.k_message** %7, align 8
  %62 = load %struct.mpoa_client*, %struct.mpoa_client** %6, align 8
  %63 = call i32 @egress_purge_rcvd(%struct.k_message* %61, %struct.mpoa_client* %62)
  br label %108

64:                                               ; preds = %38
  %65 = call i32 (i8*, ...) @dprintk_cont(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0))
  %66 = load %struct.k_message*, %struct.k_message** %7, align 8
  %67 = load %struct.mpoa_client*, %struct.mpoa_client** %6, align 8
  %68 = call i32 @mps_death(%struct.k_message* %66, %struct.mpoa_client* %67)
  br label %108

69:                                               ; preds = %38
  %70 = call i32 (i8*, ...) @dprintk_cont(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.8, i64 0, i64 0))
  %71 = load %struct.k_message*, %struct.k_message** %7, align 8
  %72 = load %struct.mpoa_client*, %struct.mpoa_client** %6, align 8
  %73 = call i32 @MPOA_cache_impos_rcvd(%struct.k_message* %71, %struct.mpoa_client* %72)
  br label %108

74:                                               ; preds = %38
  %75 = call i32 (i8*, ...) @dprintk_cont(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.9, i64 0, i64 0))
  %76 = load %struct.k_message*, %struct.k_message** %7, align 8
  %77 = load %struct.mpoa_client*, %struct.mpoa_client** %6, align 8
  %78 = call i32 @set_mpc_ctrl_addr_rcvd(%struct.k_message* %76, %struct.mpoa_client* %77)
  br label %108

79:                                               ; preds = %38
  %80 = call i32 (i8*, ...) @dprintk_cont(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.10, i64 0, i64 0))
  %81 = load %struct.k_message*, %struct.k_message** %7, align 8
  %82 = load %struct.mpoa_client*, %struct.mpoa_client** %6, align 8
  %83 = call i32 @set_mps_mac_addr_rcvd(%struct.k_message* %81, %struct.mpoa_client* %82)
  br label %108

84:                                               ; preds = %38
  %85 = call i32 (i8*, ...) @dprintk_cont(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.11, i64 0, i64 0))
  %86 = load %struct.k_message*, %struct.k_message** %7, align 8
  %87 = load %struct.mpoa_client*, %struct.mpoa_client** %6, align 8
  %88 = load i32, i32* @DIE, align 4
  %89 = call i32 @clean_up(%struct.k_message* %86, %struct.mpoa_client* %87, i32 %88)
  br label %108

90:                                               ; preds = %38
  %91 = call i32 (i8*, ...) @dprintk_cont(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i64 0, i64 0))
  %92 = load %struct.k_message*, %struct.k_message** %7, align 8
  %93 = load %struct.mpoa_client*, %struct.mpoa_client** %6, align 8
  %94 = call i32 @clean_up(%struct.k_message* %92, %struct.mpoa_client* %93, i32 131)
  br label %108

95:                                               ; preds = %38
  %96 = call i32 (i8*, ...) @dprintk_cont(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.13, i64 0, i64 0))
  %97 = load %struct.k_message*, %struct.k_message** %7, align 8
  %98 = getelementptr inbounds %struct.k_message, %struct.k_message* %97, i32 0, i32 1
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.mpoa_client*, %struct.mpoa_client** %6, align 8
  %102 = getelementptr inbounds %struct.mpoa_client, %struct.mpoa_client* %101, i32 0, i32 0
  store i32 %100, i32* %102, align 8
  br label %108

103:                                              ; preds = %38
  %104 = load %struct.k_message*, %struct.k_message** %7, align 8
  %105 = getelementptr inbounds %struct.k_message, %struct.k_message* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = call i32 (i8*, ...) @dprintk_cont(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.14, i64 0, i64 0), i32 %106)
  br label %108

108:                                              ; preds = %103, %95, %90, %84, %79, %74, %69, %64, %59, %54, %49, %44
  %109 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %110 = call i32 @kfree_skb(%struct.sk_buff* %109)
  store i32 0, i32* %3, align 4
  br label %111

111:                                              ; preds = %108, %24
  %112 = load i32, i32* %3, align 4
  ret i32 %112
}

declare dso_local %struct.mpoa_client* @find_mpc_by_vcc(%struct.atm_vcc*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @refcount_sub_and_test(i32, i32*) #1

declare dso_local %struct.TYPE_6__* @sk_atm(%struct.atm_vcc*) #1

declare dso_local i32 @pr_info(i8*) #1

declare dso_local i32 @dprintk(i8*, i8*) #1

declare dso_local i32 @dprintk_cont(i8*, ...) #1

declare dso_local i32 @MPOA_res_reply_rcvd(%struct.k_message*, %struct.mpoa_client*) #1

declare dso_local i32 @MPOA_trigger_rcvd(%struct.k_message*, %struct.mpoa_client*) #1

declare dso_local i32 @ingress_purge_rcvd(%struct.k_message*, %struct.mpoa_client*) #1

declare dso_local i32 @egress_purge_rcvd(%struct.k_message*, %struct.mpoa_client*) #1

declare dso_local i32 @mps_death(%struct.k_message*, %struct.mpoa_client*) #1

declare dso_local i32 @MPOA_cache_impos_rcvd(%struct.k_message*, %struct.mpoa_client*) #1

declare dso_local i32 @set_mpc_ctrl_addr_rcvd(%struct.k_message*, %struct.mpoa_client*) #1

declare dso_local i32 @set_mps_mac_addr_rcvd(%struct.k_message*, %struct.mpoa_client*) #1

declare dso_local i32 @clean_up(%struct.k_message*, %struct.mpoa_client*, i32) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
