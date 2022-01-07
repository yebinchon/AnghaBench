; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_trace_events_hist.c_expr_field_str.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_trace_events_hist.c_expr_field_str.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hist_field = type { i32 }

@HIST_FIELD_FL_VAR_REF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"$\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c".\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hist_field*, i8*)* @expr_field_str to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @expr_field_str(%struct.hist_field* %0, i8* %1) #0 {
  %3 = alloca %struct.hist_field*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  store %struct.hist_field* %0, %struct.hist_field** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load %struct.hist_field*, %struct.hist_field** %3, align 8
  %7 = getelementptr inbounds %struct.hist_field, %struct.hist_field* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @HIST_FIELD_FL_VAR_REF, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = load i8*, i8** %4, align 8
  %14 = call i32 @strcat(i8* %13, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  br label %15

15:                                               ; preds = %12, %2
  %16 = load i8*, i8** %4, align 8
  %17 = load %struct.hist_field*, %struct.hist_field** %3, align 8
  %18 = call i8* @hist_field_name(%struct.hist_field* %17, i32 0)
  %19 = call i32 @strcat(i8* %16, i8* %18)
  %20 = load %struct.hist_field*, %struct.hist_field** %3, align 8
  %21 = getelementptr inbounds %struct.hist_field, %struct.hist_field* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %43

24:                                               ; preds = %15
  %25 = load %struct.hist_field*, %struct.hist_field** %3, align 8
  %26 = getelementptr inbounds %struct.hist_field, %struct.hist_field* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @HIST_FIELD_FL_VAR_REF, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %43, label %31

31:                                               ; preds = %24
  %32 = load %struct.hist_field*, %struct.hist_field** %3, align 8
  %33 = call i8* @get_hist_field_flags(%struct.hist_field* %32)
  store i8* %33, i8** %5, align 8
  %34 = load i8*, i8** %5, align 8
  %35 = icmp ne i8* %34, null
  br i1 %35, label %36, label %42

36:                                               ; preds = %31
  %37 = load i8*, i8** %4, align 8
  %38 = call i32 @strcat(i8* %37, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %39 = load i8*, i8** %4, align 8
  %40 = load i8*, i8** %5, align 8
  %41 = call i32 @strcat(i8* %39, i8* %40)
  br label %42

42:                                               ; preds = %36, %31
  br label %43

43:                                               ; preds = %42, %24, %15
  ret void
}

declare dso_local i32 @strcat(i8*, i8*) #1

declare dso_local i8* @hist_field_name(%struct.hist_field*, i32) #1

declare dso_local i8* @get_hist_field_flags(%struct.hist_field*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
