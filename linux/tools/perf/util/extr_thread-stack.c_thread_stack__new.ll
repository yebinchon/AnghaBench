; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_thread-stack.c_thread_stack__new.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_thread-stack.c_thread_stack__new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread_stack = type { i32, i32 }
%struct.thread = type { %struct.thread_stack* }
%struct.call_return_processor = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.thread_stack* (%struct.thread*, i32, %struct.call_return_processor*)* @thread_stack__new to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.thread_stack* @thread_stack__new(%struct.thread* %0, i32 %1, %struct.call_return_processor* %2) #0 {
  %4 = alloca %struct.thread_stack*, align 8
  %5 = alloca %struct.thread*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.call_return_processor*, align 8
  %8 = alloca %struct.thread_stack*, align 8
  %9 = alloca %struct.thread_stack*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.call_return_processor* %2, %struct.call_return_processor** %7, align 8
  %12 = load %struct.thread*, %struct.thread** %5, align 8
  %13 = getelementptr inbounds %struct.thread, %struct.thread* %12, i32 0, i32 0
  %14 = load %struct.thread_stack*, %struct.thread_stack** %13, align 8
  store %struct.thread_stack* %14, %struct.thread_stack** %8, align 8
  %15 = load %struct.thread_stack*, %struct.thread_stack** %8, align 8
  %16 = icmp ne %struct.thread_stack* %15, null
  br i1 %16, label %17, label %21

17:                                               ; preds = %3
  %18 = load %struct.thread_stack*, %struct.thread_stack** %8, align 8
  %19 = getelementptr inbounds %struct.thread_stack, %struct.thread_stack* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  br label %22

21:                                               ; preds = %3
  br label %22

