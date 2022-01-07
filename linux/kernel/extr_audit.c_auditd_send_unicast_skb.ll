; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_audit.c_auditd_send_unicast_skb.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_audit.c_auditd_send_unicast_skb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.net = type { i32 }
%struct.sock = type { i32 }
%struct.auditd_connection = type { i32, i32 }

@auditd_conn = common dso_local global i32 0, align 4
@ECONNREFUSED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*)* @auditd_send_unicast_skb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @auditd_send_unicast_skb(%struct.sk_buff* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.net*, align 8
  %7 = alloca %struct.sock*, align 8
  %8 = alloca %struct.auditd_connection*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  %9 = call i32 (...) @rcu_read_lock()
  %10 = load i32, i32* @auditd_conn, align 4
  %11 = call %struct.auditd_connection* @rcu_dereference(i32 %10)
  store %struct.auditd_connection* %11, %struct.auditd_connection** %8, align 8
  %12 = load %struct.auditd_connection*, %struct.auditd_connection** %8, align 8
  %13 = icmp ne %struct.auditd_connection* %12, null
  br i1 %13, label %20, label %14

14:                                               ; preds = %1
  %15 = call i32 (...) @rcu_read_unlock()
  %16 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %17 = call i32 @kfree_skb(%struct.sk_buff* %16)
  %18 = load i32, i32* @ECONNREFUSED, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %4, align 4
  br label %42

20:                                               ; preds = %1
  %21 = load %struct.auditd_connection*, %struct.auditd_connection** %8, align 8
  %22 = getelementptr inbounds %struct.auditd_connection, %struct.auditd_connection* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call %struct.net* @get_net(i32 %23)
  store %struct.net* %24, %struct.net** %6, align 8
  %25 = load %struct.net*, %struct.net** %6, align 8
  %26 = call %struct.sock* @audit_get_sk(%struct.net* %25)
  store %struct.sock* %26, %struct.sock** %7, align 8
  %27 = load %struct.auditd_connection*, %struct.auditd_connection** %8, align 8
  %28 = getelementptr inbounds %struct.auditd_connection, %struct.auditd_connection* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %5, align 4
  %30 = call i32 (...) @rcu_read_unlock()
  %31 = load %struct.sock*, %struct.sock** %7, align 8
  %32 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %33 = load i32, i32* %5, align 4
  %34 = call i32 @netlink_unicast(%struct.sock* %31, %struct.sk_buff* %32, i32 %33, i32 0)
  store i32 %34, i32* %4, align 4
  %35 = load %struct.net*, %struct.net** %6, align 8
  %36 = call i32 @put_net(%struct.net* %35)
  %37 = load i32, i32* %4, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %20
  br label %42

40:                                               ; preds = %20
  %41 = load i32, i32* %4, align 4
  store i32 %41, i32* %2, align 4
  br label %55

42:                                               ; preds = %39, %14
  %43 = load %struct.auditd_connection*, %struct.auditd_connection** %8, align 8
  %44 = icmp ne %struct.auditd_connection* %43, null
  br i1 %44, label %45, label %53

45:                                               ; preds = %42
  %46 = load i32, i32* %4, align 4
  %47 = load i32, i32* @ECONNREFUSED, align 4
  %48 = sub nsw i32 0, %47
  %49 = icmp eq i32 %46, %48
  br i1 %49, label %50, label %53

50:                                               ; preds = %45
  %51 = load %struct.auditd_connection*, %struct.auditd_connection** %8, align 8
  %52 = call i32 @auditd_reset(%struct.auditd_connection* %51)
  br label %53

53:                                               ; preds = %50, %45, %42
  %54 = load i32, i32* %4, align 4
  store i32 %54, i32* %2, align 4
  br label %55

55:                                               ; preds = %53, %40
  %56 = load i32, i32* %2, align 4
  ret i32 %56
}

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.auditd_connection* @rcu_dereference(i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local %struct.net* @get_net(i32) #1

declare dso_local %struct.sock* @audit_get_sk(%struct.net*) #1

declare dso_local i32 @netlink_unicast(%struct.sock*, %struct.sk_buff*, i32, i32) #1

declare dso_local i32 @put_net(%struct.net*) #1

declare dso_local i32 @auditd_reset(%struct.auditd_connection*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
