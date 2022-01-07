; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_audit.c_kauditd_hold_skb.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_audit.c_kauditd_hold_skb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }

@audit_default = common dso_local global i32 0, align 4
@audit_backlog_limit = common dso_local global i64 0, align 8
@audit_hold_queue = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"kauditd hold queue overflow\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sk_buff*)* @kauditd_hold_skb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kauditd_hold_skb(%struct.sk_buff* %0) #0 {
  %2 = alloca %struct.sk_buff*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %2, align 8
  %3 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %4 = call i32 @kauditd_printk_skb(%struct.sk_buff* %3)
  %5 = load i32, i32* @audit_default, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %1
  %8 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %9 = call i32 @kfree_skb(%struct.sk_buff* %8)
  br label %24

10:                                               ; preds = %1
  %11 = load i64, i64* @audit_backlog_limit, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %10
  %14 = call i64 @skb_queue_len(i32* @audit_hold_queue)
  %15 = load i64, i64* @audit_backlog_limit, align 8
  %16 = icmp slt i64 %14, %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %13, %10
  %18 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %19 = call i32 @skb_queue_tail(i32* @audit_hold_queue, %struct.sk_buff* %18)
  br label %24

20:                                               ; preds = %13
  %21 = call i32 @audit_log_lost(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %22 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %23 = call i32 @kfree_skb(%struct.sk_buff* %22)
  br label %24

24:                                               ; preds = %20, %17, %7
  ret void
}

declare dso_local i32 @kauditd_printk_skb(%struct.sk_buff*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i64 @skb_queue_len(i32*) #1

declare dso_local i32 @skb_queue_tail(i32*, %struct.sk_buff*) #1

declare dso_local i32 @audit_log_lost(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
