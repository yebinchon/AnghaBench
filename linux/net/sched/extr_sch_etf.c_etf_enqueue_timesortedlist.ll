; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_sch_etf.c_etf_enqueue_timesortedlist.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_sch_etf.c_etf_enqueue_timesortedlist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32, i32 }
%struct.Qdisc = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.etf_sched_data = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.rb_node* }
%struct.rb_node = type { %struct.rb_node*, %struct.rb_node* }

@EINVAL = common dso_local global i32 0, align 4
@SO_EE_CODE_TXTIME_INVALID_PARAM = common dso_local global i32 0, align 4
@NET_XMIT_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.Qdisc*, %struct.sk_buff**)* @etf_enqueue_timesortedlist to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @etf_enqueue_timesortedlist(%struct.sk_buff* %0, %struct.Qdisc* %1, %struct.sk_buff** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.Qdisc*, align 8
  %7 = alloca %struct.sk_buff**, align 8
  %8 = alloca %struct.etf_sched_data*, align 8
  %9 = alloca %struct.rb_node**, align 8
  %10 = alloca %struct.rb_node*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.sk_buff*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %5, align 8
  store %struct.Qdisc* %1, %struct.Qdisc** %6, align 8
  store %struct.sk_buff** %2, %struct.sk_buff*** %7, align 8
  %14 = load %struct.Qdisc*, %struct.Qdisc** %6, align 8
  %15 = call %struct.etf_sched_data* @qdisc_priv(%struct.Qdisc* %14)
  store %struct.etf_sched_data* %15, %struct.etf_sched_data** %8, align 8
  %16 = load %struct.etf_sched_data*, %struct.etf_sched_data** %8, align 8
  %17 = getelementptr inbounds %struct.etf_sched_data, %struct.etf_sched_data* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  store %struct.rb_node** %19, %struct.rb_node*** %9, align 8
  store %struct.rb_node* null, %struct.rb_node** %10, align 8
  %20 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %21 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %11, align 4
  store i32 1, i32* %12, align 4
  %23 = load %struct.Qdisc*, %struct.Qdisc** %6, align 8
  %24 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %25 = call i32 @is_packet_valid(%struct.Qdisc* %23, %struct.sk_buff* %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %36, label %27

27:                                               ; preds = %3
  %28 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %29 = load i32, i32* @EINVAL, align 4
  %30 = load i32, i32* @SO_EE_CODE_TXTIME_INVALID_PARAM, align 4
  %31 = call i32 @report_sock_error(%struct.sk_buff* %28, i32 %29, i32 %30)
  %32 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %33 = load %struct.Qdisc*, %struct.Qdisc** %6, align 8
  %34 = load %struct.sk_buff**, %struct.sk_buff*** %7, align 8
  %35 = call i32 @qdisc_drop(%struct.sk_buff* %32, %struct.Qdisc* %33, %struct.sk_buff** %34)
  store i32 %35, i32* %4, align 4
  br label %82

36:                                               ; preds = %3
  br label %37

37:                                               ; preds = %58, %36
  %38 = load %struct.rb_node**, %struct.rb_node*** %9, align 8
  %39 = load %struct.rb_node*, %struct.rb_node** %38, align 8
  %40 = icmp ne %struct.rb_node* %39, null
  br i1 %40, label %41, label %59

41:                                               ; preds = %37
  %42 = load %struct.rb_node**, %struct.rb_node*** %9, align 8
  %43 = load %struct.rb_node*, %struct.rb_node** %42, align 8
  store %struct.rb_node* %43, %struct.rb_node** %10, align 8
  %44 = load %struct.rb_node*, %struct.rb_node** %10, align 8
  %45 = call %struct.sk_buff* @rb_to_skb(%struct.rb_node* %44)
  store %struct.sk_buff* %45, %struct.sk_buff** %13, align 8
  %46 = load i32, i32* %11, align 4
  %47 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %48 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = call i64 @ktime_compare(i32 %46, i32 %49)
  %51 = icmp sge i64 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %41
  %53 = load %struct.rb_node*, %struct.rb_node** %10, align 8
  %54 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %53, i32 0, i32 1
  store %struct.rb_node** %54, %struct.rb_node*** %9, align 8
  store i32 0, i32* %12, align 4
  br label %58

55:                                               ; preds = %41
  %56 = load %struct.rb_node*, %struct.rb_node** %10, align 8
  %57 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %56, i32 0, i32 0
  store %struct.rb_node** %57, %struct.rb_node*** %9, align 8
  br label %58

58:                                               ; preds = %55, %52
  br label %37

59:                                               ; preds = %37
  %60 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %61 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %60, i32 0, i32 0
  %62 = load %struct.rb_node*, %struct.rb_node** %10, align 8
  %63 = load %struct.rb_node**, %struct.rb_node*** %9, align 8
  %64 = call i32 @rb_link_node(i32* %61, %struct.rb_node* %62, %struct.rb_node** %63)
  %65 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %66 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %65, i32 0, i32 0
  %67 = load %struct.etf_sched_data*, %struct.etf_sched_data** %8, align 8
  %68 = getelementptr inbounds %struct.etf_sched_data, %struct.etf_sched_data* %67, i32 0, i32 0
  %69 = load i32, i32* %12, align 4
  %70 = call i32 @rb_insert_color_cached(i32* %66, %struct.TYPE_6__* %68, i32 %69)
  %71 = load %struct.Qdisc*, %struct.Qdisc** %6, align 8
  %72 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %73 = call i32 @qdisc_qstats_backlog_inc(%struct.Qdisc* %71, %struct.sk_buff* %72)
  %74 = load %struct.Qdisc*, %struct.Qdisc** %6, align 8
  %75 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %76, align 4
  %79 = load %struct.Qdisc*, %struct.Qdisc** %6, align 8
  %80 = call i32 @reset_watchdog(%struct.Qdisc* %79)
  %81 = load i32, i32* @NET_XMIT_SUCCESS, align 4
  store i32 %81, i32* %4, align 4
  br label %82

82:                                               ; preds = %59, %27
  %83 = load i32, i32* %4, align 4
  ret i32 %83
}

declare dso_local %struct.etf_sched_data* @qdisc_priv(%struct.Qdisc*) #1

declare dso_local i32 @is_packet_valid(%struct.Qdisc*, %struct.sk_buff*) #1

declare dso_local i32 @report_sock_error(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @qdisc_drop(%struct.sk_buff*, %struct.Qdisc*, %struct.sk_buff**) #1

declare dso_local %struct.sk_buff* @rb_to_skb(%struct.rb_node*) #1

declare dso_local i64 @ktime_compare(i32, i32) #1

declare dso_local i32 @rb_link_node(i32*, %struct.rb_node*, %struct.rb_node**) #1

declare dso_local i32 @rb_insert_color_cached(i32*, %struct.TYPE_6__*, i32) #1

declare dso_local i32 @qdisc_qstats_backlog_inc(%struct.Qdisc*, %struct.sk_buff*) #1

declare dso_local i32 @reset_watchdog(%struct.Qdisc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
