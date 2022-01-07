; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_audit.c_auditd_set.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_audit.c_auditd_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pid = type { i32 }
%struct.net = type { i32 }
%struct.auditd_connection = type { i32, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@auditd_conn_lock = common dso_local global i32 0, align 4
@auditd_conn = common dso_local global i32 0, align 4
@auditd_conn_free = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pid*, i32, %struct.net*)* @auditd_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @auditd_set(%struct.pid* %0, i32 %1, %struct.net* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pid*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.net*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.auditd_connection*, align 8
  %10 = alloca %struct.auditd_connection*, align 8
  store %struct.pid* %0, %struct.pid** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.net* %2, %struct.net** %7, align 8
  %11 = load %struct.pid*, %struct.pid** %5, align 8
  %12 = icmp ne %struct.pid* %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %3
  %14 = load %struct.net*, %struct.net** %7, align 8
  %15 = icmp ne %struct.net* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %13, %3
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %4, align 4
  br label %57

19:                                               ; preds = %13
  %20 = load i32, i32* @GFP_KERNEL, align 4
  %21 = call %struct.auditd_connection* @kzalloc(i32 16, i32 %20)
  store %struct.auditd_connection* %21, %struct.auditd_connection** %10, align 8
  %22 = load %struct.auditd_connection*, %struct.auditd_connection** %10, align 8
  %23 = icmp ne %struct.auditd_connection* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %19
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %4, align 4
  br label %57

27:                                               ; preds = %19
  %28 = load %struct.pid*, %struct.pid** %5, align 8
  %29 = call i32 @get_pid(%struct.pid* %28)
  %30 = load %struct.auditd_connection*, %struct.auditd_connection** %10, align 8
  %31 = getelementptr inbounds %struct.auditd_connection, %struct.auditd_connection* %30, i32 0, i32 3
  store i32 %29, i32* %31, align 4
  %32 = load i32, i32* %6, align 4
  %33 = load %struct.auditd_connection*, %struct.auditd_connection** %10, align 8
  %34 = getelementptr inbounds %struct.auditd_connection, %struct.auditd_connection* %33, i32 0, i32 2
  store i32 %32, i32* %34, align 4
  %35 = load %struct.net*, %struct.net** %7, align 8
  %36 = call i32 @get_net(%struct.net* %35)
  %37 = load %struct.auditd_connection*, %struct.auditd_connection** %10, align 8
  %38 = getelementptr inbounds %struct.auditd_connection, %struct.auditd_connection* %37, i32 0, i32 1
  store i32 %36, i32* %38, align 4
  %39 = load i64, i64* %8, align 8
  %40 = call i32 @spin_lock_irqsave(i32* @auditd_conn_lock, i64 %39)
  %41 = load i32, i32* @auditd_conn, align 4
  %42 = call i32 @lockdep_is_held(i32* @auditd_conn_lock)
  %43 = call %struct.auditd_connection* @rcu_dereference_protected(i32 %41, i32 %42)
  store %struct.auditd_connection* %43, %struct.auditd_connection** %9, align 8
  %44 = load i32, i32* @auditd_conn, align 4
  %45 = load %struct.auditd_connection*, %struct.auditd_connection** %10, align 8
  %46 = call i32 @rcu_assign_pointer(i32 %44, %struct.auditd_connection* %45)
  %47 = load i64, i64* %8, align 8
  %48 = call i32 @spin_unlock_irqrestore(i32* @auditd_conn_lock, i64 %47)
  %49 = load %struct.auditd_connection*, %struct.auditd_connection** %9, align 8
  %50 = icmp ne %struct.auditd_connection* %49, null
  br i1 %50, label %51, label %56

51:                                               ; preds = %27
  %52 = load %struct.auditd_connection*, %struct.auditd_connection** %9, align 8
  %53 = getelementptr inbounds %struct.auditd_connection, %struct.auditd_connection* %52, i32 0, i32 0
  %54 = load i32, i32* @auditd_conn_free, align 4
  %55 = call i32 @call_rcu(i32* %53, i32 %54)
  br label %56

56:                                               ; preds = %51, %27
  store i32 0, i32* %4, align 4
  br label %57

57:                                               ; preds = %56, %24, %16
  %58 = load i32, i32* %4, align 4
  ret i32 %58
}

declare dso_local %struct.auditd_connection* @kzalloc(i32, i32) #1

declare dso_local i32 @get_pid(%struct.pid*) #1

declare dso_local i32 @get_net(%struct.net*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local %struct.auditd_connection* @rcu_dereference_protected(i32, i32) #1

declare dso_local i32 @lockdep_is_held(i32*) #1

declare dso_local i32 @rcu_assign_pointer(i32, %struct.auditd_connection*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @call_rcu(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
