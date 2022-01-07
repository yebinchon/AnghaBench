; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_sch_fq.c_fq_flow_purge.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_sch_fq.c_fq_flow_purge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fq_flow = type { i64, %struct.sk_buff*, %struct.sk_buff*, i32 }
%struct.sk_buff = type { i32 }
%struct.rb_node = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fq_flow*)* @fq_flow_purge to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fq_flow_purge(%struct.fq_flow* %0) #0 {
  %2 = alloca %struct.fq_flow*, align 8
  %3 = alloca %struct.rb_node*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  store %struct.fq_flow* %0, %struct.fq_flow** %2, align 8
  %5 = load %struct.fq_flow*, %struct.fq_flow** %2, align 8
  %6 = getelementptr inbounds %struct.fq_flow, %struct.fq_flow* %5, i32 0, i32 3
  %7 = call %struct.rb_node* @rb_first(i32* %6)
  store %struct.rb_node* %7, %struct.rb_node** %3, align 8
  br label %8

8:                                                ; preds = %11, %1
  %9 = load %struct.rb_node*, %struct.rb_node** %3, align 8
  %10 = icmp ne %struct.rb_node* %9, null
  br i1 %10, label %11, label %24

11:                                               ; preds = %8
  %12 = load %struct.rb_node*, %struct.rb_node** %3, align 8
  %13 = call %struct.sk_buff* @rb_to_skb(%struct.rb_node* %12)
  store %struct.sk_buff* %13, %struct.sk_buff** %4, align 8
  %14 = load %struct.rb_node*, %struct.rb_node** %3, align 8
  %15 = call %struct.rb_node* @rb_next(%struct.rb_node* %14)
  store %struct.rb_node* %15, %struct.rb_node** %3, align 8
  %16 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %17 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %16, i32 0, i32 0
  %18 = load %struct.fq_flow*, %struct.fq_flow** %2, align 8
  %19 = getelementptr inbounds %struct.fq_flow, %struct.fq_flow* %18, i32 0, i32 3
  %20 = call i32 @rb_erase(i32* %17, i32* %19)
  %21 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %22 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %23 = call i32 @rtnl_kfree_skbs(%struct.sk_buff* %21, %struct.sk_buff* %22)
  br label %8

24:                                               ; preds = %8
  %25 = load %struct.fq_flow*, %struct.fq_flow** %2, align 8
  %26 = getelementptr inbounds %struct.fq_flow, %struct.fq_flow* %25, i32 0, i32 1
  %27 = load %struct.sk_buff*, %struct.sk_buff** %26, align 8
  %28 = load %struct.fq_flow*, %struct.fq_flow** %2, align 8
  %29 = getelementptr inbounds %struct.fq_flow, %struct.fq_flow* %28, i32 0, i32 2
  %30 = load %struct.sk_buff*, %struct.sk_buff** %29, align 8
  %31 = call i32 @rtnl_kfree_skbs(%struct.sk_buff* %27, %struct.sk_buff* %30)
  %32 = load %struct.fq_flow*, %struct.fq_flow** %2, align 8
  %33 = getelementptr inbounds %struct.fq_flow, %struct.fq_flow* %32, i32 0, i32 1
  store %struct.sk_buff* null, %struct.sk_buff** %33, align 8
  %34 = load %struct.fq_flow*, %struct.fq_flow** %2, align 8
  %35 = getelementptr inbounds %struct.fq_flow, %struct.fq_flow* %34, i32 0, i32 0
  store i64 0, i64* %35, align 8
  ret void
}

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
