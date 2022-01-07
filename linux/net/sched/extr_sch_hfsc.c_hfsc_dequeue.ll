; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_sch_hfsc.c_hfsc_dequeue.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_sch_hfsc.c_hfsc_dequeue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.Qdisc = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64 }
%struct.hfsc_sched = type { i32 }
%struct.hfsc_class = type { i32, %struct.TYPE_8__*, i32, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }

@.str = private unnamed_addr constant [5 x i8] c"HFSC\00", align 1
@HFSC_RSC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sk_buff* (%struct.Qdisc*)* @hfsc_dequeue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sk_buff* @hfsc_dequeue(%struct.Qdisc* %0) #0 {
  %2 = alloca %struct.sk_buff*, align 8
  %3 = alloca %struct.Qdisc*, align 8
  %4 = alloca %struct.hfsc_sched*, align 8
  %5 = alloca %struct.hfsc_class*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.Qdisc* %0, %struct.Qdisc** %3, align 8
  %10 = load %struct.Qdisc*, %struct.Qdisc** %3, align 8
  %11 = call %struct.hfsc_sched* @qdisc_priv(%struct.Qdisc* %10)
  store %struct.hfsc_sched* %11, %struct.hfsc_sched** %4, align 8
  store i32 0, i32* %9, align 4
  %12 = load %struct.Qdisc*, %struct.Qdisc** %3, align 8
  %13 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %1
  store %struct.sk_buff* null, %struct.sk_buff** %2, align 8
  br label %120

18:                                               ; preds = %1
  %19 = call i32 (...) @psched_get_time()
  store i32 %19, i32* %7, align 4
  %20 = load %struct.hfsc_sched*, %struct.hfsc_sched** %4, align 8
  %21 = load i32, i32* %7, align 4
  %22 = call %struct.hfsc_class* @eltree_get_mindl(%struct.hfsc_sched* %20, i32 %21)
  store %struct.hfsc_class* %22, %struct.hfsc_class** %5, align 8
  %23 = load %struct.hfsc_class*, %struct.hfsc_class** %5, align 8
  %24 = icmp ne %struct.hfsc_class* %23, null
  br i1 %24, label %25, label %26

25:                                               ; preds = %18
  store i32 1, i32* %9, align 4
  br label %39

26:                                               ; preds = %18
  %27 = load %struct.hfsc_sched*, %struct.hfsc_sched** %4, align 8
  %28 = getelementptr inbounds %struct.hfsc_sched, %struct.hfsc_sched* %27, i32 0, i32 0
  %29 = load i32, i32* %7, align 4
  %30 = call %struct.hfsc_class* @vttree_get_minvt(i32* %28, i32 %29)
  store %struct.hfsc_class* %30, %struct.hfsc_class** %5, align 8
  %31 = load %struct.hfsc_class*, %struct.hfsc_class** %5, align 8
  %32 = icmp eq %struct.hfsc_class* %31, null
  br i1 %32, label %33, label %38

33:                                               ; preds = %26
  %34 = load %struct.Qdisc*, %struct.Qdisc** %3, align 8
  %35 = call i32 @qdisc_qstats_overlimit(%struct.Qdisc* %34)
  %36 = load %struct.Qdisc*, %struct.Qdisc** %3, align 8
  %37 = call i32 @hfsc_schedule_watchdog(%struct.Qdisc* %36)
  store %struct.sk_buff* null, %struct.sk_buff** %2, align 8
  br label %120

38:                                               ; preds = %26
  br label %39

39:                                               ; preds = %38, %25
  %40 = load %struct.hfsc_class*, %struct.hfsc_class** %5, align 8
  %41 = getelementptr inbounds %struct.hfsc_class, %struct.hfsc_class* %40, i32 0, i32 1
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %41, align 8
  %43 = call %struct.sk_buff* @qdisc_dequeue_peeked(%struct.TYPE_8__* %42)
  store %struct.sk_buff* %43, %struct.sk_buff** %6, align 8
  %44 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %45 = icmp eq %struct.sk_buff* %44, null
  br i1 %45, label %46, label %51

46:                                               ; preds = %39
  %47 = load %struct.hfsc_class*, %struct.hfsc_class** %5, align 8
  %48 = getelementptr inbounds %struct.hfsc_class, %struct.hfsc_class* %47, i32 0, i32 1
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %48, align 8
  %50 = call i32 @qdisc_warn_nonwc(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), %struct.TYPE_8__* %49)
  store %struct.sk_buff* null, %struct.sk_buff** %2, align 8
  br label %120

51:                                               ; preds = %39
  %52 = load %struct.hfsc_class*, %struct.hfsc_class** %5, align 8
  %53 = getelementptr inbounds %struct.hfsc_class, %struct.hfsc_class* %52, i32 0, i32 3
  %54 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %55 = call i32 @bstats_update(i32* %53, %struct.sk_buff* %54)
  %56 = load %struct.hfsc_class*, %struct.hfsc_class** %5, align 8
  %57 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %58 = call i64 @qdisc_pkt_len(%struct.sk_buff* %57)
  %59 = load i32, i32* %7, align 4
  %60 = call i32 @update_vf(%struct.hfsc_class* %56, i64 %58, i32 %59)
  %61 = load i32, i32* %9, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %72

