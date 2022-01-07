; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_ring_buffer.c_rb_iter_peek.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_ring_buffer.c_rb_iter_peek.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ring_buffer_event = type { i32, i64 }
%struct.ring_buffer_iter = type { i64, i64, i64, i64, i32, %struct.ring_buffer_per_cpu* }
%struct.ring_buffer_per_cpu = type { i64, i64, i32, %struct.ring_buffer* }
%struct.ring_buffer = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ring_buffer_event* (%struct.ring_buffer_iter*, i64*)* @rb_iter_peek to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ring_buffer_event* @rb_iter_peek(%struct.ring_buffer_iter* %0, i64* %1) #0 {
  %3 = alloca %struct.ring_buffer_event*, align 8
  %4 = alloca %struct.ring_buffer_iter*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca %struct.ring_buffer*, align 8
  %7 = alloca %struct.ring_buffer_per_cpu*, align 8
  %8 = alloca %struct.ring_buffer_event*, align 8
  %9 = alloca i32, align 4
  store %struct.ring_buffer_iter* %0, %struct.ring_buffer_iter** %4, align 8
  store i64* %1, i64** %5, align 8
  store i32 0, i32* %9, align 4
  %10 = load i64*, i64** %5, align 8
  %11 = icmp ne i64* %10, null
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = load i64*, i64** %5, align 8
  store i64 0, i64* %13, align 8
  br label %14

14:                                               ; preds = %12, %2
  %15 = load %struct.ring_buffer_iter*, %struct.ring_buffer_iter** %4, align 8
  %16 = getelementptr inbounds %struct.ring_buffer_iter, %struct.ring_buffer_iter* %15, i32 0, i32 5
  %17 = load %struct.ring_buffer_per_cpu*, %struct.ring_buffer_per_cpu** %16, align 8
  store %struct.ring_buffer_per_cpu* %17, %struct.ring_buffer_per_cpu** %7, align 8
  %18 = load %struct.ring_buffer_per_cpu*, %struct.ring_buffer_per_cpu** %7, align 8
  %19 = getelementptr inbounds %struct.ring_buffer_per_cpu, %struct.ring_buffer_per_cpu* %18, i32 0, i32 3
  %20 = load %struct.ring_buffer*, %struct.ring_buffer** %19, align 8
  store %struct.ring_buffer* %20, %struct.ring_buffer** %6, align 8
  %21 = load %struct.ring_buffer_iter*, %struct.ring_buffer_iter** %4, align 8
  %22 = getelementptr inbounds %struct.ring_buffer_iter, %struct.ring_buffer_iter* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.ring_buffer_per_cpu*, %struct.ring_buffer_per_cpu** %7, align 8
  %25 = getelementptr inbounds %struct.ring_buffer_per_cpu, %struct.ring_buffer_per_cpu* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %23, %26
  br i1 %27, label %36, label %28

28:                                               ; preds = %14
  %29 = load %struct.ring_buffer_iter*, %struct.ring_buffer_iter** %4, align 8
  %30 = getelementptr inbounds %struct.ring_buffer_iter, %struct.ring_buffer_iter* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.ring_buffer_per_cpu*, %struct.ring_buffer_per_cpu** %7, align 8
  %33 = getelementptr inbounds %struct.ring_buffer_per_cpu, %struct.ring_buffer_per_cpu* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %31, %34
  br label %36

