; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_xt_CONNSECMARK.c_connsecmark_tg.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_xt_CONNSECMARK.c_connsecmark_tg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.xt_action_param = type { %struct.xt_connsecmark_target_info* }
%struct.xt_connsecmark_target_info = type { i32 }

@XT_CONTINUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.xt_action_param*)* @connsecmark_tg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @connsecmark_tg(%struct.sk_buff* %0, %struct.xt_action_param* %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.xt_action_param*, align 8
  %5 = alloca %struct.xt_connsecmark_target_info*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  store %struct.xt_action_param* %1, %struct.xt_action_param** %4, align 8
  %6 = load %struct.xt_action_param*, %struct.xt_action_param** %4, align 8
  %7 = getelementptr inbounds %struct.xt_action_param, %struct.xt_action_param* %6, i32 0, i32 0
  %8 = load %struct.xt_connsecmark_target_info*, %struct.xt_connsecmark_target_info** %7, align 8
  store %struct.xt_connsecmark_target_info* %8, %struct.xt_connsecmark_target_info** %5, align 8
  %9 = load %struct.xt_connsecmark_target_info*, %struct.xt_connsecmark_target_info** %5, align 8
  %10 = getelementptr inbounds %struct.xt_connsecmark_target_info, %struct.xt_connsecmark_target_info* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  switch i32 %11, label %18 [
    i32 128, label %12
    i32 129, label %15
  ]

12:                                               ; preds = %2
  %13 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %14 = call i32 @secmark_save(%struct.sk_buff* %13)
  br label %20

15:                                               ; preds = %2
  %16 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %17 = call i32 @secmark_restore(%struct.sk_buff* %16)
  br label %20

18:                                               ; preds = %2
  %19 = call i32 (...) @BUG()
  br label %20

20:                                               ; preds = %18, %15, %12
  %21 = load i32, i32* @XT_CONTINUE, align 4
  ret i32 %21
}

declare dso_local i32 @secmark_save(%struct.sk_buff*) #1

declare dso_local i32 @secmark_restore(%struct.sk_buff*) #1

declare dso_local i32 @BUG(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
