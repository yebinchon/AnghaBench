; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_sch_netem.c_tfifo_reset.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_sch_netem.c_tfifo_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Qdisc = type { i32 }
%struct.netem_sched_data = type { %struct.sk_buff*, %struct.sk_buff*, i32 }
%struct.sk_buff = type { i32 }
%struct.rb_node = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.Qdisc*)* @tfifo_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tfifo_reset(%struct.Qdisc* %0) #0 {
  %2 = alloca %struct.Qdisc*, align 8
  %3 = alloca %struct.netem_sched_data*, align 8
  %4 = alloca %struct.rb_node*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  store %struct.Qdisc* %0, %struct.Qdisc** %2, align 8
  %6 = load %struct.Qdisc*, %struct.Qdisc** %2, align 8
  %7 = call %struct.netem_sched_data* @qdisc_priv(%struct.Qdisc* %6)
  store %struct.netem_sched_data* %7, %struct.netem_sched_data** %3, align 8
  %8 = load %struct.netem_sched_data*, %struct.netem_sched_data** %3, align 8
  %9 = getelementptr inbounds %struct.netem_sched_data, %struct.netem_sched_data* %8, i32 0, i32 2
  %10 = call %struct.rb_node* @rb_first(i32* %9)
  store %struct.rb_node* %10, %struct.rb_node** %4, align 8
  br label %11

11:                                               ; preds = %14, %1
  %12 = load %struct.rb_node*, %struct.rb_node** %4, align 8
  %13 = icmp ne %struct.rb_node* %12, null
  br i1 %13, label %14, label %27

14:                                               ; preds = %11
  %15 = load %struct.rb_node*, %struct.rb_node** %4, align 8
  %16 = call %struct.sk_buff* @rb_to_skb(%struct.rb_node* %15)
  store %struct.sk_buff* %16, %struct.sk_buff** %5, align 8
  %17 = load %struct.rb_node*, %struct.rb_node** %4, align 8
  %18 = call %struct.rb_node* @rb_next(%struct.rb_node* %17)
  store %struct.rb_node* %18, %struct.rb_node** %4, align 8
  %19 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %20 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %19, i32 0, i32 0
  %21 = load %struct.netem_sched_data*, %struct.netem_sched_data** %3, align 8
  %22 = getelementptr inbounds %struct.netem_sched_data, %struct.netem_sched_data* %21, i32 0, i32 2
  %23 = call i32 @rb_erase(i32* %20, i32* %22)
  %24 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %25 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %26 = call i32 @rtnl_kfree_skbs(%struct.sk_buff* %24, %struct.sk_buff* %25)
  br label %11

27:                                               ; preds = %11
  %28 = load %struct.netem_sched_data*, %struct.netem_sched_data** %3, align 8
  %29 = getelementptr inbounds %struct.netem_sched_data, %struct.netem_sched_data* %28, i32 0, i32 1
  %30 = load %struct.sk_buff*, %struct.sk_buff** %29, align 8
  %31 = load %struct.netem_sched_data*, %struct.netem_sched_data** %3, align 8
  %32 = getelementptr inbounds %struct.netem_sched_data, %struct.netem_sched_data* %31, i32 0, i32 0
  %33 = load %struct.sk_buff*, %struct.sk_buff** %32, align 8
  %34 = call i32 @rtnl_kfree_skbs(%struct.sk_buff* %30, %struct.sk_buff* %33)
  %35 = load %struct.netem_sched_data*, %struct.netem_sched_data** %3, align 8
  %36 = getelementptr inbounds %struct.netem_sched_data, %struct.netem_sched_data* %35, i32 0, i32 1
  store %struct.sk_buff* null, %struct.sk_buff** %36, align 8
  %37 = load %struct.netem_sched_data*, %struct.netem_sched_data** %3, align 8
  %38 = getelementptr inbounds %struct.netem_sched_data, %struct.netem_sched_data* %37, i32 0, i32 0
  store %struct.sk_buff* null, %struct.sk_buff** %38, align 8
  ret void
}

declare dso_local %struct.netem_sched_data* @qdisc_priv(%struct.Qdisc*) #1

declare dso_local %struct.rb_node* @rb_first(i32*) #1

declare dso_local %struct.sk_buff* @rb_to_skb(%struct.rb_node*) #1

declare dso_local %struct.rb_node* @rb_next(%struct.rb_node*) #1

declare dso_local i32 @rb_erase(i32*, i32*) #1

declare dso_local i32 @rtnl_kfree_skbs(%struct.sk_buff*, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
