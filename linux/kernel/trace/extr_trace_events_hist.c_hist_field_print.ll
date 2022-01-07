; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_trace_events_hist.c_hist_field_print.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_trace_events_hist.c_hist_field_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i32 }
%struct.hist_field = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8* }

@.str = private unnamed_addr constant [4 x i8] c"%s=\00", align 1
@HIST_FIELD_FL_CPU = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"cpu\00", align 1
@HIST_FIELD_FL_VAR_REF = common dso_local global i32 0, align 4
@HIST_FIELD_FL_ALIAS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@HIST_FIELD_FL_TIMESTAMP = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [17 x i8] c"common_timestamp\00", align 1
@HIST_FIELD_FL_EXPR = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [4 x i8] c".%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.seq_file*, %struct.hist_field*)* @hist_field_print to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hist_field_print(%struct.seq_file* %0, %struct.hist_field* %1) #0 {
  %3 = alloca %struct.seq_file*, align 8
  %4 = alloca %struct.hist_field*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store %struct.seq_file* %0, %struct.seq_file** %3, align 8
  store %struct.hist_field* %1, %struct.hist_field** %4, align 8
  %7 = load %struct.hist_field*, %struct.hist_field** %4, align 8
  %8 = call i8* @hist_field_name(%struct.hist_field* %7, i32 0)
  store i8* %8, i8** %5, align 8
  %9 = load %struct.hist_field*, %struct.hist_field** %4, align 8
  %10 = getelementptr inbounds %struct.hist_field, %struct.hist_field* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i8*, i8** %11, align 8
  %13 = icmp ne i8* %12, null
  br i1 %13, label %14, label %21

14:                                               ; preds = %2
  %15 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %16 = load %struct.hist_field*, %struct.hist_field** %4, align 8
  %17 = getelementptr inbounds %struct.hist_field, %struct.hist_field* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i8*, i8** %18, align 8
  %20 = call i32 @seq_printf(%struct.seq_file* %15, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %19)
  br label %21

21:                                               ; preds = %14, %2
  %22 = load %struct.hist_field*, %struct.hist_field** %4, align 8
  %23 = getelementptr inbounds %struct.hist_field, %struct.hist_field* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @HIST_FIELD_FL_CPU, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %21
  %29 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %30 = call i32 @seq_puts(%struct.seq_file* %29, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  br label %67

31:                                               ; preds = %21
  %32 = load i8*, i8** %5, align 8
  %33 = icmp ne i8* %32, null
  br i1 %33, label %34, label %55

34:                                               ; preds = %31
  %35 = load %struct.hist_field*, %struct.hist_field** %4, align 8
  %36 = getelementptr inbounds %struct.hist_field, %struct.hist_field* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @HIST_FIELD_FL_VAR_REF, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %48, label %41

41:                                               ; preds = %34
  %42 = load %struct.hist_field*, %struct.hist_field** %4, align 8
  %43 = getelementptr inbounds %struct.hist_field, %struct.hist_field* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @HIST_FIELD_FL_ALIAS, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %41, %34
  %49 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %50 = call i32 @seq_putc(%struct.seq_file* %49, i8 signext 36)
  br label %51

51:                                               ; preds = %48, %41
  %52 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %53 = load i8*, i8** %5, align 8
  %54 = call i32 @seq_printf(%struct.seq_file* %52, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* %53)
  br label %66

55:                                               ; preds = %31
  %56 = load %struct.hist_field*, %struct.hist_field** %4, align 8
  %57 = getelementptr inbounds %struct.hist_field, %struct.hist_field* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* @HIST_FIELD_FL_TIMESTAMP, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %55
  %63 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %64 = call i32 @seq_puts(%struct.seq_file* %63, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0))
  br label %65

65:                                               ; preds = %62, %55
  br label %66

66:                                               ; preds = %65, %51
  br label %67

67:                                               ; preds = %66, %28
  %68 = load %struct.hist_field*, %struct.hist_field** %4, align 8
  %69 = getelementptr inbounds %struct.hist_field, %struct.hist_field* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %97

72:                                               ; preds = %67
  %73 = load %struct.hist_field*, %struct.hist_field** %4, align 8
  %74 = getelementptr inbounds %struct.hist_field, %struct.hist_field* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* @HIST_FIELD_FL_VAR_REF, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %96, label %79

79:                                               ; preds = %72
  %80 = load %struct.hist_field*, %struct.hist_field** %4, align 8
  %81 = getelementptr inbounds %struct.hist_field, %struct.hist_field* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = load i32, i32* @HIST_FIELD_FL_EXPR, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %96, label %86

86:                                               ; preds = %79
  %87 = load %struct.hist_field*, %struct.hist_field** %4, align 8
  %88 = call i8* @get_hist_field_flags(%struct.hist_field* %87)
  store i8* %88, i8** %6, align 8
  %89 = load i8*, i8** %6, align 8
  %90 = icmp ne i8* %89, null
  br i1 %90, label %91, label %95

91:                                               ; preds = %86
  %92 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %93 = load i8*, i8** %6, align 8
  %94 = call i32 @seq_printf(%struct.seq_file* %92, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8* %93)
  br label %95

95:                                               ; preds = %91, %86
  br label %96

96:                                               ; preds = %95, %79, %72
  br label %97

97:                                               ; preds = %96, %67
  ret void
}

declare dso_local i8* @hist_field_name(%struct.hist_field*, i32) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i8*) #1

declare dso_local i32 @seq_puts(%struct.seq_file*, i8*) #1

declare dso_local i32 @seq_putc(%struct.seq_file*, i8 signext) #1

declare dso_local i8* @get_hist_field_flags(%struct.hist_field*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
