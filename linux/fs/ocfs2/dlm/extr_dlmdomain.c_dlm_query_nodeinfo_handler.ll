; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/dlm/extr_dlmdomain.c_dlm_query_nodeinfo_handler.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/dlm/extr_dlmdomain.c_dlm_query_nodeinfo_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.o2net_msg = type { i64 }
%struct.dlm_query_nodeinfo = type { i64, i32, i32 }
%struct.dlm_ctxt = type { i64, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i64 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Node %u queries nodes on domain %s\0A\00", align 1
@dlm_domain_lock = common dso_local global i32 0, align 4
@ML_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [55 x i8] c"Node %d queried nodes on domain %s before join domain\0A\00", align 1
@.str.2 = private unnamed_addr constant [59 x i8] c"Node %d queried nodes on domain %s but joining node is %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [69 x i8] c"Node %d queried nodes on domain %s but active dlm protocol is %d.%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.o2net_msg*, i32, i8*, i8**)* @dlm_query_nodeinfo_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dlm_query_nodeinfo_handler(%struct.o2net_msg* %0, i32 %1, i8* %2, i8** %3) #0 {
  %5 = alloca %struct.o2net_msg*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca %struct.dlm_query_nodeinfo*, align 8
  %10 = alloca %struct.dlm_ctxt*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.o2net_msg* %0, %struct.o2net_msg** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i8** %3, i8*** %8, align 8
  store %struct.dlm_ctxt* null, %struct.dlm_ctxt** %10, align 8
  store i32 0, i32* %11, align 4
  %13 = load i32, i32* @EINVAL, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %12, align 4
  %15 = load %struct.o2net_msg*, %struct.o2net_msg** %5, align 8
  %16 = getelementptr inbounds %struct.o2net_msg, %struct.o2net_msg* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = inttoptr i64 %17 to %struct.dlm_query_nodeinfo*
  store %struct.dlm_query_nodeinfo* %18, %struct.dlm_query_nodeinfo** %9, align 8
  %19 = load %struct.dlm_query_nodeinfo*, %struct.dlm_query_nodeinfo** %9, align 8
  %20 = getelementptr inbounds %struct.dlm_query_nodeinfo, %struct.dlm_query_nodeinfo* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.dlm_query_nodeinfo*, %struct.dlm_query_nodeinfo** %9, align 8
  %23 = getelementptr inbounds %struct.dlm_query_nodeinfo, %struct.dlm_query_nodeinfo* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = call i32 (i32, i8*, i64, i32, ...) @mlog(i32 0, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i64 %21, i32 %24)
  %26 = call i32 @spin_lock(i32* @dlm_domain_lock)
  %27 = load %struct.dlm_query_nodeinfo*, %struct.dlm_query_nodeinfo** %9, align 8
  %28 = getelementptr inbounds %struct.dlm_query_nodeinfo, %struct.dlm_query_nodeinfo* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.dlm_query_nodeinfo*, %struct.dlm_query_nodeinfo** %9, align 8
  %31 = getelementptr inbounds %struct.dlm_query_nodeinfo, %struct.dlm_query_nodeinfo* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = call %struct.dlm_ctxt* @__dlm_lookup_domain_full(i32 %29, i32 %32)
  store %struct.dlm_ctxt* %33, %struct.dlm_ctxt** %10, align 8
  %34 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %10, align 8
  %35 = icmp ne %struct.dlm_ctxt* %34, null
  br i1 %35, label %45, label %36

36:                                               ; preds = %4
  %37 = load i32, i32* @ML_ERROR, align 4
  %38 = load %struct.dlm_query_nodeinfo*, %struct.dlm_query_nodeinfo** %9, align 8
  %39 = getelementptr inbounds %struct.dlm_query_nodeinfo, %struct.dlm_query_nodeinfo* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.dlm_query_nodeinfo*, %struct.dlm_query_nodeinfo** %9, align 8
  %42 = getelementptr inbounds %struct.dlm_query_nodeinfo, %struct.dlm_query_nodeinfo* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = call i32 (i32, i8*, i64, i32, ...) @mlog(i32 %37, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.1, i64 0, i64 0), i64 %40, i32 %43)
  br label %101

