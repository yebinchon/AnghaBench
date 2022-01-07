; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_cls_api.c___tcf_block_find.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_cls_api.c___tcf_block_find.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcf_block = type { i32 }
%struct.net = type { i32 }
%struct.Qdisc = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.Qdisc_class_ops* }
%struct.Qdisc_class_ops = type { %struct.tcf_block* (%struct.Qdisc.0*, i64, %struct.netlink_ext_ack*)* }
%struct.Qdisc.0 = type opaque
%struct.netlink_ext_ack = type { i32 }

@TCM_IFINDEX_MAGIC_BLOCK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Block of given index was not found\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [82 x i8] c"This filter block is shared. Please use the block index to manipulate the filters\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.tcf_block* (%struct.net*, %struct.Qdisc*, i64, i32, i32, %struct.netlink_ext_ack*)* @__tcf_block_find to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.tcf_block* @__tcf_block_find(%struct.net* %0, %struct.Qdisc* %1, i64 %2, i32 %3, i32 %4, %struct.netlink_ext_ack* %5) #0 {
  %7 = alloca %struct.tcf_block*, align 8
  %8 = alloca %struct.net*, align 8
  %9 = alloca %struct.Qdisc*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.netlink_ext_ack*, align 8
  %14 = alloca %struct.tcf_block*, align 8
  %15 = alloca %struct.Qdisc_class_ops*, align 8
  store %struct.net* %0, %struct.net** %8, align 8
  store %struct.Qdisc* %1, %struct.Qdisc** %9, align 8
  store i64 %2, i64* %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store %struct.netlink_ext_ack* %5, %struct.netlink_ext_ack** %13, align 8
  %16 = load i32, i32* %11, align 4
  %17 = load i32, i32* @TCM_IFINDEX_MAGIC_BLOCK, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %32

19:                                               ; preds = %6
  %20 = load %struct.net*, %struct.net** %8, align 8
  %21 = load i32, i32* %12, align 4
  %22 = call %struct.tcf_block* @tcf_block_refcnt_get(%struct.net* %20, i32 %21)
  store %struct.tcf_block* %22, %struct.tcf_block** %14, align 8
  %23 = load %struct.tcf_block*, %struct.tcf_block** %14, align 8
  %24 = icmp ne %struct.tcf_block* %23, null
  br i1 %24, label %31, label %25

25:                                               ; preds = %19
  %26 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %13, align 8
  %27 = call i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack* %26, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  %30 = call %struct.tcf_block* @ERR_PTR(i32 %29)
  store %struct.tcf_block* %30, %struct.tcf_block** %7, align 8
  br label %68

31:                                               ; preds = %19
  br label %66

32:                                               ; preds = %6
  %33 = load %struct.Qdisc*, %struct.Qdisc** %9, align 8
  %34 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %33, i32 0, i32 0
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load %struct.Qdisc_class_ops*, %struct.Qdisc_class_ops** %36, align 8
  store %struct.Qdisc_class_ops* %37, %struct.Qdisc_class_ops** %15, align 8
  %38 = load %struct.Qdisc_class_ops*, %struct.Qdisc_class_ops** %15, align 8
  %39 = getelementptr inbounds %struct.Qdisc_class_ops, %struct.Qdisc_class_ops* %38, i32 0, i32 0
  %40 = load %struct.tcf_block* (%struct.Qdisc.0*, i64, %struct.netlink_ext_ack*)*, %struct.tcf_block* (%struct.Qdisc.0*, i64, %struct.netlink_ext_ack*)** %39, align 8
  %41 = load %struct.Qdisc*, %struct.Qdisc** %9, align 8
  %42 = bitcast %struct.Qdisc* %41 to %struct.Qdisc.0*
  %43 = load i64, i64* %10, align 8
  %44 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %13, align 8
  %45 = call %struct.tcf_block* %40(%struct.Qdisc.0* %42, i64 %43, %struct.netlink_ext_ack* %44)
  store %struct.tcf_block* %45, %struct.tcf_block** %14, align 8
  %46 = load %struct.tcf_block*, %struct.tcf_block** %14, align 8
  %47 = icmp ne %struct.tcf_block* %46, null
  br i1 %47, label %52, label %48

48:                                               ; preds = %32
  %49 = load i32, i32* @EINVAL, align 4
  %50 = sub nsw i32 0, %49
  %51 = call %struct.tcf_block* @ERR_PTR(i32 %50)
  store %struct.tcf_block* %51, %struct.tcf_block** %7, align 8
  br label %68

52:                                               ; preds = %32
  %53 = load %struct.tcf_block*, %struct.tcf_block** %14, align 8
  %54 = call i64 @tcf_block_shared(%struct.tcf_block* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %62

56:                                               ; preds = %52
  %57 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %13, align 8
  %58 = call i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack* %57, i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str.1, i64 0, i64 0))
  %59 = load i32, i32* @EOPNOTSUPP, align 4
  %60 = sub nsw i32 0, %59
  %61 = call %struct.tcf_block* @ERR_PTR(i32 %60)
  store %struct.tcf_block* %61, %struct.tcf_block** %7, align 8
  br label %68

62:                                               ; preds = %52
  %63 = load %struct.tcf_block*, %struct.tcf_block** %14, align 8
  %64 = getelementptr inbounds %struct.tcf_block, %struct.tcf_block* %63, i32 0, i32 0
  %65 = call i32 @refcount_inc(i32* %64)
  br label %66

66:                                               ; preds = %62, %31
  %67 = load %struct.tcf_block*, %struct.tcf_block** %14, align 8
  store %struct.tcf_block* %67, %struct.tcf_block** %7, align 8
  br label %68

68:                                               ; preds = %66, %56, %48, %25
  %69 = load %struct.tcf_block*, %struct.tcf_block** %7, align 8
  ret %struct.tcf_block* %69
}

declare dso_local %struct.tcf_block* @tcf_block_refcnt_get(%struct.net*, i32) #1

declare dso_local i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack*, i8*) #1

declare dso_local %struct.tcf_block* @ERR_PTR(i32) #1

declare dso_local i64 @tcf_block_shared(%struct.tcf_block*) #1

declare dso_local i32 @refcount_inc(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
