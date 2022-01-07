; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_panic.c___warn.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_panic.c___warn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.pt_regs = type { i32 }
%struct.warn_args = type { i32, i32 }

@.str = private unnamed_addr constant [39 x i8] c"WARNING: CPU: %d PID: %d at %s:%d %pS\0A\00", align 1
@current = common dso_local global %struct.TYPE_3__* null, align 8
@.str.1 = private unnamed_addr constant [33 x i8] c"WARNING: CPU: %d PID: %d at %pS\0A\00", align 1
@panic_on_warn = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [23 x i8] c"panic_on_warn set ...\0A\00", align 1
@LOCKDEP_STILL_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__warn(i8* %0, i32 %1, i8* %2, i32 %3, %struct.pt_regs* %4, %struct.warn_args* %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.pt_regs*, align 8
  %12 = alloca %struct.warn_args*, align 8
  store i8* %0, i8** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store %struct.pt_regs* %4, %struct.pt_regs** %11, align 8
  store %struct.warn_args* %5, %struct.warn_args** %12, align 8
  %13 = call i32 (...) @disable_trace_on_warning()
  %14 = load i8*, i8** %7, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %16, label %25

16:                                               ; preds = %6
  %17 = call i32 (...) @raw_smp_processor_id()
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** @current, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i8*, i8** %7, align 8
  %22 = load i32, i32* %8, align 4
  %23 = load i8*, i8** %9, align 8
  %24 = call i32 (i8*, i32, i32, i8*, ...) @pr_warn(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %17, i32 %20, i8* %21, i32 %22, i8* %23)
  br label %32

25:                                               ; preds = %6
  %26 = call i32 (...) @raw_smp_processor_id()
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** @current, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i8*, i8** %9, align 8
  %31 = call i32 (i8*, i32, i32, i8*, ...) @pr_warn(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %26, i32 %29, i8* %30)
  br label %32

32:                                               ; preds = %25, %16
  %33 = load %struct.warn_args*, %struct.warn_args** %12, align 8
  %34 = icmp ne %struct.warn_args* %33, null
  br i1 %34, label %35, label %43

35:                                               ; preds = %32
  %36 = load %struct.warn_args*, %struct.warn_args** %12, align 8
  %37 = getelementptr inbounds %struct.warn_args, %struct.warn_args* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.warn_args*, %struct.warn_args** %12, align 8
  %40 = getelementptr inbounds %struct.warn_args, %struct.warn_args* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @vprintk(i32 %38, i32 %41)
  br label %43

43:                                               ; preds = %35, %32
  %44 = load i64, i64* @panic_on_warn, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %43
  store i64 0, i64* @panic_on_warn, align 8
  %47 = call i32 @panic(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  br label %48

48:                                               ; preds = %46, %43
  %49 = call i32 (...) @print_modules()
  %50 = load %struct.pt_regs*, %struct.pt_regs** %11, align 8
  %51 = icmp ne %struct.pt_regs* %50, null
  br i1 %51, label %52, label %55

52:                                               ; preds = %48
  %53 = load %struct.pt_regs*, %struct.pt_regs** %11, align 8
  %54 = call i32 @show_regs(%struct.pt_regs* %53)
  br label %57

55:                                               ; preds = %48
  %56 = call i32 (...) @dump_stack()
  br label %57

57:                                               ; preds = %55, %52
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** @current, align 8
  %59 = call i32 @print_irqtrace_events(%struct.TYPE_3__* %58)
  %60 = call i32 (...) @print_oops_end_marker()
  %61 = load i32, i32* %10, align 4
  %62 = load i32, i32* @LOCKDEP_STILL_OK, align 4
  %63 = call i32 @add_taint(i32 %61, i32 %62)
  ret void
}

declare dso_local i32 @disable_trace_on_warning(...) #1

declare dso_local i32 @pr_warn(i8*, i32, i32, i8*, ...) #1

declare dso_local i32 @raw_smp_processor_id(...) #1

declare dso_local i32 @vprintk(i32, i32) #1

declare dso_local i32 @panic(i8*) #1

declare dso_local i32 @print_modules(...) #1

declare dso_local i32 @show_regs(%struct.pt_regs*) #1

declare dso_local i32 @dump_stack(...) #1

declare dso_local i32 @print_irqtrace_events(%struct.TYPE_3__*) #1

declare dso_local i32 @print_oops_end_marker(...) #1

declare dso_local i32 @add_taint(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
