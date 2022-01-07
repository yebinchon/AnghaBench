; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_ring_buffer.c_rb_advance_iter.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_ring_buffer.c_rb_advance_iter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ring_buffer_iter = type { i64, i64, %struct.ring_buffer_per_cpu* }
%struct.ring_buffer_per_cpu = type { i64 }
%struct.ring_buffer_event = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ring_buffer_iter*)* @rb_advance_iter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rb_advance_iter(%struct.ring_buffer_iter* %0) #0 {
  %2 = alloca %struct.ring_buffer_iter*, align 8
  %3 = alloca %struct.ring_buffer_per_cpu*, align 8
  %4 = alloca %struct.ring_buffer_event*, align 8
  %5 = alloca i32, align 4
  store %struct.ring_buffer_iter* %0, %struct.ring_buffer_iter** %2, align 8
  %6 = load %struct.ring_buffer_iter*, %struct.ring_buffer_iter** %2, align 8
  %7 = getelementptr inbounds %struct.ring_buffer_iter, %struct.ring_buffer_iter* %6, i32 0, i32 2
  %8 = load %struct.ring_buffer_per_cpu*, %struct.ring_buffer_per_cpu** %7, align 8
  store %struct.ring_buffer_per_cpu* %8, %struct.ring_buffer_per_cpu** %3, align 8
  %9 = load %struct.ring_buffer_iter*, %struct.ring_buffer_iter** %2, align 8
  %10 = getelementptr inbounds %struct.ring_buffer_iter, %struct.ring_buffer_iter* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load %struct.ring_buffer_iter*, %struct.ring_buffer_iter** %2, align 8
  %13 = getelementptr inbounds %struct.ring_buffer_iter, %struct.ring_buffer_iter* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = call i64 @rb_page_size(i64 %14)
  %16 = icmp sge i64 %11, %15
  br i1 %16, label %17, label %29

17:                                               ; preds = %1
  %18 = load %struct.ring_buffer_iter*, %struct.ring_buffer_iter** %2, align 8
  %19 = getelementptr inbounds %struct.ring_buffer_iter, %struct.ring_buffer_iter* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.ring_buffer_per_cpu*, %struct.ring_buffer_per_cpu** %3, align 8
  %22 = getelementptr inbounds %struct.ring_buffer_per_cpu, %struct.ring_buffer_per_cpu* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp eq i64 %20, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %17
  br label %87

26:                                               ; preds = %17
  %27 = load %struct.ring_buffer_iter*, %struct.ring_buffer_iter** %2, align 8
  %28 = call i32 @rb_inc_iter(%struct.ring_buffer_iter* %27)
  br label %87

29:                                               ; preds = %1
  %30 = load %struct.ring_buffer_iter*, %struct.ring_buffer_iter** %2, align 8
  %31 = call %struct.ring_buffer_event* @rb_iter_head_event(%struct.ring_buffer_iter* %30)
  store %struct.ring_buffer_event* %31, %struct.ring_buffer_event** %4, align 8
  %32 = load %struct.ring_buffer_event*, %struct.ring_buffer_event** %4, align 8
  %33 = call i32 @rb_event_length(%struct.ring_buffer_event* %32)
  store i32 %33, i32* %5, align 4
  %34 = load %struct.ring_buffer_per_cpu*, %struct.ring_buffer_per_cpu** %3, align 8
  %35 = load %struct.ring_buffer_iter*, %struct.ring_buffer_iter** %2, align 8
  %36 = getelementptr inbounds %struct.ring_buffer_iter, %struct.ring_buffer_iter* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.ring_buffer_per_cpu*, %struct.ring_buffer_per_cpu** %3, align 8
  %39 = getelementptr inbounds %struct.ring_buffer_per_cpu, %struct.ring_buffer_per_cpu* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp eq i64 %37, %40
  br i1 %41, label %42, label %52

42:                                               ; preds = %29
  %43 = load %struct.ring_buffer_iter*, %struct.ring_buffer_iter** %2, align 8
  %44 = getelementptr inbounds %struct.ring_buffer_iter, %struct.ring_buffer_iter* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i32, i32* %5, align 4
  %47 = zext i32 %46 to i64
  %48 = add nsw i64 %45, %47
  %49 = load %struct.ring_buffer_per_cpu*, %struct.ring_buffer_per_cpu** %3, align 8
  %50 = call i64 @rb_commit_index(%struct.ring_buffer_per_cpu* %49)
  %51 = icmp sgt i64 %48, %50
  br label %52

52:                                               ; preds = %42, %29
  %53 = phi i1 [ false, %29 ], [ %51, %42 ]
  %54 = zext i1 %53 to i32
  %55 = call i64 @RB_WARN_ON(%struct.ring_buffer_per_cpu* %34, i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %52
  br label %87

58:                                               ; preds = %52
  %59 = load %struct.ring_buffer_iter*, %struct.ring_buffer_iter** %2, align 8
  %60 = load %struct.ring_buffer_event*, %struct.ring_buffer_event** %4, align 8
  %61 = call i32 @rb_update_iter_read_stamp(%struct.ring_buffer_iter* %59, %struct.ring_buffer_event* %60)
  %62 = load i32, i32* %5, align 4
  %63 = zext i32 %62 to i64
  %64 = load %struct.ring_buffer_iter*, %struct.ring_buffer_iter** %2, align 8
  %65 = getelementptr inbounds %struct.ring_buffer_iter, %struct.ring_buffer_iter* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = add nsw i64 %66, %63
  store i64 %67, i64* %65, align 8
  %68 = load %struct.ring_buffer_iter*, %struct.ring_buffer_iter** %2, align 8
  %69 = getelementptr inbounds %struct.ring_buffer_iter, %struct.ring_buffer_iter* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load %struct.ring_buffer_iter*, %struct.ring_buffer_iter** %2, align 8
  %72 = getelementptr inbounds %struct.ring_buffer_iter, %struct.ring_buffer_iter* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = call i64 @rb_page_size(i64 %73)
  %75 = icmp sge i64 %70, %74
  br i1 %75, label %76, label %87

76:                                               ; preds = %58
  %77 = load %struct.ring_buffer_iter*, %struct.ring_buffer_iter** %2, align 8
  %78 = getelementptr inbounds %struct.ring_buffer_iter, %struct.ring_buffer_iter* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = load %struct.ring_buffer_per_cpu*, %struct.ring_buffer_per_cpu** %3, align 8
  %81 = getelementptr inbounds %struct.ring_buffer_per_cpu, %struct.ring_buffer_per_cpu* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = icmp ne i64 %79, %82
  br i1 %83, label %84, label %87

84:                                               ; preds = %76
  %85 = load %struct.ring_buffer_iter*, %struct.ring_buffer_iter** %2, align 8
  %86 = call i32 @rb_inc_iter(%struct.ring_buffer_iter* %85)
  br label %87

87:                                               ; preds = %25, %26, %57, %84, %76, %58
  ret void
}

declare dso_local i64 @rb_page_size(i64) #1

declare dso_local i32 @rb_inc_iter(%struct.ring_buffer_iter*) #1

declare dso_local %struct.ring_buffer_event* @rb_iter_head_event(%struct.ring_buffer_iter*) #1

declare dso_local i32 @rb_event_length(%struct.ring_buffer_event*) #1

declare dso_local i64 @RB_WARN_ON(%struct.ring_buffer_per_cpu*, i32) #1

declare dso_local i64 @rb_commit_index(%struct.ring_buffer_per_cpu*) #1

declare dso_local i32 @rb_update_iter_read_stamp(%struct.ring_buffer_iter*, %struct.ring_buffer_event*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
