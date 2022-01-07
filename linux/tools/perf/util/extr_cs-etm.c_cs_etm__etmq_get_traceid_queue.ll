; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_cs-etm.c_cs_etm__etmq_get_traceid_queue.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_cs-etm.c_cs_etm__etmq_get_traceid_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cs_etm_traceid_queue = type { i32 }
%struct.cs_etm_queue = type { %struct.cs_etm_traceid_queue**, %struct.intlist*, %struct.cs_etm_auxtrace* }
%struct.intlist = type { i32 }
%struct.cs_etm_auxtrace = type { i64 }
%struct.int_node = type { i8* }

@CS_ETM_PER_THREAD_TRACEID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.cs_etm_traceid_queue* (%struct.cs_etm_queue*, i32)* @cs_etm__etmq_get_traceid_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.cs_etm_traceid_queue* @cs_etm__etmq_get_traceid_queue(%struct.cs_etm_queue* %0, i32 %1) #0 {
  %3 = alloca %struct.cs_etm_traceid_queue*, align 8
  %4 = alloca %struct.cs_etm_queue*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.int_node*, align 8
  %8 = alloca %struct.intlist*, align 8
  %9 = alloca %struct.cs_etm_traceid_queue*, align 8
  %10 = alloca %struct.cs_etm_traceid_queue**, align 8
  %11 = alloca %struct.cs_etm_auxtrace*, align 8
  store %struct.cs_etm_queue* %0, %struct.cs_etm_queue** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = load %struct.cs_etm_queue*, %struct.cs_etm_queue** %4, align 8
  %13 = getelementptr inbounds %struct.cs_etm_queue, %struct.cs_etm_queue* %12, i32 0, i32 2
  %14 = load %struct.cs_etm_auxtrace*, %struct.cs_etm_auxtrace** %13, align 8
  store %struct.cs_etm_auxtrace* %14, %struct.cs_etm_auxtrace** %11, align 8
  %15 = load %struct.cs_etm_auxtrace*, %struct.cs_etm_auxtrace** %11, align 8
  %16 = getelementptr inbounds %struct.cs_etm_auxtrace, %struct.cs_etm_auxtrace* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %2
  %20 = load i32, i32* @CS_ETM_PER_THREAD_TRACEID, align 4
  store i32 %20, i32* %5, align 4
  br label %21

21:                                               ; preds = %19, %2
  %22 = load %struct.cs_etm_queue*, %struct.cs_etm_queue** %4, align 8
  %23 = getelementptr inbounds %struct.cs_etm_queue, %struct.cs_etm_queue* %22, i32 0, i32 1
  %24 = load %struct.intlist*, %struct.intlist** %23, align 8
  store %struct.intlist* %24, %struct.intlist** %8, align 8
  %25 = load %struct.intlist*, %struct.intlist** %8, align 8
  %26 = load i32, i32* %5, align 4
  %27 = call %struct.int_node* @intlist__find(%struct.intlist* %25, i32 %26)
  store %struct.int_node* %27, %struct.int_node** %7, align 8
  %28 = load %struct.int_node*, %struct.int_node** %7, align 8
  %29 = icmp ne %struct.int_node* %28, null
  br i1 %29, label %30, label %43

30:                                               ; preds = %21
  %31 = load %struct.int_node*, %struct.int_node** %7, align 8
  %32 = getelementptr inbounds %struct.int_node, %struct.int_node* %31, i32 0, i32 0
  %33 = load i8*, i8** %32, align 8
  %34 = ptrtoint i8* %33 to i64
  %35 = trunc i64 %34 to i32
  store i32 %35, i32* %6, align 4
  %36 = load %struct.cs_etm_queue*, %struct.cs_etm_queue** %4, align 8
  %37 = getelementptr inbounds %struct.cs_etm_queue, %struct.cs_etm_queue* %36, i32 0, i32 0
  %38 = load %struct.cs_etm_traceid_queue**, %struct.cs_etm_traceid_queue*** %37, align 8
  %39 = load i32, i32* %6, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.cs_etm_traceid_queue*, %struct.cs_etm_traceid_queue** %38, i64 %40
  %42 = load %struct.cs_etm_traceid_queue*, %struct.cs_etm_traceid_queue** %41, align 8
  store %struct.cs_etm_traceid_queue* %42, %struct.cs_etm_traceid_queue** %3, align 8
  br label %104

