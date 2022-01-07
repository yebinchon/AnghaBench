; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/ipset/extr_ip_set_list_set.c_list_set_kadt.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/ipset/extr_ip_set_list_set.c_list_set_kadt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip_set = type { i32 }
%struct.sk_buff = type { i32 }
%struct.xt_action_param = type { i32 }
%struct.ip_set_adt_opt = type { i32 }
%struct.ip_set_ext = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ip_set*, %struct.sk_buff*, %struct.xt_action_param*, i32, %struct.ip_set_adt_opt*)* @list_set_kadt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @list_set_kadt(%struct.ip_set* %0, %struct.sk_buff* %1, %struct.xt_action_param* %2, i32 %3, %struct.ip_set_adt_opt* %4) #0 {
  %6 = alloca %struct.ip_set*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca %struct.xt_action_param*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.ip_set_adt_opt*, align 8
  %11 = alloca %struct.ip_set_ext, align 4
  %12 = alloca i32, align 4
  store %struct.ip_set* %0, %struct.ip_set** %6, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %7, align 8
  store %struct.xt_action_param* %2, %struct.xt_action_param** %8, align 8
  store i32 %3, i32* %9, align 4
  store %struct.ip_set_adt_opt* %4, %struct.ip_set_adt_opt** %10, align 8
  %13 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %14 = load %struct.ip_set_adt_opt*, %struct.ip_set_adt_opt** %10, align 8
  %15 = load %struct.ip_set*, %struct.ip_set** %6, align 8
  %16 = call i32 @IP_SET_INIT_KEXT(%struct.sk_buff* %13, %struct.ip_set_adt_opt* %14, %struct.ip_set* %15)
  %17 = getelementptr inbounds %struct.ip_set_ext, %struct.ip_set_ext* %11, i32 0, i32 0
  store i32 %16, i32* %17, align 4
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %12, align 4
  %20 = call i32 (...) @rcu_read_lock()
  %21 = load i32, i32* %9, align 4
  switch i32 %21, label %40 [
    i32 128, label %22
    i32 130, label %28
    i32 129, label %34
  ]

22:                                               ; preds = %5
  %23 = load %struct.ip_set*, %struct.ip_set** %6, align 8
  %24 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %25 = load %struct.xt_action_param*, %struct.xt_action_param** %8, align 8
  %26 = load %struct.ip_set_adt_opt*, %struct.ip_set_adt_opt** %10, align 8
  %27 = call i32 @list_set_ktest(%struct.ip_set* %23, %struct.sk_buff* %24, %struct.xt_action_param* %25, %struct.ip_set_adt_opt* %26, %struct.ip_set_ext* %11)
  store i32 %27, i32* %12, align 4
  br label %41

28:                                               ; preds = %5
  %29 = load %struct.ip_set*, %struct.ip_set** %6, align 8
  %30 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %31 = load %struct.xt_action_param*, %struct.xt_action_param** %8, align 8
  %32 = load %struct.ip_set_adt_opt*, %struct.ip_set_adt_opt** %10, align 8
  %33 = call i32 @list_set_kadd(%struct.ip_set* %29, %struct.sk_buff* %30, %struct.xt_action_param* %31, %struct.ip_set_adt_opt* %32, %struct.ip_set_ext* %11)
  store i32 %33, i32* %12, align 4
  br label %41

34:                                               ; preds = %5
  %35 = load %struct.ip_set*, %struct.ip_set** %6, align 8
  %36 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %37 = load %struct.xt_action_param*, %struct.xt_action_param** %8, align 8
  %38 = load %struct.ip_set_adt_opt*, %struct.ip_set_adt_opt** %10, align 8
  %39 = call i32 @list_set_kdel(%struct.ip_set* %35, %struct.sk_buff* %36, %struct.xt_action_param* %37, %struct.ip_set_adt_opt* %38, %struct.ip_set_ext* %11)
  store i32 %39, i32* %12, align 4
  br label %41

40:                                               ; preds = %5
  br label %41

41:                                               ; preds = %40, %34, %28, %22
  %42 = call i32 (...) @rcu_read_unlock()
  %43 = load i32, i32* %12, align 4
  ret i32 %43
}

declare dso_local i32 @IP_SET_INIT_KEXT(%struct.sk_buff*, %struct.ip_set_adt_opt*, %struct.ip_set*) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local i32 @list_set_ktest(%struct.ip_set*, %struct.sk_buff*, %struct.xt_action_param*, %struct.ip_set_adt_opt*, %struct.ip_set_ext*) #1

declare dso_local i32 @list_set_kadd(%struct.ip_set*, %struct.sk_buff*, %struct.xt_action_param*, %struct.ip_set_adt_opt*, %struct.ip_set_ext*) #1

declare dso_local i32 @list_set_kdel(%struct.ip_set*, %struct.sk_buff*, %struct.xt_action_param*, %struct.ip_set_adt_opt*, %struct.ip_set_ext*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
