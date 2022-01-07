; ModuleID = '/home/carl/AnghaBench/linux/net/openvswitch/extr_actions.c_clone_execute.c'
source_filename = "/home/carl/AnghaBench/linux/net/openvswitch/extr_actions.c_clone_execute.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.datapath = type { i32 }
%struct.sk_buff = type { i32 }
%struct.sw_flow_key = type { i8* }
%struct.nlattr = type { i32 }
%struct.deferred_action = type { %struct.sw_flow_key }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@exec_actions_level = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [55 x i8] c"%s: deferred action limit reached, drop sample action\0A\00", align 1
@.str.1 = private unnamed_addr constant [55 x i8] c"%s: deferred action limit reached, drop recirc action\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.datapath*, %struct.sk_buff*, %struct.sw_flow_key*, i8*, %struct.nlattr*, i32, i32, i32)* @clone_execute to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @clone_execute(%struct.datapath* %0, %struct.sk_buff* %1, %struct.sw_flow_key* %2, i8* %3, %struct.nlattr* %4, i32 %5, i32 %6, i32 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.datapath*, align 8
  %11 = alloca %struct.sk_buff*, align 8
  %12 = alloca %struct.sw_flow_key*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca %struct.nlattr*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.deferred_action*, align 8
  %19 = alloca %struct.sw_flow_key*, align 8
  %20 = alloca i32, align 4
  store %struct.datapath* %0, %struct.datapath** %10, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %11, align 8
  store %struct.sw_flow_key* %2, %struct.sw_flow_key** %12, align 8
  store i8* %3, i8** %13, align 8
  store %struct.nlattr* %4, %struct.nlattr** %14, align 8
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  %21 = load i32, i32* %16, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %8
  %24 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  br label %29

25:                                               ; preds = %8
  %26 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %27 = load i32, i32* @GFP_ATOMIC, align 4
  %28 = call %struct.sk_buff* @skb_clone(%struct.sk_buff* %26, i32 %27)
  br label %29

29:                                               ; preds = %25, %23
  %30 = phi %struct.sk_buff* [ %24, %23 ], [ %28, %25 ]
  store %struct.sk_buff* %30, %struct.sk_buff** %11, align 8
  %31 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %32 = icmp ne %struct.sk_buff* %31, null
  br i1 %32, label %34, label %33

33:                                               ; preds = %29
  store i32 0, i32* %9, align 4
  br label %114

34:                                               ; preds = %29
  %35 = load i32, i32* %17, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %34
  %38 = load %struct.sw_flow_key*, %struct.sw_flow_key** %12, align 8
  %39 = call %struct.sw_flow_key* @clone_key(%struct.sw_flow_key* %38)
  br label %42

40:                                               ; preds = %34
  %41 = load %struct.sw_flow_key*, %struct.sw_flow_key** %12, align 8
  br label %42

42:                                               ; preds = %40, %37
  %43 = phi %struct.sw_flow_key* [ %39, %37 ], [ %41, %40 ]
  store %struct.sw_flow_key* %43, %struct.sw_flow_key** %19, align 8
  %44 = load %struct.sw_flow_key*, %struct.sw_flow_key** %19, align 8
  %45 = icmp ne %struct.sw_flow_key* %44, null
  br i1 %45, label %46, label %77

46:                                               ; preds = %42
  store i32 0, i32* %20, align 4
  %47 = load %struct.nlattr*, %struct.nlattr** %14, align 8
  %48 = icmp ne %struct.nlattr* %47, null
  br i1 %48, label %49, label %68

49:                                               ; preds = %46
  %50 = load i32, i32* %17, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %49
  %53 = load i32, i32* @exec_actions_level, align 4
  %54 = call i32 @__this_cpu_inc(i32 %53)
  br label %55

55:                                               ; preds = %52, %49
  %56 = load %struct.datapath*, %struct.datapath** %10, align 8
  %57 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %58 = load %struct.sw_flow_key*, %struct.sw_flow_key** %19, align 8
  %59 = load %struct.nlattr*, %struct.nlattr** %14, align 8
  %60 = load i32, i32* %15, align 4
  %61 = call i32 @do_execute_actions(%struct.datapath* %56, %struct.sk_buff* %57, %struct.sw_flow_key* %58, %struct.nlattr* %59, i32 %60)
  store i32 %61, i32* %20, align 4
  %62 = load i32, i32* %17, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %55
  %65 = load i32, i32* @exec_actions_level, align 4
  %66 = call i32 @__this_cpu_dec(i32 %65)
  br label %67

67:                                               ; preds = %64, %55
  br label %75

