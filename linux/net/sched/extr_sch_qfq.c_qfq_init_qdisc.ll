; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_sch_qfq.c_qfq_init_qdisc.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_sch_qfq.c_qfq_init_qdisc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Qdisc = type { i32 }
%struct.nlattr = type { i32 }
%struct.netlink_ext_ack = type { i32 }
%struct.qfq_sched = type { i32, i32, i32, %struct.qfq_group*, i32, i32, i32 }
%struct.qfq_group = type { i32, i32, i32* }
%struct.TYPE_2__ = type { i64 }

@QFQ_MAX_AGG_CLASSES = common dso_local global i64 0, align 8
@QFQ_MTU_SHIFT = common dso_local global i32 0, align 4
@FRAC_BITS = common dso_local global i32 0, align 4
@QFQ_MAX_INDEX = common dso_local global i32 0, align 4
@QFQ_MAX_SLOTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.Qdisc*, %struct.nlattr*, %struct.netlink_ext_ack*)* @qfq_init_qdisc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qfq_init_qdisc(%struct.Qdisc* %0, %struct.nlattr* %1, %struct.netlink_ext_ack* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.Qdisc*, align 8
  %6 = alloca %struct.nlattr*, align 8
  %7 = alloca %struct.netlink_ext_ack*, align 8
  %8 = alloca %struct.qfq_sched*, align 8
  %9 = alloca %struct.qfq_group*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.Qdisc* %0, %struct.Qdisc** %5, align 8
  store %struct.nlattr* %1, %struct.nlattr** %6, align 8
  store %struct.netlink_ext_ack* %2, %struct.netlink_ext_ack** %7, align 8
  %16 = load %struct.Qdisc*, %struct.Qdisc** %5, align 8
  %17 = call %struct.qfq_sched* @qdisc_priv(%struct.Qdisc* %16)
  store %struct.qfq_sched* %17, %struct.qfq_sched** %8, align 8
  %18 = load %struct.qfq_sched*, %struct.qfq_sched** %8, align 8
  %19 = getelementptr inbounds %struct.qfq_sched, %struct.qfq_sched* %18, i32 0, i32 6
  %20 = load %struct.qfq_sched*, %struct.qfq_sched** %8, align 8
  %21 = getelementptr inbounds %struct.qfq_sched, %struct.qfq_sched* %20, i32 0, i32 5
  %22 = load %struct.Qdisc*, %struct.Qdisc** %5, align 8
  %23 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %7, align 8
  %24 = call i32 @tcf_block_get(i32* %19, i32* %21, %struct.Qdisc* %22, %struct.netlink_ext_ack* %23)
  store i32 %24, i32* %12, align 4
  %25 = load i32, i32* %12, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %3
  %28 = load i32, i32* %12, align 4
  store i32 %28, i32* %4, align 4
  br label %116

29:                                               ; preds = %3
  %30 = load %struct.qfq_sched*, %struct.qfq_sched** %8, align 8
  %31 = getelementptr inbounds %struct.qfq_sched, %struct.qfq_sched* %30, i32 0, i32 4
  %32 = call i32 @qdisc_class_hash_init(i32* %31)
  store i32 %32, i32* %12, align 4
  %33 = load i32, i32* %12, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %29
  %36 = load i32, i32* %12, align 4
  store i32 %36, i32* %4, align 4
  br label %116

37:                                               ; preds = %29
  %38 = load %struct.Qdisc*, %struct.Qdisc** %5, align 8
  %39 = call %struct.TYPE_2__* @qdisc_dev(%struct.Qdisc* %38)
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = add nsw i64 %41, 1
  %43 = load i64, i64* @QFQ_MAX_AGG_CLASSES, align 8
  %44 = icmp sgt i64 %42, %43
  br i1 %44, label %45, label %48

45:                                               ; preds = %37
  %46 = load i64, i64* @QFQ_MAX_AGG_CLASSES, align 8
  %47 = trunc i64 %46 to i32
  store i32 %47, i32* %15, align 4
  br label %55

48:                                               ; preds = %37
  %49 = load %struct.Qdisc*, %struct.Qdisc** %5, align 8
  %50 = call %struct.TYPE_2__* @qdisc_dev(%struct.Qdisc* %49)
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = add nsw i64 %52, 1
  %54 = trunc i64 %53 to i32
  store i32 %54, i32* %15, align 4
  br label %55

55:                                               ; preds = %48, %45
  %56 = load i32, i32* %15, align 4
  %57 = call i32 @__fls(i32 %56)
  store i32 %57, i32* %13, align 4
  %58 = load i32, i32* %13, align 4
  %59 = shl i32 1, %58
  %60 = load %struct.qfq_sched*, %struct.qfq_sched** %8, align 8
  %61 = getelementptr inbounds %struct.qfq_sched, %struct.qfq_sched* %60, i32 0, i32 0
  store i32 %59, i32* %61, align 8
  %62 = load i32, i32* @QFQ_MTU_SHIFT, align 4
  %63 = load i32, i32* %13, align 4
  %64 = add nsw i32 %62, %63
  store i32 %64, i32* %14, align 4
  %65 = load i32, i32* @FRAC_BITS, align 4
  %66 = load i32, i32* %14, align 4
  %67 = add nsw i32 %65, %66
  %68 = load i32, i32* @QFQ_MAX_INDEX, align 4
  %69 = sub nsw i32 %67, %68
  %70 = load %struct.qfq_sched*, %struct.qfq_sched** %8, align 8
  %71 = getelementptr inbounds %struct.qfq_sched, %struct.qfq_sched* %70, i32 0, i32 1
  store i32 %69, i32* %71, align 4
  store i32 0, i32* %10, align 4
  br label %72

72:                                               ; preds = %109, %55
  %73 = load i32, i32* %10, align 4
  %74 = load i32, i32* @QFQ_MAX_INDEX, align 4
  %75 = icmp sle i32 %73, %74
  br i1 %75, label %76, label %112

76:                                               ; preds = %72
  %77 = load %struct.qfq_sched*, %struct.qfq_sched** %8, align 8
  %78 = getelementptr inbounds %struct.qfq_sched, %struct.qfq_sched* %77, i32 0, i32 3
  %79 = load %struct.qfq_group*, %struct.qfq_group** %78, align 8
  %80 = load i32, i32* %10, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.qfq_group, %struct.qfq_group* %79, i64 %81
  store %struct.qfq_group* %82, %struct.qfq_group** %9, align 8
  %83 = load i32, i32* %10, align 4
  %84 = load %struct.qfq_group*, %struct.qfq_group** %9, align 8
  %85 = getelementptr inbounds %struct.qfq_group, %struct.qfq_group* %84, i32 0, i32 0
  store i32 %83, i32* %85, align 8
  %86 = load %struct.qfq_sched*, %struct.qfq_sched** %8, align 8
  %87 = getelementptr inbounds %struct.qfq_sched, %struct.qfq_sched* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* %10, align 4
  %90 = add nsw i32 %88, %89
  %91 = load %struct.qfq_group*, %struct.qfq_group** %9, align 8
  %92 = getelementptr inbounds %struct.qfq_group, %struct.qfq_group* %91, i32 0, i32 1
  store i32 %90, i32* %92, align 4
  store i32 0, i32* %11, align 4
  br label %93

93:                                               ; preds = %105, %76
  %94 = load i32, i32* %11, align 4
  %95 = load i32, i32* @QFQ_MAX_SLOTS, align 4
  %96 = icmp slt i32 %94, %95
  br i1 %96, label %97, label %108

97:                                               ; preds = %93
  %98 = load %struct.qfq_group*, %struct.qfq_group** %9, align 8
  %99 = getelementptr inbounds %struct.qfq_group, %struct.qfq_group* %98, i32 0, i32 2
  %100 = load i32*, i32** %99, align 8
  %101 = load i32, i32* %11, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i32, i32* %100, i64 %102
  %104 = call i32 @INIT_HLIST_HEAD(i32* %103)
  br label %105

105:                                              ; preds = %97
  %106 = load i32, i32* %11, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %11, align 4
  br label %93

108:                                              ; preds = %93
  br label %109

109:                                              ; preds = %108
  %110 = load i32, i32* %10, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %10, align 4
  br label %72

112:                                              ; preds = %72
  %113 = load %struct.qfq_sched*, %struct.qfq_sched** %8, align 8
  %114 = getelementptr inbounds %struct.qfq_sched, %struct.qfq_sched* %113, i32 0, i32 2
  %115 = call i32 @INIT_HLIST_HEAD(i32* %114)
  store i32 0, i32* %4, align 4
  br label %116

116:                                              ; preds = %112, %35, %27
  %117 = load i32, i32* %4, align 4
  ret i32 %117
}

declare dso_local %struct.qfq_sched* @qdisc_priv(%struct.Qdisc*) #1

declare dso_local i32 @tcf_block_get(i32*, i32*, %struct.Qdisc*, %struct.netlink_ext_ack*) #1

declare dso_local i32 @qdisc_class_hash_init(i32*) #1

declare dso_local %struct.TYPE_2__* @qdisc_dev(%struct.Qdisc*) #1

declare dso_local i32 @__fls(i32) #1

declare dso_local i32 @INIT_HLIST_HEAD(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
