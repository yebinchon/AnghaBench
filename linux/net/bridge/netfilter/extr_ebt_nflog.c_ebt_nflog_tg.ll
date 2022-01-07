; ModuleID = '/home/carl/AnghaBench/linux/net/bridge/netfilter/extr_ebt_nflog.c_ebt_nflog_tg.c'
source_filename = "/home/carl/AnghaBench/linux/net/bridge/netfilter/extr_ebt_nflog.c_ebt_nflog_tg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.xt_action_param = type { %struct.ebt_nflog_info* }
%struct.ebt_nflog_info = type { i32, i32, i32, i32 }
%struct.net = type { i32 }
%struct.nf_loginfo = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i32, i32, i32 }

@NF_LOG_TYPE_ULOG = common dso_local global i32 0, align 4
@PF_BRIDGE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@EBT_CONTINUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.xt_action_param*)* @ebt_nflog_tg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ebt_nflog_tg(%struct.sk_buff* %0, %struct.xt_action_param* %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.xt_action_param*, align 8
  %5 = alloca %struct.ebt_nflog_info*, align 8
  %6 = alloca %struct.net*, align 8
  %7 = alloca %struct.nf_loginfo, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  store %struct.xt_action_param* %1, %struct.xt_action_param** %4, align 8
  %8 = load %struct.xt_action_param*, %struct.xt_action_param** %4, align 8
  %9 = getelementptr inbounds %struct.xt_action_param, %struct.xt_action_param* %8, i32 0, i32 0
  %10 = load %struct.ebt_nflog_info*, %struct.ebt_nflog_info** %9, align 8
  store %struct.ebt_nflog_info* %10, %struct.ebt_nflog_info** %5, align 8
  %11 = load %struct.xt_action_param*, %struct.xt_action_param** %4, align 8
  %12 = call %struct.net* @xt_net(%struct.xt_action_param* %11)
  store %struct.net* %12, %struct.net** %6, align 8
  %13 = load i32, i32* @NF_LOG_TYPE_ULOG, align 4
  %14 = getelementptr inbounds %struct.nf_loginfo, %struct.nf_loginfo* %7, i32 0, i32 1
  store i32 %13, i32* %14, align 8
  %15 = load %struct.ebt_nflog_info*, %struct.ebt_nflog_info** %5, align 8
  %16 = getelementptr inbounds %struct.ebt_nflog_info, %struct.ebt_nflog_info* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 4
  %18 = getelementptr inbounds %struct.nf_loginfo, %struct.nf_loginfo* %7, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 3
  store i32 %17, i32* %20, align 8
  %21 = load %struct.ebt_nflog_info*, %struct.ebt_nflog_info** %5, align 8
  %22 = getelementptr inbounds %struct.ebt_nflog_info, %struct.ebt_nflog_info* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = getelementptr inbounds %struct.nf_loginfo, %struct.nf_loginfo* %7, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 2
  store i32 %23, i32* %26, align 4
  %27 = load %struct.ebt_nflog_info*, %struct.ebt_nflog_info** %5, align 8
  %28 = getelementptr inbounds %struct.ebt_nflog_info, %struct.ebt_nflog_info* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = getelementptr inbounds %struct.nf_loginfo, %struct.nf_loginfo* %7, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 1
  store i32 %29, i32* %32, align 8
  %33 = getelementptr inbounds %struct.nf_loginfo, %struct.nf_loginfo* %7, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  store i64 0, i64* %35, align 8
  %36 = load %struct.net*, %struct.net** %6, align 8
  %37 = load i32, i32* @PF_BRIDGE, align 4
  %38 = load %struct.xt_action_param*, %struct.xt_action_param** %4, align 8
  %39 = call i32 @xt_hooknum(%struct.xt_action_param* %38)
  %40 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %41 = load %struct.xt_action_param*, %struct.xt_action_param** %4, align 8
  %42 = call i32 @xt_in(%struct.xt_action_param* %41)
  %43 = load %struct.xt_action_param*, %struct.xt_action_param** %4, align 8
  %44 = call i32 @xt_out(%struct.xt_action_param* %43)
  %45 = load %struct.ebt_nflog_info*, %struct.ebt_nflog_info** %5, align 8
  %46 = getelementptr inbounds %struct.ebt_nflog_info, %struct.ebt_nflog_info* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @nf_log_packet(%struct.net* %36, i32 %37, i32 %39, %struct.sk_buff* %40, i32 %42, i32 %44, %struct.nf_loginfo* %7, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %47)
  %49 = load i32, i32* @EBT_CONTINUE, align 4
  ret i32 %49
}

declare dso_local %struct.net* @xt_net(%struct.xt_action_param*) #1

declare dso_local i32 @nf_log_packet(%struct.net*, i32, i32, %struct.sk_buff*, i32, i32, %struct.nf_loginfo*, i8*, i32) #1

declare dso_local i32 @xt_hooknum(%struct.xt_action_param*) #1

declare dso_local i32 @xt_in(%struct.xt_action_param*) #1

declare dso_local i32 @xt_out(%struct.xt_action_param*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
