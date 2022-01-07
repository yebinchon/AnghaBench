; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_act_api.c_tcf_action_fill_size.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_act_api.c_tcf_action_fill_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tc_action = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { {}* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.tc_action*)* @tcf_action_fill_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @tcf_action_fill_size(%struct.tc_action* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.tc_action*, align 8
  %4 = alloca i64, align 8
  store %struct.tc_action* %0, %struct.tc_action** %3, align 8
  %5 = load %struct.tc_action*, %struct.tc_action** %3, align 8
  %6 = call i64 @tcf_action_shared_attrs_size(%struct.tc_action* %5)
  store i64 %6, i64* %4, align 8
  %7 = load %struct.tc_action*, %struct.tc_action** %3, align 8
  %8 = getelementptr inbounds %struct.tc_action, %struct.tc_action* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = bitcast {}** %10 to i64 (%struct.tc_action*)**
  %12 = load i64 (%struct.tc_action*)*, i64 (%struct.tc_action*)** %11, align 8
  %13 = icmp ne i64 (%struct.tc_action*)* %12, null
  br i1 %13, label %14, label %25

14:                                               ; preds = %1
  %15 = load %struct.tc_action*, %struct.tc_action** %3, align 8
  %16 = getelementptr inbounds %struct.tc_action, %struct.tc_action* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = bitcast {}** %18 to i64 (%struct.tc_action*)**
  %20 = load i64 (%struct.tc_action*)*, i64 (%struct.tc_action*)** %19, align 8
  %21 = load %struct.tc_action*, %struct.tc_action** %3, align 8
  %22 = call i64 %20(%struct.tc_action* %21)
  %23 = load i64, i64* %4, align 8
  %24 = add i64 %22, %23
  store i64 %24, i64* %2, align 8
  br label %27

25:                                               ; preds = %1
  %26 = load i64, i64* %4, align 8
  store i64 %26, i64* %2, align 8
  br label %27

27:                                               ; preds = %25, %14
  %28 = load i64, i64* %2, align 8
  ret i64 %28
}

declare dso_local i64 @tcf_action_shared_attrs_size(%struct.tc_action*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