63:                                               ; preds = %51
  %64 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %65 = call i64 @qdisc_pkt_len(%struct.sk_buff* %64)
  %66 = load %struct.hfsc_class*, %struct.hfsc_class** %5, align 8
  %67 = getelementptr inbounds %struct.hfsc_class, %struct.hfsc_class* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  %69 = sext i32 %68 to i64
  %70 = add nsw i64 %69, %65
  %71 = trunc i64 %70 to i32
  store i32 %71, i32* %67, align 8
  br label %72

72:                                               ; preds = %63, %51
  %73 = load %struct.hfsc_class*, %struct.hfsc_class** %5, align 8
  %74 = getelementptr inbounds %struct.hfsc_class, %struct.hfsc_class* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* @HFSC_RSC, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %107

79:                                               ; preds = %72
  %80 = load %struct.hfsc_class*, %struct.hfsc_class** %5, align 8
  %81 = getelementptr inbounds %struct.hfsc_class, %struct.hfsc_class* %80, i32 0, i32 1
  %82 = load %struct.TYPE_8__*, %struct.TYPE_8__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %103

87:                                               ; preds = %79
  %88 = load %struct.hfsc_class*, %struct.hfsc_class** %5, align 8
  %89 = getelementptr inbounds %struct.hfsc_class, %struct.hfsc_class* %88, i32 0, i32 1
  %90 = load %struct.TYPE_8__*, %struct.TYPE_8__** %89, align 8
  %91 = call i32 @qdisc_peek_len(%struct.TYPE_8__* %90)
  store i32 %91, i32* %8, align 4
  %92 = load i32, i32* %9, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %98

94:                                               ; preds = %87
  %95 = load %struct.hfsc_class*, %struct.hfsc_class** %5, align 8
  %96 = load i32, i32* %8, align 4
  %97 = call i32 @update_ed(%struct.hfsc_class* %95, i32 %96)
  br label %102

98:                                               ; preds = %87
  %99 = load %struct.hfsc_class*, %struct.hfsc_class** %5, align 8
  %100 = load i32, i32* %8, align 4
  %101 = call i32 @update_d(%struct.hfsc_class* %99, i32 %100)
  br label %102

102:                                              ; preds = %98, %94
  br label %106

103:                                              ; preds = %79
  %104 = load %struct.hfsc_class*, %struct.hfsc_class** %5, align 8
  %105 = call i32 @eltree_remove(%struct.hfsc_class* %104)
  br label %106

106:                                              ; preds = %103, %102
  br label %107

107:                                              ; preds = %106, %72
  %108 = load %struct.Qdisc*, %struct.Qdisc** %3, align 8
  %109 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %110 = call i32 @qdisc_bstats_update(%struct.Qdisc* %108, %struct.sk_buff* %109)
  %111 = load %struct.Qdisc*, %struct.Qdisc** %3, align 8
  %112 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %113 = call i32 @qdisc_qstats_backlog_dec(%struct.Qdisc* %111, %struct.sk_buff* %112)
  %114 = load %struct.Qdisc*, %struct.Qdisc** %3, align 8
  %115 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = add nsw i64 %117, -1
  store i64 %118, i64* %116, align 8
  %119 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  store %struct.sk_buff* %119, %struct.sk_buff** %2, align 8
  br label %120

120:                                              ; preds = %107, %46, %33, %17
  %121 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  ret %struct.sk_buff* %121
}

declare dso_local %struct.hfsc_sched* @qdisc_priv(%struct.Qdisc*) #1

declare dso_local i32 @psched_get_time(...) #1

declare dso_local %struct.hfsc_class* @eltree_get_mindl(%struct.hfsc_sched*, i32) #1

declare dso_local %struct.hfsc_class* @vttree_get_minvt(i32*, i32) #1

declare dso_local i32 @qdisc_qstats_overlimit(%struct.Qdisc*) #1

declare dso_local i32 @hfsc_schedule_watchdog(%struct.Qdisc*) #1

declare dso_local %struct.sk_buff* @qdisc_dequeue_peeked(%struct.TYPE_8__*) #1

declare dso_local i32 @qdisc_warn_nonwc(i8*, %struct.TYPE_8__*) #1

declare dso_local i32 @bstats_update(i32*, %struct.sk_buff*) #1

declare dso_local i32 @update_vf(%struct.hfsc_class*, i64, i32) #1

declare dso_local i64 @qdisc_pkt_len(%struct.sk_buff*) #1

declare dso_local i32 @qdisc_peek_len(%struct.TYPE_8__*) #1

declare dso_local i32 @update_ed(%struct.hfsc_class*, i32) #1

declare dso_local i32 @update_d(%struct.hfsc_class*, i32) #1

declare dso_local i32 @eltree_remove(%struct.hfsc_class*) #1

declare dso_local i32 @qdisc_bstats_update(%struct.Qdisc*, %struct.sk_buff*) #1

declare dso_local i32 @qdisc_qstats_backlog_dec(%struct.Qdisc*, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
