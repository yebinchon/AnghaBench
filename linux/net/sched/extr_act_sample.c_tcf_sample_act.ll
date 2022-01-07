; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_act_sample.c_tcf_sample_act.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_act_sample.c_tcf_sample_act.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32, i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.tc_action = type { i32 }
%struct.tcf_result = type { i32 }
%struct.tcf_sample = type { i32, i32, i64, i32, i32, %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.psample_group = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.tc_action*, %struct.tcf_result*)* @tcf_sample_act to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcf_sample_act(%struct.sk_buff* %0, %struct.tc_action* %1, %struct.tcf_result* %2) #0 {
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.tc_action*, align 8
  %6 = alloca %struct.tcf_result*, align 8
  %7 = alloca %struct.tcf_sample*, align 8
  %8 = alloca %struct.psample_group*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.tc_action* %1, %struct.tc_action** %5, align 8
  store %struct.tcf_result* %2, %struct.tcf_result** %6, align 8
  %13 = load %struct.tc_action*, %struct.tc_action** %5, align 8
  %14 = call %struct.tcf_sample* @to_sample(%struct.tc_action* %13)
  store %struct.tcf_sample* %14, %struct.tcf_sample** %7, align 8
  %15 = load %struct.tcf_sample*, %struct.tcf_sample** %7, align 8
  %16 = getelementptr inbounds %struct.tcf_sample, %struct.tcf_sample* %15, i32 0, i32 6
  %17 = call i32 @tcf_lastuse_update(i32* %16)
  %18 = load %struct.tcf_sample*, %struct.tcf_sample** %7, align 8
  %19 = getelementptr inbounds %struct.tcf_sample, %struct.tcf_sample* %18, i32 0, i32 5
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @this_cpu_ptr(i32 %21)
  %23 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %24 = call i32 @bstats_cpu_update(i32 %22, %struct.sk_buff* %23)
  %25 = load %struct.tcf_sample*, %struct.tcf_sample** %7, align 8
  %26 = getelementptr inbounds %struct.tcf_sample, %struct.tcf_sample* %25, i32 0, i32 4
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @READ_ONCE(i32 %27)
  store i32 %28, i32* %9, align 4
  %29 = load %struct.tcf_sample*, %struct.tcf_sample** %7, align 8
  %30 = getelementptr inbounds %struct.tcf_sample, %struct.tcf_sample* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 8
  %32 = call %struct.psample_group* @rcu_dereference_bh(i32 %31)
  store %struct.psample_group* %32, %struct.psample_group** %8, align 8
  %33 = load %struct.psample_group*, %struct.psample_group** %8, align 8
  %34 = icmp ne %struct.psample_group* %33, null
  br i1 %34, label %35, label %117

35:                                               ; preds = %3
  %36 = call i32 (...) @prandom_u32()
  %37 = load %struct.tcf_sample*, %struct.tcf_sample** %7, align 8
  %38 = getelementptr inbounds %struct.tcf_sample, %struct.tcf_sample* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = srem i32 %36, %39
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %117

42:                                               ; preds = %35
  %43 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %44 = call i64 @skb_at_tc_ingress(%struct.sk_buff* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %55, label %46

46:                                               ; preds = %42
  %47 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %48 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  store i32 %49, i32* %11, align 4
  %50 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %51 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %50, i32 0, i32 3
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  store i32 %54, i32* %12, align 4
  br label %61

55:                                               ; preds = %42
  %56 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %57 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %56, i32 0, i32 3
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  store i32 %60, i32* %11, align 4
  store i32 0, i32* %12, align 4
  br label %61

61:                                               ; preds = %55, %46
  %62 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %63 = call i64 @skb_at_tc_ingress(%struct.sk_buff* %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %77

65:                                               ; preds = %61
  %66 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %67 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %66, i32 0, i32 3
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %67, align 8
  %69 = call i64 @tcf_sample_dev_ok_push(%struct.TYPE_4__* %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %77

71:                                               ; preds = %65
  %72 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %73 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %74 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 8
  %76 = call i32 @skb_push(%struct.sk_buff* %72, i32 %75)
  br label %77

77:                                               ; preds = %71, %65, %61
  %78 = load %struct.tcf_sample*, %struct.tcf_sample** %7, align 8
  %79 = getelementptr inbounds %struct.tcf_sample, %struct.tcf_sample* %78, i32 0, i32 2
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %86

82:                                               ; preds = %77
  %83 = load %struct.tcf_sample*, %struct.tcf_sample** %7, align 8
  %84 = getelementptr inbounds %struct.tcf_sample, %struct.tcf_sample* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  br label %90

86:                                               ; preds = %77
  %87 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %88 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  br label %90

90:                                               ; preds = %86, %82
  %91 = phi i32 [ %85, %82 ], [ %89, %86 ]
  store i32 %91, i32* %10, align 4
  %92 = load %struct.psample_group*, %struct.psample_group** %8, align 8
  %93 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %94 = load i32, i32* %10, align 4
  %95 = load i32, i32* %11, align 4
  %96 = load i32, i32* %12, align 4
  %97 = load %struct.tcf_sample*, %struct.tcf_sample** %7, align 8
  %98 = getelementptr inbounds %struct.tcf_sample, %struct.tcf_sample* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = call i32 @psample_sample_packet(%struct.psample_group* %92, %struct.sk_buff* %93, i32 %94, i32 %95, i32 %96, i32 %99)
  %101 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %102 = call i64 @skb_at_tc_ingress(%struct.sk_buff* %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %116

104:                                              ; preds = %90
  %105 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %106 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %105, i32 0, i32 3
  %107 = load %struct.TYPE_4__*, %struct.TYPE_4__** %106, align 8
  %108 = call i64 @tcf_sample_dev_ok_push(%struct.TYPE_4__* %107)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %116

110:                                              ; preds = %104
  %111 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %112 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %113 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 8
  %115 = call i32 @skb_pull(%struct.sk_buff* %111, i32 %114)
  br label %116

116:                                              ; preds = %110, %104, %90
  br label %117

117:                                              ; preds = %116, %35, %3
  %118 = load i32, i32* %9, align 4
  ret i32 %118
}

declare dso_local %struct.tcf_sample* @to_sample(%struct.tc_action*) #1

declare dso_local i32 @tcf_lastuse_update(i32*) #1

declare dso_local i32 @bstats_cpu_update(i32, %struct.sk_buff*) #1

declare dso_local i32 @this_cpu_ptr(i32) #1

declare dso_local i32 @READ_ONCE(i32) #1

declare dso_local %struct.psample_group* @rcu_dereference_bh(i32) #1

declare dso_local i32 @prandom_u32(...) #1

declare dso_local i64 @skb_at_tc_ingress(%struct.sk_buff*) #1

declare dso_local i64 @tcf_sample_dev_ok_push(%struct.TYPE_4__*) #1

declare dso_local i32 @skb_push(%struct.sk_buff*, i32) #1

declare dso_local i32 @psample_sample_packet(%struct.psample_group*, %struct.sk_buff*, i32, i32, i32, i32) #1

declare dso_local i32 @skb_pull(%struct.sk_buff*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
