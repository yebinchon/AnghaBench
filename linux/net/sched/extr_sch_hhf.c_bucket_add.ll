; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_sch_hhf.c_bucket_add.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_sch_hhf.c_bucket_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wdrr_bucket = type { %struct.sk_buff*, %struct.sk_buff* }
%struct.sk_buff = type { %struct.sk_buff* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wdrr_bucket*, %struct.sk_buff*)* @bucket_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bucket_add(%struct.wdrr_bucket* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.wdrr_bucket*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  store %struct.wdrr_bucket* %0, %struct.wdrr_bucket** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %5 = load %struct.wdrr_bucket*, %struct.wdrr_bucket** %3, align 8
  %6 = getelementptr inbounds %struct.wdrr_bucket, %struct.wdrr_bucket* %5, i32 0, i32 1
  %7 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %8 = icmp eq %struct.sk_buff* %7, null
  br i1 %8, label %9, label %13

9:                                                ; preds = %2
  %10 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %11 = load %struct.wdrr_bucket*, %struct.wdrr_bucket** %3, align 8
  %12 = getelementptr inbounds %struct.wdrr_bucket, %struct.wdrr_bucket* %11, i32 0, i32 1
  store %struct.sk_buff* %10, %struct.sk_buff** %12, align 8
  br label %19

13:                                               ; preds = %2
  %14 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %15 = load %struct.wdrr_bucket*, %struct.wdrr_bucket** %3, align 8
  %16 = getelementptr inbounds %struct.wdrr_bucket, %struct.wdrr_bucket* %15, i32 0, i32 0
  %17 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %18 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %17, i32 0, i32 0
  store %struct.sk_buff* %14, %struct.sk_buff** %18, align 8
  br label %19

19:                                               ; preds = %13, %9
  %20 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %21 = load %struct.wdrr_bucket*, %struct.wdrr_bucket** %3, align 8
  %22 = getelementptr inbounds %struct.wdrr_bucket, %struct.wdrr_bucket* %21, i32 0, i32 0
  store %struct.sk_buff* %20, %struct.sk_buff** %22, align 8
  %23 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %24 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %23, i32 0, i32 0
  store %struct.sk_buff* null, %struct.sk_buff** %24, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
