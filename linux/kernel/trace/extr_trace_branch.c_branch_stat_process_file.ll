; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_trace_branch.c_branch_stat_process_file.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_trace_branch.c_branch_stat_process_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ftrace_branch_data = type { i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.ftrace_branch_data*)* @branch_stat_process_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @branch_stat_process_file(%struct.ftrace_branch_data* %0) #0 {
  %2 = alloca %struct.ftrace_branch_data*, align 8
  %3 = alloca i8*, align 8
  store %struct.ftrace_branch_data* %0, %struct.ftrace_branch_data** %2, align 8
  %4 = load %struct.ftrace_branch_data*, %struct.ftrace_branch_data** %2, align 8
  %5 = getelementptr inbounds %struct.ftrace_branch_data, %struct.ftrace_branch_data* %4, i32 0, i32 0
  %6 = load i8*, i8** %5, align 8
  %7 = load %struct.ftrace_branch_data*, %struct.ftrace_branch_data** %2, align 8
  %8 = getelementptr inbounds %struct.ftrace_branch_data, %struct.ftrace_branch_data* %7, i32 0, i32 0
  %9 = load i8*, i8** %8, align 8
  %10 = call i32 @strlen(i8* %9)
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds i8, i8* %6, i64 %11
  store i8* %12, i8** %3, align 8
  br label %13

13:                                               ; preds = %26, %1
  %14 = load i8*, i8** %3, align 8
  %15 = load %struct.ftrace_branch_data*, %struct.ftrace_branch_data** %2, align 8
  %16 = getelementptr inbounds %struct.ftrace_branch_data, %struct.ftrace_branch_data* %15, i32 0, i32 0
  %17 = load i8*, i8** %16, align 8
  %18 = icmp uge i8* %14, %17
  br i1 %18, label %19, label %24

19:                                               ; preds = %13
  %20 = load i8*, i8** %3, align 8
  %21 = load i8, i8* %20, align 1
  %22 = sext i8 %21 to i32
  %23 = icmp ne i32 %22, 47
  br label %24

24:                                               ; preds = %19, %13
  %25 = phi i1 [ false, %13 ], [ %23, %19 ]
  br i1 %25, label %26, label %29

26:                                               ; preds = %24
  %27 = load i8*, i8** %3, align 8
  %28 = getelementptr inbounds i8, i8* %27, i32 -1
  store i8* %28, i8** %3, align 8
  br label %13

29:                                               ; preds = %24
  %30 = load i8*, i8** %3, align 8
  %31 = getelementptr inbounds i8, i8* %30, i32 1
  store i8* %31, i8** %3, align 8
  ret i8* %31
}

declare dso_local i32 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
