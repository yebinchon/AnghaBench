; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/dlm/extr_dlmdomain.c_dlm_send_regions.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/dlm/extr_dlmdomain.c_dlm_send_regions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dlm_ctxt = type { i32, i32 }
%struct.dlm_query_region = type { i32, i32, i8*, i32, i32 }

@O2NM_MAX_NODES = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@O2NM_MAX_REGIONS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"Region %.*s\0A\00", align 1
@O2HB_MAX_REGION_NAME_LEN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"Sending regions to node %d\0A\00", align 1
@DLM_QUERY_REGION = common dso_local global i32 0, align 4
@DLM_MOD_KEY = common dso_local global i32 0, align 4
@ML_ERROR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"Region mismatch %d, node %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dlm_ctxt*, i64*)* @dlm_send_regions to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dlm_send_regions(%struct.dlm_ctxt* %0, i64* %1) #0 {
  %3 = alloca %struct.dlm_ctxt*, align 8
  %4 = alloca i64*, align 8
  %5 = alloca %struct.dlm_query_region*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  store %struct.dlm_ctxt* %0, %struct.dlm_ctxt** %3, align 8
  store i64* %1, i64** %4, align 8
  store %struct.dlm_query_region* null, %struct.dlm_query_region** %5, align 8
  store i32 0, i32* %7, align 4
  %10 = load i64*, i64** %4, align 8
  %11 = load i32, i32* @O2NM_MAX_NODES, align 4
  %12 = call i32 @find_next_bit(i64* %10, i32 %11, i32 0)
  %13 = load i32, i32* @O2NM_MAX_NODES, align 4
  %14 = icmp sge i32 %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  br label %117

16:                                               ; preds = %2
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call %struct.dlm_query_region* @kzalloc(i32 24, i32 %17)
  store %struct.dlm_query_region* %18, %struct.dlm_query_region** %5, align 8
  %19 = load %struct.dlm_query_region*, %struct.dlm_query_region** %5, align 8
  %20 = icmp ne %struct.dlm_query_region* %19, null
  br i1 %20, label %26, label %21

21:                                               ; preds = %16
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* %7, align 4
  %25 = call i32 @mlog_errno(i32 %24)
  br label %117

26:                                               ; preds = %16
  %27 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %3, align 8
  %28 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.dlm_query_region*, %struct.dlm_query_region** %5, align 8
  %31 = getelementptr inbounds %struct.dlm_query_region, %struct.dlm_query_region* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 8
  %32 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %3, align 8
  %33 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @strlen(i32 %34)
  %36 = load %struct.dlm_query_region*, %struct.dlm_query_region** %5, align 8
  %37 = getelementptr inbounds %struct.dlm_query_region, %struct.dlm_query_region* %36, i32 0, i32 3
  store i32 %35, i32* %37, align 8
  %38 = load %struct.dlm_query_region*, %struct.dlm_query_region** %5, align 8
  %39 = getelementptr inbounds %struct.dlm_query_region, %struct.dlm_query_region* %38, i32 0, i32 4
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %3, align 8
  %42 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.dlm_query_region*, %struct.dlm_query_region** %5, align 8
  %45 = getelementptr inbounds %struct.dlm_query_region, %struct.dlm_query_region* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @memcpy(i32 %40, i32 %43, i32 %46)
  %48 = call i64 (...) @o2hb_global_heartbeat_active()
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %58

50:                                               ; preds = %26
  %51 = load %struct.dlm_query_region*, %struct.dlm_query_region** %5, align 8
  %52 = getelementptr inbounds %struct.dlm_query_region, %struct.dlm_query_region* %51, i32 0, i32 2
  %53 = load i8*, i8** %52, align 8
  %54 = load i32, i32* @O2NM_MAX_REGIONS, align 4
  %55 = call i32 @o2hb_get_all_regions(i8* %53, i32 %54)
  %56 = load %struct.dlm_query_region*, %struct.dlm_query_region** %5, align 8
  %57 = getelementptr inbounds %struct.dlm_query_region, %struct.dlm_query_region* %56, i32 0, i32 1
  store i32 %55, i32* %57, align 4
  br label %58

58:                                               ; preds = %50, %26
  %59 = load %struct.dlm_query_region*, %struct.dlm_query_region** %5, align 8
  %60 = getelementptr inbounds %struct.dlm_query_region, %struct.dlm_query_region* %59, i32 0, i32 2
  %61 = load i8*, i8** %60, align 8
  store i8* %61, i8** %9, align 8
  store i32 0, i32* %8, align 4
  br label %62

