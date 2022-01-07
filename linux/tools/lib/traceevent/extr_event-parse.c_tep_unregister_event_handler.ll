; ModuleID = '/home/carl/AnghaBench/linux/tools/lib/traceevent/extr_event-parse.c_tep_unregister_event_handler.c'
source_filename = "/home/carl/AnghaBench/linux/tools/lib/traceevent/extr_event-parse.c_tep_unregister_event_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tep_handle = type { %struct.event_handler* }
%struct.event_handler = type { %struct.event_handler* }
%struct.tep_event = type { i8*, i32*, i32, i32, i32 }

@.str = private unnamed_addr constant [79 x i8] c"removing override handler for event (%d) %s:%s. Going back to default handler.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tep_unregister_event_handler(%struct.tep_handle* %0, i32 %1, i8* %2, i8* %3, i32* %4, i8* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.tep_handle*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca %struct.tep_event*, align 8
  %15 = alloca %struct.event_handler*, align 8
  %16 = alloca %struct.event_handler**, align 8
  store %struct.tep_handle* %0, %struct.tep_handle** %8, align 8
  store i32 %1, i32* %9, align 4
  store i8* %2, i8** %10, align 8
  store i8* %3, i8** %11, align 8
  store i32* %4, i32** %12, align 8
  store i8* %5, i8** %13, align 8
  %17 = load %struct.tep_handle*, %struct.tep_handle** %8, align 8
  %18 = load i32, i32* %9, align 4
  %19 = load i8*, i8** %10, align 8
  %20 = load i8*, i8** %11, align 8
  %21 = call %struct.tep_event* @search_event(%struct.tep_handle* %17, i32 %18, i8* %19, i8* %20)
  store %struct.tep_event* %21, %struct.tep_event** %14, align 8
  %22 = load %struct.tep_event*, %struct.tep_event** %14, align 8
  %23 = icmp eq %struct.tep_event* %22, null
  br i1 %23, label %24, label %25

24:                                               ; preds = %6
  br label %53

25:                                               ; preds = %6
  %26 = load %struct.tep_event*, %struct.tep_event** %14, align 8
  %27 = getelementptr inbounds %struct.tep_event, %struct.tep_event* %26, i32 0, i32 1
  %28 = load i32*, i32** %27, align 8
  %29 = load i32*, i32** %12, align 8
  %30 = icmp eq i32* %28, %29
  br i1 %30, label %31, label %52

31:                                               ; preds = %25
  %32 = load %struct.tep_event*, %struct.tep_event** %14, align 8
  %33 = getelementptr inbounds %struct.tep_event, %struct.tep_event* %32, i32 0, i32 0
  %34 = load i8*, i8** %33, align 8
  %35 = load i8*, i8** %13, align 8
  %36 = icmp eq i8* %34, %35
  br i1 %36, label %37, label %52

37:                                               ; preds = %31
  %38 = load %struct.tep_event*, %struct.tep_event** %14, align 8
  %39 = getelementptr inbounds %struct.tep_event, %struct.tep_event* %38, i32 0, i32 4
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.tep_event*, %struct.tep_event** %14, align 8
  %42 = getelementptr inbounds %struct.tep_event, %struct.tep_event* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.tep_event*, %struct.tep_event** %14, align 8
  %45 = getelementptr inbounds %struct.tep_event, %struct.tep_event* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @pr_stat(i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str, i64 0, i64 0), i32 %40, i32 %43, i32 %46)
  %48 = load %struct.tep_event*, %struct.tep_event** %14, align 8
  %49 = getelementptr inbounds %struct.tep_event, %struct.tep_event* %48, i32 0, i32 1
  store i32* null, i32** %49, align 8
  %50 = load %struct.tep_event*, %struct.tep_event** %14, align 8
  %51 = getelementptr inbounds %struct.tep_event, %struct.tep_event* %50, i32 0, i32 0
  store i8* null, i8** %51, align 8
  store i32 0, i32* %7, align 4
  br label %89

52:                                               ; preds = %31, %25
  br label %53

53:                                               ; preds = %52, %24
  %54 = load %struct.tep_handle*, %struct.tep_handle** %8, align 8
  %55 = getelementptr inbounds %struct.tep_handle, %struct.tep_handle* %54, i32 0, i32 0
  store %struct.event_handler** %55, %struct.event_handler*** %16, align 8
  br label %56

56:                                               ; preds = %73, %53
  %57 = load %struct.event_handler**, %struct.event_handler*** %16, align 8
  %58 = load %struct.event_handler*, %struct.event_handler** %57, align 8
  %59 = icmp ne %struct.event_handler* %58, null
  br i1 %59, label %60, label %77

60:                                               ; preds = %56
  %61 = load %struct.event_handler**, %struct.event_handler*** %16, align 8
  %62 = load %struct.event_handler*, %struct.event_handler** %61, align 8
  store %struct.event_handler* %62, %struct.event_handler** %15, align 8
  %63 = load %struct.event_handler*, %struct.event_handler** %15, align 8
  %64 = load i32, i32* %9, align 4
  %65 = load i8*, i8** %10, align 8
  %66 = load i8*, i8** %11, align 8
  %67 = load i32*, i32** %12, align 8
  %68 = load i8*, i8** %13, align 8
  %69 = call i64 @handle_matches(%struct.event_handler* %63, i32 %64, i8* %65, i8* %66, i32* %67, i8* %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %60
  br label %77

72:                                               ; preds = %60
  br label %73

73:                                               ; preds = %72
  %74 = load %struct.event_handler**, %struct.event_handler*** %16, align 8
  %75 = load %struct.event_handler*, %struct.event_handler** %74, align 8
  %76 = getelementptr inbounds %struct.event_handler, %struct.event_handler* %75, i32 0, i32 0
  store %struct.event_handler** %76, %struct.event_handler*** %16, align 8
  br label %56

77:                                               ; preds = %71, %56
  %78 = load %struct.event_handler**, %struct.event_handler*** %16, align 8
  %79 = load %struct.event_handler*, %struct.event_handler** %78, align 8
  %80 = icmp ne %struct.event_handler* %79, null
  br i1 %80, label %82, label %81

81:                                               ; preds = %77
  store i32 -1, i32* %7, align 4
  br label %89

82:                                               ; preds = %77
  %83 = load %struct.event_handler*, %struct.event_handler** %15, align 8
  %84 = getelementptr inbounds %struct.event_handler, %struct.event_handler* %83, i32 0, i32 0
  %85 = load %struct.event_handler*, %struct.event_handler** %84, align 8
  %86 = load %struct.event_handler**, %struct.event_handler*** %16, align 8
  store %struct.event_handler* %85, %struct.event_handler** %86, align 8
  %87 = load %struct.event_handler*, %struct.event_handler** %15, align 8
  %88 = call i32 @free_handler(%struct.event_handler* %87)
  store i32 0, i32* %7, align 4
  br label %89

89:                                               ; preds = %82, %81, %37
  %90 = load i32, i32* %7, align 4
  ret i32 %90
}

declare dso_local %struct.tep_event* @search_event(%struct.tep_handle*, i32, i8*, i8*) #1

declare dso_local i32 @pr_stat(i8*, i32, i32, i32) #1

declare dso_local i64 @handle_matches(%struct.event_handler*, i32, i8*, i8*, i32*, i8*) #1

declare dso_local i32 @free_handler(%struct.event_handler*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
