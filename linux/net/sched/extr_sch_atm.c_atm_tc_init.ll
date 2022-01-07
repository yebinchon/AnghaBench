; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_sch_atm.c_atm_tc_init.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_sch_atm.c_atm_tc_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Qdisc = type { i32, i32 }
%struct.nlattr = type { i32 }
%struct.netlink_ext_ack = type { i32 }
%struct.atm_qdisc_data = type { i32, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__, i32*, i32*, i32, i32, i32*, i32 }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [39 x i8] c"atm_tc_init(sch %p,[qdisc %p],opt %p)\0A\00", align 1
@pfifo_qdisc_ops = common dso_local global i32 0, align 4
@noop_qdisc = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"atm_tc_init: link (%p) qdisc %p\0A\00", align 1
@sch_atm_dequeue = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.Qdisc*, %struct.nlattr*, %struct.netlink_ext_ack*)* @atm_tc_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atm_tc_init(%struct.Qdisc* %0, %struct.nlattr* %1, %struct.netlink_ext_ack* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.Qdisc*, align 8
  %6 = alloca %struct.nlattr*, align 8
  %7 = alloca %struct.netlink_ext_ack*, align 8
  %8 = alloca %struct.atm_qdisc_data*, align 8
  %9 = alloca i32, align 4
  store %struct.Qdisc* %0, %struct.Qdisc** %5, align 8
  store %struct.nlattr* %1, %struct.nlattr** %6, align 8
  store %struct.netlink_ext_ack* %2, %struct.netlink_ext_ack** %7, align 8
  %10 = load %struct.Qdisc*, %struct.Qdisc** %5, align 8
  %11 = call %struct.atm_qdisc_data* @qdisc_priv(%struct.Qdisc* %10)
  store %struct.atm_qdisc_data* %11, %struct.atm_qdisc_data** %8, align 8
  %12 = load %struct.Qdisc*, %struct.Qdisc** %5, align 8
  %13 = load %struct.atm_qdisc_data*, %struct.atm_qdisc_data** %8, align 8
  %14 = load %struct.nlattr*, %struct.nlattr** %6, align 8
  %15 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), %struct.Qdisc* %12, %struct.atm_qdisc_data* %13, %struct.nlattr* %14)
  %16 = load %struct.atm_qdisc_data*, %struct.atm_qdisc_data** %8, align 8
  %17 = getelementptr inbounds %struct.atm_qdisc_data, %struct.atm_qdisc_data* %16, i32 0, i32 2
  %18 = call i32 @INIT_LIST_HEAD(i32* %17)
  %19 = load %struct.atm_qdisc_data*, %struct.atm_qdisc_data** %8, align 8
  %20 = getelementptr inbounds %struct.atm_qdisc_data, %struct.atm_qdisc_data* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 7
  %22 = call i32 @INIT_LIST_HEAD(i32* %21)
  %23 = load %struct.atm_qdisc_data*, %struct.atm_qdisc_data** %8, align 8
  %24 = getelementptr inbounds %struct.atm_qdisc_data, %struct.atm_qdisc_data* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 7
  %26 = load %struct.atm_qdisc_data*, %struct.atm_qdisc_data** %8, align 8
  %27 = getelementptr inbounds %struct.atm_qdisc_data, %struct.atm_qdisc_data* %26, i32 0, i32 2
  %28 = call i32 @list_add(i32* %25, i32* %27)
  %29 = load %struct.Qdisc*, %struct.Qdisc** %5, align 8
  %30 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.Qdisc*, %struct.Qdisc** %5, align 8
  %33 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %7, align 8
  %36 = call i32* @qdisc_create_dflt(i32 %31, i32* @pfifo_qdisc_ops, i32 %34, %struct.netlink_ext_ack* %35)
  %37 = load %struct.atm_qdisc_data*, %struct.atm_qdisc_data** %8, align 8
  %38 = getelementptr inbounds %struct.atm_qdisc_data, %struct.atm_qdisc_data* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 6
  store i32* %36, i32** %39, align 8
  %40 = load %struct.atm_qdisc_data*, %struct.atm_qdisc_data** %8, align 8
  %41 = getelementptr inbounds %struct.atm_qdisc_data, %struct.atm_qdisc_data* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 6
  %43 = load i32*, i32** %42, align 8
  %44 = icmp ne i32* %43, null
  br i1 %44, label %49, label %45

