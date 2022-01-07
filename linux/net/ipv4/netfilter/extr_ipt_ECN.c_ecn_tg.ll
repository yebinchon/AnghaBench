; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/netfilter/extr_ipt_ECN.c_ecn_tg.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/netfilter/extr_ipt_ECN.c_ecn_tg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.xt_action_param = type { %struct.ipt_ECN_info* }
%struct.ipt_ECN_info = type { i32 }
%struct.TYPE_2__ = type { i64 }

@IPT_ECN_OP_SET_IP = common dso_local global i32 0, align 4
@NF_DROP = common dso_local global i32 0, align 4
@IPT_ECN_OP_SET_ECE = common dso_local global i32 0, align 4
@IPT_ECN_OP_SET_CWR = common dso_local global i32 0, align 4
@IPPROTO_TCP = common dso_local global i64 0, align 8
@XT_CONTINUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.xt_action_param*)* @ecn_tg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ecn_tg(%struct.sk_buff* %0, %struct.xt_action_param* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.xt_action_param*, align 8
  %6 = alloca %struct.ipt_ECN_info*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.xt_action_param* %1, %struct.xt_action_param** %5, align 8
  %7 = load %struct.xt_action_param*, %struct.xt_action_param** %5, align 8
  %8 = getelementptr inbounds %struct.xt_action_param, %struct.xt_action_param* %7, i32 0, i32 0
  %9 = load %struct.ipt_ECN_info*, %struct.ipt_ECN_info** %8, align 8
  store %struct.ipt_ECN_info* %9, %struct.ipt_ECN_info** %6, align 8
  %10 = load %struct.ipt_ECN_info*, %struct.ipt_ECN_info** %6, align 8
  %11 = getelementptr inbounds %struct.ipt_ECN_info, %struct.ipt_ECN_info* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @IPT_ECN_OP_SET_IP, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %24

16:                                               ; preds = %2
  %17 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %18 = load %struct.ipt_ECN_info*, %struct.ipt_ECN_info** %6, align 8
  %19 = call i32 @set_ect_ip(%struct.sk_buff* %17, %struct.ipt_ECN_info* %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %23, label %21

21:                                               ; preds = %16
  %22 = load i32, i32* @NF_DROP, align 4
  store i32 %22, i32* %3, align 4
  br label %50

23:                                               ; preds = %16
  br label %24

24:                                               ; preds = %23, %2
  %25 = load %struct.ipt_ECN_info*, %struct.ipt_ECN_info** %6, align 8
  %26 = getelementptr inbounds %struct.ipt_ECN_info, %struct.ipt_ECN_info* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @IPT_ECN_OP_SET_ECE, align 4
  %29 = load i32, i32* @IPT_ECN_OP_SET_CWR, align 4
  %30 = or i32 %28, %29
  %31 = and i32 %27, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %48

33:                                               ; preds = %24
  %34 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %35 = call %struct.TYPE_2__* @ip_hdr(%struct.sk_buff* %34)
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @IPPROTO_TCP, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %48

40:                                               ; preds = %33
  %41 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %42 = load %struct.ipt_ECN_info*, %struct.ipt_ECN_info** %6, align 8
  %43 = call i32 @set_ect_tcp(%struct.sk_buff* %41, %struct.ipt_ECN_info* %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %47, label %45

45:                                               ; preds = %40
  %46 = load i32, i32* @NF_DROP, align 4
  store i32 %46, i32* %3, align 4
  br label %50

47:                                               ; preds = %40
  br label %48

48:                                               ; preds = %47, %33, %24
  %49 = load i32, i32* @XT_CONTINUE, align 4
  store i32 %49, i32* %3, align 4
  br label %50

50:                                               ; preds = %48, %45, %21
  %51 = load i32, i32* %3, align 4
  ret i32 %51
}

declare dso_local i32 @set_ect_ip(%struct.sk_buff*, %struct.ipt_ECN_info*) #1

declare dso_local %struct.TYPE_2__* @ip_hdr(%struct.sk_buff*) #1

declare dso_local i32 @set_ect_tcp(%struct.sk_buff*, %struct.ipt_ECN_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
