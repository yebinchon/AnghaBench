; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_cls_api.c___tcf_qdisc_find.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_cls_api.c___tcf_qdisc_find.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.Qdisc = type { %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { %struct.Qdisc_class_ops* }
%struct.Qdisc_class_ops = type { i32 }
%struct.netlink_ext_ack = type { i32 }
%struct.net_device = type { %struct.Qdisc* }

@TCM_IFINDEX_MAGIC_BLOCK = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Parent Qdisc doesn't exists\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"Qdisc not classful\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"Class doesn't support blocks\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net*, %struct.Qdisc**, i64*, i32, i32, %struct.netlink_ext_ack*)* @__tcf_qdisc_find to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__tcf_qdisc_find(%struct.net* %0, %struct.Qdisc** %1, i64* %2, i32 %3, i32 %4, %struct.netlink_ext_ack* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.net*, align 8
  %9 = alloca %struct.Qdisc**, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.netlink_ext_ack*, align 8
  %14 = alloca %struct.Qdisc_class_ops*, align 8
  %15 = alloca %struct.net_device*, align 8
  %16 = alloca i32, align 4
  store %struct.net* %0, %struct.net** %8, align 8
  store %struct.Qdisc** %1, %struct.Qdisc*** %9, align 8
  store i64* %2, i64** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store %struct.netlink_ext_ack* %5, %struct.netlink_ext_ack** %13, align 8
  store i32 0, i32* %16, align 4
  %17 = load i32, i32* %11, align 4
  %18 = load i32, i32* @TCM_IFINDEX_MAGIC_BLOCK, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %6
  store i32 0, i32* %7, align 4
  br label %118

21:                                               ; preds = %6
  %22 = call i32 (...) @rcu_read_lock()
  %23 = load %struct.net*, %struct.net** %8, align 8
  %24 = load i32, i32* %11, align 4
  %25 = call %struct.net_device* @dev_get_by_index_rcu(%struct.net* %23, i32 %24)
  store %struct.net_device* %25, %struct.net_device** %15, align 8
  %26 = load %struct.net_device*, %struct.net_device** %15, align 8
  %27 = icmp ne %struct.net_device* %26, null
  br i1 %27, label %32, label %28

28:                                               ; preds = %21
  %29 = call i32 (...) @rcu_read_unlock()
  %30 = load i32, i32* @ENODEV, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %7, align 4
  br label %118

32:                                               ; preds = %21
  %33 = load i64*, i64** %10, align 8
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %46, label %36

36:                                               ; preds = %32
  %37 = load %struct.net_device*, %struct.net_device** %15, align 8
  %38 = getelementptr inbounds %struct.net_device, %struct.net_device* %37, i32 0, i32 0
  %39 = load %struct.Qdisc*, %struct.Qdisc** %38, align 8
  %40 = load %struct.Qdisc**, %struct.Qdisc*** %9, align 8
  store %struct.Qdisc* %39, %struct.Qdisc** %40, align 8
  %41 = load %struct.Qdisc**, %struct.Qdisc*** %9, align 8
  %42 = load %struct.Qdisc*, %struct.Qdisc** %41, align 8
  %43 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = load i64*, i64** %10, align 8
  store i64 %44, i64* %45, align 8
  br label %62

46:                                               ; preds = %32
  %47 = load %struct.net_device*, %struct.net_device** %15, align 8
  %48 = load i64*, i64** %10, align 8
  %49 = load i64, i64* %48, align 8
  %50 = call i32 @TC_H_MAJ(i64 %49)
  %51 = call %struct.Qdisc* @qdisc_lookup_rcu(%struct.net_device* %47, i32 %50)
  %52 = load %struct.Qdisc**, %struct.Qdisc*** %9, align 8
  store %struct.Qdisc* %51, %struct.Qdisc** %52, align 8
  %53 = load %struct.Qdisc**, %struct.Qdisc*** %9, align 8
  %54 = load %struct.Qdisc*, %struct.Qdisc** %53, align 8
  %55 = icmp ne %struct.Qdisc* %54, null
  br i1 %55, label %61, label %56

56:                                               ; preds = %46
  %57 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %13, align 8
  %58 = call i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack* %57, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %59 = load i32, i32* @EINVAL, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %16, align 4
  br label %100

61:                                               ; preds = %46
  br label %62

62:                                               ; preds = %61, %36
  %63 = load %struct.Qdisc**, %struct.Qdisc*** %9, align 8
  %64 = load %struct.Qdisc*, %struct.Qdisc** %63, align 8
  %65 = call %struct.Qdisc* @qdisc_refcount_inc_nz(%struct.Qdisc* %64)
  %66 = load %struct.Qdisc**, %struct.Qdisc*** %9, align 8
  store %struct.Qdisc* %65, %struct.Qdisc** %66, align 8
  %67 = load %struct.Qdisc**, %struct.Qdisc*** %9, align 8
  %68 = load %struct.Qdisc*, %struct.Qdisc** %67, align 8
  %69 = icmp ne %struct.Qdisc* %68, null
  br i1 %69, label %75, label %70

70:                                               ; preds = %62
  %71 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %13, align 8
  %72 = call i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack* %71, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %73 = load i32, i32* @EINVAL, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %16, align 4
  br label %100

75:                                               ; preds = %62
  %76 = load %struct.Qdisc**, %struct.Qdisc*** %9, align 8
  %77 = load %struct.Qdisc*, %struct.Qdisc** %76, align 8
  %78 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %77, i32 0, i32 0
  %79 = load %struct.TYPE_2__*, %struct.TYPE_2__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 0
  %81 = load %struct.Qdisc_class_ops*, %struct.Qdisc_class_ops** %80, align 8
  store %struct.Qdisc_class_ops* %81, %struct.Qdisc_class_ops** %14, align 8
  %82 = load %struct.Qdisc_class_ops*, %struct.Qdisc_class_ops** %14, align 8
  %83 = icmp ne %struct.Qdisc_class_ops* %82, null
  br i1 %83, label %89, label %84

84:                                               ; preds = %75
  %85 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %13, align 8
  %86 = call i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack* %85, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %87 = load i32, i32* @EINVAL, align 4
  %88 = sub nsw i32 0, %87
  store i32 %88, i32* %16, align 4
  br label %103

89:                                               ; preds = %75
  %90 = load %struct.Qdisc_class_ops*, %struct.Qdisc_class_ops** %14, align 8
  %91 = getelementptr inbounds %struct.Qdisc_class_ops, %struct.Qdisc_class_ops* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %99, label %94

94:                                               ; preds = %89
  %95 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %13, align 8
  %96 = call i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack* %95, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  %97 = load i32, i32* @EOPNOTSUPP, align 4
  %98 = sub nsw i32 0, %97
  store i32 %98, i32* %16, align 4
  br label %103

99:                                               ; preds = %89
  br label %100

100:                                              ; preds = %99, %70, %56
  %101 = call i32 (...) @rcu_read_unlock()
  %102 = load i32, i32* %16, align 4
  store i32 %102, i32* %7, align 4
  br label %118

103:                                              ; preds = %94, %84
  %104 = call i32 (...) @rcu_read_unlock()
  %105 = load i32, i32* %12, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %111

107:                                              ; preds = %103
  %108 = load %struct.Qdisc**, %struct.Qdisc*** %9, align 8
  %109 = load %struct.Qdisc*, %struct.Qdisc** %108, align 8
  %110 = call i32 @qdisc_put(%struct.Qdisc* %109)
  br label %115

111:                                              ; preds = %103
  %112 = load %struct.Qdisc**, %struct.Qdisc*** %9, align 8
  %113 = load %struct.Qdisc*, %struct.Qdisc** %112, align 8
  %114 = call i32 @qdisc_put_unlocked(%struct.Qdisc* %113)
  br label %115

115:                                              ; preds = %111, %107
  %116 = load %struct.Qdisc**, %struct.Qdisc*** %9, align 8
  store %struct.Qdisc* null, %struct.Qdisc** %116, align 8
  %117 = load i32, i32* %16, align 4
  store i32 %117, i32* %7, align 4
  br label %118

118:                                              ; preds = %115, %100, %28, %20
  %119 = load i32, i32* %7, align 4
  ret i32 %119
}

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.net_device* @dev_get_by_index_rcu(%struct.net*, i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local %struct.Qdisc* @qdisc_lookup_rcu(%struct.net_device*, i32) #1

declare dso_local i32 @TC_H_MAJ(i64) #1

declare dso_local i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack*, i8*) #1

declare dso_local %struct.Qdisc* @qdisc_refcount_inc_nz(%struct.Qdisc*) #1

declare dso_local i32 @qdisc_put(%struct.Qdisc*) #1

declare dso_local i32 @qdisc_put_unlocked(%struct.Qdisc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
