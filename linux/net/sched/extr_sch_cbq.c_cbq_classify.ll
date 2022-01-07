; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_sch_cbq.c_cbq_classify.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_sch_cbq.c_cbq_classify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cbq_class = type { i64, %struct.cbq_class**, i32 }
%struct.sk_buff = type { i64 }
%struct.Qdisc = type { i64 }
%struct.cbq_sched_data = type { %struct.cbq_class }
%struct.tcf_proto = type { i32 }
%struct.tcf_result = type { i64, i64 }

@NET_XMIT_SUCCESS = common dso_local global i32 0, align 4
@__NET_XMIT_BYPASS = common dso_local global i32 0, align 4
@TC_PRIO_MAX = common dso_local global i64 0, align 8
@TC_PRIO_BESTEFFORT = common dso_local global i64 0, align 8
@__NET_XMIT_STOLEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.cbq_class* (%struct.sk_buff*, %struct.Qdisc*, i32*)* @cbq_classify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.cbq_class* @cbq_classify(%struct.sk_buff* %0, %struct.Qdisc* %1, i32* %2) #0 {
  %4 = alloca %struct.cbq_class*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.Qdisc*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.cbq_sched_data*, align 8
  %9 = alloca %struct.cbq_class*, align 8
  %10 = alloca %struct.cbq_class**, align 8
  %11 = alloca %struct.cbq_class*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.tcf_proto*, align 8
  %14 = alloca %struct.tcf_result, align 8
  %15 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %5, align 8
  store %struct.Qdisc* %1, %struct.Qdisc** %6, align 8
  store i32* %2, i32** %7, align 8
  %16 = load %struct.Qdisc*, %struct.Qdisc** %6, align 8
  %17 = call %struct.cbq_sched_data* @qdisc_priv(%struct.Qdisc* %16)
  store %struct.cbq_sched_data* %17, %struct.cbq_sched_data** %8, align 8
  %18 = load %struct.cbq_sched_data*, %struct.cbq_sched_data** %8, align 8
  %19 = getelementptr inbounds %struct.cbq_sched_data, %struct.cbq_sched_data* %18, i32 0, i32 0
  store %struct.cbq_class* %19, %struct.cbq_class** %9, align 8
  store %struct.cbq_class* null, %struct.cbq_class** %11, align 8
  %20 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %21 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  store i64 %22, i64* %12, align 8
  %23 = load i64, i64* %12, align 8
  %24 = load %struct.Qdisc*, %struct.Qdisc** %6, align 8
  %25 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = xor i64 %23, %26
  %28 = call i64 @TC_H_MAJ(i64 %27)
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %37

30:                                               ; preds = %3
  %31 = load %struct.cbq_sched_data*, %struct.cbq_sched_data** %8, align 8
  %32 = load i64, i64* %12, align 8
  %33 = call %struct.cbq_class* @cbq_class_lookup(%struct.cbq_sched_data* %31, i64 %32)
  store %struct.cbq_class* %33, %struct.cbq_class** %11, align 8
  %34 = icmp ne %struct.cbq_class* %33, null
  br i1 %34, label %35, label %37

35:                                               ; preds = %30
  %36 = load %struct.cbq_class*, %struct.cbq_class** %11, align 8
  store %struct.cbq_class* %36, %struct.cbq_class** %4, align 8
  br label %141

37:                                               ; preds = %30, %3
  %38 = load i32, i32* @NET_XMIT_SUCCESS, align 4
  %39 = load i32, i32* @__NET_XMIT_BYPASS, align 4
  %40 = or i32 %38, %39
  %41 = load i32*, i32** %7, align 8
  store i32 %40, i32* %41, align 4
  br label %42