68:                                               ; preds = %46
  %69 = load i8*, i8** %13, align 8
  %70 = load %struct.sw_flow_key*, %struct.sw_flow_key** %19, align 8
  %71 = getelementptr inbounds %struct.sw_flow_key, %struct.sw_flow_key* %70, i32 0, i32 0
  store i8* %69, i8** %71, align 8
  %72 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %73 = load %struct.sw_flow_key*, %struct.sw_flow_key** %19, align 8
  %74 = call i32 @ovs_dp_process_packet(%struct.sk_buff* %72, %struct.sw_flow_key* %73)
  br label %75

75:                                               ; preds = %68, %67
  %76 = load i32, i32* %20, align 4
  store i32 %76, i32* %9, align 4
  br label %114

77:                                               ; preds = %42
  %78 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %79 = load %struct.sw_flow_key*, %struct.sw_flow_key** %12, align 8
  %80 = load %struct.nlattr*, %struct.nlattr** %14, align 8
  %81 = load i32, i32* %15, align 4
  %82 = call %struct.deferred_action* @add_deferred_actions(%struct.sk_buff* %78, %struct.sw_flow_key* %79, %struct.nlattr* %80, i32 %81)
  store %struct.deferred_action* %82, %struct.deferred_action** %18, align 8
  %83 = load %struct.deferred_action*, %struct.deferred_action** %18, align 8
  %84 = icmp ne %struct.deferred_action* %83, null
  br i1 %84, label %85, label %95

85:                                               ; preds = %77
  %86 = load %struct.nlattr*, %struct.nlattr** %14, align 8
  %87 = icmp ne %struct.nlattr* %86, null
  br i1 %87, label %94, label %88

88:                                               ; preds = %85
  %89 = load %struct.deferred_action*, %struct.deferred_action** %18, align 8
  %90 = getelementptr inbounds %struct.deferred_action, %struct.deferred_action* %89, i32 0, i32 0
  store %struct.sw_flow_key* %90, %struct.sw_flow_key** %12, align 8
  %91 = load i8*, i8** %13, align 8
  %92 = load %struct.sw_flow_key*, %struct.sw_flow_key** %12, align 8
  %93 = getelementptr inbounds %struct.sw_flow_key, %struct.sw_flow_key* %92, i32 0, i32 0
  store i8* %91, i8** %93, align 8
  br label %94

94:                                               ; preds = %88, %85
  br label %113

95:                                               ; preds = %77
  %96 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %97 = call i32 @kfree_skb(%struct.sk_buff* %96)
  %98 = call i64 (...) @net_ratelimit()
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %112

100:                                              ; preds = %95
  %101 = load %struct.nlattr*, %struct.nlattr** %14, align 8
  %102 = icmp ne %struct.nlattr* %101, null
  br i1 %102, label %103, label %107

103:                                              ; preds = %100
  %104 = load %struct.datapath*, %struct.datapath** %10, align 8
  %105 = call i32 @ovs_dp_name(%struct.datapath* %104)
  %106 = call i32 @pr_warn(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i32 %105)
  br label %111

107:                                              ; preds = %100
  %108 = load %struct.datapath*, %struct.datapath** %10, align 8
  %109 = call i32 @ovs_dp_name(%struct.datapath* %108)
  %110 = call i32 @pr_warn(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.1, i64 0, i64 0), i32 %109)
  br label %111

111:                                              ; preds = %107, %103
  br label %112

112:                                              ; preds = %111, %95
  br label %113

113:                                              ; preds = %112, %94
  store i32 0, i32* %9, align 4
  br label %114

114:                                              ; preds = %113, %75, %33
  %115 = load i32, i32* %9, align 4
  ret i32 %115
}

declare dso_local %struct.sk_buff* @skb_clone(%struct.sk_buff*, i32) #1

declare dso_local %struct.sw_flow_key* @clone_key(%struct.sw_flow_key*) #1

declare dso_local i32 @__this_cpu_inc(i32) #1

declare dso_local i32 @do_execute_actions(%struct.datapath*, %struct.sk_buff*, %struct.sw_flow_key*, %struct.nlattr*, i32) #1

declare dso_local i32 @__this_cpu_dec(i32) #1

declare dso_local i32 @ovs_dp_process_packet(%struct.sk_buff*, %struct.sw_flow_key*) #1

declare dso_local %struct.deferred_action* @add_deferred_actions(%struct.sk_buff*, %struct.sw_flow_key*, %struct.nlattr*, i32) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i64 @net_ratelimit(...) #1

declare dso_local i32 @pr_warn(i8*, i32) #1

declare dso_local i32 @ovs_dp_name(%struct.datapath*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
