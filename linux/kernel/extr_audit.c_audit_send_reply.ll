; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_audit.c_audit_send_reply.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_audit.c_audit_send_reply.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.net = type { i32 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.task_struct = type { i32 }
%struct.audit_reply = type { %struct.sk_buff*, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@audit_send_reply_thread = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"audit_send_reply\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sk_buff*, i32, i32, i32, i32, i8*, i32)* @audit_send_reply to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @audit_send_reply(%struct.sk_buff* %0, i32 %1, i32 %2, i32 %3, i32 %4, i8* %5, i32 %6) #0 {
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.net*, align 8
  %16 = alloca %struct.TYPE_2__, align 4
  %17 = alloca %struct.sk_buff*, align 8
  %18 = alloca %struct.task_struct*, align 8
  %19 = alloca %struct.audit_reply*, align 8
  %20 = alloca %struct.TYPE_2__, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i8* %5, i8** %13, align 8
  store i32 %6, i32* %14, align 4
  %21 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %22 = call i64 @NETLINK_CB(%struct.sk_buff* %21)
  %23 = bitcast %struct.TYPE_2__* %16 to i64*
  store i64 %22, i64* %23, align 4
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call %struct.net* @sock_net(i32 %25)
  store %struct.net* %26, %struct.net** %15, align 8
  %27 = load i32, i32* @GFP_KERNEL, align 4
  %28 = call %struct.audit_reply* @kmalloc(i32 16, i32 %27)
  store %struct.audit_reply* %28, %struct.audit_reply** %19, align 8
  %29 = load %struct.audit_reply*, %struct.audit_reply** %19, align 8
  %30 = icmp ne %struct.audit_reply* %29, null
  br i1 %30, label %32, label %31

31:                                               ; preds = %7
  br label %71

32:                                               ; preds = %7
  %33 = load i32, i32* %9, align 4
  %34 = load i32, i32* %10, align 4
  %35 = load i32, i32* %11, align 4
  %36 = load i32, i32* %12, align 4
  %37 = load i8*, i8** %13, align 8
  %38 = load i32, i32* %14, align 4
  %39 = call %struct.sk_buff* @audit_make_reply(i32 %33, i32 %34, i32 %35, i32 %36, i8* %37, i32 %38)
  store %struct.sk_buff* %39, %struct.sk_buff** %17, align 8
  %40 = load %struct.sk_buff*, %struct.sk_buff** %17, align 8
  %41 = icmp ne %struct.sk_buff* %40, null
  br i1 %41, label %43, label %42

42:                                               ; preds = %32
  br label %68

43:                                               ; preds = %32
  %44 = load %struct.net*, %struct.net** %15, align 8
  %45 = call i32 @get_net(%struct.net* %44)
  %46 = load %struct.audit_reply*, %struct.audit_reply** %19, align 8
  %47 = getelementptr inbounds %struct.audit_reply, %struct.audit_reply* %46, i32 0, i32 2
  store i32 %45, i32* %47, align 4
  %48 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %49 = call i64 @NETLINK_CB(%struct.sk_buff* %48)
  %50 = bitcast %struct.TYPE_2__* %20 to i64*
  store i64 %49, i64* %50, align 4
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.audit_reply*, %struct.audit_reply** %19, align 8
  %54 = getelementptr inbounds %struct.audit_reply, %struct.audit_reply* %53, i32 0, i32 1
  store i32 %52, i32* %54, align 8
  %55 = load %struct.sk_buff*, %struct.sk_buff** %17, align 8
  %56 = load %struct.audit_reply*, %struct.audit_reply** %19, align 8
  %57 = getelementptr inbounds %struct.audit_reply, %struct.audit_reply* %56, i32 0, i32 0
  store %struct.sk_buff* %55, %struct.sk_buff** %57, align 8
  %58 = load i32, i32* @audit_send_reply_thread, align 4
  %59 = load %struct.audit_reply*, %struct.audit_reply** %19, align 8
  %60 = call %struct.task_struct* @kthread_run(i32 %58, %struct.audit_reply* %59, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  store %struct.task_struct* %60, %struct.task_struct** %18, align 8
  %61 = load %struct.task_struct*, %struct.task_struct** %18, align 8
  %62 = call i32 @IS_ERR(%struct.task_struct* %61)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %65, label %64

64:                                               ; preds = %43
  br label %71

65:                                               ; preds = %43
  %66 = load %struct.sk_buff*, %struct.sk_buff** %17, align 8
  %67 = call i32 @kfree_skb(%struct.sk_buff* %66)
  br label %68

68:                                               ; preds = %65, %42
  %69 = load %struct.audit_reply*, %struct.audit_reply** %19, align 8
  %70 = call i32 @kfree(%struct.audit_reply* %69)
  br label %71

71:                                               ; preds = %68, %64, %31
  ret void
}

declare dso_local %struct.net* @sock_net(i32) #1

declare dso_local i64 @NETLINK_CB(%struct.sk_buff*) #1

declare dso_local %struct.audit_reply* @kmalloc(i32, i32) #1

declare dso_local %struct.sk_buff* @audit_make_reply(i32, i32, i32, i32, i8*, i32) #1

declare dso_local i32 @get_net(%struct.net*) #1

declare dso_local %struct.task_struct* @kthread_run(i32, %struct.audit_reply*, i8*) #1

declare dso_local i32 @IS_ERR(%struct.task_struct*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @kfree(%struct.audit_reply*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
