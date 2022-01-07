; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_sch_htb.c_htb_delete.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_sch_htb.c_htb_delete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Qdisc = type { i32 }
%struct.htb_sched = type { %struct.TYPE_8__*, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.htb_class = type { i64, i64, i32, i64, %struct.TYPE_7__*, i32, %struct.TYPE_6__, i64, i64 }
%struct.TYPE_7__ = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i32 }

@EBUSY = common dso_local global i32 0, align 4
@pfifo_qdisc_ops = common dso_local global i32 0, align 4
@HTB_CAN_SEND = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.Qdisc*, i64)* @htb_delete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @htb_delete(%struct.Qdisc* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.Qdisc*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.htb_sched*, align 8
  %7 = alloca %struct.htb_class*, align 8
  %8 = alloca %struct.Qdisc*, align 8
  %9 = alloca i32, align 4
  store %struct.Qdisc* %0, %struct.Qdisc** %4, align 8
  store i64 %1, i64* %5, align 8
  %10 = load %struct.Qdisc*, %struct.Qdisc** %4, align 8
  %11 = call %struct.htb_sched* @qdisc_priv(%struct.Qdisc* %10)
  store %struct.htb_sched* %11, %struct.htb_sched** %6, align 8
  %12 = load i64, i64* %5, align 8
  %13 = inttoptr i64 %12 to %struct.htb_class*
  store %struct.htb_class* %13, %struct.htb_class** %7, align 8
  store %struct.Qdisc* null, %struct.Qdisc** %8, align 8
  store i32 0, i32* %9, align 4
  %14 = load %struct.htb_class*, %struct.htb_class** %7, align 8
  %15 = getelementptr inbounds %struct.htb_class, %struct.htb_class* %14, i32 0, i32 8
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %23, label %18

18:                                               ; preds = %2
  %19 = load %struct.htb_class*, %struct.htb_class** %7, align 8
  %20 = getelementptr inbounds %struct.htb_class, %struct.htb_class* %19, i32 0, i32 7
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %18, %2
  %24 = load i32, i32* @EBUSY, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  br label %117

26:                                               ; preds = %18
  %27 = load %struct.htb_class*, %struct.htb_class** %7, align 8
  %28 = getelementptr inbounds %struct.htb_class, %struct.htb_class* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %46, label %31

31:                                               ; preds = %26
  %32 = load %struct.htb_class*, %struct.htb_class** %7, align 8
  %33 = call i64 @htb_parent_last_child(%struct.htb_class* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %46

35:                                               ; preds = %31
  %36 = load %struct.Qdisc*, %struct.Qdisc** %4, align 8
  %37 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.htb_class*, %struct.htb_class** %7, align 8
  %40 = getelementptr inbounds %struct.htb_class, %struct.htb_class* %39, i32 0, i32 4
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call %struct.Qdisc* @qdisc_create_dflt(i32 %38, i32* @pfifo_qdisc_ops, i32 %44, i32* null)
  store %struct.Qdisc* %45, %struct.Qdisc** %8, align 8
  store i32 1, i32* %9, align 4
  br label %46

46:                                               ; preds = %35, %31, %26
  %47 = load %struct.Qdisc*, %struct.Qdisc** %4, align 8
  %48 = call i32 @sch_tree_lock(%struct.Qdisc* %47)
  %49 = load %struct.htb_class*, %struct.htb_class** %7, align 8
  %50 = getelementptr inbounds %struct.htb_class, %struct.htb_class* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %59, label %53

53:                                               ; preds = %46
  %54 = load %struct.htb_class*, %struct.htb_class** %7, align 8
  %55 = getelementptr inbounds %struct.htb_class, %struct.htb_class* %54, i32 0, i32 6
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @qdisc_purge_queue(i32 %57)
  br label %59

59:                                               ; preds = %53, %46
  %60 = load %struct.htb_sched*, %struct.htb_sched** %6, align 8
  %61 = getelementptr inbounds %struct.htb_sched, %struct.htb_sched* %60, i32 0, i32 1
  %62 = load %struct.htb_class*, %struct.htb_class** %7, align 8
  %63 = getelementptr inbounds %struct.htb_class, %struct.htb_class* %62, i32 0, i32 5
  %64 = call i32 @qdisc_class_hash_remove(i32* %61, i32* %63)
  %65 = load %struct.htb_class*, %struct.htb_class** %7, align 8
  %66 = getelementptr inbounds %struct.htb_class, %struct.htb_class* %65, i32 0, i32 4
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %66, align 8
  %68 = icmp ne %struct.TYPE_7__* %67, null
  br i1 %68, label %69, label %76

69:                                               ; preds = %59
  %70 = load %struct.htb_class*, %struct.htb_class** %7, align 8
  %71 = getelementptr inbounds %struct.htb_class, %struct.htb_class* %70, i32 0, i32 4
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = add nsw i32 %74, -1
  store i32 %75, i32* %73, align 4
  br label %76

76:                                               ; preds = %69, %59
  %77 = load %struct.htb_class*, %struct.htb_class** %7, align 8
  %78 = getelementptr inbounds %struct.htb_class, %struct.htb_class* %77, i32 0, i32 3
  %79 = load i64, i64* %78, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %85

81:                                               ; preds = %76
  %82 = load %struct.htb_sched*, %struct.htb_sched** %6, align 8
  %83 = load %struct.htb_class*, %struct.htb_class** %7, align 8
  %84 = call i32 @htb_deactivate(%struct.htb_sched* %82, %struct.htb_class* %83)
  br label %85

85:                                               ; preds = %81, %76
  %86 = load %struct.htb_class*, %struct.htb_class** %7, align 8
  %87 = getelementptr inbounds %struct.htb_class, %struct.htb_class* %86, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* @HTB_CAN_SEND, align 8
  %90 = icmp ne i64 %88, %89
  br i1 %90, label %91, label %103

91:                                               ; preds = %85
  %92 = load %struct.htb_class*, %struct.htb_class** %7, align 8
  %93 = getelementptr inbounds %struct.htb_class, %struct.htb_class* %92, i32 0, i32 2
  %94 = load %struct.htb_sched*, %struct.htb_sched** %6, align 8
  %95 = getelementptr inbounds %struct.htb_sched, %struct.htb_sched* %94, i32 0, i32 0
  %96 = load %struct.TYPE_8__*, %struct.TYPE_8__** %95, align 8
  %97 = load %struct.htb_class*, %struct.htb_class** %7, align 8
  %98 = getelementptr inbounds %struct.htb_class, %struct.htb_class* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %96, i64 %99
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %100, i32 0, i32 0
  %102 = call i32 @htb_safe_rb_erase(i32* %93, i32* %101)
  br label %103

103:                                              ; preds = %91, %85
  %104 = load i32, i32* %9, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %111

106:                                              ; preds = %103
  %107 = load %struct.htb_sched*, %struct.htb_sched** %6, align 8
  %108 = load %struct.htb_class*, %struct.htb_class** %7, align 8
  %109 = load %struct.Qdisc*, %struct.Qdisc** %8, align 8
  %110 = call i32 @htb_parent_to_leaf(%struct.htb_sched* %107, %struct.htb_class* %108, %struct.Qdisc* %109)
  br label %111

111:                                              ; preds = %106, %103
  %112 = load %struct.Qdisc*, %struct.Qdisc** %4, align 8
  %113 = call i32 @sch_tree_unlock(%struct.Qdisc* %112)
  %114 = load %struct.Qdisc*, %struct.Qdisc** %4, align 8
  %115 = load %struct.htb_class*, %struct.htb_class** %7, align 8
  %116 = call i32 @htb_destroy_class(%struct.Qdisc* %114, %struct.htb_class* %115)
  store i32 0, i32* %3, align 4
  br label %117

117:                                              ; preds = %111, %23
  %118 = load i32, i32* %3, align 4
  ret i32 %118
}

declare dso_local %struct.htb_sched* @qdisc_priv(%struct.Qdisc*) #1

declare dso_local i64 @htb_parent_last_child(%struct.htb_class*) #1

declare dso_local %struct.Qdisc* @qdisc_create_dflt(i32, i32*, i32, i32*) #1

declare dso_local i32 @sch_tree_lock(%struct.Qdisc*) #1

declare dso_local i32 @qdisc_purge_queue(i32) #1

declare dso_local i32 @qdisc_class_hash_remove(i32*, i32*) #1

declare dso_local i32 @htb_deactivate(%struct.htb_sched*, %struct.htb_class*) #1

declare dso_local i32 @htb_safe_rb_erase(i32*, i32*) #1

declare dso_local i32 @htb_parent_to_leaf(%struct.htb_sched*, %struct.htb_class*, %struct.Qdisc*) #1

declare dso_local i32 @sch_tree_unlock(%struct.Qdisc*) #1

declare dso_local i32 @htb_destroy_class(%struct.Qdisc*, %struct.htb_class*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
