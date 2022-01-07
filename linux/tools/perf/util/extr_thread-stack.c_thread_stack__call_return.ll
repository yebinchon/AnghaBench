; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_thread-stack.c_thread_stack__call_return.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_thread-stack.c_thread_stack__call_return.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.thread_stack = type { i64, i64, i64, %struct.thread_stack_entry*, i32, %struct.call_return_processor* }
%struct.thread_stack_entry = type { i8*, i64, i64, i32, i64, i64, i64, i32, i32 }
%struct.call_return_processor = type { i32 (%struct.call_return*, i8**, i32)*, i32 }
%struct.call_return = type opaque
%struct.call_return.0 = type { i8*, i32, i8*, i32, i64, i64, i64, i8*, i32, i32, i32, %struct.thread* }

@CALL_RETURN_NO_CALL = common dso_local global i32 0, align 4
@CALL_RETURN_NO_RETURN = common dso_local global i32 0, align 4
@CALL_RETURN_NON_CALL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.thread*, %struct.thread_stack*, i64, i8*, i8*, i32)* @thread_stack__call_return to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @thread_stack__call_return(%struct.thread* %0, %struct.thread_stack* %1, i64 %2, i8* %3, i8* %4, i32 %5) #0 {
  %7 = alloca %struct.thread*, align 8
  %8 = alloca %struct.thread_stack*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.call_return_processor*, align 8
  %14 = alloca %struct.thread_stack_entry*, align 8
  %15 = alloca %struct.call_return.0, align 8
  %16 = alloca i8**, align 8
  store %struct.thread* %0, %struct.thread** %7, align 8
  store %struct.thread_stack* %1, %struct.thread_stack** %8, align 8
  store i64 %2, i64* %9, align 8
  store i8* %3, i8** %10, align 8
  store i8* %4, i8** %11, align 8
  store i32 %5, i32* %12, align 4
  %17 = load %struct.thread_stack*, %struct.thread_stack** %8, align 8
  %18 = getelementptr inbounds %struct.thread_stack, %struct.thread_stack* %17, i32 0, i32 5
  %19 = load %struct.call_return_processor*, %struct.call_return_processor** %18, align 8
  store %struct.call_return_processor* %19, %struct.call_return_processor** %13, align 8
  %20 = bitcast %struct.call_return.0* %15 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %20, i8 0, i64 88, i1 false)
  %21 = getelementptr inbounds %struct.call_return.0, %struct.call_return.0* %15, i32 0, i32 10
  %22 = load %struct.thread_stack*, %struct.thread_stack** %8, align 8
  %23 = getelementptr inbounds %struct.thread_stack, %struct.thread_stack* %22, i32 0, i32 4
  %24 = load i32, i32* %23, align 8
  store i32 %24, i32* %21, align 8
  %25 = getelementptr inbounds %struct.call_return.0, %struct.call_return.0* %15, i32 0, i32 11
  %26 = load %struct.thread*, %struct.thread** %7, align 8
  store %struct.thread* %26, %struct.thread** %25, align 8
  %27 = load %struct.thread_stack*, %struct.thread_stack** %8, align 8
  %28 = getelementptr inbounds %struct.thread_stack, %struct.thread_stack* %27, i32 0, i32 3
  %29 = load %struct.thread_stack_entry*, %struct.thread_stack_entry** %28, align 8
  %30 = load i64, i64* %9, align 8
  %31 = getelementptr inbounds %struct.thread_stack_entry, %struct.thread_stack_entry* %29, i64 %30
  store %struct.thread_stack_entry* %31, %struct.thread_stack_entry** %14, align 8
  %32 = load %struct.thread_stack_entry*, %struct.thread_stack_entry** %14, align 8
  %33 = getelementptr inbounds %struct.thread_stack_entry, %struct.thread_stack_entry* %32, i32 0, i32 8
  %34 = load i32, i32* %33, align 4
  %35 = getelementptr inbounds %struct.call_return.0, %struct.call_return.0* %15, i32 0, i32 9
  store i32 %34, i32* %35, align 4
  %36 = load %struct.thread_stack_entry*, %struct.thread_stack_entry** %14, align 8
  %37 = getelementptr inbounds %struct.thread_stack_entry, %struct.thread_stack_entry* %36, i32 0, i32 7
  %38 = load i32, i32* %37, align 8
  %39 = getelementptr inbounds %struct.call_return.0, %struct.call_return.0* %15, i32 0, i32 8
  store i32 %38, i32* %39, align 8
  %40 = load i8*, i8** %10, align 8
  %41 = getelementptr inbounds %struct.call_return.0, %struct.call_return.0* %15, i32 0, i32 7
  store i8* %40, i8** %41, align 8
  %42 = load %struct.thread_stack*, %struct.thread_stack** %8, align 8
  %43 = getelementptr inbounds %struct.thread_stack, %struct.thread_stack* %42, i32 0, i32 2
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.thread_stack_entry*, %struct.thread_stack_entry** %14, align 8
  %46 = getelementptr inbounds %struct.thread_stack_entry, %struct.thread_stack_entry* %45, i32 0, i32 6
  %47 = load i64, i64* %46, align 8
  %48 = sub nsw i64 %44, %47
  %49 = getelementptr inbounds %struct.call_return.0, %struct.call_return.0* %15, i32 0, i32 6
  store i64 %48, i64* %49, align 8
  %50 = load %struct.thread_stack*, %struct.thread_stack** %8, align 8
  %51 = getelementptr inbounds %struct.thread_stack, %struct.thread_stack* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.thread_stack_entry*, %struct.thread_stack_entry** %14, align 8
  %54 = getelementptr inbounds %struct.thread_stack_entry, %struct.thread_stack_entry* %53, i32 0, i32 5
  %55 = load i64, i64* %54, align 8
  %56 = sub nsw i64 %52, %55
  %57 = getelementptr inbounds %struct.call_return.0, %struct.call_return.0* %15, i32 0, i32 5
  store i64 %56, i64* %57, align 8
  %58 = load %struct.thread_stack*, %struct.thread_stack** %8, align 8
  %59 = getelementptr inbounds %struct.thread_stack, %struct.thread_stack* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load %struct.thread_stack_entry*, %struct.thread_stack_entry** %14, align 8
  %62 = getelementptr inbounds %struct.thread_stack_entry, %struct.thread_stack_entry* %61, i32 0, i32 4
  %63 = load i64, i64* %62, align 8
  %64 = sub nsw i64 %60, %63
  %65 = getelementptr inbounds %struct.call_return.0, %struct.call_return.0* %15, i32 0, i32 4
  store i64 %64, i64* %65, align 8
  %66 = load %struct.thread_stack_entry*, %struct.thread_stack_entry** %14, align 8
  %67 = getelementptr inbounds %struct.thread_stack_entry, %struct.thread_stack_entry* %66, i32 0, i32 0
  %68 = load i8*, i8** %67, align 8
  %69 = getelementptr inbounds %struct.call_return.0, %struct.call_return.0* %15, i32 0, i32 0
  store i8* %68, i8** %69, align 8
  %70 = load %struct.thread_stack_entry*, %struct.thread_stack_entry** %14, align 8
  %71 = getelementptr inbounds %struct.thread_stack_entry, %struct.thread_stack_entry* %70, i32 0, i32 3
  %72 = load i32, i32* %71, align 8
  %73 = getelementptr inbounds %struct.call_return.0, %struct.call_return.0* %15, i32 0, i32 3
  store i32 %72, i32* %73, align 8
  %74 = load i8*, i8** %11, align 8
  %75 = getelementptr inbounds %struct.call_return.0, %struct.call_return.0* %15, i32 0, i32 2
  store i8* %74, i8** %75, align 8
  %76 = load %struct.thread_stack_entry*, %struct.thread_stack_entry** %14, align 8
  %77 = getelementptr inbounds %struct.thread_stack_entry, %struct.thread_stack_entry* %76, i32 0, i32 2
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %85

