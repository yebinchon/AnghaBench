; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_xt_nat.c_xt_dnat_target_v2.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_xt_nat.c_xt_dnat_target_v2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.xt_action_param = type { %struct.nf_nat_range2* }
%struct.nf_nat_range2 = type { i32 }
%struct.nf_conn = type { i32 }

@IP_CT_NEW = common dso_local global i32 0, align 4
@IP_CT_RELATED = common dso_local global i32 0, align 4
@NF_NAT_MANIP_DST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.xt_action_param*)* @xt_dnat_target_v2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xt_dnat_target_v2(%struct.sk_buff* %0, %struct.xt_action_param* %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.xt_action_param*, align 8
  %5 = alloca %struct.nf_nat_range2*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.nf_conn*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  store %struct.xt_action_param* %1, %struct.xt_action_param** %4, align 8
  %8 = load %struct.xt_action_param*, %struct.xt_action_param** %4, align 8
  %9 = getelementptr inbounds %struct.xt_action_param, %struct.xt_action_param* %8, i32 0, i32 0
  %10 = load %struct.nf_nat_range2*, %struct.nf_nat_range2** %9, align 8
  store %struct.nf_nat_range2* %10, %struct.nf_nat_range2** %5, align 8
  %11 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %12 = call %struct.nf_conn* @nf_ct_get(%struct.sk_buff* %11, i32* %6)
  store %struct.nf_conn* %12, %struct.nf_conn** %7, align 8
  %13 = load %struct.nf_conn*, %struct.nf_conn** %7, align 8
  %14 = icmp ne %struct.nf_conn* %13, null
  br i1 %14, label %15, label %25

15:                                               ; preds = %2
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* @IP_CT_NEW, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %23, label %19

19:                                               ; preds = %15
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* @IP_CT_RELATED, align 4
  %22 = icmp eq i32 %20, %21
  br label %23

23:                                               ; preds = %19, %15
  %24 = phi i1 [ true, %15 ], [ %22, %19 ]
  br label %25

25:                                               ; preds = %23, %2
  %26 = phi i1 [ false, %2 ], [ %24, %23 ]
  %27 = xor i1 %26, true
  %28 = zext i1 %27 to i32
  %29 = call i32 @WARN_ON(i32 %28)
  %30 = load %struct.nf_conn*, %struct.nf_conn** %7, align 8
  %31 = load %struct.nf_nat_range2*, %struct.nf_nat_range2** %5, align 8
  %32 = load i32, i32* @NF_NAT_MANIP_DST, align 4
  %33 = call i32 @nf_nat_setup_info(%struct.nf_conn* %30, %struct.nf_nat_range2* %31, i32 %32)
  ret i32 %33
}

declare dso_local %struct.nf_conn* @nf_ct_get(%struct.sk_buff*, i32*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @nf_nat_setup_info(%struct.nf_conn*, %struct.nf_nat_range2*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
