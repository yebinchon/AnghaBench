; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_thread-stack.c_thread_stack__push_cp.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_thread-stack.c_thread_stack__push_cp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread_stack = type { i64, i64, i32, i32, i32, %struct.thread_stack_entry* }
%struct.thread_stack_entry = type { i32, i32, i32, i64, %struct.call_path*, i32, i32, i32, i8*, i8*, i8* }
%struct.call_path = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.thread_stack*, i8*, i8*, i8*, %struct.call_path*, i32, i32)* @thread_stack__push_cp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @thread_stack__push_cp(%struct.thread_stack* %0, i8* %1, i8* %2, i8* %3, %struct.call_path* %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.thread_stack*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.call_path*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.thread_stack_entry*, align 8
  %17 = alloca i32, align 4
  store %struct.thread_stack* %0, %struct.thread_stack** %9, align 8
  store i8* %1, i8** %10, align 8
  store i8* %2, i8** %11, align 8
  store i8* %3, i8** %12, align 8
  store %struct.call_path* %4, %struct.call_path** %13, align 8
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  %18 = load %struct.call_path*, %struct.call_path** %13, align 8
  %19 = icmp ne %struct.call_path* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %7
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %8, align 4
  br label %85

23:                                               ; preds = %7
  %24 = load %struct.thread_stack*, %struct.thread_stack** %9, align 8
  %25 = getelementptr inbounds %struct.thread_stack, %struct.thread_stack* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.thread_stack*, %struct.thread_stack** %9, align 8
  %28 = getelementptr inbounds %struct.thread_stack, %struct.thread_stack* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = icmp eq i64 %26, %29
  br i1 %30, label %31, label %39

31:                                               ; preds = %23
  %32 = load %struct.thread_stack*, %struct.thread_stack** %9, align 8
  %33 = call i32 @thread_stack__grow(%struct.thread_stack* %32)
  store i32 %33, i32* %17, align 4
  %34 = load i32, i32* %17, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %31
  %37 = load i32, i32* %17, align 4
  store i32 %37, i32* %8, align 4
  br label %85

38:                                               ; preds = %31
  br label %39

39:                                               ; preds = %38, %23
  %40 = load %struct.thread_stack*, %struct.thread_stack** %9, align 8
  %41 = getelementptr inbounds %struct.thread_stack, %struct.thread_stack* %40, i32 0, i32 5
  %42 = load %struct.thread_stack_entry*, %struct.thread_stack_entry** %41, align 8
  %43 = load %struct.thread_stack*, %struct.thread_stack** %9, align 8
  %44 = getelementptr inbounds %struct.thread_stack, %struct.thread_stack* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = add nsw i64 %45, 1
  store i64 %46, i64* %44, align 8
  %47 = getelementptr inbounds %struct.thread_stack_entry, %struct.thread_stack_entry* %42, i64 %45
  store %struct.thread_stack_entry* %47, %struct.thread_stack_entry** %16, align 8
  %48 = load i8*, i8** %10, align 8
  %49 = load %struct.thread_stack_entry*, %struct.thread_stack_entry** %16, align 8
  %50 = getelementptr inbounds %struct.thread_stack_entry, %struct.thread_stack_entry* %49, i32 0, i32 10
  store i8* %48, i8** %50, align 8
  %51 = load i8*, i8** %11, align 8
  %52 = load %struct.thread_stack_entry*, %struct.thread_stack_entry** %16, align 8
  %53 = getelementptr inbounds %struct.thread_stack_entry, %struct.thread_stack_entry* %52, i32 0, i32 9
  store i8* %51, i8** %53, align 8
  %54 = load i8*, i8** %12, align 8
  %55 = load %struct.thread_stack_entry*, %struct.thread_stack_entry** %16, align 8
  %56 = getelementptr inbounds %struct.thread_stack_entry, %struct.thread_stack_entry* %55, i32 0, i32 8
  store i8* %54, i8** %56, align 8
  %57 = load %struct.thread_stack*, %struct.thread_stack** %9, align 8
  %58 = getelementptr inbounds %struct.thread_stack, %struct.thread_stack* %57, i32 0, i32 4
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.thread_stack_entry*, %struct.thread_stack_entry** %16, align 8
  %61 = getelementptr inbounds %struct.thread_stack_entry, %struct.thread_stack_entry* %60, i32 0, i32 7
  store i32 %59, i32* %61, align 8
  %62 = load %struct.thread_stack*, %struct.thread_stack** %9, align 8
  %63 = getelementptr inbounds %struct.thread_stack, %struct.thread_stack* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.thread_stack_entry*, %struct.thread_stack_entry** %16, align 8
  %66 = getelementptr inbounds %struct.thread_stack_entry, %struct.thread_stack_entry* %65, i32 0, i32 6
  store i32 %64, i32* %66, align 4
  %67 = load %struct.thread_stack*, %struct.thread_stack** %9, align 8
  %68 = getelementptr inbounds %struct.thread_stack, %struct.thread_stack* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 8
  %70 = load %struct.thread_stack_entry*, %struct.thread_stack_entry** %16, align 8
  %71 = getelementptr inbounds %struct.thread_stack_entry, %struct.thread_stack_entry* %70, i32 0, i32 5
  store i32 %69, i32* %71, align 8
  %72 = load %struct.call_path*, %struct.call_path** %13, align 8
  %73 = load %struct.thread_stack_entry*, %struct.thread_stack_entry** %16, align 8
  %74 = getelementptr inbounds %struct.thread_stack_entry, %struct.thread_stack_entry* %73, i32 0, i32 4
  store %struct.call_path* %72, %struct.call_path** %74, align 8
  %75 = load i32, i32* %14, align 4
  %76 = load %struct.thread_stack_entry*, %struct.thread_stack_entry** %16, align 8
  %77 = getelementptr inbounds %struct.thread_stack_entry, %struct.thread_stack_entry* %76, i32 0, i32 0
  store i32 %75, i32* %77, align 8
  %78 = load i32, i32* %15, align 4
  %79 = load %struct.thread_stack_entry*, %struct.thread_stack_entry** %16, align 8
  %80 = getelementptr inbounds %struct.thread_stack_entry, %struct.thread_stack_entry* %79, i32 0, i32 1
  store i32 %78, i32* %80, align 4
  %81 = load %struct.thread_stack_entry*, %struct.thread_stack_entry** %16, align 8
  %82 = getelementptr inbounds %struct.thread_stack_entry, %struct.thread_stack_entry* %81, i32 0, i32 2
  store i32 0, i32* %82, align 8
  %83 = load %struct.thread_stack_entry*, %struct.thread_stack_entry** %16, align 8
  %84 = getelementptr inbounds %struct.thread_stack_entry, %struct.thread_stack_entry* %83, i32 0, i32 3
  store i64 0, i64* %84, align 8
  store i32 0, i32* %8, align 4
  br label %85

85:                                               ; preds = %39, %36, %20
  %86 = load i32, i32* %8, align 4
  ret i32 %86
}

declare dso_local i32 @thread_stack__grow(%struct.thread_stack*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
