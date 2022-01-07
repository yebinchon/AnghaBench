; ModuleID = '/home/carl/AnghaBench/linux/tools/lib/traceevent/extr_parse-filter.c_get_arg_value.c'
source_filename = "/home/carl/AnghaBench/linux/tools/lib/traceevent/extr_parse-filter.c_get_arg_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tep_event = type { i32 }
%struct.tep_filter_arg = type { i32, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i64, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.tep_record = type { i32 }

@TEP_FILTER_NUMBER = common dso_local global i32 0, align 4
@TEP_ERRNO__NOT_A_NUMBER = common dso_local global i32 0, align 4
@TEP_ERRNO__INVALID_ARG_TYPE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.tep_event*, %struct.tep_filter_arg*, %struct.tep_record*, i32*)* @get_arg_value to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @get_arg_value(%struct.tep_event* %0, %struct.tep_filter_arg* %1, %struct.tep_record* %2, i32* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.tep_event*, align 8
  %7 = alloca %struct.tep_filter_arg*, align 8
  %8 = alloca %struct.tep_record*, align 8
  %9 = alloca i32*, align 8
  store %struct.tep_event* %0, %struct.tep_event** %6, align 8
  store %struct.tep_filter_arg* %1, %struct.tep_filter_arg** %7, align 8
  store %struct.tep_record* %2, %struct.tep_record** %8, align 8
  store i32* %3, i32** %9, align 8
  %10 = load %struct.tep_filter_arg*, %struct.tep_filter_arg** %7, align 8
  %11 = getelementptr inbounds %struct.tep_filter_arg, %struct.tep_filter_arg* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  switch i32 %12, label %47 [
    i32 129, label %13
    i32 128, label %21
    i32 130, label %41
  ]

13:                                               ; preds = %4
  %14 = load %struct.tep_event*, %struct.tep_event** %6, align 8
  %15 = load %struct.tep_filter_arg*, %struct.tep_filter_arg** %7, align 8
  %16 = getelementptr inbounds %struct.tep_filter_arg, %struct.tep_filter_arg* %15, i32 0, i32 2
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.tep_record*, %struct.tep_record** %8, align 8
  %20 = call i64 @get_value(%struct.tep_event* %14, i32 %18, %struct.tep_record* %19)
  store i64 %20, i64* %5, align 8
  br label %56

21:                                               ; preds = %4
  %22 = load %struct.tep_filter_arg*, %struct.tep_filter_arg** %7, align 8
  %23 = getelementptr inbounds %struct.tep_filter_arg, %struct.tep_filter_arg* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @TEP_FILTER_NUMBER, align 4
  %27 = icmp ne i32 %25, %26
  br i1 %27, label %28, label %36

28:                                               ; preds = %21
  %29 = load i32*, i32** %9, align 8
  %30 = load i32, i32* %29, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %28
  %33 = load i32, i32* @TEP_ERRNO__NOT_A_NUMBER, align 4
  %34 = load i32*, i32** %9, align 8
  store i32 %33, i32* %34, align 4
  br label %35

35:                                               ; preds = %32, %28
  br label %36

36:                                               ; preds = %35, %21
  %37 = load %struct.tep_filter_arg*, %struct.tep_filter_arg** %7, align 8
  %38 = getelementptr inbounds %struct.tep_filter_arg, %struct.tep_filter_arg* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  store i64 %40, i64* %5, align 8
  br label %56

41:                                               ; preds = %4
  %42 = load %struct.tep_event*, %struct.tep_event** %6, align 8
  %43 = load %struct.tep_filter_arg*, %struct.tep_filter_arg** %7, align 8
  %44 = load %struct.tep_record*, %struct.tep_record** %8, align 8
  %45 = load i32*, i32** %9, align 8
  %46 = call i64 @get_exp_value(%struct.tep_event* %42, %struct.tep_filter_arg* %43, %struct.tep_record* %44, i32* %45)
  store i64 %46, i64* %5, align 8
  br label %56

47:                                               ; preds = %4
  %48 = load i32*, i32** %9, align 8
  %49 = load i32, i32* %48, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %54, label %51

51:                                               ; preds = %47
  %52 = load i32, i32* @TEP_ERRNO__INVALID_ARG_TYPE, align 4
  %53 = load i32*, i32** %9, align 8
  store i32 %52, i32* %53, align 4
  br label %54

54:                                               ; preds = %51, %47
  br label %55

55:                                               ; preds = %54
  store i64 0, i64* %5, align 8
  br label %56

56:                                               ; preds = %55, %41, %36, %13
  %57 = load i64, i64* %5, align 8
  ret i64 %57
}

declare dso_local i64 @get_value(%struct.tep_event*, i32, %struct.tep_record*) #1

declare dso_local i64 @get_exp_value(%struct.tep_event*, %struct.tep_filter_arg*, %struct.tep_record*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
