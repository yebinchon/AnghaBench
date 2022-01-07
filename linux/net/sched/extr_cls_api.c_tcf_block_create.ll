; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_cls_api.c_tcf_block_create.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_cls_api.c_tcf_block_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcf_block = type { %struct.Qdisc*, i32, %struct.net*, i32, %struct.TYPE_2__, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.net = type { i32 }
%struct.Qdisc = type { i32 }
%struct.netlink_ext_ack = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Memory allocation for block failed\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.tcf_block* (%struct.net*, %struct.Qdisc*, i32, %struct.netlink_ext_ack*)* @tcf_block_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.tcf_block* @tcf_block_create(%struct.net* %0, %struct.Qdisc* %1, i32 %2, %struct.netlink_ext_ack* %3) #0 {
  %5 = alloca %struct.tcf_block*, align 8
  %6 = alloca %struct.net*, align 8
  %7 = alloca %struct.Qdisc*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.netlink_ext_ack*, align 8
  %10 = alloca %struct.tcf_block*, align 8
  store %struct.net* %0, %struct.net** %6, align 8
  store %struct.Qdisc* %1, %struct.Qdisc** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.netlink_ext_ack* %3, %struct.netlink_ext_ack** %9, align 8
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.tcf_block* @kzalloc(i32 56, i32 %11)
  store %struct.tcf_block* %12, %struct.tcf_block** %10, align 8
  %13 = load %struct.tcf_block*, %struct.tcf_block** %10, align 8
  %14 = icmp ne %struct.tcf_block* %13, null
  br i1 %14, label %21, label %15

15:                                               ; preds = %4
  %16 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %9, align 8
  %17 = call i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack* %16, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  %20 = call %struct.tcf_block* @ERR_PTR(i32 %19)
  store %struct.tcf_block* %20, %struct.tcf_block** %5, align 8
  br label %62

21:                                               ; preds = %4
  %22 = load %struct.tcf_block*, %struct.tcf_block** %10, align 8
  %23 = getelementptr inbounds %struct.tcf_block, %struct.tcf_block* %22, i32 0, i32 10
  %24 = call i32 @mutex_init(i32* %23)
  %25 = load %struct.tcf_block*, %struct.tcf_block** %10, align 8
  %26 = getelementptr inbounds %struct.tcf_block, %struct.tcf_block* %25, i32 0, i32 9
  %27 = call i32 @mutex_init(i32* %26)
  %28 = load %struct.tcf_block*, %struct.tcf_block** %10, align 8
  %29 = getelementptr inbounds %struct.tcf_block, %struct.tcf_block* %28, i32 0, i32 8
  %30 = call i32 @init_rwsem(i32* %29)
  %31 = load %struct.tcf_block*, %struct.tcf_block** %10, align 8
  %32 = getelementptr inbounds %struct.tcf_block, %struct.tcf_block* %31, i32 0, i32 7
  %33 = call i32 @flow_block_init(i32* %32)
  %34 = load %struct.tcf_block*, %struct.tcf_block** %10, align 8
  %35 = getelementptr inbounds %struct.tcf_block, %struct.tcf_block* %34, i32 0, i32 6
  %36 = call i32 @INIT_LIST_HEAD(i32* %35)
  %37 = load %struct.tcf_block*, %struct.tcf_block** %10, align 8
  %38 = getelementptr inbounds %struct.tcf_block, %struct.tcf_block* %37, i32 0, i32 5
  %39 = call i32 @INIT_LIST_HEAD(i32* %38)
  %40 = load %struct.tcf_block*, %struct.tcf_block** %10, align 8
  %41 = getelementptr inbounds %struct.tcf_block, %struct.tcf_block* %40, i32 0, i32 4
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = call i32 @INIT_LIST_HEAD(i32* %42)
  %44 = load %struct.tcf_block*, %struct.tcf_block** %10, align 8
  %45 = getelementptr inbounds %struct.tcf_block, %struct.tcf_block* %44, i32 0, i32 3
  %46 = call i32 @refcount_set(i32* %45, i32 1)
  %47 = load %struct.net*, %struct.net** %6, align 8
  %48 = load %struct.tcf_block*, %struct.tcf_block** %10, align 8
  %49 = getelementptr inbounds %struct.tcf_block, %struct.tcf_block* %48, i32 0, i32 2
  store %struct.net* %47, %struct.net** %49, align 8
  %50 = load i32, i32* %8, align 4
  %51 = load %struct.tcf_block*, %struct.tcf_block** %10, align 8
  %52 = getelementptr inbounds %struct.tcf_block, %struct.tcf_block* %51, i32 0, i32 1
  store i32 %50, i32* %52, align 8
  %53 = load %struct.tcf_block*, %struct.tcf_block** %10, align 8
  %54 = call i32 @tcf_block_shared(%struct.tcf_block* %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %60, label %56

56:                                               ; preds = %21
  %57 = load %struct.Qdisc*, %struct.Qdisc** %7, align 8
  %58 = load %struct.tcf_block*, %struct.tcf_block** %10, align 8
  %59 = getelementptr inbounds %struct.tcf_block, %struct.tcf_block* %58, i32 0, i32 0
  store %struct.Qdisc* %57, %struct.Qdisc** %59, align 8
  br label %60

60:                                               ; preds = %56, %21
  %61 = load %struct.tcf_block*, %struct.tcf_block** %10, align 8
  store %struct.tcf_block* %61, %struct.tcf_block** %5, align 8
  br label %62

62:                                               ; preds = %60, %15
  %63 = load %struct.tcf_block*, %struct.tcf_block** %5, align 8
  ret %struct.tcf_block* %63
}

declare dso_local %struct.tcf_block* @kzalloc(i32, i32) #1

declare dso_local i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack*, i8*) #1

declare dso_local %struct.tcf_block* @ERR_PTR(i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @init_rwsem(i32*) #1

declare dso_local i32 @flow_block_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @refcount_set(i32*, i32) #1

declare dso_local i32 @tcf_block_shared(%struct.tcf_block*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
