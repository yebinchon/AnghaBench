; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_sch_hfsc.c_hfsc_classify.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_sch_hfsc.c_hfsc_classify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hfsc_class = type { i64, i32 }
%struct.sk_buff = type { i32 }
%struct.Qdisc = type { i32 }
%struct.hfsc_sched = type { i32, %struct.hfsc_class }
%struct.tcf_result = type { i32, i64 }
%struct.tcf_proto = type { i32 }

@NET_XMIT_SUCCESS = common dso_local global i32 0, align 4
@__NET_XMIT_BYPASS = common dso_local global i32 0, align 4
@__NET_XMIT_STOLEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.hfsc_class* (%struct.sk_buff*, %struct.Qdisc*, i32*)* @hfsc_classify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.hfsc_class* @hfsc_classify(%struct.sk_buff* %0, %struct.Qdisc* %1, i32* %2) #0 {
  %4 = alloca %struct.hfsc_class*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.Qdisc*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.hfsc_sched*, align 8
  %9 = alloca %struct.hfsc_class*, align 8
  %10 = alloca %struct.hfsc_class*, align 8
  %11 = alloca %struct.tcf_result, align 8
  %12 = alloca %struct.tcf_proto*, align 8
  %13 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %5, align 8
  store %struct.Qdisc* %1, %struct.Qdisc** %6, align 8
  store i32* %2, i32** %7, align 8
  %14 = load %struct.Qdisc*, %struct.Qdisc** %6, align 8
  %15 = call %struct.hfsc_sched* @qdisc_priv(%struct.Qdisc* %14)
  store %struct.hfsc_sched* %15, %struct.hfsc_sched** %8, align 8
  %16 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %17 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.Qdisc*, %struct.Qdisc** %6, align 8
  %20 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = xor i32 %18, %21
  %23 = call i64 @TC_H_MAJ(i32 %22)
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %40

25:                                               ; preds = %3
  %26 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %27 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.Qdisc*, %struct.Qdisc** %6, align 8
  %30 = call %struct.hfsc_class* @hfsc_find_class(i32 %28, %struct.Qdisc* %29)
  store %struct.hfsc_class* %30, %struct.hfsc_class** %10, align 8
  %31 = icmp ne %struct.hfsc_class* %30, null
  br i1 %31, label %32, label %40

32:                                               ; preds = %25
  %33 = load %struct.hfsc_class*, %struct.hfsc_class** %10, align 8
  %34 = getelementptr inbounds %struct.hfsc_class, %struct.hfsc_class* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %32
  %38 = load %struct.hfsc_class*, %struct.hfsc_class** %10, align 8
  store %struct.hfsc_class* %38, %struct.hfsc_class** %4, align 8
  br label %120

39:                                               ; preds = %32
  br label %40

40:                                               ; preds = %39, %25, %3
  %41 = load i32, i32* @NET_XMIT_SUCCESS, align 4
  %42 = load i32, i32* @__NET_XMIT_BYPASS, align 4
  %43 = or i32 %41, %42
  %44 = load i32*, i32** %7, align 8
  store i32 %43, i32* %44, align 4
  %45 = load %struct.hfsc_sched*, %struct.hfsc_sched** %8, align 8
  %46 = getelementptr inbounds %struct.hfsc_sched, %struct.hfsc_sched* %45, i32 0, i32 1
  store %struct.hfsc_class* %46, %struct.hfsc_class** %9, align 8
  %47 = load %struct.hfsc_sched*, %struct.hfsc_sched** %8, align 8
  %48 = getelementptr inbounds %struct.hfsc_sched, %struct.hfsc_sched* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.hfsc_class, %struct.hfsc_class* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = call %struct.tcf_proto* @rcu_dereference_bh(i32 %50)
  store %struct.tcf_proto* %51, %struct.tcf_proto** %12, align 8
  br label %52

52:                                               ; preds = %93, %40
  %53 = load %struct.tcf_proto*, %struct.tcf_proto** %12, align 8
  %54 = icmp ne %struct.tcf_proto* %53, null
  br i1 %54, label %55, label %60

55:                                               ; preds = %52
  %56 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %57 = load %struct.tcf_proto*, %struct.tcf_proto** %12, align 8
  %58 = call i32 @tcf_classify(%struct.sk_buff* %56, %struct.tcf_proto* %57, %struct.tcf_result* %11, i32 0)
  store i32 %58, i32* %13, align 4
  %59 = icmp sge i32 %58, 0
  br label %60

60:                                               ; preds = %55, %52
  %61 = phi i1 [ false, %52 ], [ %59, %55 ]
  br i1 %61, label %62, label %99

62:                                               ; preds = %60
  %63 = getelementptr inbounds %struct.tcf_result, %struct.tcf_result* %11, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = inttoptr i64 %64 to %struct.hfsc_class*
  store %struct.hfsc_class* %65, %struct.hfsc_class** %10, align 8
  %66 = load %struct.hfsc_class*, %struct.hfsc_class** %10, align 8
  %67 = icmp ne %struct.hfsc_class* %66, null
  br i1 %67, label %86, label %68

