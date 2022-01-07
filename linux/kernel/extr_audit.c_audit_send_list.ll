; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_audit.c_audit_send_list.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_audit.c_audit_send_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.audit_netlink_list = type { i32, i32, i32 }
%struct.sk_buff = type { i32 }
%struct.sock = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @audit_send_list(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.audit_netlink_list*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.sock*, align 8
  store i8* %0, i8** %2, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = bitcast i8* %6 to %struct.audit_netlink_list*
  store %struct.audit_netlink_list* %7, %struct.audit_netlink_list** %3, align 8
  %8 = load %struct.audit_netlink_list*, %struct.audit_netlink_list** %3, align 8
  %9 = getelementptr inbounds %struct.audit_netlink_list, %struct.audit_netlink_list* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.sock* @audit_get_sk(i32 %10)
  store %struct.sock* %11, %struct.sock** %5, align 8
  %12 = call i32 (...) @audit_ctl_lock()
  %13 = call i32 (...) @audit_ctl_unlock()
  br label %14

14:                                               ; preds = %19, %1
  %15 = load %struct.audit_netlink_list*, %struct.audit_netlink_list** %3, align 8
  %16 = getelementptr inbounds %struct.audit_netlink_list, %struct.audit_netlink_list* %15, i32 0, i32 2
  %17 = call %struct.sk_buff* @__skb_dequeue(i32* %16)
  store %struct.sk_buff* %17, %struct.sk_buff** %4, align 8
  %18 = icmp ne %struct.sk_buff* %17, null
  br i1 %18, label %19, label %26

19:                                               ; preds = %14
  %20 = load %struct.sock*, %struct.sock** %5, align 8
  %21 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %22 = load %struct.audit_netlink_list*, %struct.audit_netlink_list** %3, align 8
  %23 = getelementptr inbounds %struct.audit_netlink_list, %struct.audit_netlink_list* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @netlink_unicast(%struct.sock* %20, %struct.sk_buff* %21, i32 %24, i32 0)
  br label %14

26:                                               ; preds = %14
  %27 = load %struct.audit_netlink_list*, %struct.audit_netlink_list** %3, align 8
  %28 = getelementptr inbounds %struct.audit_netlink_list, %struct.audit_netlink_list* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @put_net(i32 %29)
  %31 = load %struct.audit_netlink_list*, %struct.audit_netlink_list** %3, align 8
  %32 = call i32 @kfree(%struct.audit_netlink_list* %31)
  ret i32 0
}

declare dso_local %struct.sock* @audit_get_sk(i32) #1

declare dso_local i32 @audit_ctl_lock(...) #1

declare dso_local i32 @audit_ctl_unlock(...) #1

declare dso_local %struct.sk_buff* @__skb_dequeue(i32*) #1

declare dso_local i32 @netlink_unicast(%struct.sock*, %struct.sk_buff*, i32, i32) #1

declare dso_local i32 @put_net(i32) #1

declare dso_local i32 @kfree(%struct.audit_netlink_list*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
