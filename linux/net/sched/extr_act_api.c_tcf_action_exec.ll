; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_act_api.c_tcf_action_exec.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_act_api.c_tcf_action_exec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.tc_action = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.sk_buff*, %struct.tc_action*, %struct.tcf_result*)* }
%struct.tcf_result = type { i32 }

@TCA_ACT_MAX_PRIO = common dso_local global i32 0, align 4
@TC_ACT_OK = common dso_local global i32 0, align 4
@TC_ACT_REPEAT = common dso_local global i32 0, align 4
@TC_ACT_JUMP = common dso_local global i32 0, align 4
@TCA_ACT_MAX_PRIO_MASK = common dso_local global i32 0, align 4
@TC_ACT_GOTO_CHAIN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"can't go to NULL chain!\0A\00", align 1
@TC_ACT_SHOT = common dso_local global i32 0, align 4
@TC_ACT_PIPE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tcf_action_exec(%struct.sk_buff* %0, %struct.tc_action** %1, i32 %2, %struct.tcf_result* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.tc_action**, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.tcf_result*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.tc_action*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %6, align 8
  store %struct.tc_action** %1, %struct.tc_action*** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.tcf_result* %3, %struct.tcf_result** %9, align 8
  store i32 0, i32* %10, align 4
  %15 = load i32, i32* @TCA_ACT_MAX_PRIO, align 4
  store i32 %15, i32* %11, align 4
  %16 = load i32, i32* @TC_ACT_OK, align 4
  store i32 %16, i32* %13, align 4
  %17 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %18 = call i64 @skb_skip_tc_classify(%struct.sk_buff* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %4
  %21 = load i32, i32* @TC_ACT_OK, align 4
  store i32 %21, i32* %5, align 4
  br label %113

22:                                               ; preds = %4
  br label %23

23:                                               ; preds = %76, %22
  store i32 0, i32* %12, align 4
  br label %24

24:                                               ; preds = %108, %23
  %25 = load i32, i32* %12, align 4
  %26 = load i32, i32* %8, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %111

28:                                               ; preds = %24
  %29 = load %struct.tc_action**, %struct.tc_action*** %7, align 8
  %30 = load i32, i32* %12, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.tc_action*, %struct.tc_action** %29, i64 %31
  %33 = load %struct.tc_action*, %struct.tc_action** %32, align 8
  store %struct.tc_action* %33, %struct.tc_action** %14, align 8
  %34 = load i32, i32* %10, align 4
  %35 = icmp sgt i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %28
  %37 = load i32, i32* %10, align 4
  %38 = sub nsw i32 %37, 1
  store i32 %38, i32* %10, align 4
  br label %108

39:                                               ; preds = %28
  br label %40

40:                                               ; preds = %53, %39
  %41 = load %struct.tc_action*, %struct.tc_action** %14, align 8
  %42 = getelementptr inbounds %struct.tc_action, %struct.tc_action* %41, i32 0, i32 1
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32 (%struct.sk_buff*, %struct.tc_action*, %struct.tcf_result*)*, i32 (%struct.sk_buff*, %struct.tc_action*, %struct.tcf_result*)** %44, align 8
  %46 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %47 = load %struct.tc_action*, %struct.tc_action** %14, align 8
  %48 = load %struct.tcf_result*, %struct.tcf_result** %9, align 8
  %49 = call i32 %45(%struct.sk_buff* %46, %struct.tc_action* %47, %struct.tcf_result* %48)
  store i32 %49, i32* %13, align 4
  %50 = load i32, i32* %13, align 4
  %51 = load i32, i32* @TC_ACT_REPEAT, align 4
  %52 = icmp eq i32 %50, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %40
  br label %40

54:                                               ; preds = %40
  %55 = load i32, i32* %13, align 4
  %56 = load i32, i32* @TC_ACT_JUMP, align 4
  %57 = call i64 @TC_ACT_EXT_CMP(i32 %55, i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %79

59:                                               ; preds = %54
  %60 = load i32, i32* %13, align 4
  %61 = load i32, i32* @TCA_ACT_MAX_PRIO_MASK, align 4
  %62 = and i32 %60, %61
  store i32 %62, i32* %10, align 4
  %63 = load i32, i32* %10, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %59
  %66 = load i32, i32* %10, align 4
  %67 = load i32, i32* %8, align 4
  %68 = icmp sgt i32 %66, %67
  br i1 %68, label %69, label %71

69:                                               ; preds = %65, %59
  %70 = load i32, i32* @TC_ACT_OK, align 4
  store i32 %70, i32* %5, align 4
  br label %113

71:                                               ; preds = %65
  %72 = load i32, i32* %11, align 4
  %73 = sub nsw i32 %72, 1
  store i32 %73, i32* %11, align 4
  %74 = load i32, i32* %11, align 4
  %75 = icmp sgt i32 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %71
  br label %23

77:                                               ; preds = %71
  %78 = load i32, i32* @TC_ACT_OK, align 4
  store i32 %78, i32* %5, align 4
  br label %113

79:                                               ; preds = %54
  %80 = load i32, i32* %13, align 4
  %81 = load i32, i32* @TC_ACT_GOTO_CHAIN, align 4
  %82 = call i64 @TC_ACT_EXT_CMP(i32 %80, i32 %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %101

84:                                               ; preds = %79
  %85 = load %struct.tc_action*, %struct.tc_action** %14, align 8
  %86 = getelementptr inbounds %struct.tc_action, %struct.tc_action* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = call i32 @rcu_access_pointer(i32 %87)
  %89 = icmp ne i32 %88, 0
  %90 = xor i1 %89, true
  %91 = zext i1 %90 to i32
  %92 = call i64 @unlikely(i32 %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %97

94:                                               ; preds = %84
  %95 = call i32 @net_warn_ratelimited(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %96 = load i32, i32* @TC_ACT_SHOT, align 4
  store i32 %96, i32* %5, align 4
  br label %113

97:                                               ; preds = %84
  %98 = load %struct.tc_action*, %struct.tc_action** %14, align 8
  %99 = load %struct.tcf_result*, %struct.tcf_result** %9, align 8
  %100 = call i32 @tcf_action_goto_chain_exec(%struct.tc_action* %98, %struct.tcf_result* %99)
  br label %101

101:                                              ; preds = %97, %79
  br label %102

102:                                              ; preds = %101
  %103 = load i32, i32* %13, align 4
  %104 = load i32, i32* @TC_ACT_PIPE, align 4
  %105 = icmp ne i32 %103, %104
  br i1 %105, label %106, label %107

106:                                              ; preds = %102
  br label %111

107:                                              ; preds = %102
  br label %108

108:                                              ; preds = %107, %36
  %109 = load i32, i32* %12, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %12, align 4
  br label %24

111:                                              ; preds = %106, %24
  %112 = load i32, i32* %13, align 4
  store i32 %112, i32* %5, align 4
  br label %113

113:                                              ; preds = %111, %94, %77, %69, %20
  %114 = load i32, i32* %5, align 4
  ret i32 %114
}

declare dso_local i64 @skb_skip_tc_classify(%struct.sk_buff*) #1

declare dso_local i64 @TC_ACT_EXT_CMP(i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @rcu_access_pointer(i32) #1

declare dso_local i32 @net_warn_ratelimited(i8*) #1

declare dso_local i32 @tcf_action_goto_chain_exec(%struct.tc_action*, %struct.tcf_result*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
