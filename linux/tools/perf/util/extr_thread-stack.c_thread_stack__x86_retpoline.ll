; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_thread-stack.c_thread_stack__x86_retpoline.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_thread-stack.c_thread_stack__x86_retpoline.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread_stack = type { i32, %struct.thread_stack_entry*, i32, %struct.TYPE_2__* }
%struct.thread_stack_entry = type { %struct.call_path* }
%struct.call_path = type { %struct.symbol* }
%struct.symbol = type { i64, i32 }
%struct.TYPE_2__ = type { %struct.call_path_root* }
%struct.call_path_root = type { i32 }
%struct.perf_sample = type { i32 }
%struct.addr_location = type { i64, %struct.symbol* }

@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.thread_stack*, %struct.perf_sample*, %struct.addr_location*)* @thread_stack__x86_retpoline to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @thread_stack__x86_retpoline(%struct.thread_stack* %0, %struct.perf_sample* %1, %struct.addr_location* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.thread_stack*, align 8
  %6 = alloca %struct.perf_sample*, align 8
  %7 = alloca %struct.addr_location*, align 8
  %8 = alloca %struct.thread_stack_entry*, align 8
  %9 = alloca %struct.call_path_root*, align 8
  %10 = alloca %struct.symbol*, align 8
  %11 = alloca %struct.symbol*, align 8
  %12 = alloca %struct.call_path*, align 8
  store %struct.thread_stack* %0, %struct.thread_stack** %5, align 8
  store %struct.perf_sample* %1, %struct.perf_sample** %6, align 8
  store %struct.addr_location* %2, %struct.addr_location** %7, align 8
  %13 = load %struct.thread_stack*, %struct.thread_stack** %5, align 8
  %14 = getelementptr inbounds %struct.thread_stack, %struct.thread_stack* %13, i32 0, i32 1
  %15 = load %struct.thread_stack_entry*, %struct.thread_stack_entry** %14, align 8
  %16 = load %struct.thread_stack*, %struct.thread_stack** %5, align 8
  %17 = getelementptr inbounds %struct.thread_stack, %struct.thread_stack* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = sub nsw i32 %18, 1
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.thread_stack_entry, %struct.thread_stack_entry* %15, i64 %20
  store %struct.thread_stack_entry* %21, %struct.thread_stack_entry** %8, align 8
  %22 = load %struct.thread_stack*, %struct.thread_stack** %5, align 8
  %23 = getelementptr inbounds %struct.thread_stack, %struct.thread_stack* %22, i32 0, i32 3
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load %struct.call_path_root*, %struct.call_path_root** %25, align 8
  store %struct.call_path_root* %26, %struct.call_path_root** %9, align 8
  %27 = load %struct.thread_stack_entry*, %struct.thread_stack_entry** %8, align 8
  %28 = getelementptr inbounds %struct.thread_stack_entry, %struct.thread_stack_entry* %27, i32 0, i32 0
  %29 = load %struct.call_path*, %struct.call_path** %28, align 8
  %30 = getelementptr inbounds %struct.call_path, %struct.call_path* %29, i32 0, i32 0
  %31 = load %struct.symbol*, %struct.symbol** %30, align 8
  store %struct.symbol* %31, %struct.symbol** %10, align 8
  %32 = load %struct.addr_location*, %struct.addr_location** %7, align 8
  %33 = getelementptr inbounds %struct.addr_location, %struct.addr_location* %32, i32 0, i32 1
  %34 = load %struct.symbol*, %struct.symbol** %33, align 8
  store %struct.symbol* %34, %struct.symbol** %11, align 8
  %35 = load %struct.symbol*, %struct.symbol** %10, align 8
  %36 = icmp ne %struct.symbol* %35, null
  br i1 %36, label %37, label %81

37:                                               ; preds = %3
  %38 = load %struct.symbol*, %struct.symbol** %10, align 8
  %39 = getelementptr inbounds %struct.symbol, %struct.symbol* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = call i64 @is_x86_retpoline(i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %81

43:                                               ; preds = %37
  %44 = load %struct.thread_stack*, %struct.thread_stack** %5, align 8
  %45 = getelementptr inbounds %struct.thread_stack, %struct.thread_stack* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = sub nsw i32 %46, 1
  store i32 %47, i32* %45, align 8
  %48 = load %struct.thread_stack*, %struct.thread_stack** %5, align 8
  %49 = getelementptr inbounds %struct.thread_stack, %struct.thread_stack* %48, i32 0, i32 1
  %50 = load %struct.thread_stack_entry*, %struct.thread_stack_entry** %49, align 8
  %51 = load %struct.thread_stack*, %struct.thread_stack** %5, align 8
  %52 = getelementptr inbounds %struct.thread_stack, %struct.thread_stack* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = sub nsw i32 %53, 2
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.thread_stack_entry, %struct.thread_stack_entry* %50, i64 %55
  %57 = getelementptr inbounds %struct.thread_stack_entry, %struct.thread_stack_entry* %56, i32 0, i32 0
  %58 = load %struct.call_path*, %struct.call_path** %57, align 8
  %59 = getelementptr inbounds %struct.call_path, %struct.call_path* %58, i32 0, i32 0
  %60 = load %struct.symbol*, %struct.symbol** %59, align 8
  store %struct.symbol* %60, %struct.symbol** %10, align 8
  %61 = load %struct.symbol*, %struct.symbol** %10, align 8
  %62 = icmp ne %struct.symbol* %61, null
  br i1 %62, label %63, label %80

63:                                               ; preds = %43
  %64 = load %struct.symbol*, %struct.symbol** %10, align 8
  %65 = load %struct.symbol*, %struct.symbol** %11, align 8
  %66 = icmp eq %struct.symbol* %64, %65
  br i1 %66, label %67, label %80

67:                                               ; preds = %63
  %68 = load %struct.addr_location*, %struct.addr_location** %7, align 8
  %69 = getelementptr inbounds %struct.addr_location, %struct.addr_location* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load %struct.symbol*, %struct.symbol** %11, align 8
  %72 = getelementptr inbounds %struct.symbol, %struct.symbol* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %70, %73
  br i1 %74, label %75, label %80

75:                                               ; preds = %67
  %76 = load %struct.thread_stack*, %struct.thread_stack** %5, align 8
  %77 = getelementptr inbounds %struct.thread_stack, %struct.thread_stack* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = sub nsw i32 %78, 1
  store i32 %79, i32* %77, align 8
  store i32 0, i32* %4, align 4
  br label %132

80:                                               ; preds = %67, %63, %43
  br label %94

81:                                               ; preds = %37, %3
  %82 = load %struct.symbol*, %struct.symbol** %10, align 8
  %83 = icmp ne %struct.symbol* %82, null
  br i1 %83, label %84, label %93

84:                                               ; preds = %81
  %85 = load %struct.symbol*, %struct.symbol** %10, align 8
  %86 = load %struct.symbol*, %struct.symbol** %11, align 8
  %87 = icmp eq %struct.symbol* %85, %86
  br i1 %87, label %88, label %93

88:                                               ; preds = %84
  %89 = load %struct.thread_stack*, %struct.thread_stack** %5, align 8
  %90 = getelementptr inbounds %struct.thread_stack, %struct.thread_stack* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = sub nsw i32 %91, 1
  store i32 %92, i32* %90, align 8
  store i32 0, i32* %4, align 4
  br label %132

93:                                               ; preds = %84, %81
  br label %94

94:                                               ; preds = %93, %80
  %95 = load %struct.call_path_root*, %struct.call_path_root** %9, align 8
  %96 = load %struct.thread_stack*, %struct.thread_stack** %5, align 8
  %97 = getelementptr inbounds %struct.thread_stack, %struct.thread_stack* %96, i32 0, i32 1
  %98 = load %struct.thread_stack_entry*, %struct.thread_stack_entry** %97, align 8
  %99 = load %struct.thread_stack*, %struct.thread_stack** %5, align 8
  %100 = getelementptr inbounds %struct.thread_stack, %struct.thread_stack* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = sub nsw i32 %101, 2
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds %struct.thread_stack_entry, %struct.thread_stack_entry* %98, i64 %103
  %105 = getelementptr inbounds %struct.thread_stack_entry, %struct.thread_stack_entry* %104, i32 0, i32 0
  %106 = load %struct.call_path*, %struct.call_path** %105, align 8
  %107 = load %struct.symbol*, %struct.symbol** %11, align 8
  %108 = load %struct.perf_sample*, %struct.perf_sample** %6, align 8
  %109 = getelementptr inbounds %struct.perf_sample, %struct.perf_sample* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.thread_stack*, %struct.thread_stack** %5, align 8
  %112 = getelementptr inbounds %struct.thread_stack, %struct.thread_stack* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 8
  %114 = call %struct.call_path* @call_path__findnew(%struct.call_path_root* %95, %struct.call_path* %106, %struct.symbol* %107, i32 %110, i32 %113)
  store %struct.call_path* %114, %struct.call_path** %12, align 8
  %115 = load %struct.call_path*, %struct.call_path** %12, align 8
  %116 = icmp ne %struct.call_path* %115, null
  br i1 %116, label %120, label %117

117:                                              ; preds = %94
  %118 = load i32, i32* @ENOMEM, align 4
  %119 = sub nsw i32 0, %118
  store i32 %119, i32* %4, align 4
  br label %132

120:                                              ; preds = %94
  %121 = load %struct.call_path*, %struct.call_path** %12, align 8
  %122 = load %struct.thread_stack*, %struct.thread_stack** %5, align 8
  %123 = getelementptr inbounds %struct.thread_stack, %struct.thread_stack* %122, i32 0, i32 1
  %124 = load %struct.thread_stack_entry*, %struct.thread_stack_entry** %123, align 8
  %125 = load %struct.thread_stack*, %struct.thread_stack** %5, align 8
  %126 = getelementptr inbounds %struct.thread_stack, %struct.thread_stack* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = sub nsw i32 %127, 1
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds %struct.thread_stack_entry, %struct.thread_stack_entry* %124, i64 %129
  %131 = getelementptr inbounds %struct.thread_stack_entry, %struct.thread_stack_entry* %130, i32 0, i32 0
  store %struct.call_path* %121, %struct.call_path** %131, align 8
  store i32 0, i32* %4, align 4
  br label %132

132:                                              ; preds = %120, %117, %88, %75
  %133 = load i32, i32* %4, align 4
  ret i32 %133
}

declare dso_local i64 @is_x86_retpoline(i32) #1

declare dso_local %struct.call_path* @call_path__findnew(%struct.call_path_root*, %struct.call_path*, %struct.symbol*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
