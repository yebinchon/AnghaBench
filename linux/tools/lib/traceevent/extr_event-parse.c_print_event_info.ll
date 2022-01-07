; ModuleID = '/home/carl/AnghaBench/linux/tools/lib/traceevent/extr_event-parse.c_print_event_info.c'
source_filename = "/home/carl/AnghaBench/linux/tools/lib/traceevent/extr_event-parse.c_print_event_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trace_seq = type { i32 }
%struct.tep_event = type { i32, i32 (%struct.trace_seq*, %struct.tep_record*, %struct.tep_event*, i32)*, i32 }
%struct.tep_record = type { i32, i32 }

@TEP_EVENT_FL_PRINTRAW = common dso_local global i32 0, align 4
@TEP_EVENT_FL_NOHANDLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.trace_seq*, i8*, i32, %struct.tep_event*, %struct.tep_record*)* @print_event_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_event_info(%struct.trace_seq* %0, i8* %1, i32 %2, %struct.tep_event* %3, %struct.tep_record* %4) #0 {
  %6 = alloca %struct.trace_seq*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.tep_event*, align 8
  %10 = alloca %struct.tep_record*, align 8
  %11 = alloca i32, align 4
  store %struct.trace_seq* %0, %struct.trace_seq** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.tep_event* %3, %struct.tep_event** %9, align 8
  store %struct.tep_record* %4, %struct.tep_record** %10, align 8
  store i32 1, i32* %11, align 4
  %12 = load i32, i32* %8, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %21, label %14

14:                                               ; preds = %5
  %15 = load %struct.tep_event*, %struct.tep_event** %9, align 8
  %16 = getelementptr inbounds %struct.tep_event, %struct.tep_event* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @TEP_EVENT_FL_PRINTRAW, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %31

21:                                               ; preds = %14, %5
  %22 = load %struct.trace_seq*, %struct.trace_seq** %6, align 8
  %23 = load %struct.tep_record*, %struct.tep_record** %10, align 8
  %24 = getelementptr inbounds %struct.tep_record, %struct.tep_record* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.tep_record*, %struct.tep_record** %10, align 8
  %27 = getelementptr inbounds %struct.tep_record, %struct.tep_record* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.tep_event*, %struct.tep_event** %9, align 8
  %30 = call i32 @tep_print_fields(%struct.trace_seq* %22, i32 %25, i32 %28, %struct.tep_event* %29)
  br label %68

31:                                               ; preds = %14
  %32 = load %struct.tep_event*, %struct.tep_event** %9, align 8
  %33 = getelementptr inbounds %struct.tep_event, %struct.tep_event* %32, i32 0, i32 1
  %34 = load i32 (%struct.trace_seq*, %struct.tep_record*, %struct.tep_event*, i32)*, i32 (%struct.trace_seq*, %struct.tep_record*, %struct.tep_event*, i32)** %33, align 8
  %35 = icmp ne i32 (%struct.trace_seq*, %struct.tep_record*, %struct.tep_event*, i32)* %34, null
  br i1 %35, label %36, label %54

36:                                               ; preds = %31
  %37 = load %struct.tep_event*, %struct.tep_event** %9, align 8
  %38 = getelementptr inbounds %struct.tep_event, %struct.tep_event* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @TEP_EVENT_FL_NOHANDLE, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %54, label %43

43:                                               ; preds = %36
  %44 = load %struct.tep_event*, %struct.tep_event** %9, align 8
  %45 = getelementptr inbounds %struct.tep_event, %struct.tep_event* %44, i32 0, i32 1
  %46 = load i32 (%struct.trace_seq*, %struct.tep_record*, %struct.tep_event*, i32)*, i32 (%struct.trace_seq*, %struct.tep_record*, %struct.tep_event*, i32)** %45, align 8
  %47 = load %struct.trace_seq*, %struct.trace_seq** %6, align 8
  %48 = load %struct.tep_record*, %struct.tep_record** %10, align 8
  %49 = load %struct.tep_event*, %struct.tep_event** %9, align 8
  %50 = load %struct.tep_event*, %struct.tep_event** %9, align 8
  %51 = getelementptr inbounds %struct.tep_event, %struct.tep_event* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = call i32 %46(%struct.trace_seq* %47, %struct.tep_record* %48, %struct.tep_event* %49, i32 %52)
  store i32 %53, i32* %11, align 4
  br label %54

54:                                               ; preds = %43, %36, %31
  %55 = load i32, i32* %11, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %67

57:                                               ; preds = %54
  %58 = load %struct.trace_seq*, %struct.trace_seq** %6, align 8
  %59 = load %struct.tep_record*, %struct.tep_record** %10, align 8
  %60 = getelementptr inbounds %struct.tep_record, %struct.tep_record* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.tep_record*, %struct.tep_record** %10, align 8
  %63 = getelementptr inbounds %struct.tep_record, %struct.tep_record* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.tep_event*, %struct.tep_event** %9, align 8
  %66 = call i32 @pretty_print(%struct.trace_seq* %58, i32 %61, i32 %64, %struct.tep_event* %65)
  br label %67

67:                                               ; preds = %57, %54
  br label %68

68:                                               ; preds = %67, %21
  %69 = load %struct.trace_seq*, %struct.trace_seq** %6, align 8
  %70 = call i32 @trace_seq_terminate(%struct.trace_seq* %69)
  ret void
}

declare dso_local i32 @tep_print_fields(%struct.trace_seq*, i32, i32, %struct.tep_event*) #1

declare dso_local i32 @pretty_print(%struct.trace_seq*, i32, i32, %struct.tep_event*) #1

declare dso_local i32 @trace_seq_terminate(%struct.trace_seq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
