; ModuleID = '/home/carl/AnghaBench/linux/tools/lib/traceevent/extr_parse-filter.c_test_filter.c'
source_filename = "/home/carl/AnghaBench/linux/tools/lib/traceevent/extr_parse-filter.c_test_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tep_event = type { i32 }
%struct.tep_filter_arg = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.tep_record = type { i32 }

@TEP_ERRNO__INVALID_ARG_TYPE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tep_event*, %struct.tep_filter_arg*, %struct.tep_record*, i32*)* @test_filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_filter(%struct.tep_event* %0, %struct.tep_filter_arg* %1, %struct.tep_record* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.tep_event*, align 8
  %7 = alloca %struct.tep_filter_arg*, align 8
  %8 = alloca %struct.tep_record*, align 8
  %9 = alloca i32*, align 8
  store %struct.tep_event* %0, %struct.tep_event** %6, align 8
  store %struct.tep_filter_arg* %1, %struct.tep_filter_arg** %7, align 8
  store %struct.tep_record* %2, %struct.tep_record** %8, align 8
  store i32* %3, i32** %9, align 8
  %10 = load i32*, i32** %9, align 8
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %59

14:                                               ; preds = %4
  %15 = load %struct.tep_filter_arg*, %struct.tep_filter_arg** %7, align 8
  %16 = getelementptr inbounds %struct.tep_filter_arg, %struct.tep_filter_arg* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  switch i32 %17, label %51 [
    i32 134, label %18
    i32 130, label %23
    i32 131, label %29
    i32 129, label %35
    i32 133, label %41
    i32 128, label %41
    i32 132, label %41
  ]

18:                                               ; preds = %14
  %19 = load %struct.tep_filter_arg*, %struct.tep_filter_arg** %7, align 8
  %20 = getelementptr inbounds %struct.tep_filter_arg, %struct.tep_filter_arg* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %5, align 4
  br label %59

23:                                               ; preds = %14
  %24 = load %struct.tep_event*, %struct.tep_event** %6, align 8
  %25 = load %struct.tep_filter_arg*, %struct.tep_filter_arg** %7, align 8
  %26 = load %struct.tep_record*, %struct.tep_record** %8, align 8
  %27 = load i32*, i32** %9, align 8
  %28 = call i32 @test_op(%struct.tep_event* %24, %struct.tep_filter_arg* %25, %struct.tep_record* %26, i32* %27)
  store i32 %28, i32* %5, align 4
  br label %59

29:                                               ; preds = %14
  %30 = load %struct.tep_event*, %struct.tep_event** %6, align 8
  %31 = load %struct.tep_filter_arg*, %struct.tep_filter_arg** %7, align 8
  %32 = load %struct.tep_record*, %struct.tep_record** %8, align 8
  %33 = load i32*, i32** %9, align 8
  %34 = call i32 @test_num(%struct.tep_event* %30, %struct.tep_filter_arg* %31, %struct.tep_record* %32, i32* %33)
  store i32 %34, i32* %5, align 4
  br label %59

35:                                               ; preds = %14
  %36 = load %struct.tep_event*, %struct.tep_event** %6, align 8
  %37 = load %struct.tep_filter_arg*, %struct.tep_filter_arg** %7, align 8
  %38 = load %struct.tep_record*, %struct.tep_record** %8, align 8
  %39 = load i32*, i32** %9, align 8
  %40 = call i32 @test_str(%struct.tep_event* %36, %struct.tep_filter_arg* %37, %struct.tep_record* %38, i32* %39)
  store i32 %40, i32* %5, align 4
  br label %59

41:                                               ; preds = %14, %14, %14
  %42 = load %struct.tep_event*, %struct.tep_event** %6, align 8
  %43 = load %struct.tep_filter_arg*, %struct.tep_filter_arg** %7, align 8
  %44 = load %struct.tep_record*, %struct.tep_record** %8, align 8
  %45 = load i32*, i32** %9, align 8
  %46 = call i32 @get_arg_value(%struct.tep_event* %42, %struct.tep_filter_arg* %43, %struct.tep_record* %44, i32* %45)
  %47 = icmp ne i32 %46, 0
  %48 = xor i1 %47, true
  %49 = xor i1 %48, true
  %50 = zext i1 %49 to i32
  store i32 %50, i32* %5, align 4
  br label %59

51:                                               ; preds = %14
  %52 = load i32*, i32** %9, align 8
  %53 = load i32, i32* %52, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %58, label %55

55:                                               ; preds = %51
  %56 = load i32, i32* @TEP_ERRNO__INVALID_ARG_TYPE, align 4
  %57 = load i32*, i32** %9, align 8
  store i32 %56, i32* %57, align 4
  br label %58

58:                                               ; preds = %55, %51
  store i32 0, i32* %5, align 4
  br label %59

59:                                               ; preds = %58, %41, %35, %29, %23, %18, %13
  %60 = load i32, i32* %5, align 4
  ret i32 %60
}

declare dso_local i32 @test_op(%struct.tep_event*, %struct.tep_filter_arg*, %struct.tep_record*, i32*) #1

declare dso_local i32 @test_num(%struct.tep_event*, %struct.tep_filter_arg*, %struct.tep_record*, i32*) #1

declare dso_local i32 @test_str(%struct.tep_event*, %struct.tep_filter_arg*, %struct.tep_record*, i32*) #1

declare dso_local i32 @get_arg_value(%struct.tep_event*, %struct.tep_filter_arg*, %struct.tep_record*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
