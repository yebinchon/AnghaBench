; ModuleID = '/home/carl/AnghaBench/linux/tools/lib/traceevent/extr_event-parse.c_event_read_name.c'
source_filename = "/home/carl/AnghaBench/linux/tools/lib/traceevent/extr_event-parse.c_event_read_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TEP_EVENT_ITEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"name\00", align 1
@TEP_EVENT_OP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c":\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* ()* @event_read_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @event_read_name() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i8*, align 8
  %3 = load i32, i32* @TEP_EVENT_ITEM, align 4
  %4 = call i64 @read_expected(i32 %3, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %5 = icmp slt i64 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %0
  store i8* null, i8** %1, align 8
  br label %22

7:                                                ; preds = %0
  %8 = load i32, i32* @TEP_EVENT_OP, align 4
  %9 = call i64 @read_expected(i32 %8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %10 = icmp slt i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %7
  store i8* null, i8** %1, align 8
  br label %22

12:                                               ; preds = %7
  %13 = load i32, i32* @TEP_EVENT_ITEM, align 4
  %14 = call i64 @read_expect_type(i32 %13, i8** %2)
  %15 = icmp slt i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %12
  br label %19

17:                                               ; preds = %12
  %18 = load i8*, i8** %2, align 8
  store i8* %18, i8** %1, align 8
  br label %22

19:                                               ; preds = %16
  %20 = load i8*, i8** %2, align 8
  %21 = call i32 @free_token(i8* %20)
  store i8* null, i8** %1, align 8
  br label %22

22:                                               ; preds = %19, %17, %11, %6
  %23 = load i8*, i8** %1, align 8
  ret i8* %23
}

declare dso_local i64 @read_expected(i32, i8*) #1

declare dso_local i64 @read_expect_type(i32, i8**) #1

declare dso_local i32 @free_token(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
