; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_trace_probe.c_trace_probe_init.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_trace_probe.c_trace_probe_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trace_probe = type { %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__, i32, i32 }
%struct.TYPE_3__ = type { i8*, i32 }
%struct.trace_event_call = type { i8*, %struct.TYPE_3__* }

@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @trace_probe_init(%struct.trace_probe* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.trace_probe*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.trace_event_call*, align 8
  %9 = alloca i32, align 4
  store %struct.trace_probe* %0, %struct.trace_probe** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 0, i32* %9, align 4
  %10 = load i8*, i8** %6, align 8
  %11 = icmp ne i8* %10, null
  br i1 %11, label %12, label %15

12:                                               ; preds = %3
  %13 = load i8*, i8** %7, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %12, %3
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %4, align 4
  br label %101

18:                                               ; preds = %12
  %19 = load i32, i32* @GFP_KERNEL, align 4
  %20 = call %struct.TYPE_4__* @kzalloc(i32 4, i32 %19)
  %21 = load %struct.trace_probe*, %struct.trace_probe** %5, align 8
  %22 = getelementptr inbounds %struct.trace_probe, %struct.trace_probe* %21, i32 0, i32 0
  store %struct.TYPE_4__* %20, %struct.TYPE_4__** %22, align 8
  %23 = load %struct.trace_probe*, %struct.trace_probe** %5, align 8
  %24 = getelementptr inbounds %struct.trace_probe, %struct.trace_probe* %23, i32 0, i32 0
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = icmp ne %struct.TYPE_4__* %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %18
  %28 = load i32, i32* @ENOMEM, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %4, align 4
  br label %101

30:                                               ; preds = %18
  %31 = load %struct.trace_probe*, %struct.trace_probe** %5, align 8
  %32 = getelementptr inbounds %struct.trace_probe, %struct.trace_probe* %31, i32 0, i32 0
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 2
  %35 = call i32 @INIT_LIST_HEAD(i32* %34)
  %36 = load %struct.trace_probe*, %struct.trace_probe** %5, align 8
  %37 = getelementptr inbounds %struct.trace_probe, %struct.trace_probe* %36, i32 0, i32 0
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 1
  %41 = call i32 @INIT_LIST_HEAD(i32* %40)
  %42 = load %struct.trace_probe*, %struct.trace_probe** %5, align 8
  %43 = getelementptr inbounds %struct.trace_probe, %struct.trace_probe* %42, i32 0, i32 0
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 1
  %46 = call i32 @INIT_LIST_HEAD(i32* %45)
  %47 = load %struct.trace_probe*, %struct.trace_probe** %5, align 8
  %48 = getelementptr inbounds %struct.trace_probe, %struct.trace_probe* %47, i32 0, i32 1
  %49 = call i32 @INIT_LIST_HEAD(i32* %48)
  %50 = load %struct.trace_probe*, %struct.trace_probe** %5, align 8
  %51 = getelementptr inbounds %struct.trace_probe, %struct.trace_probe* %50, i32 0, i32 0
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 1
  %54 = load %struct.trace_probe*, %struct.trace_probe** %5, align 8
  %55 = getelementptr inbounds %struct.trace_probe, %struct.trace_probe* %54, i32 0, i32 1
  %56 = call i32 @list_add(i32* %53, i32* %55)
  %57 = load %struct.trace_probe*, %struct.trace_probe** %5, align 8
  %58 = call %struct.trace_event_call* @trace_probe_event_call(%struct.trace_probe* %57)
  store %struct.trace_event_call* %58, %struct.trace_event_call** %8, align 8
  %59 = load %struct.trace_probe*, %struct.trace_probe** %5, align 8
  %60 = getelementptr inbounds %struct.trace_probe, %struct.trace_probe* %59, i32 0, i32 0
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = load %struct.trace_event_call*, %struct.trace_event_call** %8, align 8
  %64 = getelementptr inbounds %struct.trace_event_call, %struct.trace_event_call* %63, i32 0, i32 1
  store %struct.TYPE_3__* %62, %struct.TYPE_3__** %64, align 8
  %65 = load i8*, i8** %6, align 8
  %66 = load i32, i32* @GFP_KERNEL, align 4
  %67 = call i8* @kstrdup(i8* %65, i32 %66)
  %68 = load %struct.trace_event_call*, %struct.trace_event_call** %8, align 8
  %69 = getelementptr inbounds %struct.trace_event_call, %struct.trace_event_call* %68, i32 0, i32 0
  store i8* %67, i8** %69, align 8
  %70 = load %struct.trace_event_call*, %struct.trace_event_call** %8, align 8
  %71 = getelementptr inbounds %struct.trace_event_call, %struct.trace_event_call* %70, i32 0, i32 0
  %72 = load i8*, i8** %71, align 8
  %73 = icmp ne i8* %72, null
  br i1 %73, label %77, label %74

74:                                               ; preds = %30
  %75 = load i32, i32* @ENOMEM, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %9, align 4
  br label %97

77:                                               ; preds = %30
  %78 = load i8*, i8** %7, align 8
  %79 = load i32, i32* @GFP_KERNEL, align 4
  %80 = call i8* @kstrdup(i8* %78, i32 %79)
  %81 = load %struct.trace_probe*, %struct.trace_probe** %5, align 8
  %82 = getelementptr inbounds %struct.trace_probe, %struct.trace_probe* %81, i32 0, i32 0
  %83 = load %struct.TYPE_4__*, %struct.TYPE_4__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i32 0, i32 0
  store i8* %80, i8** %85, align 8
  %86 = load %struct.trace_probe*, %struct.trace_probe** %5, align 8
  %87 = getelementptr inbounds %struct.trace_probe, %struct.trace_probe* %86, i32 0, i32 0
  %88 = load %struct.TYPE_4__*, %struct.TYPE_4__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 0
  %91 = load i8*, i8** %90, align 8
  %92 = icmp ne i8* %91, null
  br i1 %92, label %96, label %93

93:                                               ; preds = %77
  %94 = load i32, i32* @ENOMEM, align 4
  %95 = sub nsw i32 0, %94
  store i32 %95, i32* %9, align 4
  br label %97

96:                                               ; preds = %77
  store i32 0, i32* %4, align 4
  br label %101

97:                                               ; preds = %93, %74
  %98 = load %struct.trace_probe*, %struct.trace_probe** %5, align 8
  %99 = call i32 @trace_probe_cleanup(%struct.trace_probe* %98)
  %100 = load i32, i32* %9, align 4
  store i32 %100, i32* %4, align 4
  br label %101

101:                                              ; preds = %97, %96, %27, %15
  %102 = load i32, i32* %4, align 4
  ret i32 %102
}

declare dso_local %struct.TYPE_4__* @kzalloc(i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local %struct.trace_event_call* @trace_probe_event_call(%struct.trace_probe*) #1

declare dso_local i8* @kstrdup(i8*, i32) #1

declare dso_local i32 @trace_probe_cleanup(%struct.trace_probe*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
