; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_trace.c_s_next.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_trace.c_s_next.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { %struct.trace_iterator* }
%struct.trace_iterator = type { i32, i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.seq_file*, i8*, i64*)* @s_next to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @s_next(%struct.seq_file* %0, i8* %1, i64* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.seq_file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca %struct.trace_iterator*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  store %struct.seq_file* %0, %struct.seq_file** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64* %2, i64** %7, align 8
  %11 = load %struct.seq_file*, %struct.seq_file** %5, align 8
  %12 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %11, i32 0, i32 0
  %13 = load %struct.trace_iterator*, %struct.trace_iterator** %12, align 8
  store %struct.trace_iterator* %13, %struct.trace_iterator** %8, align 8
  %14 = load i64*, i64** %7, align 8
  %15 = load i64, i64* %14, align 8
  %16 = trunc i64 %15 to i32
  store i32 %16, i32* %9, align 4
  %17 = load %struct.trace_iterator*, %struct.trace_iterator** %8, align 8
  %18 = getelementptr inbounds %struct.trace_iterator, %struct.trace_iterator* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @WARN_ON_ONCE(i32 %19)
  %21 = load i64*, i64** %7, align 8
  %22 = load i64, i64* %21, align 8
  %23 = add nsw i64 %22, 1
  store i64 %23, i64* %21, align 8
  %24 = load %struct.trace_iterator*, %struct.trace_iterator** %8, align 8
  %25 = getelementptr inbounds %struct.trace_iterator, %struct.trace_iterator* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* %9, align 4
  %28 = icmp sgt i32 %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %3
  store i8* null, i8** %4, align 8
  br label %62

30:                                               ; preds = %3
  %31 = load %struct.trace_iterator*, %struct.trace_iterator** %8, align 8
  %32 = getelementptr inbounds %struct.trace_iterator, %struct.trace_iterator* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %30
  %36 = load %struct.trace_iterator*, %struct.trace_iterator** %8, align 8
  %37 = call i8* @trace_find_next_entry_inc(%struct.trace_iterator* %36)
  store i8* %37, i8** %10, align 8
  br label %41

38:                                               ; preds = %30
  %39 = load %struct.trace_iterator*, %struct.trace_iterator** %8, align 8
  %40 = bitcast %struct.trace_iterator* %39 to i8*
  store i8* %40, i8** %10, align 8
  br label %41

41:                                               ; preds = %38, %35
  br label %42

42:                                               ; preds = %53, %41
  %43 = load i8*, i8** %10, align 8
  %44 = icmp ne i8* %43, null
  br i1 %44, label %45, label %51

45:                                               ; preds = %42
  %46 = load %struct.trace_iterator*, %struct.trace_iterator** %8, align 8
  %47 = getelementptr inbounds %struct.trace_iterator, %struct.trace_iterator* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* %9, align 4
  %50 = icmp slt i32 %48, %49
  br label %51

51:                                               ; preds = %45, %42
  %52 = phi i1 [ false, %42 ], [ %50, %45 ]
  br i1 %52, label %53, label %56

53:                                               ; preds = %51
  %54 = load %struct.trace_iterator*, %struct.trace_iterator** %8, align 8
  %55 = call i8* @trace_find_next_entry_inc(%struct.trace_iterator* %54)
  store i8* %55, i8** %10, align 8
  br label %42

56:                                               ; preds = %51
  %57 = load i64*, i64** %7, align 8
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.trace_iterator*, %struct.trace_iterator** %8, align 8
  %60 = getelementptr inbounds %struct.trace_iterator, %struct.trace_iterator* %59, i32 0, i32 1
  store i64 %58, i64* %60, align 8
  %61 = load i8*, i8** %10, align 8
  store i8* %61, i8** %4, align 8
  br label %62

62:                                               ; preds = %56, %29
  %63 = load i8*, i8** %4, align 8
  ret i8* %63
}

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i8* @trace_find_next_entry_inc(%struct.trace_iterator*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