42:                                               ; preds = %112, %37
  store i32 0, i32* %15, align 4
  %43 = load %struct.cbq_class*, %struct.cbq_class** %9, align 8
  %44 = getelementptr inbounds %struct.cbq_class, %struct.cbq_class* %43, i32 0, i32 1
  %45 = load %struct.cbq_class**, %struct.cbq_class*** %44, align 8
  store %struct.cbq_class** %45, %struct.cbq_class*** %10, align 8
  %46 = load %struct.cbq_class*, %struct.cbq_class** %9, align 8
  %47 = getelementptr inbounds %struct.cbq_class, %struct.cbq_class* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = call %struct.tcf_proto* @rcu_dereference_bh(i32 %48)
  store %struct.tcf_proto* %49, %struct.tcf_proto** %13, align 8
  %50 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %51 = load %struct.tcf_proto*, %struct.tcf_proto** %13, align 8
  %52 = call i32 @tcf_classify(%struct.sk_buff* %50, %struct.tcf_proto* %51, %struct.tcf_result* %14, i32 1)
  store i32 %52, i32* %15, align 4
  %53 = load %struct.tcf_proto*, %struct.tcf_proto** %13, align 8
  %54 = icmp ne %struct.tcf_proto* %53, null
  br i1 %54, label %55, label %58

55:                                               ; preds = %42
  %56 = load i32, i32* %15, align 4
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %55, %42
  br label %114

59:                                               ; preds = %55
  %60 = getelementptr inbounds %struct.tcf_result, %struct.tcf_result* %14, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = inttoptr i64 %61 to i8*
  %63 = bitcast i8* %62 to %struct.cbq_class*
  store %struct.cbq_class* %63, %struct.cbq_class** %11, align 8
  %64 = load %struct.cbq_class*, %struct.cbq_class** %11, align 8
  %65 = icmp ne %struct.cbq_class* %64, null
  br i1 %65, label %96, label %66