22:                                               ; preds = %21, %17
  %23 = phi i32 [ %20, %17 ], [ 0, %21 ]
  store i32 %23, i32* %10, align 4
  store i32 1, i32* %11, align 4
  %24 = load %struct.thread*, %struct.thread** %5, align 8
  %25 = call i64 @thread_stack__per_cpu(%struct.thread* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %34

27:                                               ; preds = %22
  %28 = load i32, i32* %6, align 4
  %29 = icmp sgt i32 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %27
  %31 = load i32, i32* %6, align 4
  %32 = add nsw i32 %31, 1
  %33 = call i32 @roundup_pow_of_two(i32 %32)
  store i32 %33, i32* %11, align 4
  br label %34

34:                                               ; preds = %30, %27, %22
  %35 = load %struct.thread_stack*, %struct.thread_stack** %8, align 8
  %36 = icmp ne %struct.thread_stack* %35, null
  br i1 %36, label %37, label %41

37:                                               ; preds = %34
  %38 = load i32, i32* %11, align 4
  %39 = load i32, i32* %10, align 4
  %40 = icmp ugt i32 %38, %39
  br i1 %40, label %41, label %69

41:                                               ; preds = %37, %34
  %42 = load i32, i32* %11, align 4
  %43 = call %struct.thread_stack* @calloc(i32 %42, i32 8)
  store %struct.thread_stack* %43, %struct.thread_stack** %9, align 8
  %44 = load %struct.thread_stack*, %struct.thread_stack** %9, align 8
  %45 = icmp ne %struct.thread_stack* %44, null
  br i1 %45, label %47, label %46

46:                                               ; preds = %41
  store %struct.thread_stack* null, %struct.thread_stack** %4, align 8
  br label %101

47:                                               ; preds = %41
  %48 = load %struct.thread_stack*, %struct.thread_stack** %8, align 8
  %49 = icmp ne %struct.thread_stack* %48, null
  br i1 %49, label %50, label %58

50:                                               ; preds = %47
  %51 = load %struct.thread_stack*, %struct.thread_stack** %9, align 8
  %52 = load %struct.thread_stack*, %struct.thread_stack** %8, align 8
  %53 = load i32, i32* %10, align 4
  %54 = zext i32 %53 to i64
  %55 = mul i64 %54, 8
  %56 = trunc i64 %55 to i32
  %57 = call i32 @memcpy(%struct.thread_stack* %51, %struct.thread_stack* %52, i32 %56)
  br label %58

58:                                               ; preds = %50, %47
  %59 = load i32, i32* %11, align 4
  %60 = load %struct.thread_stack*, %struct.thread_stack** %9, align 8
  %61 = getelementptr inbounds %struct.thread_stack, %struct.thread_stack* %60, i32 0, i32 0
  store i32 %59, i32* %61, align 4
  %62 = load %struct.thread*, %struct.thread** %5, align 8
  %63 = getelementptr inbounds %struct.thread, %struct.thread* %62, i32 0, i32 0
  %64 = call i32 @zfree(%struct.thread_stack** %63)
  %65 = load %struct.thread_stack*, %struct.thread_stack** %9, align 8
  %66 = load %struct.thread*, %struct.thread** %5, align 8
  %67 = getelementptr inbounds %struct.thread, %struct.thread* %66, i32 0, i32 0
  store %struct.thread_stack* %65, %struct.thread_stack** %67, align 8
  %68 = load %struct.thread_stack*, %struct.thread_stack** %9, align 8
  store %struct.thread_stack* %68, %struct.thread_stack** %8, align 8
  br label %69

69:                                               ; preds = %58, %37
  %70 = load %struct.thread*, %struct.thread** %5, align 8
  %71 = call i64 @thread_stack__per_cpu(%struct.thread* %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %87

73:                                               ; preds = %69
  %74 = load i32, i32* %6, align 4
  %75 = icmp sgt i32 %74, 0
  br i1 %75, label %76, label %87

76:                                               ; preds = %73
  %77 = load i32, i32* %6, align 4
  %78 = load %struct.thread_stack*, %struct.thread_stack** %8, align 8
  %79 = getelementptr inbounds %struct.thread_stack, %struct.thread_stack* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = icmp ult i32 %77, %80
  br i1 %81, label %82, label %87

82:                                               ; preds = %76
  %83 = load i32, i32* %6, align 4
  %84 = load %struct.thread_stack*, %struct.thread_stack** %8, align 8
  %85 = sext i32 %83 to i64
  %86 = getelementptr inbounds %struct.thread_stack, %struct.thread_stack* %84, i64 %85
  store %struct.thread_stack* %86, %struct.thread_stack** %8, align 8
  br label %87

87:                                               ; preds = %82, %76, %73, %69
  %88 = load %struct.thread_stack*, %struct.thread_stack** %8, align 8
  %89 = getelementptr inbounds %struct.thread_stack, %struct.thread_stack* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %99, label %92

92:                                               ; preds = %87
  %93 = load %struct.thread_stack*, %struct.thread_stack** %8, align 8
  %94 = load %struct.thread*, %struct.thread** %5, align 8
  %95 = load %struct.call_return_processor*, %struct.call_return_processor** %7, align 8
  %96 = call i64 @thread_stack__init(%struct.thread_stack* %93, %struct.thread* %94, %struct.call_return_processor* %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %92
  store %struct.thread_stack* null, %struct.thread_stack** %4, align 8
  br label %101

99:                                               ; preds = %92, %87
  %100 = load %struct.thread_stack*, %struct.thread_stack** %8, align 8
  store %struct.thread_stack* %100, %struct.thread_stack** %4, align 8
  br label %101

101:                                              ; preds = %99, %98, %46
  %102 = load %struct.thread_stack*, %struct.thread_stack** %4, align 8
  ret %struct.thread_stack* %102
}

declare dso_local i64 @thread_stack__per_cpu(%struct.thread*) #1

declare dso_local i32 @roundup_pow_of_two(i32) #1

declare dso_local %struct.thread_stack* @calloc(i32, i32) #1

declare dso_local i32 @memcpy(%struct.thread_stack*, %struct.thread_stack*, i32) #1

declare dso_local i32 @zfree(%struct.thread_stack**) #1

declare dso_local i64 @thread_stack__init(%struct.thread_stack*, %struct.thread*, %struct.call_return_processor*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
