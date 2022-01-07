; ModuleID = '/home/carl/AnghaBench/linux/net/bridge/netfilter/extr_ebt_mark_m.c_ebt_mark_mt.c'
source_filename = "/home/carl/AnghaBench/linux/net/bridge/netfilter/extr_ebt_mark_m.c_ebt_mark_mt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.xt_action_param = type { %struct.ebt_mark_m_info* }
%struct.ebt_mark_m_info = type { i32, i32, i32, i32 }

@EBT_MARK_OR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.xt_action_param*)* @ebt_mark_mt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ebt_mark_mt(%struct.sk_buff* %0, %struct.xt_action_param* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.xt_action_param*, align 8
  %6 = alloca %struct.ebt_mark_m_info*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.xt_action_param* %1, %struct.xt_action_param** %5, align 8
  %7 = load %struct.xt_action_param*, %struct.xt_action_param** %5, align 8
  %8 = getelementptr inbounds %struct.xt_action_param, %struct.xt_action_param* %7, i32 0, i32 0
  %9 = load %struct.ebt_mark_m_info*, %struct.ebt_mark_m_info** %8, align 8
  store %struct.ebt_mark_m_info* %9, %struct.ebt_mark_m_info** %6, align 8
  %10 = load %struct.ebt_mark_m_info*, %struct.ebt_mark_m_info** %6, align 8
  %11 = getelementptr inbounds %struct.ebt_mark_m_info, %struct.ebt_mark_m_info* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @EBT_MARK_OR, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %32

16:                                               ; preds = %2
  %17 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %18 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.ebt_mark_m_info*, %struct.ebt_mark_m_info** %6, align 8
  %21 = getelementptr inbounds %struct.ebt_mark_m_info, %struct.ebt_mark_m_info* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = and i32 %19, %22
  %24 = icmp ne i32 %23, 0
  %25 = xor i1 %24, true
  %26 = xor i1 %25, true
  %27 = zext i1 %26 to i32
  %28 = load %struct.ebt_mark_m_info*, %struct.ebt_mark_m_info** %6, align 8
  %29 = getelementptr inbounds %struct.ebt_mark_m_info, %struct.ebt_mark_m_info* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = xor i32 %27, %30
  store i32 %31, i32* %3, align 4
  br label %49

32:                                               ; preds = %2
  %33 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %34 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.ebt_mark_m_info*, %struct.ebt_mark_m_info** %6, align 8
  %37 = getelementptr inbounds %struct.ebt_mark_m_info, %struct.ebt_mark_m_info* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = and i32 %35, %38
  %40 = load %struct.ebt_mark_m_info*, %struct.ebt_mark_m_info** %6, align 8
  %41 = getelementptr inbounds %struct.ebt_mark_m_info, %struct.ebt_mark_m_info* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 4
  %43 = icmp eq i32 %39, %42
  %44 = zext i1 %43 to i32
  %45 = load %struct.ebt_mark_m_info*, %struct.ebt_mark_m_info** %6, align 8
  %46 = getelementptr inbounds %struct.ebt_mark_m_info, %struct.ebt_mark_m_info* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = xor i32 %44, %47
  store i32 %48, i32* %3, align 4
  br label %49

49:                                               ; preds = %32, %16
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
