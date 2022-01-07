; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/extr_builtin-trace.c_trace__symbols_init.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/extr_builtin-trace.c_trace__symbols_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trace = type { %struct.TYPE_3__, i32, i32* }
%struct.TYPE_3__ = type { i32 }
%struct.evlist = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@trace__machine__resolve_kernel_addr = common dso_local global i32 0, align 4
@trace__tool_process = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.trace*, %struct.evlist*)* @trace__symbols_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @trace__symbols_init(%struct.trace* %0, %struct.evlist* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.trace*, align 8
  %5 = alloca %struct.evlist*, align 8
  %6 = alloca i32, align 4
  store %struct.trace* %0, %struct.trace** %4, align 8
  store %struct.evlist* %1, %struct.evlist** %5, align 8
  %7 = call i32 @symbol__init(i32* null)
  store i32 %7, i32* %6, align 4
  %8 = load i32, i32* %6, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %2
  %11 = load i32, i32* %6, align 4
  store i32 %11, i32* %3, align 4
  br label %54

12:                                               ; preds = %2
  %13 = call i32* (...) @machine__new_host()
  %14 = load %struct.trace*, %struct.trace** %4, align 8
  %15 = getelementptr inbounds %struct.trace, %struct.trace* %14, i32 0, i32 2
  store i32* %13, i32** %15, align 8
  %16 = load %struct.trace*, %struct.trace** %4, align 8
  %17 = getelementptr inbounds %struct.trace, %struct.trace* %16, i32 0, i32 2
  %18 = load i32*, i32** %17, align 8
  %19 = icmp eq i32* %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %12
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %54

23:                                               ; preds = %12
  %24 = load %struct.trace*, %struct.trace** %4, align 8
  %25 = getelementptr inbounds %struct.trace, %struct.trace* %24, i32 0, i32 2
  %26 = load i32*, i32** %25, align 8
  %27 = load i32, i32* @trace__machine__resolve_kernel_addr, align 4
  %28 = call i32 @trace_event__register_resolver(i32* %26, i32 %27)
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* %6, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %23
  br label %47

32:                                               ; preds = %23
  %33 = load %struct.trace*, %struct.trace** %4, align 8
  %34 = getelementptr inbounds %struct.trace, %struct.trace* %33, i32 0, i32 2
  %35 = load i32*, i32** %34, align 8
  %36 = load %struct.trace*, %struct.trace** %4, align 8
  %37 = getelementptr inbounds %struct.trace, %struct.trace* %36, i32 0, i32 1
  %38 = load %struct.trace*, %struct.trace** %4, align 8
  %39 = getelementptr inbounds %struct.trace, %struct.trace* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load %struct.evlist*, %struct.evlist** %5, align 8
  %42 = getelementptr inbounds %struct.evlist, %struct.evlist* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @trace__tool_process, align 4
  %46 = call i32 @__machine__synthesize_threads(i32* %35, i32* %37, i32* %40, i32 %44, i32 %45, i32 0, i32 1)
  store i32 %46, i32* %6, align 4
  br label %47

47:                                               ; preds = %32, %31
  %48 = load i32, i32* %6, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %47
  %51 = call i32 (...) @symbol__exit()
  br label %52

52:                                               ; preds = %50, %47
  %53 = load i32, i32* %6, align 4
  store i32 %53, i32* %3, align 4
  br label %54

54:                                               ; preds = %52, %20, %10
  %55 = load i32, i32* %3, align 4
  ret i32 %55
}

declare dso_local i32 @symbol__init(i32*) #1

declare dso_local i32* @machine__new_host(...) #1

declare dso_local i32 @trace_event__register_resolver(i32*, i32) #1

declare dso_local i32 @__machine__synthesize_threads(i32*, i32*, i32*, i32, i32, i32, i32) #1

declare dso_local i32 @symbol__exit(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
