; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_sch_htb.c_htb_classify.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_sch_htb.c_htb_classify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.htb_class = type { i64, i32 }
%struct.sk_buff = type { i64 }
%struct.Qdisc = type { i64 }
%struct.htb_sched = type { i32, i32 }
%struct.tcf_result = type { i64, i64 }
%struct.tcf_proto = type { i32 }

@HTB_DIRECT = common dso_local global %struct.htb_class* null, align 8
@NET_XMIT_SUCCESS = common dso_local global i32 0, align 4
@__NET_XMIT_BYPASS = common dso_local global i32 0, align 4
@__NET_XMIT_STOLEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.htb_class* (%struct.sk_buff*, %struct.Qdisc*, i32*)* @htb_classify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.htb_class* @htb_classify(%struct.sk_buff* %0, %struct.Qdisc* %1, i32* %2) #0 {
  %4 = alloca %struct.htb_class*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.Qdisc*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.htb_sched*, align 8
  %9 = alloca %struct.htb_class*, align 8
  %10 = alloca %struct.tcf_result, align 8
  %11 = alloca %struct.tcf_proto*, align 8
  %12 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %5, align 8
  store %struct.Qdisc* %1, %struct.Qdisc** %6, align 8
  store i32* %2, i32** %7, align 8
  %13 = load %struct.Qdisc*, %struct.Qdisc** %6, align 8
  %14 = call %struct.htb_sched* @qdisc_priv(%struct.Qdisc* %13)
  store %struct.htb_sched* %14, %struct.htb_sched** %8, align 8
  %15 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %16 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.Qdisc*, %struct.Qdisc** %6, align 8
  %19 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp eq i64 %17, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %3
  %23 = load %struct.htb_class*, %struct.htb_class** @HTB_DIRECT, align 8
  store %struct.htb_class* %23, %struct.htb_class** %4, align 8
  br label %123

24:                                               ; preds = %3
  %25 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %26 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.Qdisc*, %struct.Qdisc** %6, align 8
  %29 = call %struct.htb_class* @htb_find(i64 %27, %struct.Qdisc* %28)
  store %struct.htb_class* %29, %struct.htb_class** %9, align 8
  %30 = load %struct.htb_class*, %struct.htb_class** %9, align 8
  %31 = icmp ne %struct.htb_class* %30, null
  br i1 %31, label %32, label %44

32:                                               ; preds = %24
  %33 = load %struct.htb_class*, %struct.htb_class** %9, align 8
  %34 = getelementptr inbounds %struct.htb_class, %struct.htb_class* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %32
  %38 = load %struct.htb_class*, %struct.htb_class** %9, align 8
  store %struct.htb_class* %38, %struct.htb_class** %4, align 8
  br label %123

39:                                               ; preds = %32
  %40 = load %struct.htb_class*, %struct.htb_class** %9, align 8
  %41 = getelementptr inbounds %struct.htb_class, %struct.htb_class* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = call %struct.tcf_proto* @rcu_dereference_bh(i32 %42)
  store %struct.tcf_proto* %43, %struct.tcf_proto** %11, align 8
  br label %49

44:                                               ; preds = %24
  %45 = load %struct.htb_sched*, %struct.htb_sched** %8, align 8
  %46 = getelementptr inbounds %struct.htb_sched, %struct.htb_sched* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = call %struct.tcf_proto* @rcu_dereference_bh(i32 %47)
  store %struct.tcf_proto* %48, %struct.tcf_proto** %11, align 8
  br label %49

49:                                               ; preds = %44, %39
  %50 = load i32, i32* @NET_XMIT_SUCCESS, align 4
  %51 = load i32, i32* @__NET_XMIT_BYPASS, align 4
  %52 = or i32 %50, %51
  %53 = load i32*, i32** %7, align 8
  store i32 %52, i32* %53, align 4
  br label %54

54:                                               ; preds = %96, %49
  %55 = load %struct.tcf_proto*, %struct.tcf_proto** %11, align 8
  %56 = icmp ne %struct.tcf_proto* %55, null
  br i1 %56, label %57, label %62

57:                                               ; preds = %54
  %58 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %59 = load %struct.tcf_proto*, %struct.tcf_proto** %11, align 8
  %60 = call i32 @tcf_classify(%struct.sk_buff* %58, %struct.tcf_proto* %59, %struct.tcf_result* %10, i32 0)
  store i32 %60, i32* %12, align 4
  %61 = icmp sge i32 %60, 0
  br label %62

62:                                               ; preds = %57, %54
  %63 = phi i1 [ false, %54 ], [ %61, %57 ]
  br i1 %63, label %64, label %101

