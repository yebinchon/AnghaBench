; ModuleID = '/home/carl/AnghaBench/linux/tools/lib/traceevent/extr_event-parse.c_get_type.c'
source_filename = "/home/carl/AnghaBench/linux/tools/lib/traceevent/extr_event-parse.c_get_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TEP_EVENT_NEWLINE = common dso_local global i32 0, align 4
@TEP_EVENT_SPACE = common dso_local global i32 0, align 4
@TEP_EVENT_ITEM = common dso_local global i32 0, align 4
@TEP_EVENT_SQUOTE = common dso_local global i32 0, align 4
@TEP_EVENT_DQUOTE = common dso_local global i32 0, align 4
@TEP_EVENT_NONE = common dso_local global i32 0, align 4
@TEP_EVENT_DELIM = common dso_local global i32 0, align 4
@TEP_EVENT_OP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @get_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_type(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  %5 = icmp eq i32 %4, 10
  br i1 %5, label %6, label %8

6:                                                ; preds = %1
  %7 = load i32, i32* @TEP_EVENT_NEWLINE, align 4
  store i32 %7, i32* %2, align 4
  br label %52

8:                                                ; preds = %1
  %9 = load i32, i32* %3, align 4
  %10 = call i64 @isspace(i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %8
  %13 = load i32, i32* @TEP_EVENT_SPACE, align 4
  store i32 %13, i32* %2, align 4
  br label %52

14:                                               ; preds = %8
  %15 = load i32, i32* %3, align 4
  %16 = call i64 @isalnum(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %14
  %19 = load i32, i32* %3, align 4
  %20 = icmp eq i32 %19, 95
  br i1 %20, label %21, label %23

21:                                               ; preds = %18, %14
  %22 = load i32, i32* @TEP_EVENT_ITEM, align 4
  store i32 %22, i32* %2, align 4
  br label %52

23:                                               ; preds = %18
  %24 = load i32, i32* %3, align 4
  %25 = icmp eq i32 %24, 39
  br i1 %25, label %26, label %28

26:                                               ; preds = %23
  %27 = load i32, i32* @TEP_EVENT_SQUOTE, align 4
  store i32 %27, i32* %2, align 4
  br label %52

28:                                               ; preds = %23
  %29 = load i32, i32* %3, align 4
  %30 = icmp eq i32 %29, 34
  br i1 %30, label %31, label %33

31:                                               ; preds = %28
  %32 = load i32, i32* @TEP_EVENT_DQUOTE, align 4
  store i32 %32, i32* %2, align 4
  br label %52

33:                                               ; preds = %28
  %34 = load i32, i32* %3, align 4
  %35 = call i32 @isprint(i32 %34) #3
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %39, label %37

37:                                               ; preds = %33
  %38 = load i32, i32* @TEP_EVENT_NONE, align 4
  store i32 %38, i32* %2, align 4
  br label %52

39:                                               ; preds = %33
  %40 = load i32, i32* %3, align 4
  %41 = icmp eq i32 %40, 40
  br i1 %41, label %48, label %42

42:                                               ; preds = %39
  %43 = load i32, i32* %3, align 4
  %44 = icmp eq i32 %43, 41
  br i1 %44, label %48, label %45

45:                                               ; preds = %42
  %46 = load i32, i32* %3, align 4
  %47 = icmp eq i32 %46, 44
  br i1 %47, label %48, label %50

48:                                               ; preds = %45, %42, %39
  %49 = load i32, i32* @TEP_EVENT_DELIM, align 4
  store i32 %49, i32* %2, align 4
  br label %52

50:                                               ; preds = %45
  %51 = load i32, i32* @TEP_EVENT_OP, align 4
  store i32 %51, i32* %2, align 4
  br label %52

52:                                               ; preds = %50, %48, %37, %31, %26, %21, %12, %6
  %53 = load i32, i32* %2, align 4
  ret i32 %53
}

declare dso_local i64 @isspace(i32) #1

declare dso_local i64 @isalnum(i32) #1

; Function Attrs: nounwind readonly
declare dso_local i32 @isprint(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
