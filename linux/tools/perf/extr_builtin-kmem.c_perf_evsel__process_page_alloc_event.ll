; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/extr_builtin-kmem.c_perf_evsel__process_page_alloc_event.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/extr_builtin-kmem.c_perf_evsel__process_page_alloc_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evsel = type { i32 }
%struct.perf_sample = type { i32 }
%struct.page_stat = type { i32, i32, i32, i32, i32, i8*, i8* }

@.str = private unnamed_addr constant [6 x i8] c"order\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"gfp_flags\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"migratetype\00", align 1
@kmem_page_size = common dso_local global i32 0, align 4
@use_pfn = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [4 x i8] c"pfn\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"page\00", align 1
@nr_page_allocs = common dso_local global i32 0, align 4
@total_page_alloc_bytes = common dso_local global i32 0, align 4
@nr_page_fails = common dso_local global i32 0, align 4
@total_page_fail_bytes = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@live_page = common dso_local global i32 0, align 4
@order_stats = common dso_local global i32** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.evsel*, %struct.perf_sample*)* @perf_evsel__process_page_alloc_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @perf_evsel__process_page_alloc_event(%struct.evsel* %0, %struct.perf_sample* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.evsel*, align 8
  %5 = alloca %struct.perf_sample*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.page_stat*, align 8
  %13 = alloca %struct.page_stat, align 8
  store %struct.evsel* %0, %struct.evsel** %4, align 8
  store %struct.perf_sample* %1, %struct.perf_sample** %5, align 8
  %14 = load %struct.evsel*, %struct.evsel** %4, align 8
  %15 = load %struct.perf_sample*, %struct.perf_sample** %5, align 8
  %16 = call i8* @perf_evsel__intval(%struct.evsel* %14, %struct.perf_sample* %15, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %17 = ptrtoint i8* %16 to i32
  store i32 %17, i32* %7, align 4
  %18 = load %struct.evsel*, %struct.evsel** %4, align 8
  %19 = load %struct.perf_sample*, %struct.perf_sample** %5, align 8
  %20 = call i8* @perf_evsel__intval(%struct.evsel* %18, %struct.perf_sample* %19, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %21 = ptrtoint i8* %20 to i32
  store i32 %21, i32* %8, align 4
  %22 = load %struct.evsel*, %struct.evsel** %4, align 8
  %23 = load %struct.perf_sample*, %struct.perf_sample** %5, align 8
  %24 = call i8* @perf_evsel__intval(%struct.evsel* %22, %struct.perf_sample* %23, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  %25 = ptrtoint i8* %24 to i32
  store i32 %25, i32* %9, align 4
  %26 = load i32, i32* @kmem_page_size, align 4
  %27 = load i32, i32* %7, align 4
  %28 = shl i32 %26, %27
  %29 = zext i32 %28 to i64
  %30 = inttoptr i64 %29 to i8*
  store i8* %30, i8** %10, align 8
  %31 = getelementptr inbounds %struct.page_stat, %struct.page_stat* %13, i32 0, i32 0
  %32 = load i32, i32* %7, align 4
  store i32 %32, i32* %31, align 8
  %33 = getelementptr inbounds %struct.page_stat, %struct.page_stat* %13, i32 0, i32 1
  %34 = load i32, i32* %8, align 4
  store i32 %34, i32* %33, align 4
  %35 = getelementptr inbounds %struct.page_stat, %struct.page_stat* %13, i32 0, i32 2
  %36 = load i32, i32* %9, align 4
  store i32 %36, i32* %35, align 8
  %37 = getelementptr inbounds %struct.page_stat, %struct.page_stat* %13, i32 0, i32 3
  store i32 0, i32* %37, align 4
  %38 = getelementptr inbounds %struct.page_stat, %struct.page_stat* %13, i32 0, i32 4
  store i32 0, i32* %38, align 8
  %39 = getelementptr inbounds %struct.page_stat, %struct.page_stat* %13, i32 0, i32 5
  store i8* null, i8** %39, align 8
  %40 = getelementptr inbounds %struct.page_stat, %struct.page_stat* %13, i32 0, i32 6
  store i8* null, i8** %40, align 8
  %41 = load i64, i64* @use_pfn, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %2
  %44 = load %struct.evsel*, %struct.evsel** %4, align 8
  %45 = load %struct.perf_sample*, %struct.perf_sample** %5, align 8
  %46 = call i8* @perf_evsel__intval(%struct.evsel* %44, %struct.perf_sample* %45, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  store i8* %46, i8** %6, align 8
  br label %51

47:                                               ; preds = %2
  %48 = load %struct.evsel*, %struct.evsel** %4, align 8
  %49 = load %struct.perf_sample*, %struct.perf_sample** %5, align 8
  %50 = call i8* @perf_evsel__intval(%struct.evsel* %48, %struct.perf_sample* %49, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  store i8* %50, i8** %6, align 8
  br label %51

51:                                               ; preds = %47, %43
  %52 = load i32, i32* @nr_page_allocs, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* @nr_page_allocs, align 4
  %54 = load i8*, i8** %10, align 8
  %55 = load i32, i32* @total_page_alloc_bytes, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr i8, i8* %54, i64 %56
  %58 = ptrtoint i8* %57 to i32
  store i32 %58, i32* @total_page_alloc_bytes, align 4
  %59 = load i8*, i8** %6, align 8
  %60 = call i32 @valid_page(i8* %59)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %70, label %62

62:                                               ; preds = %51
  %63 = load i32, i32* @nr_page_fails, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* @nr_page_fails, align 4
  %65 = load i8*, i8** %10, align 8
  %66 = load i32, i32* @total_page_fail_bytes, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr i8, i8* %65, i64 %67
  %69 = ptrtoint i8* %68 to i32
  store i32 %69, i32* @total_page_fail_bytes, align 4
  store i32 0, i32* %3, align 4
  br label %159

70:                                               ; preds = %51
  %71 = load %struct.evsel*, %struct.evsel** %4, align 8
  %72 = load %struct.perf_sample*, %struct.perf_sample** %5, align 8
  %73 = load i32, i32* %8, align 4
  %74 = call i64 @parse_gfp_flags(%struct.evsel* %71, %struct.perf_sample* %72, i32 %73)
  %75 = icmp slt i64 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %70
  store i32 -1, i32* %3, align 4
  br label %159

77:                                               ; preds = %70
  %78 = load %struct.evsel*, %struct.evsel** %4, align 8
  %79 = load %struct.perf_sample*, %struct.perf_sample** %5, align 8
  %80 = call i8* @find_callsite(%struct.evsel* %78, %struct.perf_sample* %79)
  store i8* %80, i8** %11, align 8
  %81 = load i8*, i8** %6, align 8
  %82 = getelementptr inbounds %struct.page_stat, %struct.page_stat* %13, i32 0, i32 6
  store i8* %81, i8** %82, align 8
  %83 = call %struct.page_stat* @page_stat__findnew_page(%struct.page_stat* %13)
  store %struct.page_stat* %83, %struct.page_stat** %12, align 8
  %84 = load %struct.page_stat*, %struct.page_stat** %12, align 8
  %85 = icmp eq %struct.page_stat* %84, null
  br i1 %85, label %86, label %89

86:                                               ; preds = %77
  %87 = load i32, i32* @ENOMEM, align 4
  %88 = sub nsw i32 0, %87
  store i32 %88, i32* %3, align 4
  br label %159

89:                                               ; preds = %77
  %90 = load %struct.page_stat*, %struct.page_stat** %12, align 8
  %91 = getelementptr inbounds %struct.page_stat, %struct.page_stat* %90, i32 0, i32 4
  %92 = load i32, i32* %91, align 8
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %91, align 8
  %94 = load i8*, i8** %10, align 8
  %95 = load %struct.page_stat*, %struct.page_stat** %12, align 8
  %96 = getelementptr inbounds %struct.page_stat, %struct.page_stat* %95, i32 0, i32 3
  %97 = load i32, i32* %96, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr i8, i8* %94, i64 %98
  %100 = ptrtoint i8* %99 to i32
  store i32 %100, i32* %96, align 4
  %101 = load i8*, i8** %11, align 8
  %102 = load %struct.page_stat*, %struct.page_stat** %12, align 8
  %103 = getelementptr inbounds %struct.page_stat, %struct.page_stat* %102, i32 0, i32 5
  store i8* %101, i8** %103, align 8
  %104 = load i32, i32* @live_page, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %128, label %106

106:                                              ; preds = %89
  %107 = call %struct.page_stat* @page_stat__findnew_alloc(%struct.page_stat* %13)
  store %struct.page_stat* %107, %struct.page_stat** %12, align 8
  %108 = load %struct.page_stat*, %struct.page_stat** %12, align 8
  %109 = icmp eq %struct.page_stat* %108, null
  br i1 %109, label %110, label %113

110:                                              ; preds = %106
  %111 = load i32, i32* @ENOMEM, align 4
  %112 = sub nsw i32 0, %111
  store i32 %112, i32* %3, align 4
  br label %159

113:                                              ; preds = %106
  %114 = load %struct.page_stat*, %struct.page_stat** %12, align 8
  %115 = getelementptr inbounds %struct.page_stat, %struct.page_stat* %114, i32 0, i32 4
  %116 = load i32, i32* %115, align 8
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %115, align 8
  %118 = load i8*, i8** %10, align 8
  %119 = load %struct.page_stat*, %struct.page_stat** %12, align 8
  %120 = getelementptr inbounds %struct.page_stat, %struct.page_stat* %119, i32 0, i32 3
  %121 = load i32, i32* %120, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr i8, i8* %118, i64 %122
  %124 = ptrtoint i8* %123 to i32
  store i32 %124, i32* %120, align 4
  %125 = load i8*, i8** %11, align 8
  %126 = load %struct.page_stat*, %struct.page_stat** %12, align 8
  %127 = getelementptr inbounds %struct.page_stat, %struct.page_stat* %126, i32 0, i32 5
  store i8* %125, i8** %127, align 8
  br label %128

128:                                              ; preds = %113, %89
  %129 = load i8*, i8** %11, align 8
  %130 = getelementptr inbounds %struct.page_stat, %struct.page_stat* %13, i32 0, i32 5
  store i8* %129, i8** %130, align 8
  %131 = call %struct.page_stat* @page_stat__findnew_caller(%struct.page_stat* %13)
  store %struct.page_stat* %131, %struct.page_stat** %12, align 8
  %132 = load %struct.page_stat*, %struct.page_stat** %12, align 8
  %133 = icmp eq %struct.page_stat* %132, null
  br i1 %133, label %134, label %137

134:                                              ; preds = %128
  %135 = load i32, i32* @ENOMEM, align 4
  %136 = sub nsw i32 0, %135
  store i32 %136, i32* %3, align 4
  br label %159

137:                                              ; preds = %128
  %138 = load %struct.page_stat*, %struct.page_stat** %12, align 8
  %139 = getelementptr inbounds %struct.page_stat, %struct.page_stat* %138, i32 0, i32 4
  %140 = load i32, i32* %139, align 8
  %141 = add nsw i32 %140, 1
  store i32 %141, i32* %139, align 8
  %142 = load i8*, i8** %10, align 8
  %143 = load %struct.page_stat*, %struct.page_stat** %12, align 8
  %144 = getelementptr inbounds %struct.page_stat, %struct.page_stat* %143, i32 0, i32 3
  %145 = load i32, i32* %144, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr i8, i8* %142, i64 %146
  %148 = ptrtoint i8* %147 to i32
  store i32 %148, i32* %144, align 4
  %149 = load i32**, i32*** @order_stats, align 8
  %150 = load i32, i32* %7, align 4
  %151 = zext i32 %150 to i64
  %152 = getelementptr inbounds i32*, i32** %149, i64 %151
  %153 = load i32*, i32** %152, align 8
  %154 = load i32, i32* %9, align 4
  %155 = zext i32 %154 to i64
  %156 = getelementptr inbounds i32, i32* %153, i64 %155
  %157 = load i32, i32* %156, align 4
  %158 = add nsw i32 %157, 1
  store i32 %158, i32* %156, align 4
  store i32 0, i32* %3, align 4
  br label %159

159:                                              ; preds = %137, %134, %110, %86, %76, %62
  %160 = load i32, i32* %3, align 4
  ret i32 %160
}

declare dso_local i8* @perf_evsel__intval(%struct.evsel*, %struct.perf_sample*, i8*) #1

declare dso_local i32 @valid_page(i8*) #1

declare dso_local i64 @parse_gfp_flags(%struct.evsel*, %struct.perf_sample*, i32) #1

declare dso_local i8* @find_callsite(%struct.evsel*, %struct.perf_sample*) #1

declare dso_local %struct.page_stat* @page_stat__findnew_page(%struct.page_stat*) #1

declare dso_local %struct.page_stat* @page_stat__findnew_alloc(%struct.page_stat*) #1

declare dso_local %struct.page_stat* @page_stat__findnew_caller(%struct.page_stat*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
