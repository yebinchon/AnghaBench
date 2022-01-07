; ModuleID = '/home/carl/AnghaBench/linux/net/bridge/netfilter/extr_ebtables.c_ebt_do_match.c'
source_filename = "/home/carl/AnghaBench/linux/net/bridge/netfilter/extr_ebtables.c_ebt_do_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ebt_entry_match = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.sk_buff*, %struct.xt_action_param*)* }
%struct.sk_buff = type { i32 }
%struct.xt_action_param = type { i32, %struct.TYPE_3__* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ebt_entry_match*, %struct.sk_buff*, %struct.xt_action_param*)* @ebt_do_match to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ebt_do_match(%struct.ebt_entry_match* %0, %struct.sk_buff* %1, %struct.xt_action_param* %2) #0 {
  %4 = alloca %struct.ebt_entry_match*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.xt_action_param*, align 8
  store %struct.ebt_entry_match* %0, %struct.ebt_entry_match** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  store %struct.xt_action_param* %2, %struct.xt_action_param** %6, align 8
  %7 = load %struct.ebt_entry_match*, %struct.ebt_entry_match** %4, align 8
  %8 = getelementptr inbounds %struct.ebt_entry_match, %struct.ebt_entry_match* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %11 = load %struct.xt_action_param*, %struct.xt_action_param** %6, align 8
  %12 = getelementptr inbounds %struct.xt_action_param, %struct.xt_action_param* %11, i32 0, i32 1
  store %struct.TYPE_3__* %10, %struct.TYPE_3__** %12, align 8
  %13 = load %struct.ebt_entry_match*, %struct.ebt_entry_match** %4, align 8
  %14 = getelementptr inbounds %struct.ebt_entry_match, %struct.ebt_entry_match* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.xt_action_param*, %struct.xt_action_param** %6, align 8
  %17 = getelementptr inbounds %struct.xt_action_param, %struct.xt_action_param* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 8
  %18 = load %struct.ebt_entry_match*, %struct.ebt_entry_match** %4, align 8
  %19 = getelementptr inbounds %struct.ebt_entry_match, %struct.ebt_entry_match* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32 (%struct.sk_buff*, %struct.xt_action_param*)*, i32 (%struct.sk_buff*, %struct.xt_action_param*)** %22, align 8
  %24 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %25 = load %struct.xt_action_param*, %struct.xt_action_param** %6, align 8
  %26 = call i32 %23(%struct.sk_buff* %24, %struct.xt_action_param* %25)
  %27 = icmp ne i32 %26, 0
  %28 = xor i1 %27, true
  %29 = zext i1 %28 to i32
  ret i32 %29
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
