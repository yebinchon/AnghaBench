; ModuleID = '/home/carl/AnghaBench/linux/tools/lib/traceevent/extr_parse-filter.c_test_str.c'
source_filename = "/home/carl/AnghaBench/linux/tools/lib/traceevent/extr_parse-filter.c_test_str.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tep_event = type { i32 }
%struct.tep_filter_arg = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32* }
%struct.tep_record = type { i32 }

@comm = common dso_local global i32 0, align 4
@TEP_ERRNO__ILLEGAL_STRING_CMP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tep_event*, %struct.tep_filter_arg*, %struct.tep_record*, i32*)* @test_str to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_str(%struct.tep_event* %0, %struct.tep_filter_arg* %1, %struct.tep_record* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.tep_event*, align 8
  %7 = alloca %struct.tep_filter_arg*, align 8
  %8 = alloca %struct.tep_record*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  store %struct.tep_event* %0, %struct.tep_event** %6, align 8
  store %struct.tep_filter_arg* %1, %struct.tep_filter_arg** %7, align 8
  store %struct.tep_record* %2, %struct.tep_record** %8, align 8
  store i32* %3, i32** %9, align 8
  %11 = load %struct.tep_filter_arg*, %struct.tep_filter_arg** %7, align 8
  %12 = getelementptr inbounds %struct.tep_filter_arg, %struct.tep_filter_arg* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 3
  %14 = load i32*, i32** %13, align 8
  %15 = icmp eq i32* %14, @comm
  br i1 %15, label %16, label %20

16:                                               ; preds = %4
  %17 = load %struct.tep_event*, %struct.tep_event** %6, align 8
  %18 = load %struct.tep_record*, %struct.tep_record** %8, align 8
  %19 = call i8* @get_comm(%struct.tep_event* %17, %struct.tep_record* %18)
  store i8* %19, i8** %10, align 8
  br label %24

20:                                               ; preds = %4
  %21 = load %struct.tep_filter_arg*, %struct.tep_filter_arg** %7, align 8
  %22 = load %struct.tep_record*, %struct.tep_record** %8, align 8
  %23 = call i8* @get_field_str(%struct.tep_filter_arg* %21, %struct.tep_record* %22)
  store i8* %23, i8** %10, align 8
  br label %24

24:                                               ; preds = %20, %16
  %25 = load %struct.tep_filter_arg*, %struct.tep_filter_arg** %7, align 8
  %26 = getelementptr inbounds %struct.tep_filter_arg, %struct.tep_filter_arg* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  switch i32 %28, label %62 [
    i32 131, label %29
    i32 130, label %38
    i32 128, label %47
    i32 129, label %56
  ]

29:                                               ; preds = %24
  %30 = load i8*, i8** %10, align 8
  %31 = load %struct.tep_filter_arg*, %struct.tep_filter_arg** %7, align 8
  %32 = getelementptr inbounds %struct.tep_filter_arg, %struct.tep_filter_arg* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @strcmp(i8* %30, i32 %34)
  %36 = icmp eq i32 %35, 0
  %37 = zext i1 %36 to i32
  store i32 %37, i32* %5, align 4
  br label %70

38:                                               ; preds = %24
  %39 = load i8*, i8** %10, align 8
  %40 = load %struct.tep_filter_arg*, %struct.tep_filter_arg** %7, align 8
  %41 = getelementptr inbounds %struct.tep_filter_arg, %struct.tep_filter_arg* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @strcmp(i8* %39, i32 %43)
  %45 = icmp ne i32 %44, 0
  %46 = zext i1 %45 to i32
  store i32 %46, i32* %5, align 4
  br label %70

47:                                               ; preds = %24
  %48 = load %struct.tep_filter_arg*, %struct.tep_filter_arg** %7, align 8
  %49 = getelementptr inbounds %struct.tep_filter_arg, %struct.tep_filter_arg* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 1
  %51 = load i8*, i8** %10, align 8
  %52 = call i32 @regexec(i32* %50, i8* %51, i32 0, i32* null, i32 0)
  %53 = icmp ne i32 %52, 0
  %54 = xor i1 %53, true
  %55 = zext i1 %54 to i32
  store i32 %55, i32* %5, align 4
  br label %70

56:                                               ; preds = %24
  %57 = load %struct.tep_filter_arg*, %struct.tep_filter_arg** %7, align 8
  %58 = getelementptr inbounds %struct.tep_filter_arg, %struct.tep_filter_arg* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 1
  %60 = load i8*, i8** %10, align 8
  %61 = call i32 @regexec(i32* %59, i8* %60, i32 0, i32* null, i32 0)
  store i32 %61, i32* %5, align 4
  br label %70

62:                                               ; preds = %24
  %63 = load i32*, i32** %9, align 8
  %64 = load i32, i32* %63, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %69, label %66

66:                                               ; preds = %62
  %67 = load i32, i32* @TEP_ERRNO__ILLEGAL_STRING_CMP, align 4
  %68 = load i32*, i32** %9, align 8
  store i32 %67, i32* %68, align 4
  br label %69

69:                                               ; preds = %66, %62
  store i32 0, i32* %5, align 4
  br label %70

70:                                               ; preds = %69, %56, %47, %38, %29
  %71 = load i32, i32* %5, align 4
  ret i32 %71
}

declare dso_local i8* @get_comm(%struct.tep_event*, %struct.tep_record*) #1

declare dso_local i8* @get_field_str(%struct.tep_filter_arg*, %struct.tep_record*) #1

declare dso_local i32 @strcmp(i8*, i32) #1

declare dso_local i32 @regexec(i32*, i8*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
