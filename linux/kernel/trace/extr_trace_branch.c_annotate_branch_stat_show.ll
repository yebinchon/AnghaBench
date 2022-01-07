; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_trace_branch.c_annotate_branch_stat_show.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_trace_branch.c_annotate_branch_stat_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i32 }
%struct.ftrace_likely_data = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32, i32 }

@.str = private unnamed_addr constant [5 x i8] c"/%lu\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"%8lu/%lu %*lu \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, i8*)* @annotate_branch_stat_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @annotate_branch_stat_show(%struct.seq_file* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.seq_file*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.ftrace_likely_data*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store %struct.seq_file* %0, %struct.seq_file** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to %struct.ftrace_likely_data*
  store %struct.ftrace_likely_data* %10, %struct.ftrace_likely_data** %6, align 8
  %11 = load %struct.ftrace_likely_data*, %struct.ftrace_likely_data** %6, align 8
  %12 = getelementptr inbounds %struct.ftrace_likely_data, %struct.ftrace_likely_data* %11, i32 0, i32 0
  %13 = call i8* @branch_stat_process_file(%struct.TYPE_4__* %12)
  store i8* %13, i8** %7, align 8
  %14 = load %struct.ftrace_likely_data*, %struct.ftrace_likely_data** %6, align 8
  %15 = getelementptr inbounds %struct.ftrace_likely_data, %struct.ftrace_likely_data* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %24, label %18

18:                                               ; preds = %2
  %19 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %20 = load %struct.ftrace_likely_data*, %struct.ftrace_likely_data** %6, align 8
  %21 = getelementptr inbounds %struct.ftrace_likely_data, %struct.ftrace_likely_data* %20, i32 0, i32 0
  %22 = load i8*, i8** %7, align 8
  %23 = call i32 @branch_stat_show_normal(%struct.seq_file* %19, %struct.TYPE_4__* %21, i8* %22)
  store i32 %23, i32* %3, align 4
  br label %56

24:                                               ; preds = %2
  %25 = load %struct.ftrace_likely_data*, %struct.ftrace_likely_data** %6, align 8
  %26 = getelementptr inbounds %struct.ftrace_likely_data, %struct.ftrace_likely_data* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @snprintf(i32* null, i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %27)
  store i32 %28, i32* %8, align 4
  %29 = load i32, i32* %8, align 4
  %30 = icmp sgt i32 %29, 8
  br i1 %30, label %31, label %32

31:                                               ; preds = %24
  br label %35

32:                                               ; preds = %24
  %33 = load i32, i32* %8, align 4
  %34 = sub nsw i32 8, %33
  br label %35

35:                                               ; preds = %32, %31
  %36 = phi i32 [ 0, %31 ], [ %34, %32 ]
  store i32 %36, i32* %8, align 4
  %37 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %38 = load %struct.ftrace_likely_data*, %struct.ftrace_likely_data** %6, align 8
  %39 = getelementptr inbounds %struct.ftrace_likely_data, %struct.ftrace_likely_data* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.ftrace_likely_data*, %struct.ftrace_likely_data** %6, align 8
  %43 = getelementptr inbounds %struct.ftrace_likely_data, %struct.ftrace_likely_data* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* %8, align 4
  %46 = load %struct.ftrace_likely_data*, %struct.ftrace_likely_data** %6, align 8
  %47 = getelementptr inbounds %struct.ftrace_likely_data, %struct.ftrace_likely_data* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @seq_printf(%struct.seq_file* %37, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 %41, i32 %44, i32 %45, i32 %49)
  %51 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %52 = load %struct.ftrace_likely_data*, %struct.ftrace_likely_data** %6, align 8
  %53 = getelementptr inbounds %struct.ftrace_likely_data, %struct.ftrace_likely_data* %52, i32 0, i32 0
  %54 = load i8*, i8** %7, align 8
  %55 = call i32 @branch_stat_show(%struct.seq_file* %51, %struct.TYPE_4__* %53, i8* %54)
  store i32 0, i32* %3, align 4
  br label %56

56:                                               ; preds = %35, %18
  %57 = load i32, i32* %3, align 4
  ret i32 %57
}

declare dso_local i8* @branch_stat_process_file(%struct.TYPE_4__*) #1

declare dso_local i32 @branch_stat_show_normal(%struct.seq_file*, %struct.TYPE_4__*, i8*) #1

declare dso_local i32 @snprintf(i32*, i32, i8*, i32) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @branch_stat_show(%struct.seq_file*, %struct.TYPE_4__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
