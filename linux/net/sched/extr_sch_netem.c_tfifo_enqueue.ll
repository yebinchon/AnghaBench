; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_sch_netem.c_tfifo_enqueue.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_sch_netem.c_tfifo_enqueue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32, %struct.sk_buff* }
%struct.Qdisc = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.netem_sched_data = type { %struct.TYPE_5__, %struct.sk_buff*, %struct.sk_buff* }
%struct.TYPE_5__ = type { %struct.rb_node* }
%struct.rb_node = type { %struct.rb_node*, %struct.rb_node* }
%struct.TYPE_6__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sk_buff*, %struct.Qdisc*)* @tfifo_enqueue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tfifo_enqueue(%struct.sk_buff* %0, %struct.Qdisc* %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.Qdisc*, align 8
  %5 = alloca %struct.netem_sched_data*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.rb_node**, align 8
  %8 = alloca %struct.rb_node*, align 8
  %9 = alloca %struct.sk_buff*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  store %struct.Qdisc* %1, %struct.Qdisc** %4, align 8
  %10 = load %struct.Qdisc*, %struct.Qdisc** %4, align 8
  %11 = call %struct.netem_sched_data* @qdisc_priv(%struct.Qdisc* %10)
  store %struct.netem_sched_data* %11, %struct.netem_sched_data** %5, align 8
  %12 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %13 = call %struct.TYPE_6__* @netem_skb_cb(%struct.sk_buff* %12)
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  store i64 %15, i64* %6, align 8
  %16 = load %struct.netem_sched_data*, %struct.netem_sched_data** %5, align 8
  %17 = getelementptr inbounds %struct.netem_sched_data, %struct.netem_sched_data* %16, i32 0, i32 1
  %18 = load %struct.sk_buff*, %struct.sk_buff** %17, align 8
  %19 = icmp ne %struct.sk_buff* %18, null
  br i1 %19, label %20, label %29

20:                                               ; preds = %2
  %21 = load i64, i64* %6, align 8
  %22 = load %struct.netem_sched_data*, %struct.netem_sched_data** %5, align 8
  %23 = getelementptr inbounds %struct.netem_sched_data, %struct.netem_sched_data* %22, i32 0, i32 1
  %24 = load %struct.sk_buff*, %struct.sk_buff** %23, align 8
  %25 = call %struct.TYPE_6__* @netem_skb_cb(%struct.sk_buff* %24)
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp sge i64 %21, %27
  br i1 %28, label %29, label %48

29:                                               ; preds = %20, %2
  %30 = load %struct.netem_sched_data*, %struct.netem_sched_data** %5, align 8
  %31 = getelementptr inbounds %struct.netem_sched_data, %struct.netem_sched_data* %30, i32 0, i32 1
  %32 = load %struct.sk_buff*, %struct.sk_buff** %31, align 8
  %33 = icmp ne %struct.sk_buff* %32, null
  br i1 %33, label %34, label %40

34:                                               ; preds = %29
  %35 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %36 = load %struct.netem_sched_data*, %struct.netem_sched_data** %5, align 8
  %37 = getelementptr inbounds %struct.netem_sched_data, %struct.netem_sched_data* %36, i32 0, i32 1
  %38 = load %struct.sk_buff*, %struct.sk_buff** %37, align 8
  %39 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %38, i32 0, i32 1
  store %struct.sk_buff* %35, %struct.sk_buff** %39, align 8
  br label %44

40:                                               ; preds = %29
  %41 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %42 = load %struct.netem_sched_data*, %struct.netem_sched_data** %5, align 8
  %43 = getelementptr inbounds %struct.netem_sched_data, %struct.netem_sched_data* %42, i32 0, i32 2
  store %struct.sk_buff* %41, %struct.sk_buff** %43, align 8
  br label %44

44:                                               ; preds = %40, %34
  %45 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %46 = load %struct.netem_sched_data*, %struct.netem_sched_data** %5, align 8
  %47 = getelementptr inbounds %struct.netem_sched_data, %struct.netem_sched_data* %46, i32 0, i32 1
  store %struct.sk_buff* %45, %struct.sk_buff** %47, align 8
  br label %85

48:                                               ; preds = %20
  %49 = load %struct.netem_sched_data*, %struct.netem_sched_data** %5, align 8
  %50 = getelementptr inbounds %struct.netem_sched_data, %struct.netem_sched_data* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  store %struct.rb_node** %51, %struct.rb_node*** %7, align 8
  store %struct.rb_node* null, %struct.rb_node** %8, align 8
  br label %52

52:                                               ; preds = %73, %48
  %53 = load %struct.rb_node**, %struct.rb_node*** %7, align 8
  %54 = load %struct.rb_node*, %struct.rb_node** %53, align 8
  %55 = icmp ne %struct.rb_node* %54, null
  br i1 %55, label %56, label %74

56:                                               ; preds = %52
  %57 = load %struct.rb_node**, %struct.rb_node*** %7, align 8
  %58 = load %struct.rb_node*, %struct.rb_node** %57, align 8
  store %struct.rb_node* %58, %struct.rb_node** %8, align 8
  %59 = load %struct.rb_node*, %struct.rb_node** %8, align 8
  %60 = call %struct.sk_buff* @rb_to_skb(%struct.rb_node* %59)
  store %struct.sk_buff* %60, %struct.sk_buff** %9, align 8
  %61 = load i64, i64* %6, align 8
  %62 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %63 = call %struct.TYPE_6__* @netem_skb_cb(%struct.sk_buff* %62)
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = icmp sge i64 %61, %65
  br i1 %66, label %67, label %70

67:                                               ; preds = %56
  %68 = load %struct.rb_node*, %struct.rb_node** %8, align 8
  %69 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %68, i32 0, i32 1
  store %struct.rb_node** %69, %struct.rb_node*** %7, align 8
  br label %73

70:                                               ; preds = %56
  %71 = load %struct.rb_node*, %struct.rb_node** %8, align 8
  %72 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %71, i32 0, i32 0
  store %struct.rb_node** %72, %struct.rb_node*** %7, align 8
  br label %73

73:                                               ; preds = %70, %67
  br label %52

74:                                               ; preds = %52
  %75 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %76 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %75, i32 0, i32 0
  %77 = load %struct.rb_node*, %struct.rb_node** %8, align 8
  %78 = load %struct.rb_node**, %struct.rb_node*** %7, align 8
  %79 = call i32 @rb_link_node(i32* %76, %struct.rb_node* %77, %struct.rb_node** %78)
  %80 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %81 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %80, i32 0, i32 0
  %82 = load %struct.netem_sched_data*, %struct.netem_sched_data** %5, align 8
  %83 = getelementptr inbounds %struct.netem_sched_data, %struct.netem_sched_data* %82, i32 0, i32 0
  %84 = call i32 @rb_insert_color(i32* %81, %struct.TYPE_5__* %83)
  br label %85

85:                                               ; preds = %74, %44
  %86 = load %struct.Qdisc*, %struct.Qdisc** %4, align 8
  %87 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %88, align 4
  ret void
}

declare dso_local %struct.netem_sched_data* @qdisc_priv(%struct.Qdisc*) #1

declare dso_local %struct.TYPE_6__* @netem_skb_cb(%struct.sk_buff*) #1

declare dso_local %struct.sk_buff* @rb_to_skb(%struct.rb_node*) #1

declare dso_local i32 @rb_link_node(i32*, %struct.rb_node*, %struct.rb_node**) #1

declare dso_local i32 @rb_insert_color(i32*, %struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
