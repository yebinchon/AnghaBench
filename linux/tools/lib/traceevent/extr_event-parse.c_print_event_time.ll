; ModuleID = '/home/carl/AnghaBench/linux/tools/lib/traceevent/extr_event-parse.c_print_event_time.c'
source_filename = "/home/carl/AnghaBench/linux/tools/lib/traceevent/extr_event-parse.c_print_event_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tep_handle = type { i32 }
%struct.trace_seq = type { i32 }
%struct.tep_event = type { i32 }
%struct.tep_record = type { i64 }

@.str = private unnamed_addr constant [13 x i8] c"%5llu.%0*llu\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"%12llu\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tep_handle*, %struct.trace_seq*, i8*, %struct.tep_event*, %struct.tep_record*)* @print_event_time to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_event_time(%struct.tep_handle* %0, %struct.trace_seq* %1, i8* %2, %struct.tep_event* %3, %struct.tep_record* %4) #0 {
  %6 = alloca %struct.tep_handle*, align 8
  %7 = alloca %struct.trace_seq*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.tep_event*, align 8
  %10 = alloca %struct.tep_record*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.tep_handle* %0, %struct.tep_handle** %6, align 8
  store %struct.trace_seq* %1, %struct.trace_seq** %7, align 8
  store i8* %2, i8** %8, align 8
  store %struct.tep_event* %3, %struct.tep_event** %9, align 8
  store %struct.tep_record* %4, %struct.tep_record** %10, align 8
  store i32 0, i32* %13, align 4
  store i32 0, i32* %15, align 4
  store i32 1, i32* %16, align 4
  %17 = load i8*, i8** %8, align 8
  %18 = getelementptr inbounds i8, i8* %17, i64 1
  %19 = load i8, i8* %18, align 1
  %20 = call i64 @isdigit(i8 signext %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %5
  %23 = load i8*, i8** %8, align 8
  %24 = getelementptr inbounds i8, i8* %23, i64 1
  %25 = call i32 @atoi(i8* %24)
  store i32 %25, i32* %13, align 4
  br label %26

26:                                               ; preds = %22, %5
  %27 = load i8*, i8** %8, align 8
  %28 = call i8* @strchr(i8* %27, i8 signext 46)
  store i8* %28, i8** %12, align 8
  %29 = load i8*, i8** %12, align 8
  %30 = icmp ne i8* %29, null
  br i1 %30, label %31, label %41

31:                                               ; preds = %26
  %32 = load i8*, i8** %12, align 8
  %33 = getelementptr inbounds i8, i8* %32, i64 1
  %34 = load i8, i8* %33, align 1
  %35 = call i64 @isdigit(i8 signext %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %31
  %38 = load i8*, i8** %12, align 8
  %39 = getelementptr inbounds i8, i8* %38, i64 1
  %40 = call i32 @atoi(i8* %39)
  store i32 %40, i32* %15, align 4
  br label %41

41:                                               ; preds = %37, %31, %26
  %42 = load %struct.tep_record*, %struct.tep_record** %10, align 8
  %43 = getelementptr inbounds %struct.tep_record, %struct.tep_record* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  store i64 %44, i64* %11, align 8
  %45 = load i32, i32* %15, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %57

47:                                               ; preds = %41
  %48 = load i32, i32* %15, align 4
  %49 = sdiv i32 %48, 2
  %50 = sext i32 %49 to i64
  %51 = load i64, i64* %11, align 8
  %52 = add i64 %51, %50
  store i64 %52, i64* %11, align 8
  %53 = load i32, i32* %15, align 4
  %54 = sext i32 %53 to i64
  %55 = load i64, i64* %11, align 8
  %56 = udiv i64 %55, %54
  store i64 %56, i64* %11, align 8
  br label %57

57:                                               ; preds = %47, %41
  %58 = load i32, i32* %13, align 4
  store i32 %58, i32* %14, align 4
  br label %59

59:                                               ; preds = %63, %57
  %60 = load i32, i32* %14, align 4
  %61 = add nsw i32 %60, -1
  store i32 %61, i32* %14, align 4
  %62 = icmp ne i32 %60, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %59
  %64 = load i32, i32* %16, align 4
  %65 = mul nsw i32 %64, 10
  store i32 %65, i32* %16, align 4
  br label %59

66:                                               ; preds = %59
  %67 = load i32, i32* %16, align 4
  %68 = icmp sgt i32 %67, 1
  br i1 %68, label %69, label %86

69:                                               ; preds = %66
  %70 = load i32, i32* %16, align 4
  %71 = sext i32 %70 to i64
  %72 = load i64, i64* %11, align 8
  %73 = icmp ult i64 %71, %72
  br i1 %73, label %74, label %86

74:                                               ; preds = %69
  %75 = load %struct.trace_seq*, %struct.trace_seq** %7, align 8
  %76 = load i64, i64* %11, align 8
  %77 = load i32, i32* %16, align 4
  %78 = sext i32 %77 to i64
  %79 = udiv i64 %76, %78
  %80 = load i32, i32* %13, align 4
  %81 = load i64, i64* %11, align 8
  %82 = load i32, i32* %16, align 4
  %83 = sext i32 %82 to i64
  %84 = urem i64 %81, %83
  %85 = call i32 (%struct.trace_seq*, i8*, i64, ...) @trace_seq_printf(%struct.trace_seq* %75, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i64 %79, i32 %80, i64 %84)
  br label %90

86:                                               ; preds = %69, %66
  %87 = load %struct.trace_seq*, %struct.trace_seq** %7, align 8
  %88 = load i64, i64* %11, align 8
  %89 = call i32 (%struct.trace_seq*, i8*, i64, ...) @trace_seq_printf(%struct.trace_seq* %87, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i64 %88)
  br label %90

90:                                               ; preds = %86, %74
  ret void
}

declare dso_local i64 @isdigit(i8 signext) #1

declare dso_local i32 @atoi(i8*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @trace_seq_printf(%struct.trace_seq*, i8*, i64, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