36:                                               ; preds = %28, %14
  %37 = phi i1 [ true, %14 ], [ %35, %28 ]
  %38 = zext i1 %37 to i32
  %39 = call i64 @unlikely(i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %36
  %42 = load %struct.ring_buffer_iter*, %struct.ring_buffer_iter** %4, align 8
  %43 = call i32 @rb_iter_reset(%struct.ring_buffer_iter* %42)
  br label %44

44:                                               ; preds = %41, %36
  br label %45

45:                                               ; preds = %111, %93, %86, %73, %44
  %46 = load %struct.ring_buffer_iter*, %struct.ring_buffer_iter** %4, align 8
  %47 = call i64 @ring_buffer_iter_empty(%struct.ring_buffer_iter* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %45
  store %struct.ring_buffer_event* null, %struct.ring_buffer_event** %3, align 8
  br label %141

50:                                               ; preds = %45
  %51 = load %struct.ring_buffer_per_cpu*, %struct.ring_buffer_per_cpu** %7, align 8
  %52 = load i32, i32* %9, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %9, align 4
  %54 = icmp sgt i32 %53, 3
  %55 = zext i1 %54 to i32
  %56 = call i64 @RB_WARN_ON(%struct.ring_buffer_per_cpu* %51, i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %50
  store %struct.ring_buffer_event* null, %struct.ring_buffer_event** %3, align 8
  br label %141

59:                                               ; preds = %50
  %60 = load %struct.ring_buffer_per_cpu*, %struct.ring_buffer_per_cpu** %7, align 8
  %61 = call i64 @rb_per_cpu_empty(%struct.ring_buffer_per_cpu* %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %59
  store %struct.ring_buffer_event* null, %struct.ring_buffer_event** %3, align 8
  br label %141

64:                                               ; preds = %59
  %65 = load %struct.ring_buffer_iter*, %struct.ring_buffer_iter** %4, align 8
  %66 = getelementptr inbounds %struct.ring_buffer_iter, %struct.ring_buffer_iter* %65, i32 0, i32 2
  %67 = load i64, i64* %66, align 8
  %68 = load %struct.ring_buffer_iter*, %struct.ring_buffer_iter** %4, align 8
  %69 = getelementptr inbounds %struct.ring_buffer_iter, %struct.ring_buffer_iter* %68, i32 0, i32 4
  %70 = load i32, i32* %69, align 8
  %71 = call i64 @rb_page_size(i32 %70)
  %72 = icmp sge i64 %67, %71
  br i1 %72, label %73, label %76

73:                                               ; preds = %64
  %74 = load %struct.ring_buffer_iter*, %struct.ring_buffer_iter** %4, align 8
  %75 = call i32 @rb_inc_iter(%struct.ring_buffer_iter* %74)
  br label %45

76:                                               ; preds = %64
  %77 = load %struct.ring_buffer_iter*, %struct.ring_buffer_iter** %4, align 8
  %78 = call %struct.ring_buffer_event* @rb_iter_head_event(%struct.ring_buffer_iter* %77)
  store %struct.ring_buffer_event* %78, %struct.ring_buffer_event** %8, align 8
  %79 = load %struct.ring_buffer_event*, %struct.ring_buffer_event** %8, align 8
  %80 = getelementptr inbounds %struct.ring_buffer_event, %struct.ring_buffer_event* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  switch i32 %81, label %138 [
    i32 130, label %82
    i32 129, label %93
    i32 128, label %96
    i32 131, label %114
  ]

82:                                               ; preds = %76
  %83 = load %struct.ring_buffer_event*, %struct.ring_buffer_event** %8, align 8
  %84 = call i32 @rb_null_event(%struct.ring_buffer_event* %83)
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %89

86:                                               ; preds = %82
  %87 = load %struct.ring_buffer_iter*, %struct.ring_buffer_iter** %4, align 8
  %88 = call i32 @rb_inc_iter(%struct.ring_buffer_iter* %87)
  br label %45

89:                                               ; preds = %82
  %90 = load %struct.ring_buffer_iter*, %struct.ring_buffer_iter** %4, align 8
  %91 = call i32 @rb_advance_iter(%struct.ring_buffer_iter* %90)
  %92 = load %struct.ring_buffer_event*, %struct.ring_buffer_event** %8, align 8
  store %struct.ring_buffer_event* %92, %struct.ring_buffer_event** %3, align 8
  br label %141

93:                                               ; preds = %76
  %94 = load %struct.ring_buffer_iter*, %struct.ring_buffer_iter** %4, align 8
  %95 = call i32 @rb_advance_iter(%struct.ring_buffer_iter* %94)
  br label %45

96:                                               ; preds = %76
  %97 = load i64*, i64** %5, align 8
  %98 = icmp ne i64* %97, null
  br i1 %98, label %99, label %111

99:                                               ; preds = %96
  %100 = load %struct.ring_buffer_event*, %struct.ring_buffer_event** %8, align 8
  %101 = call i64 @ring_buffer_event_time_stamp(%struct.ring_buffer_event* %100)
  %102 = load i64*, i64** %5, align 8
  store i64 %101, i64* %102, align 8
  %103 = load %struct.ring_buffer_per_cpu*, %struct.ring_buffer_per_cpu** %7, align 8
  %104 = getelementptr inbounds %struct.ring_buffer_per_cpu, %struct.ring_buffer_per_cpu* %103, i32 0, i32 3
  %105 = load %struct.ring_buffer*, %struct.ring_buffer** %104, align 8
  %106 = load %struct.ring_buffer_per_cpu*, %struct.ring_buffer_per_cpu** %7, align 8
  %107 = getelementptr inbounds %struct.ring_buffer_per_cpu, %struct.ring_buffer_per_cpu* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 8
  %109 = load i64*, i64** %5, align 8
  %110 = call i32 @ring_buffer_normalize_time_stamp(%struct.ring_buffer* %105, i32 %108, i64* %109)
  br label %111

111:                                              ; preds = %99, %96
  %112 = load %struct.ring_buffer_iter*, %struct.ring_buffer_iter** %4, align 8
  %113 = call i32 @rb_advance_iter(%struct.ring_buffer_iter* %112)
  br label %45

114:                                              ; preds = %76
  %115 = load i64*, i64** %5, align 8
  %116 = icmp ne i64* %115, null
  br i1 %116, label %117, label %136

117:                                              ; preds = %114
  %118 = load i64*, i64** %5, align 8
  %119 = load i64, i64* %118, align 8
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %136, label %121

121:                                              ; preds = %117
  %122 = load %struct.ring_buffer_iter*, %struct.ring_buffer_iter** %4, align 8
  %123 = getelementptr inbounds %struct.ring_buffer_iter, %struct.ring_buffer_iter* %122, i32 0, i32 3
  %124 = load i64, i64* %123, align 8
  %125 = load %struct.ring_buffer_event*, %struct.ring_buffer_event** %8, align 8
  %126 = getelementptr inbounds %struct.ring_buffer_event, %struct.ring_buffer_event* %125, i32 0, i32 1
  %127 = load i64, i64* %126, align 8
  %128 = add nsw i64 %124, %127
  %129 = load i64*, i64** %5, align 8
  store i64 %128, i64* %129, align 8
  %130 = load %struct.ring_buffer*, %struct.ring_buffer** %6, align 8
  %131 = load %struct.ring_buffer_per_cpu*, %struct.ring_buffer_per_cpu** %7, align 8
  %132 = getelementptr inbounds %struct.ring_buffer_per_cpu, %struct.ring_buffer_per_cpu* %131, i32 0, i32 2
  %133 = load i32, i32* %132, align 8
  %134 = load i64*, i64** %5, align 8
  %135 = call i32 @ring_buffer_normalize_time_stamp(%struct.ring_buffer* %130, i32 %133, i64* %134)
  br label %136

136:                                              ; preds = %121, %117, %114
  %137 = load %struct.ring_buffer_event*, %struct.ring_buffer_event** %8, align 8
  store %struct.ring_buffer_event* %137, %struct.ring_buffer_event** %3, align 8
  br label %141

138:                                              ; preds = %76
  %139 = call i32 (...) @BUG()
  br label %140

140:                                              ; preds = %138
  store %struct.ring_buffer_event* null, %struct.ring_buffer_event** %3, align 8
  br label %141

141:                                              ; preds = %140, %136, %89, %63, %58, %49
  %142 = load %struct.ring_buffer_event*, %struct.ring_buffer_event** %3, align 8
  ret %struct.ring_buffer_event* %142
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @rb_iter_reset(%struct.ring_buffer_iter*) #1

declare dso_local i64 @ring_buffer_iter_empty(%struct.ring_buffer_iter*) #1

declare dso_local i64 @RB_WARN_ON(%struct.ring_buffer_per_cpu*, i32) #1

declare dso_local i64 @rb_per_cpu_empty(%struct.ring_buffer_per_cpu*) #1

declare dso_local i64 @rb_page_size(i32) #1

declare dso_local i32 @rb_inc_iter(%struct.ring_buffer_iter*) #1

declare dso_local %struct.ring_buffer_event* @rb_iter_head_event(%struct.ring_buffer_iter*) #1

declare dso_local i32 @rb_null_event(%struct.ring_buffer_event*) #1

declare dso_local i32 @rb_advance_iter(%struct.ring_buffer_iter*) #1

declare dso_local i64 @ring_buffer_event_time_stamp(%struct.ring_buffer_event*) #1

declare dso_local i32 @ring_buffer_normalize_time_stamp(%struct.ring_buffer*, i32, i64*) #1

declare dso_local i32 @BUG(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