68:                                               ; preds = %62
  %69 = getelementptr inbounds %struct.tcf_result, %struct.tcf_result* %11, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load %struct.Qdisc*, %struct.Qdisc** %6, align 8
  %72 = call %struct.hfsc_class* @hfsc_find_class(i32 %70, %struct.Qdisc* %71)
  store %struct.hfsc_class* %72, %struct.hfsc_class** %10, align 8
  %73 = load %struct.hfsc_class*, %struct.hfsc_class** %10, align 8
  %74 = icmp ne %struct.hfsc_class* %73, null
  br i1 %74, label %76, label %75

75:                                               ; preds = %68
  br label %99

76:                                               ; preds = %68
  %77 = load %struct.hfsc_class*, %struct.hfsc_class** %10, align 8
  %78 = getelementptr inbounds %struct.hfsc_class, %struct.hfsc_class* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load %struct.hfsc_class*, %struct.hfsc_class** %9, align 8
  %81 = getelementptr inbounds %struct.hfsc_class, %struct.hfsc_class* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = icmp sge i64 %79, %82
  br i1 %83, label %84, label %85

84:                                               ; preds = %76
  br label %99

85:                                               ; preds = %76
  br label %86

86:                                               ; preds = %85, %62
  %87 = load %struct.hfsc_class*, %struct.hfsc_class** %10, align 8
  %88 = getelementptr inbounds %struct.hfsc_class, %struct.hfsc_class* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = icmp eq i64 %89, 0
  br i1 %90, label %91, label %93

91:                                               ; preds = %86
  %92 = load %struct.hfsc_class*, %struct.hfsc_class** %10, align 8
  store %struct.hfsc_class* %92, %struct.hfsc_class** %4, align 8
  br label %120

93:                                               ; preds = %86
  %94 = load %struct.hfsc_class*, %struct.hfsc_class** %10, align 8
  %95 = getelementptr inbounds %struct.hfsc_class, %struct.hfsc_class* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 8
  %97 = call %struct.tcf_proto* @rcu_dereference_bh(i32 %96)
  store %struct.tcf_proto* %97, %struct.tcf_proto** %12, align 8
  %98 = load %struct.hfsc_class*, %struct.hfsc_class** %10, align 8
  store %struct.hfsc_class* %98, %struct.hfsc_class** %9, align 8
  br label %52

99:                                               ; preds = %84, %75, %60
  %100 = load %struct.Qdisc*, %struct.Qdisc** %6, align 8
  %101 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = call i64 @TC_H_MAJ(i32 %102)
  %104 = load %struct.hfsc_sched*, %struct.hfsc_sched** %8, align 8
  %105 = getelementptr inbounds %struct.hfsc_sched, %struct.hfsc_sched* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = call i32 @TC_H_MAKE(i64 %103, i32 %106)
  %108 = load %struct.Qdisc*, %struct.Qdisc** %6, align 8
  %109 = call %struct.hfsc_class* @hfsc_find_class(i32 %107, %struct.Qdisc* %108)
  store %struct.hfsc_class* %109, %struct.hfsc_class** %10, align 8
  %110 = load %struct.hfsc_class*, %struct.hfsc_class** %10, align 8
  %111 = icmp eq %struct.hfsc_class* %110, null
  br i1 %111, label %117, label %112

112:                                              ; preds = %99
  %113 = load %struct.hfsc_class*, %struct.hfsc_class** %10, align 8
  %114 = getelementptr inbounds %struct.hfsc_class, %struct.hfsc_class* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = icmp sgt i64 %115, 0
  br i1 %116, label %117, label %118

117:                                              ; preds = %112, %99
  store %struct.hfsc_class* null, %struct.hfsc_class** %4, align 8
  br label %120

118:                                              ; preds = %112
  %119 = load %struct.hfsc_class*, %struct.hfsc_class** %10, align 8
  store %struct.hfsc_class* %119, %struct.hfsc_class** %4, align 8
  br label %120

120:                                              ; preds = %118, %117, %91, %37
  %121 = load %struct.hfsc_class*, %struct.hfsc_class** %4, align 8
  ret %struct.hfsc_class* %121
}

declare dso_local %struct.hfsc_sched* @qdisc_priv(%struct.Qdisc*) #1

declare dso_local i64 @TC_H_MAJ(i32) #1

declare dso_local %struct.hfsc_class* @hfsc_find_class(i32, %struct.Qdisc*) #1

declare dso_local %struct.tcf_proto* @rcu_dereference_bh(i32) #1

declare dso_local i32 @tcf_classify(%struct.sk_buff*, %struct.tcf_proto*, %struct.tcf_result*, i32) #1

declare dso_local i32 @TC_H_MAKE(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
