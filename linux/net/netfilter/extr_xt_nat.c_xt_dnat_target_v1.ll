; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_xt_nat.c_xt_dnat_target_v1.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_xt_nat.c_xt_dnat_target_v1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.xt_action_param = type { %struct.nf_nat_range* }
%struct.nf_nat_range = type { i32 }
%struct.nf_nat_range2 = type { i32 }
%struct.nf_conn = type { i32 }

@IP_CT_NEW = common dso_local global i32 0, align 4
@IP_CT_RELATED = common dso_local global i32 0, align 4
@NF_NAT_MANIP_DST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.xt_action_param*)* @xt_dnat_target_v1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xt_dnat_target_v1(%struct.sk_buff* %0, %struct.xt_action_param* %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.xt_action_param*, align 8
  %5 = alloca %struct.nf_nat_range*, align 8
  %6 = alloca %struct.nf_nat_range2, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.nf_conn*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  store %struct.xt_action_param* %1, %struct.xt_action_param** %4, align 8
  %9 = load %struct.xt_action_param*, %struct.xt_action_param** %4, align 8
  %10 = getelementptr inbounds %struct.xt_action_param, %struct.xt_action_param* %9, i32 0, i32 0
  %11 = load %struct.nf_nat_range*, %struct.nf_nat_range** %10, align 8
  store %struct.nf_nat_range* %11, %struct.nf_nat_range** %5, align 8
  %12 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %13 = call %struct.nf_conn* @nf_ct_get(%struct.sk_buff* %12, i32* %7)
  store %struct.nf_conn* %13, %struct.nf_conn** %8, align 8
  %14 = load %struct.nf_conn*, %struct.nf_conn** %8, align 8
  %15 = icmp ne %struct.nf_conn* %14, null
  br i1 %15, label %16, label %26

16:                                               ; preds = %2
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* @IP_CT_NEW, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %24, label %20

20:                                               ; preds = %16
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* @IP_CT_RELATED, align 4
  %23 = icmp eq i32 %21, %22
  br label %24

24:                                               ; preds = %20, %16
  %25 = phi i1 [ true, %16 ], [ %23, %20 ]
  br label %26

26:                                               ; preds = %24, %2
  %27 = phi i1 [ false, %2 ], [ %25, %24 ]
  %28 = xor i1 %27, true
  %29 = zext i1 %28 to i32
  %30 = call i32 @WARN_ON(i32 %29)
  %31 = load %struct.nf_nat_range*, %struct.nf_nat_range** %5, align 8
  %32 = call i32 @memcpy(%struct.nf_nat_range2* %6, %struct.nf_nat_range* %31, i32 4)
  %33 = getelementptr inbounds %struct.nf_nat_range2, %struct.nf_nat_range2* %6, i32 0, i32 0
  %34 = call i32 @memset(i32* %33, i32 0, i32 4)
  %35 = load %struct.nf_conn*, %struct.nf_conn** %8, align 8
  %36 = load i32, i32* @NF_NAT_MANIP_DST, align 4
  %37 = call i32 @nf_nat_setup_info(%struct.nf_conn* %35, %struct.nf_nat_range2* %6, i32 %36)
  ret i32 %37
}

declare dso_local %struct.nf_conn* @nf_ct_get(%struct.sk_buff*, i32*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @memcpy(%struct.nf_nat_range2*, %struct.nf_nat_range*, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @nf_nat_setup_info(%struct.nf_conn*, %struct.nf_nat_range2*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
