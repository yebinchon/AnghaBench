; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_intel-pt.c_intel_pt_lookahead.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_intel-pt.c_intel_pt_lookahead.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_pt_buffer = type { i64 }
%struct.intel_pt_queue = type { i64, %struct.TYPE_4__*, %struct.auxtrace_buffer*, %struct.auxtrace_buffer* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.auxtrace_queue* }
%struct.auxtrace_queue = type { i32 }
%struct.auxtrace_buffer = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32 (%struct.intel_pt_buffer*, i8*)*, i8*)* @intel_pt_lookahead to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_pt_lookahead(i8* %0, i32 (%struct.intel_pt_buffer*, i8*)* %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32 (%struct.intel_pt_buffer*, i8*)*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.intel_pt_queue*, align 8
  %8 = alloca %struct.auxtrace_buffer*, align 8
  %9 = alloca %struct.auxtrace_buffer*, align 8
  %10 = alloca %struct.auxtrace_queue*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.intel_pt_buffer, align 8
  store i8* %0, i8** %4, align 8
  store i32 (%struct.intel_pt_buffer*, i8*)* %1, i32 (%struct.intel_pt_buffer*, i8*)** %5, align 8
  store i8* %2, i8** %6, align 8
  %13 = load i8*, i8** %4, align 8
  %14 = bitcast i8* %13 to %struct.intel_pt_queue*
  store %struct.intel_pt_queue* %14, %struct.intel_pt_queue** %7, align 8
  %15 = load %struct.intel_pt_queue*, %struct.intel_pt_queue** %7, align 8
  %16 = getelementptr inbounds %struct.intel_pt_queue, %struct.intel_pt_queue* %15, i32 0, i32 3
  %17 = load %struct.auxtrace_buffer*, %struct.auxtrace_buffer** %16, align 8
  store %struct.auxtrace_buffer* %17, %struct.auxtrace_buffer** %8, align 8
  %18 = load %struct.intel_pt_queue*, %struct.intel_pt_queue** %7, align 8
  %19 = getelementptr inbounds %struct.intel_pt_queue, %struct.intel_pt_queue* %18, i32 0, i32 2
  %20 = load %struct.auxtrace_buffer*, %struct.auxtrace_buffer** %19, align 8
  store %struct.auxtrace_buffer* %20, %struct.auxtrace_buffer** %9, align 8
  store i32 0, i32* %11, align 4
  %21 = load %struct.intel_pt_queue*, %struct.intel_pt_queue** %7, align 8
  %22 = getelementptr inbounds %struct.intel_pt_queue, %struct.intel_pt_queue* %21, i32 0, i32 1
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load %struct.auxtrace_queue*, %struct.auxtrace_queue** %25, align 8
  %27 = load %struct.intel_pt_queue*, %struct.intel_pt_queue** %7, align 8
  %28 = getelementptr inbounds %struct.intel_pt_queue, %struct.intel_pt_queue* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = getelementptr inbounds %struct.auxtrace_queue, %struct.auxtrace_queue* %26, i64 %29
  store %struct.auxtrace_queue* %30, %struct.auxtrace_queue** %10, align 8
  br label %31

31:                                               ; preds = %3, %56, %67
  %32 = bitcast %struct.intel_pt_buffer* %12 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %32, i8 0, i64 8, i1 false)
  %33 = load %struct.auxtrace_queue*, %struct.auxtrace_queue** %10, align 8
  %34 = load %struct.auxtrace_buffer*, %struct.auxtrace_buffer** %8, align 8
  %35 = call %struct.auxtrace_buffer* @auxtrace_buffer__next(%struct.auxtrace_queue* %33, %struct.auxtrace_buffer* %34)
  store %struct.auxtrace_buffer* %35, %struct.auxtrace_buffer** %8, align 8
  %36 = load %struct.auxtrace_buffer*, %struct.auxtrace_buffer** %8, align 8
  %37 = icmp ne %struct.auxtrace_buffer* %36, null
  br i1 %37, label %39, label %38

38:                                               ; preds = %31
  br label %68

