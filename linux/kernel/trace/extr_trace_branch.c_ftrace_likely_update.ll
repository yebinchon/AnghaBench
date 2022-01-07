; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_trace_branch.c_ftrace_likely_update.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_trace_branch.c_ftrace_likely_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ftrace_likely_data = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ftrace_likely_update(%struct.ftrace_likely_data* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.ftrace_likely_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.ftrace_likely_data* %0, %struct.ftrace_likely_data** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = call i64 (...) @user_access_save()
  store i64 %10, i64* %9, align 8
  %11 = load i32, i32* %8, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %19

13:                                               ; preds = %4
  %14 = load %struct.ftrace_likely_data*, %struct.ftrace_likely_data** %5, align 8
  %15 = getelementptr inbounds %struct.ftrace_likely_data, %struct.ftrace_likely_data* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = add nsw i32 %16, 1
  store i32 %17, i32* %15, align 4
  %18 = load i32, i32* %7, align 4
  store i32 %18, i32* %6, align 4
  br label %19

19:                                               ; preds = %13, %4
  %20 = load %struct.ftrace_likely_data*, %struct.ftrace_likely_data** %5, align 8
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* %7, align 4
  %23 = call i32 @trace_likely_condition(%struct.ftrace_likely_data* %20, i32 %21, i32 %22)
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* %7, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %33

27:                                               ; preds = %19
  %28 = load %struct.ftrace_likely_data*, %struct.ftrace_likely_data** %5, align 8
  %29 = getelementptr inbounds %struct.ftrace_likely_data, %struct.ftrace_likely_data* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %30, align 4
  br label %39

33:                                               ; preds = %19
  %34 = load %struct.ftrace_likely_data*, %struct.ftrace_likely_data** %5, align 8
  %35 = getelementptr inbounds %struct.ftrace_likely_data, %struct.ftrace_likely_data* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %36, align 4
  br label %39

39:                                               ; preds = %33, %27
  %40 = load i64, i64* %9, align 8
  %41 = call i32 @user_access_restore(i64 %40)
  ret void
}

declare dso_local i64 @user_access_save(...) #1

declare dso_local i32 @trace_likely_condition(%struct.ftrace_likely_data*, i32, i32) #1

declare dso_local i32 @user_access_restore(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