45:                                               ; preds = %4
  %46 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %10, align 8
  %47 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %46, i32 0, i32 1
  %48 = call i32 @spin_lock(i32* %47)
  store i32 1, i32* %11, align 4
  %49 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %10, align 8
  %50 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.dlm_query_nodeinfo*, %struct.dlm_query_nodeinfo** %9, align 8
  %53 = getelementptr inbounds %struct.dlm_query_nodeinfo, %struct.dlm_query_nodeinfo* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %51, %54
  br i1 %55, label %56, label %68

56:                                               ; preds = %45
  %57 = load i32, i32* @ML_ERROR, align 4
  %58 = load %struct.dlm_query_nodeinfo*, %struct.dlm_query_nodeinfo** %9, align 8
  %59 = getelementptr inbounds %struct.dlm_query_nodeinfo, %struct.dlm_query_nodeinfo* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load %struct.dlm_query_nodeinfo*, %struct.dlm_query_nodeinfo** %9, align 8
  %62 = getelementptr inbounds %struct.dlm_query_nodeinfo, %struct.dlm_query_nodeinfo* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %10, align 8
  %65 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = call i32 (i32, i8*, i64, i32, ...) @mlog(i32 %57, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.2, i64 0, i64 0), i64 %60, i32 %63, i64 %66)
  br label %101

68:                                               ; preds = %45
  %69 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %10, align 8
  %70 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %69, i32 0, i32 2
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = icmp eq i32 %72, 1
  br i1 %73, label %74, label %97

74:                                               ; preds = %68
  %75 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %10, align 8
  %76 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %75, i32 0, i32 2
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = icmp eq i64 %78, 0
  br i1 %79, label %80, label %97

80:                                               ; preds = %74
  %81 = load i32, i32* @ML_ERROR, align 4
  %82 = load %struct.dlm_query_nodeinfo*, %struct.dlm_query_nodeinfo** %9, align 8
  %83 = getelementptr inbounds %struct.dlm_query_nodeinfo, %struct.dlm_query_nodeinfo* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load %struct.dlm_query_nodeinfo*, %struct.dlm_query_nodeinfo** %9, align 8
  %86 = getelementptr inbounds %struct.dlm_query_nodeinfo, %struct.dlm_query_nodeinfo* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 8
  %88 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %10, align 8
  %89 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %88, i32 0, i32 2
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %10, align 8
  %93 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %92, i32 0, i32 2
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 1
  %95 = load i64, i64* %94, align 8
  %96 = call i32 (i32, i8*, i64, i32, ...) @mlog(i32 %81, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.3, i64 0, i64 0), i64 %84, i32 %87, i32 %91, i64 %95)
  br label %101

97:                                               ; preds = %74, %68
  %98 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %10, align 8
  %99 = load %struct.dlm_query_nodeinfo*, %struct.dlm_query_nodeinfo** %9, align 8
  %100 = call i32 @dlm_match_nodes(%struct.dlm_ctxt* %98, %struct.dlm_query_nodeinfo* %99)
  store i32 %100, i32* %12, align 4
  br label %101

101:                                              ; preds = %97, %80, %56, %36
  %102 = load i32, i32* %11, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %108

104:                                              ; preds = %101
  %105 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %10, align 8
  %106 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %105, i32 0, i32 1
  %107 = call i32 @spin_unlock(i32* %106)
  br label %108

108:                                              ; preds = %104, %101
  %109 = call i32 @spin_unlock(i32* @dlm_domain_lock)
  %110 = load i32, i32* %12, align 4
  ret i32 %110
}

declare dso_local i32 @mlog(i32, i8*, i64, i32, ...) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local %struct.dlm_ctxt* @__dlm_lookup_domain_full(i32, i32) #1

declare dso_local i32 @dlm_match_nodes(%struct.dlm_ctxt*, %struct.dlm_query_nodeinfo*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