45:                                               ; preds = %3
  %46 = load %struct.atm_qdisc_data*, %struct.atm_qdisc_data** %8, align 8
  %47 = getelementptr inbounds %struct.atm_qdisc_data, %struct.atm_qdisc_data* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 6
  store i32* @noop_qdisc, i32** %48, align 8
  br label %49

49:                                               ; preds = %45, %3
  %50 = load %struct.atm_qdisc_data*, %struct.atm_qdisc_data** %8, align 8
  %51 = getelementptr inbounds %struct.atm_qdisc_data, %struct.atm_qdisc_data* %50, i32 0, i32 1
  %52 = load %struct.atm_qdisc_data*, %struct.atm_qdisc_data** %8, align 8
  %53 = getelementptr inbounds %struct.atm_qdisc_data, %struct.atm_qdisc_data* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 6
  %55 = load i32*, i32** %54, align 8
  %56 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_4__* %51, i32* %55)
  %57 = load %struct.atm_qdisc_data*, %struct.atm_qdisc_data** %8, align 8
  %58 = getelementptr inbounds %struct.atm_qdisc_data, %struct.atm_qdisc_data* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 5
  %60 = load %struct.atm_qdisc_data*, %struct.atm_qdisc_data** %8, align 8
  %61 = getelementptr inbounds %struct.atm_qdisc_data, %struct.atm_qdisc_data* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 4
  %63 = load %struct.Qdisc*, %struct.Qdisc** %5, align 8
  %64 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %7, align 8
  %65 = call i32 @tcf_block_get(i32* %59, i32* %62, %struct.Qdisc* %63, %struct.netlink_ext_ack* %64)
  store i32 %65, i32* %9, align 4
  %66 = load i32, i32* %9, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %49
  %69 = load i32, i32* %9, align 4
  store i32 %69, i32* %4, align 4
  br label %93

70:                                               ; preds = %49
  %71 = load %struct.atm_qdisc_data*, %struct.atm_qdisc_data** %8, align 8
  %72 = getelementptr inbounds %struct.atm_qdisc_data, %struct.atm_qdisc_data* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 3
  store i32* null, i32** %73, align 8
  %74 = load %struct.atm_qdisc_data*, %struct.atm_qdisc_data** %8, align 8
  %75 = getelementptr inbounds %struct.atm_qdisc_data, %struct.atm_qdisc_data* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 2
  store i32* null, i32** %76, align 8
  %77 = load %struct.Qdisc*, %struct.Qdisc** %5, align 8
  %78 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.atm_qdisc_data*, %struct.atm_qdisc_data** %8, align 8
  %81 = getelementptr inbounds %struct.atm_qdisc_data, %struct.atm_qdisc_data* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 0
  store i32 %79, i32* %83, align 4
  %84 = load %struct.atm_qdisc_data*, %struct.atm_qdisc_data** %8, align 8
  %85 = getelementptr inbounds %struct.atm_qdisc_data, %struct.atm_qdisc_data* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 0
  store i32 1, i32* %86, align 8
  %87 = load %struct.atm_qdisc_data*, %struct.atm_qdisc_data** %8, align 8
  %88 = getelementptr inbounds %struct.atm_qdisc_data, %struct.atm_qdisc_data* %87, i32 0, i32 0
  %89 = load i32, i32* @sch_atm_dequeue, align 4
  %90 = load %struct.Qdisc*, %struct.Qdisc** %5, align 8
  %91 = ptrtoint %struct.Qdisc* %90 to i64
  %92 = call i32 @tasklet_init(i32* %88, i32 %89, i64 %91)
  store i32 0, i32* %4, align 4
  br label %93

93:                                               ; preds = %70, %68
  %94 = load i32, i32* %4, align 4
  ret i32 %94
}

declare dso_local %struct.atm_qdisc_data* @qdisc_priv(%struct.Qdisc*) #1

declare dso_local i32 @pr_debug(i8*, ...) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32* @qdisc_create_dflt(i32, i32*, i32, %struct.netlink_ext_ack*) #1

declare dso_local i32 @tcf_block_get(i32*, i32*, %struct.Qdisc*, %struct.netlink_ext_ack*) #1

declare dso_local i32 @tasklet_init(i32*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