62:                                               ; preds = %72, %58
  %63 = load i32, i32* %8, align 4
  %64 = load %struct.dlm_query_region*, %struct.dlm_query_region** %5, align 8
  %65 = getelementptr inbounds %struct.dlm_query_region, %struct.dlm_query_region* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = icmp slt i32 %63, %66
  br i1 %67, label %68, label %79

68:                                               ; preds = %62
  %69 = load i32, i32* @O2HB_MAX_REGION_NAME_LEN, align 4
  %70 = load i8*, i8** %9, align 8
  %71 = call i32 (i32, i8*, i32, ...) @mlog(i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %69, i8* %70)
  br label %72

72:                                               ; preds = %68
  %73 = load i32, i32* %8, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %8, align 4
  %75 = load i32, i32* @O2HB_MAX_REGION_NAME_LEN, align 4
  %76 = load i8*, i8** %9, align 8
  %77 = sext i32 %75 to i64
  %78 = getelementptr inbounds i8, i8* %76, i64 %77
  store i8* %78, i8** %9, align 8
  br label %62

79:                                               ; preds = %62
  store i32 -1, i32* %8, align 4
  br label %80

80:                                               ; preds = %115, %94, %79
  %81 = load i64*, i64** %4, align 8
  %82 = load i32, i32* @O2NM_MAX_NODES, align 4
  %83 = load i32, i32* %8, align 4
  %84 = add nsw i32 %83, 1
  %85 = call i32 @find_next_bit(i64* %81, i32 %82, i32 %84)
  store i32 %85, i32* %8, align 4
  %86 = load i32, i32* @O2NM_MAX_NODES, align 4
  %87 = icmp slt i32 %85, %86
  br i1 %87, label %88, label %116

88:                                               ; preds = %80
  %89 = load i32, i32* %8, align 4
  %90 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %3, align 8
  %91 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = icmp eq i32 %89, %92
  br i1 %93, label %94, label %95

94:                                               ; preds = %88
  br label %80

95:                                               ; preds = %88
  %96 = load i32, i32* %8, align 4
  %97 = call i32 (i32, i8*, i32, ...) @mlog(i32 0, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %96)
  %98 = load i32, i32* @DLM_QUERY_REGION, align 4
  %99 = load i32, i32* @DLM_MOD_KEY, align 4
  %100 = load %struct.dlm_query_region*, %struct.dlm_query_region** %5, align 8
  %101 = load i32, i32* %8, align 4
  %102 = call i32 @o2net_send_message(i32 %98, i32 %99, %struct.dlm_query_region* %100, i32 24, i32 %101, i32* %6)
  store i32 %102, i32* %7, align 4
  %103 = load i32, i32* %7, align 4
  %104 = icmp sge i32 %103, 0
  br i1 %104, label %105, label %107

105:                                              ; preds = %95
  %106 = load i32, i32* %6, align 4
  store i32 %106, i32* %7, align 4
  br label %107

107:                                              ; preds = %105, %95
  %108 = load i32, i32* %7, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %115

110:                                              ; preds = %107
  %111 = load i32, i32* @ML_ERROR, align 4
  %112 = load i32, i32* %7, align 4
  %113 = load i32, i32* %8, align 4
  %114 = call i32 (i32, i8*, i32, ...) @mlog(i32 %111, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 %112, i32 %113)
  br label %116

115:                                              ; preds = %107
  br label %80

116:                                              ; preds = %110, %80
  br label %117

117:                                              ; preds = %116, %21, %15
  %118 = load %struct.dlm_query_region*, %struct.dlm_query_region** %5, align 8
  %119 = call i32 @kfree(%struct.dlm_query_region* %118)
  %120 = load i32, i32* %7, align 4
  ret i32 %120
}

declare dso_local i32 @find_next_bit(i64*, i32, i32) #1

declare dso_local %struct.dlm_query_region* @kzalloc(i32, i32) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @strlen(i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i64 @o2hb_global_heartbeat_active(...) #1

declare dso_local i32 @o2hb_get_all_regions(i8*, i32) #1

declare dso_local i32 @mlog(i32, i8*, i32, ...) #1

declare dso_local i32 @o2net_send_message(i32, i32, %struct.dlm_query_region*, i32, i32, i32*) #1

declare dso_local i32 @kfree(%struct.dlm_query_region*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
