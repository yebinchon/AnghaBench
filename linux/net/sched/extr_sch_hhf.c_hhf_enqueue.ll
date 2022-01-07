; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_sch_hhf.c_hhf_enqueue.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_sch_hhf.c_hhf_enqueue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.Qdisc = type { i64, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i64 }
%struct.hhf_sched_data = type { i32, i32, i32, i32, i32, %struct.wdrr_bucket* }
%struct.wdrr_bucket = type { i32, i32 }

@WDRR_BUCKET_FOR_HH = common dso_local global i32 0, align 4
@NET_XMIT_SUCCESS = common dso_local global i32 0, align 4
@NET_XMIT_CN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.Qdisc*, %struct.sk_buff**)* @hhf_enqueue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hhf_enqueue(%struct.sk_buff* %0, %struct.Qdisc* %1, %struct.sk_buff** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.Qdisc*, align 8
  %7 = alloca %struct.sk_buff**, align 8
  %8 = alloca %struct.hhf_sched_data*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.wdrr_bucket*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %5, align 8
  store %struct.Qdisc* %1, %struct.Qdisc** %6, align 8
  store %struct.sk_buff** %2, %struct.sk_buff*** %7, align 8
  %13 = load %struct.Qdisc*, %struct.Qdisc** %6, align 8
  %14 = call %struct.hhf_sched_data* @qdisc_priv(%struct.Qdisc* %13)
  store %struct.hhf_sched_data* %14, %struct.hhf_sched_data** %8, align 8
  %15 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %16 = load %struct.Qdisc*, %struct.Qdisc** %6, align 8
  %17 = call i32 @hhf_classify(%struct.sk_buff* %15, %struct.Qdisc* %16)
  store i32 %17, i32* %9, align 4
  %18 = load %struct.hhf_sched_data*, %struct.hhf_sched_data** %8, align 8
  %19 = getelementptr inbounds %struct.hhf_sched_data, %struct.hhf_sched_data* %18, i32 0, i32 5
  %20 = load %struct.wdrr_bucket*, %struct.wdrr_bucket** %19, align 8
  %21 = load i32, i32* %9, align 4
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds %struct.wdrr_bucket, %struct.wdrr_bucket* %20, i64 %22
  store %struct.wdrr_bucket* %23, %struct.wdrr_bucket** %10, align 8
  %24 = load %struct.wdrr_bucket*, %struct.wdrr_bucket** %10, align 8
  %25 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %26 = call i32 @bucket_add(%struct.wdrr_bucket* %24, %struct.sk_buff* %25)
  %27 = load %struct.Qdisc*, %struct.Qdisc** %6, align 8
  %28 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %29 = call i32 @qdisc_qstats_backlog_inc(%struct.Qdisc* %27, %struct.sk_buff* %28)
  %30 = load %struct.wdrr_bucket*, %struct.wdrr_bucket** %10, align 8
  %31 = getelementptr inbounds %struct.wdrr_bucket, %struct.wdrr_bucket* %30, i32 0, i32 1
  %32 = call i64 @list_empty(i32* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %61

34:                                               ; preds = %3
  %35 = load i32, i32* %9, align 4
  %36 = load i32, i32* @WDRR_BUCKET_FOR_HH, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %44

38:                                               ; preds = %34
  store i32 1, i32* %12, align 4
  %39 = load %struct.wdrr_bucket*, %struct.wdrr_bucket** %10, align 8
  %40 = getelementptr inbounds %struct.wdrr_bucket, %struct.wdrr_bucket* %39, i32 0, i32 1
  %41 = load %struct.hhf_sched_data*, %struct.hhf_sched_data** %8, align 8
  %42 = getelementptr inbounds %struct.hhf_sched_data, %struct.hhf_sched_data* %41, i32 0, i32 4
  %43 = call i32 @list_add_tail(i32* %40, i32* %42)
  br label %53

44:                                               ; preds = %34
  %45 = load %struct.hhf_sched_data*, %struct.hhf_sched_data** %8, align 8
  %46 = getelementptr inbounds %struct.hhf_sched_data, %struct.hhf_sched_data* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  store i32 %47, i32* %12, align 4
  %48 = load %struct.wdrr_bucket*, %struct.wdrr_bucket** %10, align 8
  %49 = getelementptr inbounds %struct.wdrr_bucket, %struct.wdrr_bucket* %48, i32 0, i32 1
  %50 = load %struct.hhf_sched_data*, %struct.hhf_sched_data** %8, align 8
  %51 = getelementptr inbounds %struct.hhf_sched_data, %struct.hhf_sched_data* %50, i32 0, i32 3
  %52 = call i32 @list_add_tail(i32* %49, i32* %51)
  br label %53

53:                                               ; preds = %44, %38
  %54 = load i32, i32* %12, align 4
  %55 = load %struct.hhf_sched_data*, %struct.hhf_sched_data** %8, align 8
  %56 = getelementptr inbounds %struct.hhf_sched_data, %struct.hhf_sched_data* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = mul i32 %54, %57
  %59 = load %struct.wdrr_bucket*, %struct.wdrr_bucket** %10, align 8
  %60 = getelementptr inbounds %struct.wdrr_bucket, %struct.wdrr_bucket* %59, i32 0, i32 0
  store i32 %58, i32* %60, align 4
  br label %61

61:                                               ; preds = %53, %3
  %62 = load %struct.Qdisc*, %struct.Qdisc** %6, align 8
  %63 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %62, i32 0, i32 2
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = add nsw i64 %65, 1
  store i64 %66, i64* %64, align 8
  %67 = load %struct.Qdisc*, %struct.Qdisc** %6, align 8
  %68 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = icmp sle i64 %66, %69
  br i1 %70, label %71, label %73

71:                                               ; preds = %61
  %72 = load i32, i32* @NET_XMIT_SUCCESS, align 4
  store i32 %72, i32* %4, align 4
  br label %99

73:                                               ; preds = %61
  %74 = load %struct.Qdisc*, %struct.Qdisc** %6, align 8
  %75 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  store i32 %77, i32* %11, align 4
  %78 = load %struct.hhf_sched_data*, %struct.hhf_sched_data** %8, align 8
  %79 = getelementptr inbounds %struct.hhf_sched_data, %struct.hhf_sched_data* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 8
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %79, align 8
  %82 = load %struct.Qdisc*, %struct.Qdisc** %6, align 8
  %83 = load %struct.sk_buff**, %struct.sk_buff*** %7, align 8
  %84 = call i32 @hhf_drop(%struct.Qdisc* %82, %struct.sk_buff** %83)
  %85 = load i32, i32* %9, align 4
  %86 = icmp eq i32 %84, %85
  br i1 %86, label %87, label %89

87:                                               ; preds = %73
  %88 = load i32, i32* @NET_XMIT_CN, align 4
  store i32 %88, i32* %4, align 4
  br label %99

89:                                               ; preds = %73
  %90 = load %struct.Qdisc*, %struct.Qdisc** %6, align 8
  %91 = load i32, i32* %11, align 4
  %92 = load %struct.Qdisc*, %struct.Qdisc** %6, align 8
  %93 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %92, i32 0, i32 1
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = sub i32 %91, %95
  %97 = call i32 @qdisc_tree_reduce_backlog(%struct.Qdisc* %90, i32 1, i32 %96)
  %98 = load i32, i32* @NET_XMIT_SUCCESS, align 4
  store i32 %98, i32* %4, align 4
  br label %99

99:                                               ; preds = %89, %87, %71
  %100 = load i32, i32* %4, align 4
  ret i32 %100
}

declare dso_local %struct.hhf_sched_data* @qdisc_priv(%struct.Qdisc*) #1

declare dso_local i32 @hhf_classify(%struct.sk_buff*, %struct.Qdisc*) #1

declare dso_local i32 @bucket_add(%struct.wdrr_bucket*, %struct.sk_buff*) #1

declare dso_local i32 @qdisc_qstats_backlog_inc(%struct.Qdisc*, %struct.sk_buff*) #1

declare dso_local i64 @list_empty(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @hhf_drop(%struct.Qdisc*, %struct.sk_buff**) #1

declare dso_local i32 @qdisc_tree_reduce_backlog(%struct.Qdisc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
