; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_xt_HMARK.c_hmark_tg_v4.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_xt_HMARK.c_hmark_tg_v4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.xt_action_param = type { %struct.xt_hmark_info* }
%struct.xt_hmark_info = type { i32 }
%struct.hmark_tuple = type { i32 }

@XT_HMARK_CT = common dso_local global i32 0, align 4
@XT_CONTINUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.xt_action_param*)* @hmark_tg_v4 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hmark_tg_v4(%struct.sk_buff* %0, %struct.xt_action_param* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.xt_action_param*, align 8
  %6 = alloca %struct.xt_hmark_info*, align 8
  %7 = alloca %struct.hmark_tuple, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.xt_action_param* %1, %struct.xt_action_param** %5, align 8
  %8 = load %struct.xt_action_param*, %struct.xt_action_param** %5, align 8
  %9 = getelementptr inbounds %struct.xt_action_param, %struct.xt_action_param* %8, i32 0, i32 0
  %10 = load %struct.xt_hmark_info*, %struct.xt_hmark_info** %9, align 8
  store %struct.xt_hmark_info* %10, %struct.xt_hmark_info** %6, align 8
  %11 = call i32 @memset(%struct.hmark_tuple* %7, i32 0, i32 4)
  %12 = load %struct.xt_hmark_info*, %struct.xt_hmark_info** %6, align 8
  %13 = getelementptr inbounds %struct.xt_hmark_info, %struct.xt_hmark_info* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @XT_HMARK_CT, align 4
  %16 = call i32 @XT_HMARK_FLAG(i32 %15)
  %17 = and i32 %14, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %27

19:                                               ; preds = %2
  %20 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %21 = load %struct.xt_hmark_info*, %struct.xt_hmark_info** %6, align 8
  %22 = call i64 @hmark_ct_set_htuple(%struct.sk_buff* %20, %struct.hmark_tuple* %7, %struct.xt_hmark_info* %21)
  %23 = icmp slt i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %19
  %25 = load i32, i32* @XT_CONTINUE, align 4
  store i32 %25, i32* %3, align 4
  br label %41

26:                                               ; preds = %19
  br label %35

27:                                               ; preds = %2
  %28 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %29 = load %struct.xt_hmark_info*, %struct.xt_hmark_info** %6, align 8
  %30 = call i64 @hmark_pkt_set_htuple_ipv4(%struct.sk_buff* %28, %struct.hmark_tuple* %7, %struct.xt_hmark_info* %29)
  %31 = icmp slt i64 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %27
  %33 = load i32, i32* @XT_CONTINUE, align 4
  store i32 %33, i32* %3, align 4
  br label %41

34:                                               ; preds = %27
  br label %35

35:                                               ; preds = %34, %26
  %36 = load %struct.xt_hmark_info*, %struct.xt_hmark_info** %6, align 8
  %37 = call i32 @hmark_hash(%struct.hmark_tuple* %7, %struct.xt_hmark_info* %36)
  %38 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %39 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 4
  %40 = load i32, i32* @XT_CONTINUE, align 4
  store i32 %40, i32* %3, align 4
  br label %41

41:                                               ; preds = %35, %32, %24
  %42 = load i32, i32* %3, align 4
  ret i32 %42
}

declare dso_local i32 @memset(%struct.hmark_tuple*, i32, i32) #1

declare dso_local i32 @XT_HMARK_FLAG(i32) #1

declare dso_local i64 @hmark_ct_set_htuple(%struct.sk_buff*, %struct.hmark_tuple*, %struct.xt_hmark_info*) #1

declare dso_local i64 @hmark_pkt_set_htuple_ipv4(%struct.sk_buff*, %struct.hmark_tuple*, %struct.xt_hmark_info*) #1

declare dso_local i32 @hmark_hash(%struct.hmark_tuple*, %struct.xt_hmark_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
