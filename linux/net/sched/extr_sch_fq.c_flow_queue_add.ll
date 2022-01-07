; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_sch_fq.c_flow_queue_add.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_sch_fq.c_flow_queue_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fq_flow = type { %struct.TYPE_3__, %struct.sk_buff*, %struct.sk_buff* }
%struct.TYPE_3__ = type { %struct.rb_node* }
%struct.rb_node = type { %struct.rb_node*, %struct.rb_node* }
%struct.sk_buff = type { i32, %struct.sk_buff*, i64 }
%struct.TYPE_4__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fq_flow*, %struct.sk_buff*)* @flow_queue_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @flow_queue_add(%struct.fq_flow* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.fq_flow*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.rb_node**, align 8
  %6 = alloca %struct.rb_node*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca %struct.sk_buff*, align 8
  store %struct.fq_flow* %0, %struct.fq_flow** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %9 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %10 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %9, i32 0, i32 2
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  br label %16

14:                                               ; preds = %2
  %15 = call i64 (...) @ktime_get_ns()
  br label %16

16:                                               ; preds = %14, %13
  %17 = phi i64 [ %11, %13 ], [ %15, %14 ]
  %18 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %19 = call %struct.TYPE_4__* @fq_skb_cb(%struct.sk_buff* %18)
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  store i64 %17, i64* %20, align 8
  %21 = load %struct.fq_flow*, %struct.fq_flow** %3, align 8
  %22 = getelementptr inbounds %struct.fq_flow, %struct.fq_flow* %21, i32 0, i32 2
  %23 = load %struct.sk_buff*, %struct.sk_buff** %22, align 8
  store %struct.sk_buff* %23, %struct.sk_buff** %7, align 8
  %24 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %25 = icmp ne %struct.sk_buff* %24, null
  br i1 %25, label %26, label %38

26:                                               ; preds = %16
  %27 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %28 = call %struct.TYPE_4__* @fq_skb_cb(%struct.sk_buff* %27)
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.fq_flow*, %struct.fq_flow** %3, align 8
  %32 = getelementptr inbounds %struct.fq_flow, %struct.fq_flow* %31, i32 0, i32 1
  %33 = load %struct.sk_buff*, %struct.sk_buff** %32, align 8
  %34 = call %struct.TYPE_4__* @fq_skb_cb(%struct.sk_buff* %33)
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp sge i64 %30, %36
  br i1 %37, label %38, label %57

38:                                               ; preds = %26, %16
  %39 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %40 = icmp ne %struct.sk_buff* %39, null
  br i1 %40, label %45, label %41

41:                                               ; preds = %38
  %42 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %43 = load %struct.fq_flow*, %struct.fq_flow** %3, align 8
  %44 = getelementptr inbounds %struct.fq_flow, %struct.fq_flow* %43, i32 0, i32 2
  store %struct.sk_buff* %42, %struct.sk_buff** %44, align 8
  br label %51

45:                                               ; preds = %38
  %46 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %47 = load %struct.fq_flow*, %struct.fq_flow** %3, align 8
  %48 = getelementptr inbounds %struct.fq_flow, %struct.fq_flow* %47, i32 0, i32 1
  %49 = load %struct.sk_buff*, %struct.sk_buff** %48, align 8
  %50 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %49, i32 0, i32 1
  store %struct.sk_buff* %46, %struct.sk_buff** %50, align 8
  br label %51

51:                                               ; preds = %45, %41
  %52 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %53 = load %struct.fq_flow*, %struct.fq_flow** %3, align 8
  %54 = getelementptr inbounds %struct.fq_flow, %struct.fq_flow* %53, i32 0, i32 1
  store %struct.sk_buff* %52, %struct.sk_buff** %54, align 8
  %55 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %56 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %55, i32 0, i32 1
  store %struct.sk_buff* null, %struct.sk_buff** %56, align 8
  br label %97

57:                                               ; preds = %26
  %58 = load %struct.fq_flow*, %struct.fq_flow** %3, align 8
  %59 = getelementptr inbounds %struct.fq_flow, %struct.fq_flow* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 0
  store %struct.rb_node** %60, %struct.rb_node*** %5, align 8
  store %struct.rb_node* null, %struct.rb_node** %6, align 8
  br label %61

61:                                               ; preds = %85, %57
  %62 = load %struct.rb_node**, %struct.rb_node*** %5, align 8
  %63 = load %struct.rb_node*, %struct.rb_node** %62, align 8
  %64 = icmp ne %struct.rb_node* %63, null
  br i1 %64, label %65, label %86

65:                                               ; preds = %61
  %66 = load %struct.rb_node**, %struct.rb_node*** %5, align 8
  %67 = load %struct.rb_node*, %struct.rb_node** %66, align 8
  store %struct.rb_node* %67, %struct.rb_node** %6, align 8
  %68 = load %struct.rb_node*, %struct.rb_node** %6, align 8
  %69 = call %struct.sk_buff* @rb_to_skb(%struct.rb_node* %68)
  store %struct.sk_buff* %69, %struct.sk_buff** %8, align 8
  %70 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %71 = call %struct.TYPE_4__* @fq_skb_cb(%struct.sk_buff* %70)
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %75 = call %struct.TYPE_4__* @fq_skb_cb(%struct.sk_buff* %74)
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = icmp sge i64 %73, %77
  br i1 %78, label %79, label %82

79:                                               ; preds = %65
  %80 = load %struct.rb_node*, %struct.rb_node** %6, align 8
  %81 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %80, i32 0, i32 1
  store %struct.rb_node** %81, %struct.rb_node*** %5, align 8
  br label %85

82:                                               ; preds = %65
  %83 = load %struct.rb_node*, %struct.rb_node** %6, align 8
  %84 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %83, i32 0, i32 0
  store %struct.rb_node** %84, %struct.rb_node*** %5, align 8
  br label %85

85:                                               ; preds = %82, %79
  br label %61

86:                                               ; preds = %61
  %87 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %88 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %87, i32 0, i32 0
  %89 = load %struct.rb_node*, %struct.rb_node** %6, align 8
  %90 = load %struct.rb_node**, %struct.rb_node*** %5, align 8
  %91 = call i32 @rb_link_node(i32* %88, %struct.rb_node* %89, %struct.rb_node** %90)
  %92 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %93 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %92, i32 0, i32 0
  %94 = load %struct.fq_flow*, %struct.fq_flow** %3, align 8
  %95 = getelementptr inbounds %struct.fq_flow, %struct.fq_flow* %94, i32 0, i32 0
  %96 = call i32 @rb_insert_color(i32* %93, %struct.TYPE_3__* %95)
  br label %97

97:                                               ; preds = %86, %51
  ret void
}

declare dso_local i64 @ktime_get_ns(...) #1

declare dso_local %struct.TYPE_4__* @fq_skb_cb(%struct.sk_buff*) #1

declare dso_local %struct.sk_buff* @rb_to_skb(%struct.rb_node*) #1

declare dso_local i32 @rb_link_node(i32*, %struct.rb_node*, %struct.rb_node**) #1

declare dso_local i32 @rb_insert_color(i32*, %struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