64:                                               ; preds = %62
  %65 = getelementptr inbounds %struct.tcf_result, %struct.tcf_result* %10, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = inttoptr i64 %66 to i8*
  %68 = bitcast i8* %67 to %struct.htb_class*
  store %struct.htb_class* %68, %struct.htb_class** %9, align 8
  %69 = load %struct.htb_class*, %struct.htb_class** %9, align 8
  %70 = icmp ne %struct.htb_class* %69, null
  br i1 %70, label %89, label %71

71:                                               ; preds = %64
  %72 = getelementptr inbounds %struct.tcf_result, %struct.tcf_result* %10, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load %struct.Qdisc*, %struct.Qdisc** %6, align 8
  %75 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = icmp eq i64 %73, %76
  br i1 %77, label %78, label %80

78:                                               ; preds = %71
  %79 = load %struct.htb_class*, %struct.htb_class** @HTB_DIRECT, align 8
  store %struct.htb_class* %79, %struct.htb_class** %4, align 8
  br label %123

80:                                               ; preds = %71
  %81 = getelementptr inbounds %struct.tcf_result, %struct.tcf_result* %10, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load %struct.Qdisc*, %struct.Qdisc** %6, align 8
  %84 = call %struct.htb_class* @htb_find(i64 %82, %struct.Qdisc* %83)
  store %struct.htb_class* %84, %struct.htb_class** %9, align 8
  %85 = load %struct.htb_class*, %struct.htb_class** %9, align 8
  %86 = icmp ne %struct.htb_class* %85, null
  br i1 %86, label %88, label %87

87:                                               ; preds = %80
  br label %101

88:                                               ; preds = %80
  br label %89

89:                                               ; preds = %88, %64
  %90 = load %struct.htb_class*, %struct.htb_class** %9, align 8
  %91 = getelementptr inbounds %struct.htb_class, %struct.htb_class* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %96, label %94

94:                                               ; preds = %89
  %95 = load %struct.htb_class*, %struct.htb_class** %9, align 8
  store %struct.htb_class* %95, %struct.htb_class** %4, align 8
  br label %123

96:                                               ; preds = %89
  %97 = load %struct.htb_class*, %struct.htb_class** %9, align 8
  %98 = getelementptr inbounds %struct.htb_class, %struct.htb_class* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 8
  %100 = call %struct.tcf_proto* @rcu_dereference_bh(i32 %99)
  store %struct.tcf_proto* %100, %struct.tcf_proto** %11, align 8
  br label %54

101:                                              ; preds = %87, %62
  %102 = load %struct.Qdisc*, %struct.Qdisc** %6, align 8
  %103 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = call i32 @TC_H_MAJ(i64 %104)
  %106 = load %struct.htb_sched*, %struct.htb_sched** %8, align 8
  %107 = getelementptr inbounds %struct.htb_sched, %struct.htb_sched* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = call i64 @TC_H_MAKE(i32 %105, i32 %108)
  %110 = load %struct.Qdisc*, %struct.Qdisc** %6, align 8
  %111 = call %struct.htb_class* @htb_find(i64 %109, %struct.Qdisc* %110)
  store %struct.htb_class* %111, %struct.htb_class** %9, align 8
  %112 = load %struct.htb_class*, %struct.htb_class** %9, align 8
  %113 = icmp ne %struct.htb_class* %112, null
  br i1 %113, label %114, label %119

114:                                              ; preds = %101
  %115 = load %struct.htb_class*, %struct.htb_class** %9, align 8
  %116 = getelementptr inbounds %struct.htb_class, %struct.htb_class* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %121

119:                                              ; preds = %114, %101
  %120 = load %struct.htb_class*, %struct.htb_class** @HTB_DIRECT, align 8
  store %struct.htb_class* %120, %struct.htb_class** %4, align 8
  br label %123

121:                                              ; preds = %114
  %122 = load %struct.htb_class*, %struct.htb_class** %9, align 8
  store %struct.htb_class* %122, %struct.htb_class** %4, align 8
  br label %123

123:                                              ; preds = %121, %119, %94, %78, %37, %22
  %124 = load %struct.htb_class*, %struct.htb_class** %4, align 8
  ret %struct.htb_class* %124
}

declare dso_local %struct.htb_sched* @qdisc_priv(%struct.Qdisc*) #1

declare dso_local %struct.htb_class* @htb_find(i64, %struct.Qdisc*) #1

declare dso_local %struct.tcf_proto* @rcu_dereference_bh(i32) #1

declare dso_local i32 @tcf_classify(%struct.sk_buff*, %struct.tcf_proto*, %struct.tcf_result*, i32) #1

declare dso_local i64 @TC_H_MAKE(i32, i32) #1

declare dso_local i32 @TC_H_MAJ(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
