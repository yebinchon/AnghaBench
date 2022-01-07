; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_sch_hhf.c_dequeue_head.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_sch_hhf.c_dequeue_head.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { %struct.sk_buff* }
%struct.wdrr_bucket = type { %struct.sk_buff* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sk_buff* (%struct.wdrr_bucket*)* @dequeue_head to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sk_buff* @dequeue_head(%struct.wdrr_bucket* %0) #0 {
  %2 = alloca %struct.wdrr_bucket*, align 8
  %3 = alloca %struct.sk_buff*, align 8
  store %struct.wdrr_bucket* %0, %struct.wdrr_bucket** %2, align 8
  %4 = load %struct.wdrr_bucket*, %struct.wdrr_bucket** %2, align 8
  %5 = getelementptr inbounds %struct.wdrr_bucket, %struct.wdrr_bucket* %4, i32 0, i32 0
  %6 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  store %struct.sk_buff* %6, %struct.sk_buff** %3, align 8
  %7 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %8 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %7, i32 0, i32 0
  %9 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %10 = load %struct.wdrr_bucket*, %struct.wdrr_bucket** %2, align 8
  %11 = getelementptr inbounds %struct.wdrr_bucket, %struct.wdrr_bucket* %10, i32 0, i32 0
  store %struct.sk_buff* %9, %struct.sk_buff** %11, align 8
  %12 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %13 = call i32 @skb_mark_not_on_list(%struct.sk_buff* %12)
  %14 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  ret %struct.sk_buff* %14
}

declare dso_local i32 @skb_mark_not_on_list(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
