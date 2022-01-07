; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_trace_events_hist.c_track_data_parse.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_trace_events_hist.c_track_data_parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.action_data = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.hist_trigger_data = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c")\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.action_data* (%struct.hist_trigger_data*, i8*, i32)* @track_data_parse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.action_data* @track_data_parse(%struct.hist_trigger_data* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.action_data*, align 8
  %5 = alloca %struct.hist_trigger_data*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.action_data*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  store %struct.hist_trigger_data* %0, %struct.hist_trigger_data** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load i32, i32* @EINVAL, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %9, align 4
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call %struct.action_data* @kzalloc(i32 4, i32 %13)
  store %struct.action_data* %14, %struct.action_data** %8, align 8
  %15 = load %struct.action_data*, %struct.action_data** %8, align 8
  %16 = icmp ne %struct.action_data* %15, null
  br i1 %16, label %21, label %17

17:                                               ; preds = %3
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  %20 = call %struct.action_data* @ERR_PTR(i32 %19)
  store %struct.action_data* %20, %struct.action_data** %4, align 8
  br label %68

21:                                               ; preds = %3
  %22 = call i8* @strsep(i8** %6, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i8* %22, i8** %10, align 8
  %23 = load i8*, i8** %10, align 8
  %24 = icmp ne i8* %23, null
  br i1 %24, label %25, label %28

25:                                               ; preds = %21
  %26 = load i8*, i8** %6, align 8
  %27 = icmp ne i8* %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %25, %21
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %9, align 4
  br label %62

31:                                               ; preds = %25
  %32 = load i8*, i8** %10, align 8
  %33 = load i32, i32* @GFP_KERNEL, align 4
  %34 = call i32 @kstrdup(i8* %32, i32 %33)
  %35 = load %struct.action_data*, %struct.action_data** %8, align 8
  %36 = getelementptr inbounds %struct.action_data, %struct.action_data* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  store i32 %34, i32* %37, align 4
  %38 = load %struct.action_data*, %struct.action_data** %8, align 8
  %39 = getelementptr inbounds %struct.action_data, %struct.action_data* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %46, label %43

43:                                               ; preds = %31
  %44 = load i32, i32* @ENOMEM, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %9, align 4
  br label %62

46:                                               ; preds = %31
  %47 = load %struct.hist_trigger_data*, %struct.hist_trigger_data** %5, align 8
  %48 = getelementptr inbounds %struct.hist_trigger_data, %struct.hist_trigger_data* %47, i32 0, i32 0
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i8*, i8** %6, align 8
  %53 = load %struct.action_data*, %struct.action_data** %8, align 8
  %54 = load i32, i32* %7, align 4
  %55 = call i32 @action_parse(i32 %51, i8* %52, %struct.action_data* %53, i32 %54)
  store i32 %55, i32* %9, align 4
  %56 = load i32, i32* %9, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %46
  br label %62

59:                                               ; preds = %46
  br label %60

60:                                               ; preds = %62, %59
  %61 = load %struct.action_data*, %struct.action_data** %8, align 8
  store %struct.action_data* %61, %struct.action_data** %4, align 8
  br label %68

62:                                               ; preds = %58, %43, %28
  %63 = load %struct.hist_trigger_data*, %struct.hist_trigger_data** %5, align 8
  %64 = load %struct.action_data*, %struct.action_data** %8, align 8
  %65 = call i32 @track_data_destroy(%struct.hist_trigger_data* %63, %struct.action_data* %64)
  %66 = load i32, i32* %9, align 4
  %67 = call %struct.action_data* @ERR_PTR(i32 %66)
  store %struct.action_data* %67, %struct.action_data** %8, align 8
  br label %60

68:                                               ; preds = %60, %17
  %69 = load %struct.action_data*, %struct.action_data** %4, align 8
  ret %struct.action_data* %69
}

declare dso_local %struct.action_data* @kzalloc(i32, i32) #1

declare dso_local %struct.action_data* @ERR_PTR(i32) #1

declare dso_local i8* @strsep(i8**, i8*) #1

declare dso_local i32 @kstrdup(i8*, i32) #1

declare dso_local i32 @action_parse(i32, i8*, %struct.action_data*, i32) #1

declare dso_local i32 @track_data_destroy(%struct.hist_trigger_data*, %struct.action_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