43:                                               ; preds = %21
  %44 = call %struct.cs_etm_traceid_queue* @malloc(i32 4)
  store %struct.cs_etm_traceid_queue* %44, %struct.cs_etm_traceid_queue** %9, align 8
  %45 = load %struct.cs_etm_traceid_queue*, %struct.cs_etm_traceid_queue** %9, align 8
  %46 = icmp ne %struct.cs_etm_traceid_queue* %45, null
  br i1 %46, label %48, label %47

47:                                               ; preds = %43
  store %struct.cs_etm_traceid_queue* null, %struct.cs_etm_traceid_queue** %3, align 8
  br label %104

48:                                               ; preds = %43
  %49 = load %struct.cs_etm_traceid_queue*, %struct.cs_etm_traceid_queue** %9, align 8
  %50 = call i32 @memset(%struct.cs_etm_traceid_queue* %49, i32 0, i32 4)
  %51 = load %struct.intlist*, %struct.intlist** %8, align 8
  %52 = call i32 @intlist__nr_entries(%struct.intlist* %51)
  store i32 %52, i32* %6, align 4
  %53 = load %struct.intlist*, %struct.intlist** %8, align 8
  %54 = load i32, i32* %5, align 4
  %55 = call %struct.int_node* @intlist__findnew(%struct.intlist* %53, i32 %54)
  store %struct.int_node* %55, %struct.int_node** %7, align 8
  %56 = load %struct.int_node*, %struct.int_node** %7, align 8
  %57 = icmp ne %struct.int_node* %56, null
  br i1 %57, label %59, label %58

58:                                               ; preds = %48
  br label %98

