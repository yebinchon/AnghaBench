; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_audit.c_audit_log_end.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_audit.c_audit_log_end.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.audit_buffer = type { %struct.sk_buff* }
%struct.sk_buff = type { i64 }
%struct.nlmsghdr = type { i64 }

@NLMSG_HDRLEN = common dso_local global i64 0, align 8
@audit_queue = common dso_local global i32 0, align 4
@kauditd_wait = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"rate limit exceeded\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @audit_log_end(%struct.audit_buffer* %0) #0 {
  %2 = alloca %struct.audit_buffer*, align 8
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.nlmsghdr*, align 8
  store %struct.audit_buffer* %0, %struct.audit_buffer** %2, align 8
  %5 = load %struct.audit_buffer*, %struct.audit_buffer** %2, align 8
  %6 = icmp ne %struct.audit_buffer* %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  br label %34

8:                                                ; preds = %1
  %9 = call i64 (...) @audit_rate_check()
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %29

11:                                               ; preds = %8
  %12 = load %struct.audit_buffer*, %struct.audit_buffer** %2, align 8
  %13 = getelementptr inbounds %struct.audit_buffer, %struct.audit_buffer* %12, i32 0, i32 0
  %14 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  store %struct.sk_buff* %14, %struct.sk_buff** %3, align 8
  %15 = load %struct.audit_buffer*, %struct.audit_buffer** %2, align 8
  %16 = getelementptr inbounds %struct.audit_buffer, %struct.audit_buffer* %15, i32 0, i32 0
  store %struct.sk_buff* null, %struct.sk_buff** %16, align 8
  %17 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %18 = call %struct.nlmsghdr* @nlmsg_hdr(%struct.sk_buff* %17)
  store %struct.nlmsghdr* %18, %struct.nlmsghdr** %4, align 8
  %19 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %20 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @NLMSG_HDRLEN, align 8
  %23 = sub nsw i64 %21, %22
  %24 = load %struct.nlmsghdr*, %struct.nlmsghdr** %4, align 8
  %25 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %24, i32 0, i32 0
  store i64 %23, i64* %25, align 8
  %26 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %27 = call i32 @skb_queue_tail(i32* @audit_queue, %struct.sk_buff* %26)
  %28 = call i32 @wake_up_interruptible(i32* @kauditd_wait)
  br label %31

29:                                               ; preds = %8
  %30 = call i32 @audit_log_lost(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  br label %31

31:                                               ; preds = %29, %11
  %32 = load %struct.audit_buffer*, %struct.audit_buffer** %2, align 8
  %33 = call i32 @audit_buffer_free(%struct.audit_buffer* %32)
  br label %34

34:                                               ; preds = %31, %7
  ret void
}

declare dso_local i64 @audit_rate_check(...) #1

declare dso_local %struct.nlmsghdr* @nlmsg_hdr(%struct.sk_buff*) #1

declare dso_local i32 @skb_queue_tail(i32*, %struct.sk_buff*) #1

declare dso_local i32 @wake_up_interruptible(i32*) #1

declare dso_local i32 @audit_log_lost(i8*) #1

declare dso_local i32 @audit_buffer_free(%struct.audit_buffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
