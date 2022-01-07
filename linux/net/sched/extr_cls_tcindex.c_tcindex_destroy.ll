; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_cls_tcindex.c_tcindex_destroy.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_cls_tcindex.c_tcindex_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcf_proto = type { i32 }
%struct.netlink_ext_ack = type { i32 }
%struct.tcindex_data = type { i32, i32, i32*, %struct.tcindex_filter_result* }
%struct.tcindex_filter_result = type { i32, i32, i32 }
%struct.tcindex_filter = type { i32, i32 }

@.str = private unnamed_addr constant [29 x i8] c"tcindex_destroy(tp %p),p %p\0A\00", align 1
@tcindex_destroy_rexts_work = common dso_local global i32 0, align 4
@tcindex_destroy_work = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tcf_proto*, i32, %struct.netlink_ext_ack*)* @tcindex_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tcindex_destroy(%struct.tcf_proto* %0, i32 %1, %struct.netlink_ext_ack* %2) #0 {
  %4 = alloca %struct.tcf_proto*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.netlink_ext_ack*, align 8
  %7 = alloca %struct.tcindex_data*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.tcindex_filter_result*, align 8
  %10 = alloca %struct.tcindex_filter*, align 8
  %11 = alloca %struct.tcindex_filter*, align 8
  %12 = alloca i32, align 4
  store %struct.tcf_proto* %0, %struct.tcf_proto** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.netlink_ext_ack* %2, %struct.netlink_ext_ack** %6, align 8
  %13 = load %struct.tcf_proto*, %struct.tcf_proto** %4, align 8
  %14 = getelementptr inbounds %struct.tcf_proto, %struct.tcf_proto* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i8* @rtnl_dereference(i32 %15)
  %17 = bitcast i8* %16 to %struct.tcindex_data*
  store %struct.tcindex_data* %17, %struct.tcindex_data** %7, align 8
  %18 = load %struct.tcf_proto*, %struct.tcf_proto** %4, align 8
  %19 = load %struct.tcindex_data*, %struct.tcindex_data** %7, align 8
  %20 = call i32 @pr_debug(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), %struct.tcf_proto* %18, %struct.tcindex_data* %19)
  %21 = load %struct.tcindex_data*, %struct.tcindex_data** %7, align 8
  %22 = getelementptr inbounds %struct.tcindex_data, %struct.tcindex_data* %21, i32 0, i32 3
  %23 = load %struct.tcindex_filter_result*, %struct.tcindex_filter_result** %22, align 8
  %24 = icmp ne %struct.tcindex_filter_result* %23, null
  br i1 %24, label %25, label %60

25:                                               ; preds = %3
  store i32 0, i32* %8, align 4
  br label %26

26:                                               ; preds = %56, %25
  %27 = load i32, i32* %8, align 4
  %28 = load %struct.tcindex_data*, %struct.tcindex_data** %7, align 8
  %29 = getelementptr inbounds %struct.tcindex_data, %struct.tcindex_data* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp slt i32 %27, %30
  br i1 %31, label %32, label %59

