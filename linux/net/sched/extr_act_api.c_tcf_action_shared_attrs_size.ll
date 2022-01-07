; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_act_api.c_tcf_action_shared_attrs_size.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_act_api.c_tcf_action_shared_attrs_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tc_action = type { i32 }
%struct.tc_cookie = type { i32 }

@IFNAMSIZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.tc_action*)* @tcf_action_shared_attrs_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @tcf_action_shared_attrs_size(%struct.tc_action* %0) #0 {
  %2 = alloca %struct.tc_action*, align 8
  %3 = alloca %struct.tc_cookie*, align 8
  %4 = alloca i64, align 8
  store %struct.tc_action* %0, %struct.tc_action** %2, align 8
  store i64 0, i64* %4, align 8
  %5 = call i32 (...) @rcu_read_lock()
  %6 = load %struct.tc_action*, %struct.tc_action** %2, align 8
  %7 = getelementptr inbounds %struct.tc_action, %struct.tc_action* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call %struct.tc_cookie* @rcu_dereference(i32 %8)
  store %struct.tc_cookie* %9, %struct.tc_cookie** %3, align 8
  %10 = load %struct.tc_cookie*, %struct.tc_cookie** %3, align 8
  %11 = icmp ne %struct.tc_cookie* %10, null
  br i1 %11, label %12, label %17

12:                                               ; preds = %1
  %13 = load %struct.tc_cookie*, %struct.tc_cookie** %3, align 8
  %14 = getelementptr inbounds %struct.tc_cookie, %struct.tc_cookie* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i64 @nla_total_size(i32 %15)
  store i64 %16, i64* %4, align 8
  br label %17

17:                                               ; preds = %12, %1
  %18 = call i32 (...) @rcu_read_unlock()
  %19 = call i64 @nla_total_size(i32 0)
  %20 = load i32, i32* @IFNAMSIZ, align 4
  %21 = call i64 @nla_total_size(i32 %20)
  %22 = add i64 %19, %21
  %23 = load i64, i64* %4, align 8
  %24 = add i64 %22, %23
  %25 = call i64 @nla_total_size(i32 0)
  %26 = add i64 %24, %25
  %27 = call i64 @nla_total_size_64bit(i32 4)
  %28 = add i64 %26, %27
  %29 = call i64 @nla_total_size_64bit(i32 4)
  %30 = add i64 %28, %29
  %31 = call i64 @nla_total_size(i32 0)
  %32 = add i64 %30, %31
  %33 = call i64 @nla_total_size(i32 4)
  %34 = add i64 %32, %33
  ret i64 %34
}

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.tc_cookie* @rcu_dereference(i32) #1

declare dso_local i64 @nla_total_size(i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i64 @nla_total_size_64bit(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
