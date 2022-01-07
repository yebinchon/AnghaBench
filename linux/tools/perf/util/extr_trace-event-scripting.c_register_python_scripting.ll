; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_trace-event-scripting.c_register_python_scripting.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_trace-event-scripting.c_register_python_scripting.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scripting_ops = type { i32 }

@scripting_context = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [7 x i8] c"Python\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"py\00", align 1
@.str.2 = private unnamed_addr constant [57 x i8] c"Error registering Python script extension: disabling it\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.scripting_ops*)* @register_python_scripting to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @register_python_scripting(%struct.scripting_ops* %0) #0 {
  %2 = alloca %struct.scripting_ops*, align 8
  store %struct.scripting_ops* %0, %struct.scripting_ops** %2, align 8
  %3 = load i32*, i32** @scripting_context, align 8
  %4 = icmp eq i32* %3, null
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  %6 = call i32* @malloc(i32 4)
  store i32* %6, i32** @scripting_context, align 8
  br label %7

7:                                                ; preds = %5, %1
  %8 = load i32*, i32** @scripting_context, align 8
  %9 = icmp eq i32* %8, null
  br i1 %9, label %18, label %10

10:                                               ; preds = %7
  %11 = load %struct.scripting_ops*, %struct.scripting_ops** %2, align 8
  %12 = call i64 @script_spec_register(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), %struct.scripting_ops* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %18, label %14

14:                                               ; preds = %10
  %15 = load %struct.scripting_ops*, %struct.scripting_ops** %2, align 8
  %16 = call i64 @script_spec_register(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), %struct.scripting_ops* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %14, %10, %7
  %19 = call i32 @pr_err(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.2, i64 0, i64 0))
  %20 = call i32 @zfree(i32** @scripting_context)
  br label %21

21:                                               ; preds = %18, %14
  ret void
}

declare dso_local i32* @malloc(i32) #1

declare dso_local i64 @script_spec_register(i8*, %struct.scripting_ops*) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @zfree(i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
