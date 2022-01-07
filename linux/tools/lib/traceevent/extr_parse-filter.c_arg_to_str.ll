; ModuleID = '/home/carl/AnghaBench/linux/tools/lib/traceevent/extr_parse-filter.c_arg_to_str.c'
source_filename = "/home/carl/AnghaBench/linux/tools/lib/traceevent/extr_parse-filter.c_arg_to_str.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tep_event_filter = type { i32 }
%struct.tep_filter_arg = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"TRUE\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"FALSE\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.tep_event_filter*, %struct.tep_filter_arg*)* @arg_to_str to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @arg_to_str(%struct.tep_event_filter* %0, %struct.tep_filter_arg* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.tep_event_filter*, align 8
  %5 = alloca %struct.tep_filter_arg*, align 8
  %6 = alloca i8*, align 8
  store %struct.tep_event_filter* %0, %struct.tep_event_filter** %4, align 8
  store %struct.tep_filter_arg* %1, %struct.tep_filter_arg** %5, align 8
  store i8* null, i8** %6, align 8
  %7 = load %struct.tep_filter_arg*, %struct.tep_filter_arg** %5, align 8
  %8 = getelementptr inbounds %struct.tep_filter_arg, %struct.tep_filter_arg* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  switch i32 %9, label %44 [
    i32 134, label %10
    i32 130, label %20
    i32 131, label %24
    i32 129, label %28
    i32 128, label %32
    i32 132, label %36
    i32 133, label %40
  ]

10:                                               ; preds = %2
  %11 = load %struct.tep_filter_arg*, %struct.tep_filter_arg** %5, align 8
  %12 = getelementptr inbounds %struct.tep_filter_arg, %struct.tep_filter_arg* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %14, 0
  %16 = zext i1 %15 to i64
  %17 = select i1 %15, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0)
  %18 = call i32 @asprintf(i8** %6, i8* %17)
  %19 = load i8*, i8** %6, align 8
  store i8* %19, i8** %3, align 8
  br label %45

20:                                               ; preds = %2
  %21 = load %struct.tep_event_filter*, %struct.tep_event_filter** %4, align 8
  %22 = load %struct.tep_filter_arg*, %struct.tep_filter_arg** %5, align 8
  %23 = call i8* @op_to_str(%struct.tep_event_filter* %21, %struct.tep_filter_arg* %22)
  store i8* %23, i8** %3, align 8
  br label %45

24:                                               ; preds = %2
  %25 = load %struct.tep_event_filter*, %struct.tep_event_filter** %4, align 8
  %26 = load %struct.tep_filter_arg*, %struct.tep_filter_arg** %5, align 8
  %27 = call i8* @num_to_str(%struct.tep_event_filter* %25, %struct.tep_filter_arg* %26)
  store i8* %27, i8** %3, align 8
  br label %45

28:                                               ; preds = %2
  %29 = load %struct.tep_event_filter*, %struct.tep_event_filter** %4, align 8
  %30 = load %struct.tep_filter_arg*, %struct.tep_filter_arg** %5, align 8
  %31 = call i8* @str_to_str(%struct.tep_event_filter* %29, %struct.tep_filter_arg* %30)
  store i8* %31, i8** %3, align 8
  br label %45

32:                                               ; preds = %2
  %33 = load %struct.tep_event_filter*, %struct.tep_event_filter** %4, align 8
  %34 = load %struct.tep_filter_arg*, %struct.tep_filter_arg** %5, align 8
  %35 = call i8* @val_to_str(%struct.tep_event_filter* %33, %struct.tep_filter_arg* %34)
  store i8* %35, i8** %3, align 8
  br label %45

36:                                               ; preds = %2
  %37 = load %struct.tep_event_filter*, %struct.tep_event_filter** %4, align 8
  %38 = load %struct.tep_filter_arg*, %struct.tep_filter_arg** %5, align 8
  %39 = call i8* @field_to_str(%struct.tep_event_filter* %37, %struct.tep_filter_arg* %38)
  store i8* %39, i8** %3, align 8
  br label %45

40:                                               ; preds = %2
  %41 = load %struct.tep_event_filter*, %struct.tep_event_filter** %4, align 8
  %42 = load %struct.tep_filter_arg*, %struct.tep_filter_arg** %5, align 8
  %43 = call i8* @exp_to_str(%struct.tep_event_filter* %41, %struct.tep_filter_arg* %42)
  store i8* %43, i8** %3, align 8
  br label %45

44:                                               ; preds = %2
  store i8* null, i8** %3, align 8
  br label %45

45:                                               ; preds = %44, %40, %36, %32, %28, %24, %20, %10
  %46 = load i8*, i8** %3, align 8
  ret i8* %46
}

declare dso_local i32 @asprintf(i8**, i8*) #1

declare dso_local i8* @op_to_str(%struct.tep_event_filter*, %struct.tep_filter_arg*) #1

declare dso_local i8* @num_to_str(%struct.tep_event_filter*, %struct.tep_filter_arg*) #1

declare dso_local i8* @str_to_str(%struct.tep_event_filter*, %struct.tep_filter_arg*) #1

declare dso_local i8* @val_to_str(%struct.tep_event_filter*, %struct.tep_filter_arg*) #1

declare dso_local i8* @field_to_str(%struct.tep_event_filter*, %struct.tep_filter_arg*) #1

declare dso_local i8* @exp_to_str(%struct.tep_event_filter*, %struct.tep_filter_arg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
