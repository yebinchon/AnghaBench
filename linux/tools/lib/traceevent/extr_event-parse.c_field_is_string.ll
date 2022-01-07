; ModuleID = '/home/carl/AnghaBench/linux/tools/lib/traceevent/extr_event-parse.c_field_is_string.c'
source_filename = "/home/carl/AnghaBench/linux/tools/lib/traceevent/extr_event-parse.c_field_is_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tep_format_field = type { i32, i32 }

@TEP_FIELD_IS_ARRAY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"char\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"u8\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"s8\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tep_format_field*)* @field_is_string to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @field_is_string(%struct.tep_format_field* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tep_format_field*, align 8
  store %struct.tep_format_field* %0, %struct.tep_format_field** %3, align 8
  %4 = load %struct.tep_format_field*, %struct.tep_format_field** %3, align 8
  %5 = getelementptr inbounds %struct.tep_format_field, %struct.tep_format_field* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = load i32, i32* @TEP_FIELD_IS_ARRAY, align 4
  %8 = and i32 %6, %7
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %29

10:                                               ; preds = %1
  %11 = load %struct.tep_format_field*, %struct.tep_format_field** %3, align 8
  %12 = getelementptr inbounds %struct.tep_format_field, %struct.tep_format_field* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = call i64 @strstr(i32 %13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %28, label %16

16:                                               ; preds = %10
  %17 = load %struct.tep_format_field*, %struct.tep_format_field** %3, align 8
  %18 = getelementptr inbounds %struct.tep_format_field, %struct.tep_format_field* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call i64 @strstr(i32 %19, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %28, label %22

22:                                               ; preds = %16
  %23 = load %struct.tep_format_field*, %struct.tep_format_field** %3, align 8
  %24 = getelementptr inbounds %struct.tep_format_field, %struct.tep_format_field* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i64 @strstr(i32 %25, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %22, %16, %10
  store i32 1, i32* %2, align 4
  br label %30

29:                                               ; preds = %22, %1
  store i32 0, i32* %2, align 4
  br label %30

30:                                               ; preds = %29, %28
  %31 = load i32, i32* %2, align 4
  ret i32 %31
}

declare dso_local i64 @strstr(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
