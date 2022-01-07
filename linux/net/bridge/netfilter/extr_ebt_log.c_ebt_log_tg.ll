; ModuleID = '/home/carl/AnghaBench/linux/net/bridge/netfilter/extr_ebt_log.c_ebt_log_tg.c'
source_filename = "/home/carl/AnghaBench/linux/net/bridge/netfilter/extr_ebt_log.c_ebt_log_tg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.xt_action_param = type { %struct.ebt_log_info* }
%struct.ebt_log_info = type { i32, i32, i32 }
%struct.nf_loginfo = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }
%struct.net = type { i32 }

@NF_LOG_TYPE_LOG = common dso_local global i32 0, align 4
@EBT_LOG_NFLOG = common dso_local global i32 0, align 4
@NFPROTO_BRIDGE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@EBT_CONTINUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.xt_action_param*)* @ebt_log_tg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ebt_log_tg(%struct.sk_buff* %0, %struct.xt_action_param* %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.xt_action_param*, align 8
  %5 = alloca %struct.ebt_log_info*, align 8
  %6 = alloca %struct.nf_loginfo, align 4
  %7 = alloca %struct.net*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  store %struct.xt_action_param* %1, %struct.xt_action_param** %4, align 8
  %8 = load %struct.xt_action_param*, %struct.xt_action_param** %4, align 8
  %9 = getelementptr inbounds %struct.xt_action_param, %struct.xt_action_param* %8, i32 0, i32 0
  %10 = load %struct.ebt_log_info*, %struct.ebt_log_info** %9, align 8
  store %struct.ebt_log_info* %10, %struct.ebt_log_info** %5, align 8
  %11 = load %struct.xt_action_param*, %struct.xt_action_param** %4, align 8
  %12 = call %struct.net* @xt_net(%struct.xt_action_param* %11)
  store %struct.net* %12, %struct.net** %7, align 8
  %13 = load i32, i32* @NF_LOG_TYPE_LOG, align 4
  %14 = getelementptr inbounds %struct.nf_loginfo, %struct.nf_loginfo* %6, i32 0, i32 1
  store i32 %13, i32* %14, align 4
  %15 = load %struct.ebt_log_info*, %struct.ebt_log_info** %5, align 8
  %16 = getelementptr inbounds %struct.ebt_log_info, %struct.ebt_log_info* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = getelementptr inbounds %struct.nf_loginfo, %struct.nf_loginfo* %6, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 1
  store i32 %17, i32* %20, align 4
  %21 = load %struct.ebt_log_info*, %struct.ebt_log_info** %5, align 8
  %22 = getelementptr inbounds %struct.ebt_log_info, %struct.ebt_log_info* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = getelementptr inbounds %struct.nf_loginfo, %struct.nf_loginfo* %6, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  store i32 %23, i32* %26, align 4
  %27 = load %struct.ebt_log_info*, %struct.ebt_log_info** %5, align 8
  %28 = getelementptr inbounds %struct.ebt_log_info, %struct.ebt_log_info* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @EBT_LOG_NFLOG, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %47

33:                                               ; preds = %2
  %34 = load %struct.net*, %struct.net** %7, align 8
  %35 = load i32, i32* @NFPROTO_BRIDGE, align 4
  %36 = load %struct.xt_action_param*, %struct.xt_action_param** %4, align 8
  %37 = call i32 @xt_hooknum(%struct.xt_action_param* %36)
  %38 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %39 = load %struct.xt_action_param*, %struct.xt_action_param** %4, align 8
  %40 = call i32 @xt_in(%struct.xt_action_param* %39)
  %41 = load %struct.xt_action_param*, %struct.xt_action_param** %4, align 8
  %42 = call i32 @xt_out(%struct.xt_action_param* %41)
  %43 = load %struct.ebt_log_info*, %struct.ebt_log_info** %5, align 8
  %44 = getelementptr inbounds %struct.ebt_log_info, %struct.ebt_log_info* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @nf_log_packet(%struct.net* %34, i32 %35, i32 %37, %struct.sk_buff* %38, i32 %40, i32 %42, %struct.nf_loginfo* %6, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %45)
  br label %61

47:                                               ; preds = %2
  %48 = load %struct.net*, %struct.net** %7, align 8
  %49 = load i32, i32* @NFPROTO_BRIDGE, align 4
  %50 = load %struct.xt_action_param*, %struct.xt_action_param** %4, align 8
  %51 = call i32 @xt_hooknum(%struct.xt_action_param* %50)
  %52 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %53 = load %struct.xt_action_param*, %struct.xt_action_param** %4, align 8
  %54 = call i32 @xt_in(%struct.xt_action_param* %53)
  %55 = load %struct.xt_action_param*, %struct.xt_action_param** %4, align 8
  %56 = call i32 @xt_out(%struct.xt_action_param* %55)
  %57 = load %struct.ebt_log_info*, %struct.ebt_log_info** %5, align 8
  %58 = getelementptr inbounds %struct.ebt_log_info, %struct.ebt_log_info* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @ebt_log_packet(%struct.net* %48, i32 %49, i32 %51, %struct.sk_buff* %52, i32 %54, i32 %56, %struct.nf_loginfo* %6, i32 %59)
  br label %61

61:                                               ; preds = %47, %33
  %62 = load i32, i32* @EBT_CONTINUE, align 4
  ret i32 %62
}

declare dso_local %struct.net* @xt_net(%struct.xt_action_param*) #1

declare dso_local i32 @nf_log_packet(%struct.net*, i32, i32, %struct.sk_buff*, i32, i32, %struct.nf_loginfo*, i8*, i32) #1

declare dso_local i32 @xt_hooknum(%struct.xt_action_param*) #1

declare dso_local i32 @xt_in(%struct.xt_action_param*) #1

declare dso_local i32 @xt_out(%struct.xt_action_param*) #1

declare dso_local i32 @ebt_log_packet(%struct.net*, i32, i32, %struct.sk_buff*, i32, i32, %struct.nf_loginfo*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
