; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_audit.c_auditd_reset.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_audit.c_auditd_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.auditd_connection = type { i32 }
%struct.sk_buff = type { i32 }

@auditd_conn_lock = common dso_local global i32 0, align 4
@auditd_conn = common dso_local global i32 0, align 4
@auditd_conn_free = common dso_local global i32 0, align 4
@audit_retry_queue = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.auditd_connection*)* @auditd_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @auditd_reset(%struct.auditd_connection* %0) #0 {
  %2 = alloca %struct.auditd_connection*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.auditd_connection*, align 8
  store %struct.auditd_connection* %0, %struct.auditd_connection** %2, align 8
  %6 = load i64, i64* %3, align 8
  %7 = call i32 @spin_lock_irqsave(i32* @auditd_conn_lock, i64 %6)
  %8 = load i32, i32* @auditd_conn, align 4
  %9 = call i32 @lockdep_is_held(i32* @auditd_conn_lock)
  %10 = call %struct.auditd_connection* @rcu_dereference_protected(i32 %8, i32 %9)
  store %struct.auditd_connection* %10, %struct.auditd_connection** %5, align 8
  %11 = load %struct.auditd_connection*, %struct.auditd_connection** %2, align 8
  %12 = icmp ne %struct.auditd_connection* %11, null
  br i1 %12, label %13, label %20

13:                                               ; preds = %1
  %14 = load %struct.auditd_connection*, %struct.auditd_connection** %2, align 8
  %15 = load %struct.auditd_connection*, %struct.auditd_connection** %5, align 8
  %16 = icmp ne %struct.auditd_connection* %14, %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %13
  %18 = load i64, i64* %3, align 8
  %19 = call i32 @spin_unlock_irqrestore(i32* @auditd_conn_lock, i64 %18)
  br label %39

20:                                               ; preds = %13, %1
  %21 = load i32, i32* @auditd_conn, align 4
  %22 = call i32 @rcu_assign_pointer(i32 %21, i32* null)
  %23 = load i64, i64* %3, align 8
  %24 = call i32 @spin_unlock_irqrestore(i32* @auditd_conn_lock, i64 %23)
  %25 = load %struct.auditd_connection*, %struct.auditd_connection** %5, align 8
  %26 = icmp ne %struct.auditd_connection* %25, null
  br i1 %26, label %27, label %32

27:                                               ; preds = %20
  %28 = load %struct.auditd_connection*, %struct.auditd_connection** %5, align 8
  %29 = getelementptr inbounds %struct.auditd_connection, %struct.auditd_connection* %28, i32 0, i32 0
  %30 = load i32, i32* @auditd_conn_free, align 4
  %31 = call i32 @call_rcu(i32* %29, i32 %30)
  br label %32

32:                                               ; preds = %27, %20
  br label %33

33:                                               ; preds = %36, %32
  %34 = call %struct.sk_buff* @skb_dequeue(i32* @audit_retry_queue)
  store %struct.sk_buff* %34, %struct.sk_buff** %4, align 8
  %35 = icmp ne %struct.sk_buff* %34, null
  br i1 %35, label %36, label %39

36:                                               ; preds = %33
  %37 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %38 = call i32 @kauditd_hold_skb(%struct.sk_buff* %37)
  br label %33

39:                                               ; preds = %17, %33
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local %struct.auditd_connection* @rcu_dereference_protected(i32, i32) #1

declare dso_local i32 @lockdep_is_held(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @rcu_assign_pointer(i32, i32*) #1

declare dso_local i32 @call_rcu(i32*, i32) #1

declare dso_local %struct.sk_buff* @skb_dequeue(i32*) #1

declare dso_local i32 @kauditd_hold_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
