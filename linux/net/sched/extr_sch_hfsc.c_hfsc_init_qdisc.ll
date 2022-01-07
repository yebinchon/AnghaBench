; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_sch_hfsc.c_hfsc_init_qdisc.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_sch_hfsc.c_hfsc_init_qdisc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Qdisc = type { i32, i32 }
%struct.nlattr = type { i32 }
%struct.netlink_ext_ack = type { i32 }
%struct.hfsc_sched = type { i32, %struct.TYPE_3__, i8*, i32, i32 }
%struct.TYPE_3__ = type { %struct.TYPE_4__, i8*, i8*, i32, i32*, %struct.hfsc_sched*, i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.tc_hfsc_qopt = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@RB_ROOT = common dso_local global i8* null, align 8
@pfifo_qdisc_ops = common dso_local global i32 0, align 4
@noop_qdisc = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.Qdisc*, %struct.nlattr*, %struct.netlink_ext_ack*)* @hfsc_init_qdisc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hfsc_init_qdisc(%struct.Qdisc* %0, %struct.nlattr* %1, %struct.netlink_ext_ack* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.Qdisc*, align 8
  %6 = alloca %struct.nlattr*, align 8
  %7 = alloca %struct.netlink_ext_ack*, align 8
  %8 = alloca %struct.hfsc_sched*, align 8
  %9 = alloca %struct.tc_hfsc_qopt*, align 8
  %10 = alloca i32, align 4
  store %struct.Qdisc* %0, %struct.Qdisc** %5, align 8
  store %struct.nlattr* %1, %struct.nlattr** %6, align 8
  store %struct.netlink_ext_ack* %2, %struct.netlink_ext_ack** %7, align 8
  %11 = load %struct.Qdisc*, %struct.Qdisc** %5, align 8
  %12 = call %struct.hfsc_sched* @qdisc_priv(%struct.Qdisc* %11)
  store %struct.hfsc_sched* %12, %struct.hfsc_sched** %8, align 8
  %13 = load %struct.hfsc_sched*, %struct.hfsc_sched** %8, align 8
  %14 = getelementptr inbounds %struct.hfsc_sched, %struct.hfsc_sched* %13, i32 0, i32 4
  %15 = load %struct.Qdisc*, %struct.Qdisc** %5, align 8
  %16 = call i32 @qdisc_watchdog_init(i32* %14, %struct.Qdisc* %15)
  %17 = load %struct.nlattr*, %struct.nlattr** %6, align 8
  %18 = icmp ne %struct.nlattr* %17, null
  br i1 %18, label %19, label %24

19:                                               ; preds = %3
  %20 = load %struct.nlattr*, %struct.nlattr** %6, align 8
  %21 = call i32 @nla_len(%struct.nlattr* %20)
  %22 = sext i32 %21 to i64
  %23 = icmp ult i64 %22, 4
  br i1 %23, label %24, label %27

24:                                               ; preds = %19, %3
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %4, align 4
  br label %119

27:                                               ; preds = %19
  %28 = load %struct.nlattr*, %struct.nlattr** %6, align 8
  %29 = call %struct.tc_hfsc_qopt* @nla_data(%struct.nlattr* %28)
  store %struct.tc_hfsc_qopt* %29, %struct.tc_hfsc_qopt** %9, align 8
  %30 = load %struct.tc_hfsc_qopt*, %struct.tc_hfsc_qopt** %9, align 8
  %31 = getelementptr inbounds %struct.tc_hfsc_qopt, %struct.tc_hfsc_qopt* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.hfsc_sched*, %struct.hfsc_sched** %8, align 8
  %34 = getelementptr inbounds %struct.hfsc_sched, %struct.hfsc_sched* %33, i32 0, i32 3
  store i32 %32, i32* %34, align 8
  %35 = load %struct.hfsc_sched*, %struct.hfsc_sched** %8, align 8
  %36 = getelementptr inbounds %struct.hfsc_sched, %struct.hfsc_sched* %35, i32 0, i32 0
  %37 = call i32 @qdisc_class_hash_init(i32* %36)
  store i32 %37, i32* %10, align 4
  %38 = load i32, i32* %10, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %27
  %41 = load i32, i32* %10, align 4
  store i32 %41, i32* %4, align 4
  br label %119

42:                                               ; preds = %27
  %43 = load i8*, i8** @RB_ROOT, align 8
  %44 = load %struct.hfsc_sched*, %struct.hfsc_sched** %8, align 8
  %45 = getelementptr inbounds %struct.hfsc_sched, %struct.hfsc_sched* %44, i32 0, i32 2
  store i8* %43, i8** %45, align 8
  %46 = load %struct.hfsc_sched*, %struct.hfsc_sched** %8, align 8
  %47 = getelementptr inbounds %struct.hfsc_sched, %struct.hfsc_sched* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 7
  %49 = load %struct.hfsc_sched*, %struct.hfsc_sched** %8, align 8
  %50 = getelementptr inbounds %struct.hfsc_sched, %struct.hfsc_sched* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 6
  %52 = load %struct.Qdisc*, %struct.Qdisc** %5, align 8
  %53 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %7, align 8
  %54 = call i32 @tcf_block_get(i32* %48, i32* %51, %struct.Qdisc* %52, %struct.netlink_ext_ack* %53)
  store i32 %54, i32* %10, align 4
  %55 = load i32, i32* %10, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %42
  %58 = load i32, i32* %10, align 4
  store i32 %58, i32* %4, align 4
  br label %119

59:                                               ; preds = %42
  %60 = load %struct.Qdisc*, %struct.Qdisc** %5, align 8
  %61 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.hfsc_sched*, %struct.hfsc_sched** %8, align 8
  %64 = getelementptr inbounds %struct.hfsc_sched, %struct.hfsc_sched* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  store i32 %62, i32* %66, align 8
  %67 = load %struct.hfsc_sched*, %struct.hfsc_sched** %8, align 8
  %68 = load %struct.hfsc_sched*, %struct.hfsc_sched** %8, align 8
  %69 = getelementptr inbounds %struct.hfsc_sched, %struct.hfsc_sched* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 5
  store %struct.hfsc_sched* %67, %struct.hfsc_sched** %70, align 8
  %71 = load %struct.Qdisc*, %struct.Qdisc** %5, align 8
  %72 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.Qdisc*, %struct.Qdisc** %5, align 8
  %75 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = call i32* @qdisc_create_dflt(i32 %73, i32* @pfifo_qdisc_ops, i32 %76, i32* null)
  %78 = load %struct.hfsc_sched*, %struct.hfsc_sched** %8, align 8
  %79 = getelementptr inbounds %struct.hfsc_sched, %struct.hfsc_sched* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 4
  store i32* %77, i32** %80, align 8
  %81 = load %struct.hfsc_sched*, %struct.hfsc_sched** %8, align 8
  %82 = getelementptr inbounds %struct.hfsc_sched, %struct.hfsc_sched* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 4
  %84 = load i32*, i32** %83, align 8
  %85 = icmp eq i32* %84, null
  br i1 %85, label %86, label %90

86:                                               ; preds = %59
  %87 = load %struct.hfsc_sched*, %struct.hfsc_sched** %8, align 8
  %88 = getelementptr inbounds %struct.hfsc_sched, %struct.hfsc_sched* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 4
  store i32* @noop_qdisc, i32** %89, align 8
  br label %96

90:                                               ; preds = %59
  %91 = load %struct.hfsc_sched*, %struct.hfsc_sched** %8, align 8
  %92 = getelementptr inbounds %struct.hfsc_sched, %struct.hfsc_sched* %91, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i32 0, i32 4
  %94 = load i32*, i32** %93, align 8
  %95 = call i32 @qdisc_hash_add(i32* %94, i32 1)
  br label %96

96:                                               ; preds = %90, %86
  %97 = load %struct.hfsc_sched*, %struct.hfsc_sched** %8, align 8
  %98 = getelementptr inbounds %struct.hfsc_sched, %struct.hfsc_sched* %97, i32 0, i32 1
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i32 0, i32 3
  %100 = call i32 @INIT_LIST_HEAD(i32* %99)
  %101 = load i8*, i8** @RB_ROOT, align 8
  %102 = load %struct.hfsc_sched*, %struct.hfsc_sched** %8, align 8
  %103 = getelementptr inbounds %struct.hfsc_sched, %struct.hfsc_sched* %102, i32 0, i32 1
  %104 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %103, i32 0, i32 2
  store i8* %101, i8** %104, align 8
  %105 = load i8*, i8** @RB_ROOT, align 8
  %106 = load %struct.hfsc_sched*, %struct.hfsc_sched** %8, align 8
  %107 = getelementptr inbounds %struct.hfsc_sched, %struct.hfsc_sched* %106, i32 0, i32 1
  %108 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %107, i32 0, i32 1
  store i8* %105, i8** %108, align 8
  %109 = load %struct.hfsc_sched*, %struct.hfsc_sched** %8, align 8
  %110 = getelementptr inbounds %struct.hfsc_sched, %struct.hfsc_sched* %109, i32 0, i32 0
  %111 = load %struct.hfsc_sched*, %struct.hfsc_sched** %8, align 8
  %112 = getelementptr inbounds %struct.hfsc_sched, %struct.hfsc_sched* %111, i32 0, i32 1
  %113 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %112, i32 0, i32 0
  %114 = call i32 @qdisc_class_hash_insert(i32* %110, %struct.TYPE_4__* %113)
  %115 = load %struct.Qdisc*, %struct.Qdisc** %5, align 8
  %116 = load %struct.hfsc_sched*, %struct.hfsc_sched** %8, align 8
  %117 = getelementptr inbounds %struct.hfsc_sched, %struct.hfsc_sched* %116, i32 0, i32 0
  %118 = call i32 @qdisc_class_hash_grow(%struct.Qdisc* %115, i32* %117)
  store i32 0, i32* %4, align 4
  br label %119

119:                                              ; preds = %96, %57, %40, %24
  %120 = load i32, i32* %4, align 4
  ret i32 %120
}

declare dso_local %struct.hfsc_sched* @qdisc_priv(%struct.Qdisc*) #1

declare dso_local i32 @qdisc_watchdog_init(i32*, %struct.Qdisc*) #1

declare dso_local i32 @nla_len(%struct.nlattr*) #1

declare dso_local %struct.tc_hfsc_qopt* @nla_data(%struct.nlattr*) #1

declare dso_local i32 @qdisc_class_hash_init(i32*) #1

declare dso_local i32 @tcf_block_get(i32*, i32*, %struct.Qdisc*, %struct.netlink_ext_ack*) #1

declare dso_local i32* @qdisc_create_dflt(i32, i32*, i32, i32*) #1

declare dso_local i32 @qdisc_hash_add(i32*, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @qdisc_class_hash_insert(i32*, %struct.TYPE_4__*) #1

declare dso_local i32 @qdisc_class_hash_grow(%struct.Qdisc*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