66:                                               ; preds = %59
  %67 = getelementptr inbounds %struct.tcf_result, %struct.tcf_result* %14, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = call i64 @TC_H_MAJ(i64 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %76

71:                                               ; preds = %66
  %72 = load %struct.cbq_sched_data*, %struct.cbq_sched_data** %8, align 8
  %73 = getelementptr inbounds %struct.tcf_result, %struct.tcf_result* %14, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = call %struct.cbq_class* @cbq_class_lookup(%struct.cbq_sched_data* %72, i64 %74)
  store %struct.cbq_class* %75, %struct.cbq_class** %11, align 8
  br label %91

76:                                               ; preds = %66
  %77 = load %struct.cbq_class**, %struct.cbq_class*** %10, align 8
  %78 = getelementptr inbounds %struct.tcf_result, %struct.tcf_result* %14, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @TC_PRIO_MAX, align 8
  %81 = and i64 %79, %80
  %82 = getelementptr inbounds %struct.cbq_class*, %struct.cbq_class** %77, i64 %81
  %83 = load %struct.cbq_class*, %struct.cbq_class** %82, align 8
  store %struct.cbq_class* %83, %struct.cbq_class** %11, align 8
  %84 = icmp eq %struct.cbq_class* %83, null
  br i1 %84, label %85, label %90

85:                                               ; preds = %76
  %86 = load %struct.cbq_class**, %struct.cbq_class*** %10, align 8
  %87 = load i64, i64* @TC_PRIO_BESTEFFORT, align 8
  %88 = getelementptr inbounds %struct.cbq_class*, %struct.cbq_class** %86, i64 %87
  %89 = load %struct.cbq_class*, %struct.cbq_class** %88, align 8
  store %struct.cbq_class* %89, %struct.cbq_class** %11, align 8
  br label %90

90:                                               ; preds = %85, %76
  br label %91

91:                                               ; preds = %90, %71
  %92 = load %struct.cbq_class*, %struct.cbq_class** %11, align 8
  %93 = icmp eq %struct.cbq_class* %92, null
  br i1 %93, label %94, label %95

94:                                               ; preds = %91
  br label %114

95:                                               ; preds = %91
  br label %96

96:                                               ; preds = %95, %59
  %97 = load %struct.cbq_class*, %struct.cbq_class** %11, align 8
  %98 = getelementptr inbounds %struct.cbq_class, %struct.cbq_class* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = load %struct.cbq_class*, %struct.cbq_class** %9, align 8
  %101 = getelementptr inbounds %struct.cbq_class, %struct.cbq_class* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = icmp sge i64 %99, %102
  br i1 %103, label %104, label %105

104:                                              ; preds = %96
  br label %114

105:                                              ; preds = %96
  %106 = load %struct.cbq_class*, %struct.cbq_class** %11, align 8
  %107 = getelementptr inbounds %struct.cbq_class, %struct.cbq_class* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = icmp eq i64 %108, 0
  br i1 %109, label %110, label %112

110:                                              ; preds = %105
  %111 = load %struct.cbq_class*, %struct.cbq_class** %11, align 8
  store %struct.cbq_class* %111, %struct.cbq_class** %4, align 8
  br label %141

112:                                              ; preds = %105
  %113 = load %struct.cbq_class*, %struct.cbq_class** %11, align 8
  store %struct.cbq_class* %113, %struct.cbq_class** %9, align 8
  br label %42

114:                                              ; preds = %104, %94, %58
  %115 = load %struct.cbq_class*, %struct.cbq_class** %9, align 8
  store %struct.cbq_class* %115, %struct.cbq_class** %11, align 8
  %116 = load i64, i64* %12, align 8
  %117 = call i64 @TC_H_MAJ(i64 %116)
  %118 = icmp eq i64 %117, 0
  br i1 %118, label %119, label %139

119:                                              ; preds = %114
  %120 = load %struct.cbq_class*, %struct.cbq_class** %9, align 8
  %121 = getelementptr inbounds %struct.cbq_class, %struct.cbq_class* %120, i32 0, i32 1
  %122 = load %struct.cbq_class**, %struct.cbq_class*** %121, align 8
  %123 = load i64, i64* %12, align 8
  %124 = load i64, i64* @TC_PRIO_MAX, align 8
  %125 = and i64 %123, %124
  %126 = getelementptr inbounds %struct.cbq_class*, %struct.cbq_class** %122, i64 %125
  %127 = load %struct.cbq_class*, %struct.cbq_class** %126, align 8
  store %struct.cbq_class* %127, %struct.cbq_class** %11, align 8
  %128 = icmp ne %struct.cbq_class* %127, null
  br i1 %128, label %139, label %129

129:                                              ; preds = %119
  %130 = load %struct.cbq_class*, %struct.cbq_class** %9, align 8
  %131 = getelementptr inbounds %struct.cbq_class, %struct.cbq_class* %130, i32 0, i32 1
  %132 = load %struct.cbq_class**, %struct.cbq_class*** %131, align 8
  %133 = load i64, i64* @TC_PRIO_BESTEFFORT, align 8
  %134 = getelementptr inbounds %struct.cbq_class*, %struct.cbq_class** %132, i64 %133
  %135 = load %struct.cbq_class*, %struct.cbq_class** %134, align 8
  store %struct.cbq_class* %135, %struct.cbq_class** %11, align 8
  %136 = icmp ne %struct.cbq_class* %135, null
  br i1 %136, label %139, label %137

137:                                              ; preds = %129
  %138 = load %struct.cbq_class*, %struct.cbq_class** %9, align 8
  store %struct.cbq_class* %138, %struct.cbq_class** %4, align 8
  br label %141

139:                                              ; preds = %129, %119, %114
  %140 = load %struct.cbq_class*, %struct.cbq_class** %11, align 8
  store %struct.cbq_class* %140, %struct.cbq_class** %4, align 8
  br label %141

141:                                              ; preds = %139, %137, %110, %35
  %142 = load %struct.cbq_class*, %struct.cbq_class** %4, align 8
  ret %struct.cbq_class* %142
}

declare dso_local %struct.cbq_sched_data* @qdisc_priv(%struct.Qdisc*) #1

declare dso_local i64 @TC_H_MAJ(i64) #1

declare dso_local %struct.cbq_class* @cbq_class_lookup(%struct.cbq_sched_data*, i64) #1

declare dso_local %struct.tcf_proto* @rcu_dereference_bh(i32) #1

declare dso_local i32 @tcf_classify(%struct.sk_buff*, %struct.tcf_proto*, %struct.tcf_result*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
