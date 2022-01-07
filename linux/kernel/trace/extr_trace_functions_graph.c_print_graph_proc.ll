; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_trace_functions_graph.c_print_graph_proc.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_trace_functions_graph.c_print_graph_proc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trace_seq = type { i32 }

@TASK_COMM_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@TRACE_GRAPH_PROCINFO_LENGTH = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"%s-%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.trace_seq*, i32)* @print_graph_proc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_graph_proc(%struct.trace_seq* %0, i32 %1) #0 {
  %3 = alloca %struct.trace_seq*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca [11 x i8], align 1
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.trace_seq* %0, %struct.trace_seq** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = load i32, i32* @TASK_COMM_LEN, align 4
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %5, align 8
  %14 = alloca i8, i64 %12, align 16
  store i64 %12, i64* %6, align 8
  store i32 0, i32* %8, align 4
  %15 = load i32, i32* %4, align 4
  %16 = call i32 @trace_find_cmdline(i32 %15, i8* %14)
  %17 = getelementptr inbounds i8, i8* %14, i64 7
  store i8 0, i8* %17, align 1
  %18 = getelementptr inbounds [11 x i8], [11 x i8]* %7, i64 0, i64 0
  %19 = load i32, i32* %4, align 4
  %20 = call i32 @sprintf(i8* %18, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %19)
  %21 = call i32 @strlen(i8* %14)
  %22 = getelementptr inbounds [11 x i8], [11 x i8]* %7, i64 0, i64 0
  %23 = call i32 @strlen(i8* %22)
  %24 = add nsw i32 %21, %23
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %9, align 4
  %26 = load i32, i32* %9, align 4
  %27 = load i32, i32* @TRACE_GRAPH_PROCINFO_LENGTH, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %33

29:                                               ; preds = %2
  %30 = load i32, i32* @TRACE_GRAPH_PROCINFO_LENGTH, align 4
  %31 = load i32, i32* %9, align 4
  %32 = sub nsw i32 %30, %31
  store i32 %32, i32* %8, align 4
  br label %33

33:                                               ; preds = %29, %2
  store i32 0, i32* %10, align 4
  br label %34

34:                                               ; preds = %42, %33
  %35 = load i32, i32* %10, align 4
  %36 = load i32, i32* %8, align 4
  %37 = sdiv i32 %36, 2
  %38 = icmp slt i32 %35, %37
  br i1 %38, label %39, label %45

39:                                               ; preds = %34
  %40 = load %struct.trace_seq*, %struct.trace_seq** %3, align 8
  %41 = call i32 @trace_seq_putc(%struct.trace_seq* %40, i8 signext 32)
  br label %42

42:                                               ; preds = %39
  %43 = load i32, i32* %10, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %10, align 4
  br label %34

45:                                               ; preds = %34
  %46 = load %struct.trace_seq*, %struct.trace_seq** %3, align 8
  %47 = getelementptr inbounds [11 x i8], [11 x i8]* %7, i64 0, i64 0
  %48 = call i32 @trace_seq_printf(%struct.trace_seq* %46, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* %14, i8* %47)
  store i32 0, i32* %10, align 4
  br label %49

49:                                               ; preds = %59, %45
  %50 = load i32, i32* %10, align 4
  %51 = load i32, i32* %8, align 4
  %52 = load i32, i32* %8, align 4
  %53 = sdiv i32 %52, 2
  %54 = sub nsw i32 %51, %53
  %55 = icmp slt i32 %50, %54
  br i1 %55, label %56, label %62

56:                                               ; preds = %49
  %57 = load %struct.trace_seq*, %struct.trace_seq** %3, align 8
  %58 = call i32 @trace_seq_putc(%struct.trace_seq* %57, i8 signext 32)
  br label %59

59:                                               ; preds = %56
  %60 = load i32, i32* %10, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %10, align 4
  br label %49

62:                                               ; preds = %49
  %63 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %63)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @trace_find_cmdline(i32, i8*) #2

declare dso_local i32 @sprintf(i8*, i8*, i32) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i32 @trace_seq_putc(%struct.trace_seq*, i8 signext) #2

declare dso_local i32 @trace_seq_printf(%struct.trace_seq*, i8*, i8*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