59:                                               ; preds = %48
  %60 = load i32, i32* %6, align 4
  %61 = sext i32 %60 to i64
  %62 = inttoptr i64 %61 to i8*
  %63 = load %struct.int_node*, %struct.int_node** %7, align 8
  %64 = getelementptr inbounds %struct.int_node, %struct.int_node* %63, i32 0, i32 0
  store i8* %62, i8** %64, align 8
  %65 = load %struct.cs_etm_queue*, %struct.cs_etm_queue** %4, align 8
  %66 = load %struct.cs_etm_traceid_queue*, %struct.cs_etm_traceid_queue** %9, align 8
  %67 = load i32, i32* %5, align 4
  %68 = call i64 @cs_etm__init_traceid_queue(%struct.cs_etm_queue* %65, %struct.cs_etm_traceid_queue* %66, i32 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %59
  br label %98

71:                                               ; preds = %59
  %72 = load %struct.cs_etm_queue*, %struct.cs_etm_queue** %4, align 8
  %73 = getelementptr inbounds %struct.cs_etm_queue, %struct.cs_etm_queue* %72, i32 0, i32 0
  %74 = load %struct.cs_etm_traceid_queue**, %struct.cs_etm_traceid_queue*** %73, align 8
  store %struct.cs_etm_traceid_queue** %74, %struct.cs_etm_traceid_queue*** %10, align 8
  %75 = load %struct.cs_etm_traceid_queue**, %struct.cs_etm_traceid_queue*** %10, align 8
  %76 = load i32, i32* %6, align 4
  %77 = add nsw i32 %76, 1
  %78 = call %struct.cs_etm_traceid_queue** @reallocarray(%struct.cs_etm_traceid_queue** %75, i32 %77, i32 8)
  store %struct.cs_etm_traceid_queue** %78, %struct.cs_etm_traceid_queue*** %10, align 8
  %79 = load %struct.cs_etm_traceid_queue**, %struct.cs_etm_traceid_queue*** %10, align 8
  %80 = icmp ne %struct.cs_etm_traceid_queue** %79, null
  br i1 %80, label %82, label %81

81:                                               ; preds = %71
  br label %98

82:                                               ; preds = %71
  %83 = load %struct.cs_etm_traceid_queue*, %struct.cs_etm_traceid_queue** %9, align 8
  %84 = load %struct.cs_etm_traceid_queue**, %struct.cs_etm_traceid_queue*** %10, align 8
  %85 = load i32, i32* %6, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.cs_etm_traceid_queue*, %struct.cs_etm_traceid_queue** %84, i64 %86
  store %struct.cs_etm_traceid_queue* %83, %struct.cs_etm_traceid_queue** %87, align 8
  %88 = load %struct.cs_etm_traceid_queue**, %struct.cs_etm_traceid_queue*** %10, align 8
  %89 = load %struct.cs_etm_queue*, %struct.cs_etm_queue** %4, align 8
  %90 = getelementptr inbounds %struct.cs_etm_queue, %struct.cs_etm_queue* %89, i32 0, i32 0
  store %struct.cs_etm_traceid_queue** %88, %struct.cs_etm_traceid_queue*** %90, align 8
  %91 = load %struct.cs_etm_queue*, %struct.cs_etm_queue** %4, align 8
  %92 = getelementptr inbounds %struct.cs_etm_queue, %struct.cs_etm_queue* %91, i32 0, i32 0
  %93 = load %struct.cs_etm_traceid_queue**, %struct.cs_etm_traceid_queue*** %92, align 8
  %94 = load i32, i32* %6, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.cs_etm_traceid_queue*, %struct.cs_etm_traceid_queue** %93, i64 %95
  %97 = load %struct.cs_etm_traceid_queue*, %struct.cs_etm_traceid_queue** %96, align 8
  store %struct.cs_etm_traceid_queue* %97, %struct.cs_etm_traceid_queue** %3, align 8
  br label %104

98:                                               ; preds = %81, %70, %58
  %99 = load %struct.intlist*, %struct.intlist** %8, align 8
  %100 = load %struct.int_node*, %struct.int_node** %7, align 8
  %101 = call i32 @intlist__remove(%struct.intlist* %99, %struct.int_node* %100)
  %102 = load %struct.cs_etm_traceid_queue*, %struct.cs_etm_traceid_queue** %9, align 8
  %103 = call i32 @free(%struct.cs_etm_traceid_queue* %102)
  store %struct.cs_etm_traceid_queue* null, %struct.cs_etm_traceid_queue** %3, align 8
  br label %104

104:                                              ; preds = %98, %82, %47, %30
  %105 = load %struct.cs_etm_traceid_queue*, %struct.cs_etm_traceid_queue** %3, align 8
  ret %struct.cs_etm_traceid_queue* %105
}

declare dso_local %struct.int_node* @intlist__find(%struct.intlist*, i32) #1

declare dso_local %struct.cs_etm_traceid_queue* @malloc(i32) #1

declare dso_local i32 @memset(%struct.cs_etm_traceid_queue*, i32, i32) #1

declare dso_local i32 @intlist__nr_entries(%struct.intlist*) #1

declare dso_local %struct.int_node* @intlist__findnew(%struct.intlist*, i32) #1

declare dso_local i64 @cs_etm__init_traceid_queue(%struct.cs_etm_queue*, %struct.cs_etm_traceid_queue*, i32) #1

declare dso_local %struct.cs_etm_traceid_queue** @reallocarray(%struct.cs_etm_traceid_queue**, i32, i32) #1

declare dso_local i32 @intlist__remove(%struct.intlist*, %struct.int_node*) #1

declare dso_local i32 @free(%struct.cs_etm_traceid_queue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
