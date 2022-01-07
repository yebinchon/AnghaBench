; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_act_api.c___tcf_action_put.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_act_api.c___tcf_action_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tc_action = type { i32, i32, i32, %struct.tcf_idrinfo* }
%struct.tcf_idrinfo = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tc_action*, i32)* @__tcf_action_put to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__tcf_action_put(%struct.tc_action* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tc_action*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.tcf_idrinfo*, align 8
  store %struct.tc_action* %0, %struct.tc_action** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.tc_action*, %struct.tc_action** %4, align 8
  %8 = getelementptr inbounds %struct.tc_action, %struct.tc_action* %7, i32 0, i32 3
  %9 = load %struct.tcf_idrinfo*, %struct.tcf_idrinfo** %8, align 8
  store %struct.tcf_idrinfo* %9, %struct.tcf_idrinfo** %6, align 8
  %10 = load %struct.tc_action*, %struct.tc_action** %4, align 8
  %11 = getelementptr inbounds %struct.tc_action, %struct.tc_action* %10, i32 0, i32 2
  %12 = load %struct.tcf_idrinfo*, %struct.tcf_idrinfo** %6, align 8
  %13 = getelementptr inbounds %struct.tcf_idrinfo, %struct.tcf_idrinfo* %12, i32 0, i32 0
  %14 = call i64 @refcount_dec_and_mutex_lock(i32* %11, i32* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %35

16:                                               ; preds = %2
  %17 = load i32, i32* %5, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %16
  %20 = load %struct.tc_action*, %struct.tc_action** %4, align 8
  %21 = getelementptr inbounds %struct.tc_action, %struct.tc_action* %20, i32 0, i32 0
  %22 = call i32 @atomic_dec(i32* %21)
  br label %23

23:                                               ; preds = %19, %16
  %24 = load %struct.tcf_idrinfo*, %struct.tcf_idrinfo** %6, align 8
  %25 = getelementptr inbounds %struct.tcf_idrinfo, %struct.tcf_idrinfo* %24, i32 0, i32 1
  %26 = load %struct.tc_action*, %struct.tc_action** %4, align 8
  %27 = getelementptr inbounds %struct.tc_action, %struct.tc_action* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @idr_remove(i32* %25, i32 %28)
  %30 = load %struct.tcf_idrinfo*, %struct.tcf_idrinfo** %6, align 8
  %31 = getelementptr inbounds %struct.tcf_idrinfo, %struct.tcf_idrinfo* %30, i32 0, i32 0
  %32 = call i32 @mutex_unlock(i32* %31)
  %33 = load %struct.tc_action*, %struct.tc_action** %4, align 8
  %34 = call i32 @tcf_action_cleanup(%struct.tc_action* %33)
  store i32 1, i32* %3, align 4
  br label %43

35:                                               ; preds = %2
  %36 = load i32, i32* %5, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %35
  %39 = load %struct.tc_action*, %struct.tc_action** %4, align 8
  %40 = getelementptr inbounds %struct.tc_action, %struct.tc_action* %39, i32 0, i32 0
  %41 = call i32 @atomic_dec(i32* %40)
  br label %42

42:                                               ; preds = %38, %35
  store i32 0, i32* %3, align 4
  br label %43

43:                                               ; preds = %42, %23
  %44 = load i32, i32* %3, align 4
  ret i32 %44
}

declare dso_local i64 @refcount_dec_and_mutex_lock(i32*, i32*) #1

declare dso_local i32 @atomic_dec(i32*) #1

declare dso_local i32 @idr_remove(i32*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @tcf_action_cleanup(%struct.tc_action*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
