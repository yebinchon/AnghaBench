; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_trace_uprobe.c_trace_uprobe_match.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_trace_uprobe.c_trace_uprobe_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dyn_event = type { i32 }
%struct.trace_uprobe = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i32, i8**, %struct.dyn_event*)* @trace_uprobe_match to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @trace_uprobe_match(i8* %0, i8* %1, i32 %2, i8** %3, %struct.dyn_event* %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8**, align 8
  %10 = alloca %struct.dyn_event*, align 8
  %11 = alloca %struct.trace_uprobe*, align 8
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8** %3, i8*** %9, align 8
  store %struct.dyn_event* %4, %struct.dyn_event** %10, align 8
  %12 = load %struct.dyn_event*, %struct.dyn_event** %10, align 8
  %13 = call %struct.trace_uprobe* @to_trace_uprobe(%struct.dyn_event* %12)
  store %struct.trace_uprobe* %13, %struct.trace_uprobe** %11, align 8
  %14 = load %struct.trace_uprobe*, %struct.trace_uprobe** %11, align 8
  %15 = getelementptr inbounds %struct.trace_uprobe, %struct.trace_uprobe* %14, i32 0, i32 0
  %16 = call i32 @trace_probe_name(i32* %15)
  %17 = load i8*, i8** %7, align 8
  %18 = call i64 @strcmp(i32 %16, i8* %17)
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %36

20:                                               ; preds = %5
  %21 = load i8*, i8** %6, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %23, label %30

23:                                               ; preds = %20
  %24 = load %struct.trace_uprobe*, %struct.trace_uprobe** %11, align 8
  %25 = getelementptr inbounds %struct.trace_uprobe, %struct.trace_uprobe* %24, i32 0, i32 0
  %26 = call i32 @trace_probe_group_name(i32* %25)
  %27 = load i8*, i8** %6, align 8
  %28 = call i64 @strcmp(i32 %26, i8* %27)
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %23, %20
  %31 = load %struct.trace_uprobe*, %struct.trace_uprobe** %11, align 8
  %32 = load i32, i32* %8, align 4
  %33 = load i8**, i8*** %9, align 8
  %34 = call i64 @trace_uprobe_match_command_head(%struct.trace_uprobe* %31, i32 %32, i8** %33)
  %35 = icmp ne i64 %34, 0
  br label %36

36:                                               ; preds = %30, %23, %5
  %37 = phi i1 [ false, %23 ], [ false, %5 ], [ %35, %30 ]
  %38 = zext i1 %37 to i32
  ret i32 %38
}

declare dso_local %struct.trace_uprobe* @to_trace_uprobe(%struct.dyn_event*) #1

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local i32 @trace_probe_name(i32*) #1

declare dso_local i32 @trace_probe_group_name(i32*) #1

declare dso_local i64 @trace_uprobe_match_command_head(%struct.trace_uprobe*, i32, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
