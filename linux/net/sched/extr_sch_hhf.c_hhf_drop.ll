; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_sch_hhf.c_hhf_drop.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_sch_hhf.c_hhf_drop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Qdisc = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.sk_buff = type { i32 }
%struct.hhf_sched_data = type { %struct.wdrr_bucket* }
%struct.wdrr_bucket = type { i64 }

@WDRR_BUCKET_FOR_HH = common dso_local global i64 0, align 8
@WDRR_BUCKET_FOR_NON_HH = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.Qdisc*, %struct.sk_buff**)* @hhf_drop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hhf_drop(%struct.Qdisc* %0, %struct.sk_buff** %1) #0 {
  %3 = alloca %struct.Qdisc*, align 8
  %4 = alloca %struct.sk_buff**, align 8
  %5 = alloca %struct.hhf_sched_data*, align 8
  %6 = alloca %struct.wdrr_bucket*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  store %struct.Qdisc* %0, %struct.Qdisc** %3, align 8
  store %struct.sk_buff** %1, %struct.sk_buff*** %4, align 8
  %8 = load %struct.Qdisc*, %struct.Qdisc** %3, align 8
  %9 = call %struct.hhf_sched_data* @qdisc_priv(%struct.Qdisc* %8)
  store %struct.hhf_sched_data* %9, %struct.hhf_sched_data** %5, align 8
  %10 = load %struct.hhf_sched_data*, %struct.hhf_sched_data** %5, align 8
  %11 = getelementptr inbounds %struct.hhf_sched_data, %struct.hhf_sched_data* %10, i32 0, i32 0
  %12 = load %struct.wdrr_bucket*, %struct.wdrr_bucket** %11, align 8
  %13 = load i64, i64* @WDRR_BUCKET_FOR_HH, align 8
  %14 = getelementptr inbounds %struct.wdrr_bucket, %struct.wdrr_bucket* %12, i64 %13
  store %struct.wdrr_bucket* %14, %struct.wdrr_bucket** %6, align 8
  %15 = load %struct.wdrr_bucket*, %struct.wdrr_bucket** %6, align 8
  %16 = getelementptr inbounds %struct.wdrr_bucket, %struct.wdrr_bucket* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %25, label %19

19:                                               ; preds = %2
  %20 = load %struct.hhf_sched_data*, %struct.hhf_sched_data** %5, align 8
  %21 = getelementptr inbounds %struct.hhf_sched_data, %struct.hhf_sched_data* %20, i32 0, i32 0
  %22 = load %struct.wdrr_bucket*, %struct.wdrr_bucket** %21, align 8
  %23 = load i64, i64* @WDRR_BUCKET_FOR_NON_HH, align 8
  %24 = getelementptr inbounds %struct.wdrr_bucket, %struct.wdrr_bucket* %22, i64 %23
  store %struct.wdrr_bucket* %24, %struct.wdrr_bucket** %6, align 8
  br label %25

25:                                               ; preds = %19, %2
  %26 = load %struct.wdrr_bucket*, %struct.wdrr_bucket** %6, align 8
  %27 = getelementptr inbounds %struct.wdrr_bucket, %struct.wdrr_bucket* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %45

30:                                               ; preds = %25
  %31 = load %struct.wdrr_bucket*, %struct.wdrr_bucket** %6, align 8
  %32 = call %struct.sk_buff* @dequeue_head(%struct.wdrr_bucket* %31)
  store %struct.sk_buff* %32, %struct.sk_buff** %7, align 8
  %33 = load %struct.Qdisc*, %struct.Qdisc** %3, align 8
  %34 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = add nsw i32 %36, -1
  store i32 %37, i32* %35, align 4
  %38 = load %struct.Qdisc*, %struct.Qdisc** %3, align 8
  %39 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %40 = call i32 @qdisc_qstats_backlog_dec(%struct.Qdisc* %38, %struct.sk_buff* %39)
  %41 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %42 = load %struct.Qdisc*, %struct.Qdisc** %3, align 8
  %43 = load %struct.sk_buff**, %struct.sk_buff*** %4, align 8
  %44 = call i32 @qdisc_drop(%struct.sk_buff* %41, %struct.Qdisc* %42, %struct.sk_buff** %43)
  br label %45

45:                                               ; preds = %30, %25
  %46 = load %struct.wdrr_bucket*, %struct.wdrr_bucket** %6, align 8
  %47 = load %struct.hhf_sched_data*, %struct.hhf_sched_data** %5, align 8
  %48 = getelementptr inbounds %struct.hhf_sched_data, %struct.hhf_sched_data* %47, i32 0, i32 0
  %49 = load %struct.wdrr_bucket*, %struct.wdrr_bucket** %48, align 8
  %50 = ptrtoint %struct.wdrr_bucket* %46 to i64
  %51 = ptrtoint %struct.wdrr_bucket* %49 to i64
  %52 = sub i64 %50, %51
  %53 = sdiv exact i64 %52, 8
  %54 = trunc i64 %53 to i32
  ret i32 %54
}

declare dso_local %struct.hhf_sched_data* @qdisc_priv(%struct.Qdisc*) #1

declare dso_local %struct.sk_buff* @dequeue_head(%struct.wdrr_bucket*) #1

declare dso_local i32 @qdisc_qstats_backlog_dec(%struct.Qdisc*, %struct.sk_buff*) #1

declare dso_local i32 @qdisc_drop(%struct.sk_buff*, %struct.Qdisc*, %struct.sk_buff**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