39:                                               ; preds = %31
  %40 = load %struct.intel_pt_queue*, %struct.intel_pt_queue** %7, align 8
  %41 = load %struct.auxtrace_buffer*, %struct.auxtrace_buffer** %8, align 8
  %42 = load %struct.auxtrace_buffer*, %struct.auxtrace_buffer** %9, align 8
  %43 = call i32 @intel_pt_get_buffer(%struct.intel_pt_queue* %40, %struct.auxtrace_buffer* %41, %struct.auxtrace_buffer* %42, %struct.intel_pt_buffer* %12)
  store i32 %43, i32* %11, align 4
  %44 = load i32, i32* %11, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %39
  br label %68

47:                                               ; preds = %39
  %48 = getelementptr inbounds %struct.intel_pt_buffer, %struct.intel_pt_buffer* %12, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %47
  %52 = load %struct.intel_pt_queue*, %struct.intel_pt_queue** %7, align 8
  %53 = load %struct.auxtrace_buffer*, %struct.auxtrace_buffer** %9, align 8
  %54 = call i32 @intel_pt_lookahead_drop_buffer(%struct.intel_pt_queue* %52, %struct.auxtrace_buffer* %53)
  %55 = load %struct.auxtrace_buffer*, %struct.auxtrace_buffer** %8, align 8
  store %struct.auxtrace_buffer* %55, %struct.auxtrace_buffer** %9, align 8
  br label %60

56:                                               ; preds = %47
  %57 = load %struct.intel_pt_queue*, %struct.intel_pt_queue** %7, align 8
  %58 = load %struct.auxtrace_buffer*, %struct.auxtrace_buffer** %8, align 8
  %59 = call i32 @intel_pt_lookahead_drop_buffer(%struct.intel_pt_queue* %57, %struct.auxtrace_buffer* %58)
  br label %31

60:                                               ; preds = %51
  %61 = load i32 (%struct.intel_pt_buffer*, i8*)*, i32 (%struct.intel_pt_buffer*, i8*)** %5, align 8
  %62 = load i8*, i8** %6, align 8
  %63 = call i32 %61(%struct.intel_pt_buffer* %12, i8* %62)
  store i32 %63, i32* %11, align 4
  %64 = load i32, i32* %11, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %60
  br label %68

67:                                               ; preds = %60
  br label %31

68:                                               ; preds = %66, %46, %38
  %69 = load %struct.auxtrace_buffer*, %struct.auxtrace_buffer** %8, align 8
  %70 = load %struct.auxtrace_buffer*, %struct.auxtrace_buffer** %9, align 8
  %71 = icmp ne %struct.auxtrace_buffer* %69, %70
  br i1 %71, label %72, label %76

72:                                               ; preds = %68
  %73 = load %struct.intel_pt_queue*, %struct.intel_pt_queue** %7, align 8
  %74 = load %struct.auxtrace_buffer*, %struct.auxtrace_buffer** %8, align 8
  %75 = call i32 @intel_pt_lookahead_drop_buffer(%struct.intel_pt_queue* %73, %struct.auxtrace_buffer* %74)
  br label %76

76:                                               ; preds = %72, %68
  %77 = load %struct.intel_pt_queue*, %struct.intel_pt_queue** %7, align 8
  %78 = load %struct.auxtrace_buffer*, %struct.auxtrace_buffer** %9, align 8
  %79 = call i32 @intel_pt_lookahead_drop_buffer(%struct.intel_pt_queue* %77, %struct.auxtrace_buffer* %78)
  %80 = load i32, i32* %11, align 4
  ret i32 %80
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local %struct.auxtrace_buffer* @auxtrace_buffer__next(%struct.auxtrace_queue*, %struct.auxtrace_buffer*) #2

declare dso_local i32 @intel_pt_get_buffer(%struct.intel_pt_queue*, %struct.auxtrace_buffer*, %struct.auxtrace_buffer*, %struct.intel_pt_buffer*) #2

declare dso_local i32 @intel_pt_lookahead_drop_buffer(%struct.intel_pt_queue*, %struct.auxtrace_buffer*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
