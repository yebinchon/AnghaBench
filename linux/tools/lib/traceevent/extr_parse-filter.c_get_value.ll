; ModuleID = '/home/carl/AnghaBench/linux/tools/lib/traceevent/extr_parse-filter.c_get_value.c'
source_filename = "/home/carl/AnghaBench/linux/tools/lib/traceevent/extr_parse-filter.c_get_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tep_format_field = type { i32, i32 }
%struct.tep_event = type { i32 }
%struct.tep_record = type { i64, i32 }

@comm = common dso_local global %struct.tep_format_field zeroinitializer, align 4
@cpu = common dso_local global %struct.tep_format_field zeroinitializer, align 4
@TEP_FIELD_IS_SIGNED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.tep_event*, %struct.tep_format_field*, %struct.tep_record*)* @get_value to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @get_value(%struct.tep_event* %0, %struct.tep_format_field* %1, %struct.tep_record* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.tep_event*, align 8
  %6 = alloca %struct.tep_format_field*, align 8
  %7 = alloca %struct.tep_record*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  store %struct.tep_event* %0, %struct.tep_event** %5, align 8
  store %struct.tep_format_field* %1, %struct.tep_format_field** %6, align 8
  store %struct.tep_record* %2, %struct.tep_record** %7, align 8
  %10 = load %struct.tep_format_field*, %struct.tep_format_field** %6, align 8
  %11 = icmp eq %struct.tep_format_field* %10, @comm
  br i1 %11, label %12, label %18

12:                                               ; preds = %3
  %13 = load %struct.tep_event*, %struct.tep_event** %5, align 8
  %14 = load %struct.tep_record*, %struct.tep_record** %7, align 8
  %15 = call i8* @get_comm(%struct.tep_event* %13, %struct.tep_record* %14)
  store i8* %15, i8** %9, align 8
  %16 = load i8*, i8** %9, align 8
  %17 = ptrtoint i8* %16 to i64
  store i64 %17, i64* %4, align 8
  br label %59

18:                                               ; preds = %3
  %19 = load %struct.tep_format_field*, %struct.tep_format_field** %6, align 8
  %20 = icmp eq %struct.tep_format_field* %19, @cpu
  br i1 %20, label %21, label %25

21:                                               ; preds = %18
  %22 = load %struct.tep_record*, %struct.tep_record** %7, align 8
  %23 = getelementptr inbounds %struct.tep_record, %struct.tep_record* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  store i64 %24, i64* %4, align 8
  br label %59

25:                                               ; preds = %18
  %26 = load %struct.tep_format_field*, %struct.tep_format_field** %6, align 8
  %27 = load %struct.tep_record*, %struct.tep_record** %7, align 8
  %28 = getelementptr inbounds %struct.tep_record, %struct.tep_record* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @tep_read_number_field(%struct.tep_format_field* %26, i32 %29, i64* %8)
  %31 = load %struct.tep_format_field*, %struct.tep_format_field** %6, align 8
  %32 = getelementptr inbounds %struct.tep_format_field, %struct.tep_format_field* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @TEP_FIELD_IS_SIGNED, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %39, label %37

37:                                               ; preds = %25
  %38 = load i64, i64* %8, align 8
  store i64 %38, i64* %4, align 8
  br label %59

39:                                               ; preds = %25
  %40 = load %struct.tep_format_field*, %struct.tep_format_field** %6, align 8
  %41 = getelementptr inbounds %struct.tep_format_field, %struct.tep_format_field* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  switch i32 %42, label %57 [
    i32 1, label %43
    i32 2, label %47
    i32 4, label %51
    i32 8, label %55
  ]

43:                                               ; preds = %39
  %44 = load i64, i64* %8, align 8
  %45 = trunc i64 %44 to i8
  %46 = sext i8 %45 to i64
  store i64 %46, i64* %4, align 8
  br label %59

47:                                               ; preds = %39
  %48 = load i64, i64* %8, align 8
  %49 = trunc i64 %48 to i16
  %50 = sext i16 %49 to i64
  store i64 %50, i64* %4, align 8
  br label %59

51:                                               ; preds = %39
  %52 = load i64, i64* %8, align 8
  %53 = trunc i64 %52 to i32
  %54 = sext i32 %53 to i64
  store i64 %54, i64* %4, align 8
  br label %59

55:                                               ; preds = %39
  %56 = load i64, i64* %8, align 8
  store i64 %56, i64* %4, align 8
  br label %59

57:                                               ; preds = %39
  %58 = load i64, i64* %8, align 8
  store i64 %58, i64* %4, align 8
  br label %59

59:                                               ; preds = %57, %55, %51, %47, %43, %37, %21, %12
  %60 = load i64, i64* %4, align 8
  ret i64 %60
}

declare dso_local i8* @get_comm(%struct.tep_event*, %struct.tep_record*) #1

declare dso_local i32 @tep_read_number_field(%struct.tep_format_field*, i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
