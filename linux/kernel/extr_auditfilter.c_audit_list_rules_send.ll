; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_auditfilter.c_audit_list_rules_send.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_auditfilter.c_audit_list_rules_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.net = type { i32 }
%struct.task_struct = type { i32 }
%struct.audit_netlink_list = type { i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@audit_filter_mutex = common dso_local global i32 0, align 4
@audit_send_list = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"audit_send_list\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @audit_list_rules_send(%struct.sk_buff* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_2__, align 4
  %8 = alloca %struct.net*, align 8
  %9 = alloca %struct.TYPE_2__, align 4
  %10 = alloca %struct.task_struct*, align 8
  %11 = alloca %struct.audit_netlink_list*, align 8
  %12 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store i32 %1, i32* %5, align 4
  %13 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %14 = call i64 @NETLINK_CB(%struct.sk_buff* %13)
  %15 = bitcast %struct.TYPE_2__* %7 to i64*
  store i64 %14, i64* %15, align 4
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %6, align 4
  %18 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %19 = call i64 @NETLINK_CB(%struct.sk_buff* %18)
  %20 = bitcast %struct.TYPE_2__* %9 to i64*
  store i64 %19, i64* %20, align 4
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call %struct.net* @sock_net(i32 %22)
  store %struct.net* %23, %struct.net** %8, align 8
  store i32 0, i32* %12, align 4
  %24 = load i32, i32* @GFP_KERNEL, align 4
  %25 = call %struct.audit_netlink_list* @kmalloc(i32 12, i32 %24)
  store %struct.audit_netlink_list* %25, %struct.audit_netlink_list** %11, align 8
  %26 = load %struct.audit_netlink_list*, %struct.audit_netlink_list** %11, align 8
  %27 = icmp ne %struct.audit_netlink_list* %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %2
  %29 = load i32, i32* @ENOMEM, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %3, align 4
  br label %64

31:                                               ; preds = %2
  %32 = load %struct.net*, %struct.net** %8, align 8
  %33 = call i32 @get_net(%struct.net* %32)
  %34 = load %struct.audit_netlink_list*, %struct.audit_netlink_list** %11, align 8
  %35 = getelementptr inbounds %struct.audit_netlink_list, %struct.audit_netlink_list* %34, i32 0, i32 2
  store i32 %33, i32* %35, align 4
  %36 = load i32, i32* %6, align 4
  %37 = load %struct.audit_netlink_list*, %struct.audit_netlink_list** %11, align 8
  %38 = getelementptr inbounds %struct.audit_netlink_list, %struct.audit_netlink_list* %37, i32 0, i32 1
  store i32 %36, i32* %38, align 4
  %39 = load %struct.audit_netlink_list*, %struct.audit_netlink_list** %11, align 8
  %40 = getelementptr inbounds %struct.audit_netlink_list, %struct.audit_netlink_list* %39, i32 0, i32 0
  %41 = call i32 @skb_queue_head_init(i32* %40)
  %42 = call i32 @mutex_lock(i32* @audit_filter_mutex)
  %43 = load i32, i32* %5, align 4
  %44 = load %struct.audit_netlink_list*, %struct.audit_netlink_list** %11, align 8
  %45 = getelementptr inbounds %struct.audit_netlink_list, %struct.audit_netlink_list* %44, i32 0, i32 0
  %46 = call i32 @audit_list_rules(i32 %43, i32* %45)
  %47 = call i32 @mutex_unlock(i32* @audit_filter_mutex)
  %48 = load i32, i32* @audit_send_list, align 4
  %49 = load %struct.audit_netlink_list*, %struct.audit_netlink_list** %11, align 8
  %50 = call %struct.task_struct* @kthread_run(i32 %48, %struct.audit_netlink_list* %49, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  store %struct.task_struct* %50, %struct.task_struct** %10, align 8
  %51 = load %struct.task_struct*, %struct.task_struct** %10, align 8
  %52 = call i64 @IS_ERR(%struct.task_struct* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %62

54:                                               ; preds = %31
  %55 = load %struct.audit_netlink_list*, %struct.audit_netlink_list** %11, align 8
  %56 = getelementptr inbounds %struct.audit_netlink_list, %struct.audit_netlink_list* %55, i32 0, i32 0
  %57 = call i32 @skb_queue_purge(i32* %56)
  %58 = load %struct.audit_netlink_list*, %struct.audit_netlink_list** %11, align 8
  %59 = call i32 @kfree(%struct.audit_netlink_list* %58)
  %60 = load %struct.task_struct*, %struct.task_struct** %10, align 8
  %61 = call i32 @PTR_ERR(%struct.task_struct* %60)
  store i32 %61, i32* %12, align 4
  br label %62

62:                                               ; preds = %54, %31
  %63 = load i32, i32* %12, align 4
  store i32 %63, i32* %3, align 4
  br label %64

64:                                               ; preds = %62, %28
  %65 = load i32, i32* %3, align 4
  ret i32 %65
}

declare dso_local i64 @NETLINK_CB(%struct.sk_buff*) #1

declare dso_local %struct.net* @sock_net(i32) #1

declare dso_local %struct.audit_netlink_list* @kmalloc(i32, i32) #1

declare dso_local i32 @get_net(%struct.net*) #1

declare dso_local i32 @skb_queue_head_init(i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @audit_list_rules(i32, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local %struct.task_struct* @kthread_run(i32, %struct.audit_netlink_list*, i8*) #1

declare dso_local i64 @IS_ERR(%struct.task_struct*) #1

declare dso_local i32 @skb_queue_purge(i32*) #1

declare dso_local i32 @kfree(%struct.audit_netlink_list*) #1

declare dso_local i32 @PTR_ERR(%struct.task_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
