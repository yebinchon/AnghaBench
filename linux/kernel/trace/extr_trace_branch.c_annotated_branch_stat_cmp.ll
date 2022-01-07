; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_trace_branch.c_annotated_branch_stat_cmp.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_trace_branch.c_annotated_branch_stat_cmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ftrace_branch_data = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @annotated_branch_stat_cmp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @annotated_branch_stat_cmp(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.ftrace_branch_data*, align 8
  %7 = alloca %struct.ftrace_branch_data*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = bitcast i8* %10 to %struct.ftrace_branch_data*
  store %struct.ftrace_branch_data* %11, %struct.ftrace_branch_data** %6, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = bitcast i8* %12 to %struct.ftrace_branch_data*
  store %struct.ftrace_branch_data* %13, %struct.ftrace_branch_data** %7, align 8
  %14 = load %struct.ftrace_branch_data*, %struct.ftrace_branch_data** %6, align 8
  %15 = call i64 @get_incorrect_percent(%struct.ftrace_branch_data* %14)
  store i64 %15, i64* %8, align 8
  %16 = load %struct.ftrace_branch_data*, %struct.ftrace_branch_data** %7, align 8
  %17 = call i64 @get_incorrect_percent(%struct.ftrace_branch_data* %16)
  store i64 %17, i64* %9, align 8
  %18 = load i64, i64* %8, align 8
  %19 = load i64, i64* %9, align 8
  %20 = icmp slt i64 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %64

22:                                               ; preds = %2
  %23 = load i64, i64* %8, align 8
  %24 = load i64, i64* %9, align 8
  %25 = icmp sgt i64 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %22
  store i32 1, i32* %3, align 4
  br label %64

27:                                               ; preds = %22
  %28 = load %struct.ftrace_branch_data*, %struct.ftrace_branch_data** %6, align 8
  %29 = getelementptr inbounds %struct.ftrace_branch_data, %struct.ftrace_branch_data* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.ftrace_branch_data*, %struct.ftrace_branch_data** %7, align 8
  %32 = getelementptr inbounds %struct.ftrace_branch_data, %struct.ftrace_branch_data* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp slt i64 %30, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %27
  store i32 -1, i32* %3, align 4
  br label %64

36:                                               ; preds = %27
  %37 = load %struct.ftrace_branch_data*, %struct.ftrace_branch_data** %6, align 8
  %38 = getelementptr inbounds %struct.ftrace_branch_data, %struct.ftrace_branch_data* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.ftrace_branch_data*, %struct.ftrace_branch_data** %7, align 8
  %41 = getelementptr inbounds %struct.ftrace_branch_data, %struct.ftrace_branch_data* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp sgt i64 %39, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %36
  store i32 1, i32* %3, align 4
  br label %64

45:                                               ; preds = %36
  %46 = load %struct.ftrace_branch_data*, %struct.ftrace_branch_data** %6, align 8
  %47 = getelementptr inbounds %struct.ftrace_branch_data, %struct.ftrace_branch_data* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.ftrace_branch_data*, %struct.ftrace_branch_data** %7, align 8
  %50 = getelementptr inbounds %struct.ftrace_branch_data, %struct.ftrace_branch_data* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = icmp sgt i64 %48, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %45
  store i32 -1, i32* %3, align 4
  br label %64

54:                                               ; preds = %45
  %55 = load %struct.ftrace_branch_data*, %struct.ftrace_branch_data** %6, align 8
  %56 = getelementptr inbounds %struct.ftrace_branch_data, %struct.ftrace_branch_data* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = load %struct.ftrace_branch_data*, %struct.ftrace_branch_data** %7, align 8
  %59 = getelementptr inbounds %struct.ftrace_branch_data, %struct.ftrace_branch_data* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = icmp slt i64 %57, %60
  br i1 %61, label %62, label %63

62:                                               ; preds = %54
  store i32 1, i32* %3, align 4
  br label %64

63:                                               ; preds = %54
  store i32 0, i32* %3, align 4
  br label %64

64:                                               ; preds = %63, %62, %53, %44, %35, %26, %21
  %65 = load i32, i32* %3, align 4
  ret i32 %65
}

declare dso_local i64 @get_incorrect_percent(%struct.ftrace_branch_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
