; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_xt_LOG.c_log_tg.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_xt_LOG.c_log_tg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.xt_action_param = type { %struct.xt_log_info* }
%struct.xt_log_info = type { i32, i32, i32 }
%struct.net = type { i32 }
%struct.nf_loginfo = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }

@NF_LOG_TYPE_LOG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@XT_CONTINUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.xt_action_param*)* @log_tg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @log_tg(%struct.sk_buff* %0, %struct.xt_action_param* %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.xt_action_param*, align 8
  %5 = alloca %struct.xt_log_info*, align 8
  %6 = alloca %struct.net*, align 8
  %7 = alloca %struct.nf_loginfo, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  store %struct.xt_action_param* %1, %struct.xt_action_param** %4, align 8
  %8 = load %struct.xt_action_param*, %struct.xt_action_param** %4, align 8
  %9 = getelementptr inbounds %struct.xt_action_param, %struct.xt_action_param* %8, i32 0, i32 0
  %10 = load %struct.xt_log_info*, %struct.xt_log_info** %9, align 8
  store %struct.xt_log_info* %10, %struct.xt_log_info** %5, align 8
  %11 = load %struct.xt_action_param*, %struct.xt_action_param** %4, align 8
  %12 = call %struct.net* @xt_net(%struct.xt_action_param* %11)
  store %struct.net* %12, %struct.net** %6, align 8
  %13 = load i32, i32* @NF_LOG_TYPE_LOG, align 4
  %14 = getelementptr inbounds %struct.nf_loginfo, %struct.nf_loginfo* %7, i32 0, i32 1
  store i32 %13, i32* %14, align 4
  %15 = load %struct.xt_log_info*, %struct.xt_log_info** %5, align 8
  %16 = getelementptr inbounds %struct.xt_log_info, %struct.xt_log_info* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = getelementptr inbounds %struct.nf_loginfo, %struct.nf_loginfo* %7, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 1
  store i32 %17, i32* %20, align 4
  %21 = load %struct.xt_log_info*, %struct.xt_log_info** %5, align 8
  %22 = getelementptr inbounds %struct.xt_log_info, %struct.xt_log_info* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = getelementptr inbounds %struct.nf_loginfo, %struct.nf_loginfo* %7, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  store i32 %23, i32* %26, align 4
  %27 = load %struct.net*, %struct.net** %6, align 8
  %28 = load %struct.xt_action_param*, %struct.xt_action_param** %4, align 8
  %29 = call i32 @xt_family(%struct.xt_action_param* %28)
  %30 = load %struct.xt_action_param*, %struct.xt_action_param** %4, align 8
  %31 = call i32 @xt_hooknum(%struct.xt_action_param* %30)
  %32 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %33 = load %struct.xt_action_param*, %struct.xt_action_param** %4, align 8
  %34 = call i32 @xt_in(%struct.xt_action_param* %33)
  %35 = load %struct.xt_action_param*, %struct.xt_action_param** %4, align 8
  %36 = call i32 @xt_out(%struct.xt_action_param* %35)
  %37 = load %struct.xt_log_info*, %struct.xt_log_info** %5, align 8
  %38 = getelementptr inbounds %struct.xt_log_info, %struct.xt_log_info* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @nf_log_packet(%struct.net* %27, i32 %29, i32 %31, %struct.sk_buff* %32, i32 %34, i32 %36, %struct.nf_loginfo* %7, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %39)
  %41 = load i32, i32* @XT_CONTINUE, align 4
  ret i32 %41
}

declare dso_local %struct.net* @xt_net(%struct.xt_action_param*) #1

declare dso_local i32 @nf_log_packet(%struct.net*, i32, i32, %struct.sk_buff*, i32, i32, %struct.nf_loginfo*, i8*, i32) #1

declare dso_local i32 @xt_family(%struct.xt_action_param*) #1

declare dso_local i32 @xt_hooknum(%struct.xt_action_param*) #1

declare dso_local i32 @xt_in(%struct.xt_action_param*) #1

declare dso_local i32 @xt_out(%struct.xt_action_param*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
