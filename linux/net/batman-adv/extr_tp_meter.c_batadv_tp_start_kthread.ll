; ModuleID = '/home/carl/AnghaBench/linux/net/batman-adv/extr_tp_meter.c_batadv_tp_start_kthread.c'
source_filename = "/home/carl/AnghaBench/linux/net/batman-adv/extr_tp_meter.c_batadv_tp_start_kthread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.batadv_tp_vars = type { i32, i32, i32, i32, %struct.batadv_priv* }
%struct.batadv_priv = type { i32 }
%struct.task_struct = type { i32 }

@batadv_tp_send = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"kbatadv_tp_meter\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"batadv: cannot create tp meter kthread\0A\00", align 1
@BATADV_TP_REASON_MEMORY_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.batadv_tp_vars*)* @batadv_tp_start_kthread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @batadv_tp_start_kthread(%struct.batadv_tp_vars* %0) #0 {
  %2 = alloca %struct.batadv_tp_vars*, align 8
  %3 = alloca %struct.task_struct*, align 8
  %4 = alloca %struct.batadv_priv*, align 8
  %5 = alloca i32, align 4
  store %struct.batadv_tp_vars* %0, %struct.batadv_tp_vars** %2, align 8
  %6 = load %struct.batadv_tp_vars*, %struct.batadv_tp_vars** %2, align 8
  %7 = getelementptr inbounds %struct.batadv_tp_vars, %struct.batadv_tp_vars* %6, i32 0, i32 4
  %8 = load %struct.batadv_priv*, %struct.batadv_priv** %7, align 8
  store %struct.batadv_priv* %8, %struct.batadv_priv** %4, align 8
  %9 = load %struct.batadv_tp_vars*, %struct.batadv_tp_vars** %2, align 8
  %10 = getelementptr inbounds %struct.batadv_tp_vars, %struct.batadv_tp_vars* %9, i32 0, i32 3
  %11 = call i32 @kref_get(i32* %10)
  %12 = load i32, i32* @batadv_tp_send, align 4
  %13 = load %struct.batadv_tp_vars*, %struct.batadv_tp_vars** %2, align 8
  %14 = call %struct.task_struct* @kthread_create(i32 %12, %struct.batadv_tp_vars* %13, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  store %struct.task_struct* %14, %struct.task_struct** %3, align 8
  %15 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %16 = call i64 @IS_ERR(%struct.task_struct* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %39

18:                                               ; preds = %1
  %19 = load %struct.batadv_tp_vars*, %struct.batadv_tp_vars** %2, align 8
  %20 = getelementptr inbounds %struct.batadv_tp_vars, %struct.batadv_tp_vars* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.batadv_tp_vars*, %struct.batadv_tp_vars** %2, align 8
  %23 = getelementptr inbounds %struct.batadv_tp_vars, %struct.batadv_tp_vars* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @batadv_tp_session_cookie(i32 %21, i32 %24)
  store i32 %25, i32* %5, align 4
  %26 = call i32 @pr_err(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  %27 = load i32, i32* @BATADV_TP_REASON_MEMORY_ERROR, align 4
  %28 = load %struct.batadv_tp_vars*, %struct.batadv_tp_vars** %2, align 8
  %29 = getelementptr inbounds %struct.batadv_tp_vars, %struct.batadv_tp_vars* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.batadv_priv*, %struct.batadv_priv** %4, align 8
  %32 = load i32, i32* %5, align 4
  %33 = call i32 @batadv_tp_batctl_error_notify(i32 %27, i32 %30, %struct.batadv_priv* %31, i32 %32)
  %34 = load %struct.batadv_tp_vars*, %struct.batadv_tp_vars** %2, align 8
  %35 = call i32 @batadv_tp_vars_put(%struct.batadv_tp_vars* %34)
  %36 = load %struct.batadv_priv*, %struct.batadv_priv** %4, align 8
  %37 = load %struct.batadv_tp_vars*, %struct.batadv_tp_vars** %2, align 8
  %38 = call i32 @batadv_tp_sender_cleanup(%struct.batadv_priv* %36, %struct.batadv_tp_vars* %37)
  br label %42

39:                                               ; preds = %1
  %40 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %41 = call i32 @wake_up_process(%struct.task_struct* %40)
  br label %42

42:                                               ; preds = %39, %18
  ret void
}

declare dso_local i32 @kref_get(i32*) #1

declare dso_local %struct.task_struct* @kthread_create(i32, %struct.batadv_tp_vars*, i8*) #1

declare dso_local i64 @IS_ERR(%struct.task_struct*) #1

declare dso_local i32 @batadv_tp_session_cookie(i32, i32) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @batadv_tp_batctl_error_notify(i32, i32, %struct.batadv_priv*, i32) #1

declare dso_local i32 @batadv_tp_vars_put(%struct.batadv_tp_vars*) #1

declare dso_local i32 @batadv_tp_sender_cleanup(%struct.batadv_priv*, %struct.batadv_tp_vars*) #1

declare dso_local i32 @wake_up_process(%struct.task_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
