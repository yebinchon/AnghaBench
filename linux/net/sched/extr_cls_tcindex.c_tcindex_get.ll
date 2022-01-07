; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_cls_tcindex.c_tcindex_get.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_cls_tcindex.c_tcindex_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcf_proto = type { i32 }
%struct.tcindex_data = type { i64, i64 }
%struct.tcindex_filter_result = type opaque

@.str = private unnamed_addr constant [34 x i8] c"tcindex_get(tp %p,handle 0x%08x)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.tcf_proto*, i64)* @tcindex_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @tcindex_get(%struct.tcf_proto* %0, i64 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.tcf_proto*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.tcindex_data*, align 8
  %7 = alloca %struct.tcindex_filter_result*, align 8
  store %struct.tcf_proto* %0, %struct.tcf_proto** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load %struct.tcf_proto*, %struct.tcf_proto** %4, align 8
  %9 = getelementptr inbounds %struct.tcf_proto, %struct.tcf_proto* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.tcindex_data* @rtnl_dereference(i32 %10)
  store %struct.tcindex_data* %11, %struct.tcindex_data** %6, align 8
  %12 = load %struct.tcf_proto*, %struct.tcf_proto** %4, align 8
  %13 = load i64, i64* %5, align 8
  %14 = call i32 @pr_debug(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), %struct.tcf_proto* %12, i64 %13)
  %15 = load %struct.tcindex_data*, %struct.tcindex_data** %6, align 8
  %16 = getelementptr inbounds %struct.tcindex_data, %struct.tcindex_data* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %26

19:                                               ; preds = %2
  %20 = load i64, i64* %5, align 8
  %21 = load %struct.tcindex_data*, %struct.tcindex_data** %6, align 8
  %22 = getelementptr inbounds %struct.tcindex_data, %struct.tcindex_data* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp sge i64 %20, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %19
  store i8* null, i8** %3, align 8
  br label %44

26:                                               ; preds = %19, %2
  %27 = load %struct.tcindex_data*, %struct.tcindex_data** %6, align 8
  %28 = load i64, i64* %5, align 8
  %29 = call i8* @tcindex_lookup(%struct.tcindex_data* %27, i64 %28)
  %30 = bitcast i8* %29 to %struct.tcindex_filter_result*
  store %struct.tcindex_filter_result* %30, %struct.tcindex_filter_result** %7, align 8
  %31 = load %struct.tcindex_filter_result*, %struct.tcindex_filter_result** %7, align 8
  %32 = icmp ne %struct.tcindex_filter_result* %31, null
  br i1 %32, label %33, label %40

33:                                               ; preds = %26
  %34 = load %struct.tcindex_filter_result*, %struct.tcindex_filter_result** %7, align 8
  %35 = bitcast %struct.tcindex_filter_result* %34 to i8*
  %36 = call i64 @tcindex_filter_is_set(i8* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %33
  %39 = load %struct.tcindex_filter_result*, %struct.tcindex_filter_result** %7, align 8
  br label %41

40:                                               ; preds = %33, %26
  br label %41

41:                                               ; preds = %40, %38
  %42 = phi %struct.tcindex_filter_result* [ %39, %38 ], [ null, %40 ]
  %43 = bitcast %struct.tcindex_filter_result* %42 to i8*
  store i8* %43, i8** %3, align 8
  br label %44

44:                                               ; preds = %41, %25
  %45 = load i8*, i8** %3, align 8
  ret i8* %45
}

declare dso_local %struct.tcindex_data* @rtnl_dereference(i32) #1

declare dso_local i32 @pr_debug(i8*, %struct.tcf_proto*, i64) #1

declare dso_local i8* @tcindex_lookup(%struct.tcindex_data*, i64) #1

declare dso_local i64 @tcindex_filter_is_set(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