32:                                               ; preds = %26
  %33 = load %struct.tcindex_data*, %struct.tcindex_data** %7, align 8
  %34 = getelementptr inbounds %struct.tcindex_data, %struct.tcindex_data* %33, i32 0, i32 3
  %35 = load %struct.tcindex_filter_result*, %struct.tcindex_filter_result** %34, align 8
  %36 = load i32, i32* %8, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.tcindex_filter_result, %struct.tcindex_filter_result* %35, i64 %37
  store %struct.tcindex_filter_result* %38, %struct.tcindex_filter_result** %9, align 8
  %39 = load %struct.tcf_proto*, %struct.tcf_proto** %4, align 8
  %40 = load %struct.tcindex_filter_result*, %struct.tcindex_filter_result** %9, align 8
  %41 = getelementptr inbounds %struct.tcindex_filter_result, %struct.tcindex_filter_result* %40, i32 0, i32 2
  %42 = call i32 @tcf_unbind_filter(%struct.tcf_proto* %39, i32* %41)
  %43 = load %struct.tcindex_filter_result*, %struct.tcindex_filter_result** %9, align 8
  %44 = getelementptr inbounds %struct.tcindex_filter_result, %struct.tcindex_filter_result* %43, i32 0, i32 1
  %45 = call i64 @tcf_exts_get_net(i32* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %32
  %48 = load %struct.tcindex_filter_result*, %struct.tcindex_filter_result** %9, align 8
  %49 = getelementptr inbounds %struct.tcindex_filter_result, %struct.tcindex_filter_result* %48, i32 0, i32 0
  %50 = load i32, i32* @tcindex_destroy_rexts_work, align 4
  %51 = call i32 @tcf_queue_work(i32* %49, i32 %50)
  br label %55

52:                                               ; preds = %32
  %53 = load %struct.tcindex_filter_result*, %struct.tcindex_filter_result** %9, align 8
  %54 = call i32 @__tcindex_destroy_rexts(%struct.tcindex_filter_result* %53)
  br label %55

55:                                               ; preds = %52, %47
  br label %56

56:                                               ; preds = %55
  %57 = load i32, i32* %8, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %8, align 4
  br label %26

59:                                               ; preds = %26
  br label %60

60:                                               ; preds = %59, %3
  store i32 0, i32* %8, align 4
  br label %61

61:                                               ; preds = %101, %60
  %62 = load %struct.tcindex_data*, %struct.tcindex_data** %7, align 8
  %63 = getelementptr inbounds %struct.tcindex_data, %struct.tcindex_data* %62, i32 0, i32 2
  %64 = load i32*, i32** %63, align 8
  %65 = icmp ne i32* %64, null
  br i1 %65, label %66, label %72

66:                                               ; preds = %61
  %67 = load i32, i32* %8, align 4
  %68 = load %struct.tcindex_data*, %struct.tcindex_data** %7, align 8
  %69 = getelementptr inbounds %struct.tcindex_data, %struct.tcindex_data* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = icmp slt i32 %67, %70
  br label %72

72:                                               ; preds = %66, %61
  %73 = phi i1 [ false, %61 ], [ %71, %66 ]
  br i1 %73, label %74, label %104

74:                                               ; preds = %72
  %75 = load %struct.tcindex_data*, %struct.tcindex_data** %7, align 8
  %76 = getelementptr inbounds %struct.tcindex_data, %struct.tcindex_data* %75, i32 0, i32 2
  %77 = load i32*, i32** %76, align 8
  %78 = load i32, i32* %8, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %77, i64 %79
  %81 = load i32, i32* %80, align 4
  %82 = call i8* @rtnl_dereference(i32 %81)
  %83 = bitcast i8* %82 to %struct.tcindex_filter*
  store %struct.tcindex_filter* %83, %struct.tcindex_filter** %10, align 8
  br label %84

84:                                               ; preds = %98, %74
  %85 = load %struct.tcindex_filter*, %struct.tcindex_filter** %10, align 8
  %86 = icmp ne %struct.tcindex_filter* %85, null
  br i1 %86, label %87, label %100

87:                                               ; preds = %84
  %88 = load %struct.tcindex_filter*, %struct.tcindex_filter** %10, align 8
  %89 = getelementptr inbounds %struct.tcindex_filter, %struct.tcindex_filter* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = call i8* @rtnl_dereference(i32 %90)
  %92 = bitcast i8* %91 to %struct.tcindex_filter*
  store %struct.tcindex_filter* %92, %struct.tcindex_filter** %11, align 8
  %93 = load %struct.tcf_proto*, %struct.tcf_proto** %4, align 8
  %94 = load %struct.tcindex_filter*, %struct.tcindex_filter** %10, align 8
  %95 = getelementptr inbounds %struct.tcindex_filter, %struct.tcindex_filter* %94, i32 0, i32 0
  %96 = load i32, i32* %5, align 4
  %97 = call i32 @tcindex_delete(%struct.tcf_proto* %93, i32* %95, i32* %12, i32 %96, i32* null)
  br label %98

98:                                               ; preds = %87
  %99 = load %struct.tcindex_filter*, %struct.tcindex_filter** %11, align 8
  store %struct.tcindex_filter* %99, %struct.tcindex_filter** %10, align 8
  br label %84

100:                                              ; preds = %84
  br label %101

101:                                              ; preds = %100
  %102 = load i32, i32* %8, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %8, align 4
  br label %61

104:                                              ; preds = %72
  %105 = load %struct.tcindex_data*, %struct.tcindex_data** %7, align 8
  %106 = getelementptr inbounds %struct.tcindex_data, %struct.tcindex_data* %105, i32 0, i32 1
  %107 = load i32, i32* @tcindex_destroy_work, align 4
  %108 = call i32 @tcf_queue_work(i32* %106, i32 %107)
  ret void
}

declare dso_local i8* @rtnl_dereference(i32) #1

declare dso_local i32 @pr_debug(i8*, %struct.tcf_proto*, %struct.tcindex_data*) #1

declare dso_local i32 @tcf_unbind_filter(%struct.tcf_proto*, i32*) #1

declare dso_local i64 @tcf_exts_get_net(i32*) #1

declare dso_local i32 @tcf_queue_work(i32*, i32) #1

declare dso_local i32 @__tcindex_destroy_rexts(%struct.tcindex_filter_result*) #1

declare dso_local i32 @tcindex_delete(%struct.tcf_proto*, i32*, i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
