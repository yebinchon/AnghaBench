; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_cls_api.c_tcf_proto_create.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_cls_api.c_tcf_proto_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcf_proto = type { %struct.TYPE_4__*, i32, i32, %struct.tcf_chain*, i8*, i8*, i32 }
%struct.TYPE_4__ = type { i32 (%struct.tcf_proto*)*, i32, i32 }
%struct.tcf_chain = type { i32 }
%struct.netlink_ext_ack = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.tcf_proto* (i8*, i8*, i8*, %struct.tcf_chain*, i32, %struct.netlink_ext_ack*)* @tcf_proto_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.tcf_proto* @tcf_proto_create(i8* %0, i8* %1, i8* %2, %struct.tcf_chain* %3, i32 %4, %struct.netlink_ext_ack* %5) #0 {
  %7 = alloca %struct.tcf_proto*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.tcf_chain*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.netlink_ext_ack*, align 8
  %14 = alloca %struct.tcf_proto*, align 8
  %15 = alloca i32, align 4
  store i8* %0, i8** %8, align 8
  store i8* %1, i8** %9, align 8
  store i8* %2, i8** %10, align 8
  store %struct.tcf_chain* %3, %struct.tcf_chain** %11, align 8
  store i32 %4, i32* %12, align 4
  store %struct.netlink_ext_ack* %5, %struct.netlink_ext_ack** %13, align 8
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = call %struct.tcf_proto* @kzalloc(i32 48, i32 %16)
  store %struct.tcf_proto* %17, %struct.tcf_proto** %14, align 8
  %18 = load %struct.tcf_proto*, %struct.tcf_proto** %14, align 8
  %19 = icmp ne %struct.tcf_proto* %18, null
  br i1 %19, label %24, label %20

20:                                               ; preds = %6
  %21 = load i32, i32* @ENOBUFS, align 4
  %22 = sub nsw i32 0, %21
  %23 = call %struct.tcf_proto* @ERR_PTR(i32 %22)
  store %struct.tcf_proto* %23, %struct.tcf_proto** %7, align 8
  br label %87

