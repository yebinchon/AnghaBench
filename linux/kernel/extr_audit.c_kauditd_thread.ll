; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_audit.c_kauditd_thread.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_audit.c_kauditd_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.sock = type { i32 }
%struct.auditd_connection = type { i32, i32 }

@auditd_conn = common dso_local global i32 0, align 4
@audit_hold_queue = common dso_local global i32 0, align 4
@kauditd_rehold_skb = common dso_local global i32 0, align 4
@audit_retry_queue = common dso_local global i32 0, align 4
@kauditd_hold_skb = common dso_local global i32 0, align 4
@audit_queue = common dso_local global i32 0, align 4
@kauditd_send_multicast_skb = common dso_local global i32* null, align 8
@kauditd_retry_skb = common dso_local global i32 0, align 4
@audit_backlog_wait = common dso_local global i32 0, align 4
@kauditd_wait = common dso_local global i32 0, align 4
@UNICAST_RETRIES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @kauditd_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kauditd_thread(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.net*, align 8
  %6 = alloca %struct.sock*, align 8
  %7 = alloca %struct.auditd_connection*, align 8
  store i8* %0, i8** %2, align 8
  store i32 0, i32* %4, align 4
  store %struct.net* null, %struct.net** %5, align 8
  store %struct.sock* null, %struct.sock** %6, align 8
  %8 = call i32 (...) @set_freezable()
  br label %9

9:                                                ; preds = %85, %1
  %10 = call i32 (...) @kthread_should_stop()
  %11 = icmp ne i32 %10, 0
  %12 = xor i1 %11, true
  br i1 %12, label %13, label %93

13:                                               ; preds = %9
  %14 = call i32 (...) @rcu_read_lock()
  %15 = load i32, i32* @auditd_conn, align 4
  %16 = call %struct.auditd_connection* @rcu_dereference(i32 %15)
  store %struct.auditd_connection* %16, %struct.auditd_connection** %7, align 8
  %17 = load %struct.auditd_connection*, %struct.auditd_connection** %7, align 8
  %18 = icmp ne %struct.auditd_connection* %17, null
  br i1 %18, label %21, label %19

19:                                               ; preds = %13
  %20 = call i32 (...) @rcu_read_unlock()
  br label %58

21:                                               ; preds = %13
  %22 = load %struct.auditd_connection*, %struct.auditd_connection** %7, align 8
  %23 = getelementptr inbounds %struct.auditd_connection, %struct.auditd_connection* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call %struct.net* @get_net(i32 %24)
  store %struct.net* %25, %struct.net** %5, align 8
  %26 = load %struct.net*, %struct.net** %5, align 8
  %27 = call %struct.sock* @audit_get_sk(%struct.net* %26)
  store %struct.sock* %27, %struct.sock** %6, align 8
  %28 = load %struct.auditd_connection*, %struct.auditd_connection** %7, align 8
  %29 = getelementptr inbounds %struct.auditd_connection, %struct.auditd_connection* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %4, align 4
  %31 = call i32 (...) @rcu_read_unlock()
  %32 = load %struct.sock*, %struct.sock** %6, align 8
  %33 = load i32, i32* %4, align 4
  %34 = load i32, i32* @kauditd_rehold_skb, align 4
  %35 = call i32 @kauditd_send_queue(%struct.sock* %32, i32 %33, i32* @audit_hold_queue, i32 5, i32* null, i32 %34)
  store i32 %35, i32* %3, align 4
  %36 = load %struct.auditd_connection*, %struct.auditd_connection** %7, align 8
  %37 = icmp ne %struct.auditd_connection* %36, null
  br i1 %37, label %38, label %44

38:                                               ; preds = %21
  %39 = load i32, i32* %3, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %38
  store %struct.sock* null, %struct.sock** %6, align 8
  %42 = load %struct.auditd_connection*, %struct.auditd_connection** %7, align 8
  %43 = call i32 @auditd_reset(%struct.auditd_connection* %42)
  br label %58

44:                                               ; preds = %38, %21
  %45 = load %struct.sock*, %struct.sock** %6, align 8
  %46 = load i32, i32* %4, align 4
  %47 = load i32, i32* @kauditd_hold_skb, align 4
  %48 = call i32 @kauditd_send_queue(%struct.sock* %45, i32 %46, i32* @audit_retry_queue, i32 5, i32* null, i32 %47)
  store i32 %48, i32* %3, align 4
  %49 = load %struct.auditd_connection*, %struct.auditd_connection** %7, align 8
  %50 = icmp ne %struct.auditd_connection* %49, null
  br i1 %50, label %51, label %57

51:                                               ; preds = %44
  %52 = load i32, i32* %3, align 4
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %51
  store %struct.sock* null, %struct.sock** %6, align 8
  %55 = load %struct.auditd_connection*, %struct.auditd_connection** %7, align 8
  %56 = call i32 @auditd_reset(%struct.auditd_connection* %55)
  br label %58

57:                                               ; preds = %51, %44
  br label %58

58:                                               ; preds = %57, %54, %41, %19
  %59 = load %struct.sock*, %struct.sock** %6, align 8
  %60 = load i32, i32* %4, align 4
  %61 = load i32*, i32** @kauditd_send_multicast_skb, align 8
  %62 = load %struct.sock*, %struct.sock** %6, align 8
  %63 = icmp ne %struct.sock* %62, null
  br i1 %63, label %64, label %66

64:                                               ; preds = %58
  %65 = load i32, i32* @kauditd_retry_skb, align 4
  br label %68

66:                                               ; preds = %58
  %67 = load i32, i32* @kauditd_hold_skb, align 4
  br label %68

68:                                               ; preds = %66, %64
  %69 = phi i32 [ %65, %64 ], [ %67, %66 ]
  %70 = call i32 @kauditd_send_queue(%struct.sock* %59, i32 %60, i32* @audit_queue, i32 1, i32* %61, i32 %69)
  store i32 %70, i32* %3, align 4
  %71 = load %struct.auditd_connection*, %struct.auditd_connection** %7, align 8
  %72 = icmp ne %struct.auditd_connection* %71, null
  br i1 %72, label %73, label %79

73:                                               ; preds = %68
  %74 = load i32, i32* %3, align 4
  %75 = icmp slt i32 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %73
  %77 = load %struct.auditd_connection*, %struct.auditd_connection** %7, align 8
  %78 = call i32 @auditd_reset(%struct.auditd_connection* %77)
  br label %79

79:                                               ; preds = %76, %73, %68
  store %struct.sock* null, %struct.sock** %6, align 8
  %80 = load %struct.net*, %struct.net** %5, align 8
  %81 = icmp ne %struct.net* %80, null
  br i1 %81, label %82, label %85

82:                                               ; preds = %79
  %83 = load %struct.net*, %struct.net** %5, align 8
  %84 = call i32 @put_net(%struct.net* %83)
  store %struct.net* null, %struct.net** %5, align 8
  br label %85

85:                                               ; preds = %82, %79
  %86 = call i32 @wake_up(i32* @audit_backlog_wait)
  %87 = load i32, i32* @kauditd_wait, align 4
  %88 = call i64 @skb_queue_len(i32* @audit_queue)
  %89 = icmp ne i64 %88, 0
  %90 = zext i1 %89 to i64
  %91 = select i1 %89, i32 1, i32 0
  %92 = call i32 @wait_event_freezable(i32 %87, i32 %91)
  br label %9

93:                                               ; preds = %9
  ret i32 0
}

declare dso_local i32 @set_freezable(...) #1

declare dso_local i32 @kthread_should_stop(...) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.auditd_connection* @rcu_dereference(i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local %struct.net* @get_net(i32) #1

declare dso_local %struct.sock* @audit_get_sk(%struct.net*) #1

declare dso_local i32 @kauditd_send_queue(%struct.sock*, i32, i32*, i32, i32*, i32) #1

declare dso_local i32 @auditd_reset(%struct.auditd_connection*) #1

declare dso_local i32 @put_net(%struct.net*) #1

declare dso_local i32 @wake_up(i32*) #1

declare dso_local i32 @wait_event_freezable(i32, i32) #1

declare dso_local i64 @skb_queue_len(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