80:                                               ; preds = %6
  %81 = load i32, i32* @CALL_RETURN_NO_CALL, align 4
  %82 = getelementptr inbounds %struct.call_return.0, %struct.call_return.0* %15, i32 0, i32 1
  %83 = load i32, i32* %82, align 8
  %84 = or i32 %83, %81
  store i32 %84, i32* %82, align 8
  br label %85

85:                                               ; preds = %80, %6
  %86 = load i32, i32* %12, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %93

88:                                               ; preds = %85
  %89 = load i32, i32* @CALL_RETURN_NO_RETURN, align 4
  %90 = getelementptr inbounds %struct.call_return.0, %struct.call_return.0* %15, i32 0, i32 1
  %91 = load i32, i32* %90, align 8
  %92 = or i32 %91, %89
  store i32 %92, i32* %90, align 8
  br label %93

93:                                               ; preds = %88, %85
  %94 = load %struct.thread_stack_entry*, %struct.thread_stack_entry** %14, align 8
  %95 = getelementptr inbounds %struct.thread_stack_entry, %struct.thread_stack_entry* %94, i32 0, i32 1
  %96 = load i64, i64* %95, align 8
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %103

98:                                               ; preds = %93
  %99 = load i32, i32* @CALL_RETURN_NON_CALL, align 4
  %100 = getelementptr inbounds %struct.call_return.0, %struct.call_return.0* %15, i32 0, i32 1
  %101 = load i32, i32* %100, align 8
  %102 = or i32 %101, %99
  store i32 %102, i32* %100, align 8
  br label %103

103:                                              ; preds = %98, %93
  %104 = load i64, i64* %9, align 8
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %110

106:                                              ; preds = %103
  %107 = load %struct.thread_stack_entry*, %struct.thread_stack_entry** %14, align 8
  %108 = getelementptr inbounds %struct.thread_stack_entry, %struct.thread_stack_entry* %107, i64 -1
  %109 = getelementptr inbounds %struct.thread_stack_entry, %struct.thread_stack_entry* %108, i32 0, i32 0
  br label %111

110:                                              ; preds = %103
  br label %111

111:                                              ; preds = %110, %106
  %112 = phi i8** [ %109, %106 ], [ null, %110 ]
  store i8** %112, i8*** %16, align 8
  %113 = load %struct.call_return_processor*, %struct.call_return_processor** %13, align 8
  %114 = getelementptr inbounds %struct.call_return_processor, %struct.call_return_processor* %113, i32 0, i32 0
  %115 = load i32 (%struct.call_return*, i8**, i32)*, i32 (%struct.call_return*, i8**, i32)** %114, align 8
  %116 = bitcast %struct.call_return.0* %15 to %struct.call_return*
  %117 = load i8**, i8*** %16, align 8
  %118 = load %struct.call_return_processor*, %struct.call_return_processor** %13, align 8
  %119 = getelementptr inbounds %struct.call_return_processor, %struct.call_return_processor* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 8
  %121 = call i32 %115(%struct.call_return* %116, i8** %117, i32 %120)
  ret i32 %121
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