24:                                               ; preds = %6
  %25 = load i8*, i8** %8, align 8
  %26 = load i32, i32* %12, align 4
  %27 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %13, align 8
  %28 = call %struct.TYPE_4__* @tcf_proto_lookup_ops(i8* %25, i32 %26, %struct.netlink_ext_ack* %27)
  %29 = load %struct.tcf_proto*, %struct.tcf_proto** %14, align 8
  %30 = getelementptr inbounds %struct.tcf_proto, %struct.tcf_proto* %29, i32 0, i32 0
  store %struct.TYPE_4__* %28, %struct.TYPE_4__** %30, align 8
  %31 = load %struct.tcf_proto*, %struct.tcf_proto** %14, align 8
  %32 = getelementptr inbounds %struct.tcf_proto, %struct.tcf_proto* %31, i32 0, i32 0
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %32, align 8
  %34 = call i64 @IS_ERR(%struct.TYPE_4__* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %24
  %37 = load %struct.tcf_proto*, %struct.tcf_proto** %14, align 8
  %38 = getelementptr inbounds %struct.tcf_proto, %struct.tcf_proto* %37, i32 0, i32 0
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %38, align 8
  %40 = call i32 @PTR_ERR(%struct.TYPE_4__* %39)
  store i32 %40, i32* %15, align 4
  br label %82

41:                                               ; preds = %24
  %42 = load %struct.tcf_proto*, %struct.tcf_proto** %14, align 8
  %43 = getelementptr inbounds %struct.tcf_proto, %struct.tcf_proto* %42, i32 0, i32 0
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.tcf_proto*, %struct.tcf_proto** %14, align 8
  %48 = getelementptr inbounds %struct.tcf_proto, %struct.tcf_proto* %47, i32 0, i32 6
  store i32 %46, i32* %48, align 8
  %49 = load i8*, i8** %9, align 8
  %50 = load %struct.tcf_proto*, %struct.tcf_proto** %14, align 8
  %51 = getelementptr inbounds %struct.tcf_proto, %struct.tcf_proto* %50, i32 0, i32 5
  store i8* %49, i8** %51, align 8
  %52 = load i8*, i8** %10, align 8
  %53 = load %struct.tcf_proto*, %struct.tcf_proto** %14, align 8
  %54 = getelementptr inbounds %struct.tcf_proto, %struct.tcf_proto* %53, i32 0, i32 4
  store i8* %52, i8** %54, align 8
  %55 = load %struct.tcf_chain*, %struct.tcf_chain** %11, align 8
  %56 = load %struct.tcf_proto*, %struct.tcf_proto** %14, align 8
  %57 = getelementptr inbounds %struct.tcf_proto, %struct.tcf_proto* %56, i32 0, i32 3
  store %struct.tcf_chain* %55, %struct.tcf_chain** %57, align 8
  %58 = load %struct.tcf_proto*, %struct.tcf_proto** %14, align 8
  %59 = getelementptr inbounds %struct.tcf_proto, %struct.tcf_proto* %58, i32 0, i32 2
  %60 = call i32 @spin_lock_init(i32* %59)
  %61 = load %struct.tcf_proto*, %struct.tcf_proto** %14, align 8
  %62 = getelementptr inbounds %struct.tcf_proto, %struct.tcf_proto* %61, i32 0, i32 1
  %63 = call i32 @refcount_set(i32* %62, i32 1)
  %64 = load %struct.tcf_proto*, %struct.tcf_proto** %14, align 8
  %65 = getelementptr inbounds %struct.tcf_proto, %struct.tcf_proto* %64, i32 0, i32 0
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  %68 = load i32 (%struct.tcf_proto*)*, i32 (%struct.tcf_proto*)** %67, align 8
  %69 = load %struct.tcf_proto*, %struct.tcf_proto** %14, align 8
  %70 = call i32 %68(%struct.tcf_proto* %69)
  store i32 %70, i32* %15, align 4
  %71 = load i32, i32* %15, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %80

73:                                               ; preds = %41
  %74 = load %struct.tcf_proto*, %struct.tcf_proto** %14, align 8
  %75 = getelementptr inbounds %struct.tcf_proto, %struct.tcf_proto* %74, i32 0, i32 0
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 8
  %79 = call i32 @module_put(i32 %78)
  br label %82

80:                                               ; preds = %41
  %81 = load %struct.tcf_proto*, %struct.tcf_proto** %14, align 8
  store %struct.tcf_proto* %81, %struct.tcf_proto** %7, align 8
  br label %87

82:                                               ; preds = %73, %36
  %83 = load %struct.tcf_proto*, %struct.tcf_proto** %14, align 8
  %84 = call i32 @kfree(%struct.tcf_proto* %83)
  %85 = load i32, i32* %15, align 4
  %86 = call %struct.tcf_proto* @ERR_PTR(i32 %85)
  store %struct.tcf_proto* %86, %struct.tcf_proto** %7, align 8
  br label %87

87:                                               ; preds = %82, %80, %20
  %88 = load %struct.tcf_proto*, %struct.tcf_proto** %7, align 8
  ret %struct.tcf_proto* %88
}

declare dso_local %struct.tcf_proto* @kzalloc(i32, i32) #1

declare dso_local %struct.tcf_proto* @ERR_PTR(i32) #1

declare dso_local %struct.TYPE_4__* @tcf_proto_lookup_ops(i8*, i32, %struct.netlink_ext_ack*) #1

declare dso_local i64 @IS_ERR(%struct.TYPE_4__*) #1

declare dso_local i32 @PTR_ERR(%struct.TYPE_4__*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @refcount_set(i32*, i32) #1

declare dso_local i32 @module_put(i32) #1

declare dso_local i32 @kfree(%struct.tcf_proto*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
