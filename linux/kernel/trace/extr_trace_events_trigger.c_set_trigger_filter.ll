; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_trace_events_trigger.c_set_trigger_filter.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_trace_events_trigger.c_set_trigger_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.event_trigger_data = type { i32*, i32* }
%struct.trace_event_file = type { i32, i32 }
%struct.event_filter = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c" \09\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"if\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @set_trigger_filter(i8* %0, %struct.event_trigger_data* %1, %struct.trace_event_file* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.event_trigger_data*, align 8
  %6 = alloca %struct.trace_event_file*, align 8
  %7 = alloca %struct.event_trigger_data*, align 8
  %8 = alloca %struct.event_filter*, align 8
  %9 = alloca %struct.event_filter*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store %struct.event_trigger_data* %1, %struct.event_trigger_data** %5, align 8
  store %struct.trace_event_file* %2, %struct.trace_event_file** %6, align 8
  %12 = load %struct.event_trigger_data*, %struct.event_trigger_data** %5, align 8
  store %struct.event_trigger_data* %12, %struct.event_trigger_data** %7, align 8
  store %struct.event_filter* null, %struct.event_filter** %8, align 8
  %13 = load i32, i32* @EINVAL, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %10, align 4
  %15 = load i8*, i8** %4, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %3
  br label %41

18:                                               ; preds = %3
  %19 = call i8* @strsep(i8** %4, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i8* %19, i8** %11, align 8
  %20 = load i8*, i8** %11, align 8
  %21 = call i32 @strlen(i8* %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %18
  %24 = load i8*, i8** %11, align 8
  %25 = call i64 @strcmp(i8* %24, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %23, %18
  br label %88

28:                                               ; preds = %23
  %29 = load i8*, i8** %4, align 8
  %30 = icmp ne i8* %29, null
  br i1 %30, label %32, label %31

31:                                               ; preds = %28
  br label %88

32:                                               ; preds = %28
  %33 = load %struct.trace_event_file*, %struct.trace_event_file** %6, align 8
  %34 = getelementptr inbounds %struct.trace_event_file, %struct.trace_event_file* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.trace_event_file*, %struct.trace_event_file** %6, align 8
  %37 = getelementptr inbounds %struct.trace_event_file, %struct.trace_event_file* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i8*, i8** %4, align 8
  %40 = call i32 @create_event_filter(i32 %35, i32 %38, i8* %39, i32 0, %struct.event_filter** %8)
  store i32 %40, i32* %10, align 4
  br label %41

41:                                               ; preds = %32, %17
  %42 = load %struct.event_trigger_data*, %struct.event_trigger_data** %7, align 8
  %43 = getelementptr inbounds %struct.event_trigger_data, %struct.event_trigger_data* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = call %struct.event_filter* @rcu_access_pointer(i32* %44)
  store %struct.event_filter* %45, %struct.event_filter** %9, align 8
  %46 = load %struct.event_trigger_data*, %struct.event_trigger_data** %7, align 8
  %47 = getelementptr inbounds %struct.event_trigger_data, %struct.event_trigger_data* %46, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = load %struct.event_filter*, %struct.event_filter** %8, align 8
  %50 = call i32 @rcu_assign_pointer(i32* %48, %struct.event_filter* %49)
  %51 = load %struct.event_filter*, %struct.event_filter** %9, align 8
  %52 = icmp ne %struct.event_filter* %51, null
  br i1 %52, label %53, label %57

53:                                               ; preds = %41
  %54 = call i32 (...) @tracepoint_synchronize_unregister()
  %55 = load %struct.event_filter*, %struct.event_filter** %9, align 8
  %56 = call i32 @free_event_filter(%struct.event_filter* %55)
  br label %57

57:                                               ; preds = %53, %41
  %58 = load %struct.event_trigger_data*, %struct.event_trigger_data** %7, align 8
  %59 = getelementptr inbounds %struct.event_trigger_data, %struct.event_trigger_data* %58, i32 0, i32 1
  %60 = load i32*, i32** %59, align 8
  %61 = call i32 @kfree(i32* %60)
  %62 = load %struct.event_trigger_data*, %struct.event_trigger_data** %7, align 8
  %63 = getelementptr inbounds %struct.event_trigger_data, %struct.event_trigger_data* %62, i32 0, i32 1
  store i32* null, i32** %63, align 8
  %64 = load i8*, i8** %4, align 8
  %65 = icmp ne i8* %64, null
  br i1 %65, label %66, label %87

66:                                               ; preds = %57
  %67 = load i8*, i8** %4, align 8
  %68 = load i32, i32* @GFP_KERNEL, align 4
  %69 = call i32* @kstrdup(i8* %67, i32 %68)
  %70 = load %struct.event_trigger_data*, %struct.event_trigger_data** %7, align 8
  %71 = getelementptr inbounds %struct.event_trigger_data, %struct.event_trigger_data* %70, i32 0, i32 1
  store i32* %69, i32** %71, align 8
  %72 = load %struct.event_trigger_data*, %struct.event_trigger_data** %7, align 8
  %73 = getelementptr inbounds %struct.event_trigger_data, %struct.event_trigger_data* %72, i32 0, i32 1
  %74 = load i32*, i32** %73, align 8
  %75 = icmp ne i32* %74, null
  br i1 %75, label %86, label %76

76:                                               ; preds = %66
  %77 = load %struct.event_trigger_data*, %struct.event_trigger_data** %7, align 8
  %78 = getelementptr inbounds %struct.event_trigger_data, %struct.event_trigger_data* %77, i32 0, i32 0
  %79 = load i32*, i32** %78, align 8
  %80 = call %struct.event_filter* @rcu_access_pointer(i32* %79)
  %81 = call i32 @free_event_filter(%struct.event_filter* %80)
  %82 = load %struct.event_trigger_data*, %struct.event_trigger_data** %7, align 8
  %83 = getelementptr inbounds %struct.event_trigger_data, %struct.event_trigger_data* %82, i32 0, i32 0
  store i32* null, i32** %83, align 8
  %84 = load i32, i32* @ENOMEM, align 4
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %10, align 4
  br label %86

86:                                               ; preds = %76, %66
  br label %87

87:                                               ; preds = %86, %57
  br label %88

88:                                               ; preds = %87, %31, %27
  %89 = load i32, i32* %10, align 4
  ret i32 %89
}

declare dso_local i8* @strsep(i8**, i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @create_event_filter(i32, i32, i8*, i32, %struct.event_filter**) #1

declare dso_local %struct.event_filter* @rcu_access_pointer(i32*) #1

declare dso_local i32 @rcu_assign_pointer(i32*, %struct.event_filter*) #1

declare dso_local i32 @tracepoint_synchronize_unregister(...) #1

declare dso_local i32 @free_event_filter(%struct.event_filter*) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32* @kstrdup(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
