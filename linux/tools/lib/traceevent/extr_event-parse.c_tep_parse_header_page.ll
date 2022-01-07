; ModuleID = '/home/carl/AnghaBench/linux/tools/lib/traceevent/extr_event-parse.c_tep_parse_header_page.c'
source_filename = "/home/carl/AnghaBench/linux/tools/lib/traceevent/extr_event-parse.c_tep_parse_header_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tep_handle = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [10 x i8] c"timestamp\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"commit\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"overwrite\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"data\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tep_parse_header_page(%struct.tep_handle* %0, i8* %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.tep_handle*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.tep_handle* %0, %struct.tep_handle** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %11 = load i64, i64* %8, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %27, label %13

13:                                               ; preds = %4
  %14 = load %struct.tep_handle*, %struct.tep_handle** %6, align 8
  %15 = getelementptr inbounds %struct.tep_handle, %struct.tep_handle* %14, i32 0, i32 0
  store i32 8, i32* %15, align 4
  %16 = load i32, i32* %9, align 4
  %17 = load %struct.tep_handle*, %struct.tep_handle** %6, align 8
  %18 = getelementptr inbounds %struct.tep_handle, %struct.tep_handle* %17, i32 0, i32 1
  store i32 %16, i32* %18, align 4
  %19 = load i32, i32* %9, align 4
  %20 = sext i32 %19 to i64
  %21 = add i64 8, %20
  %22 = trunc i64 %21 to i32
  %23 = load %struct.tep_handle*, %struct.tep_handle** %6, align 8
  %24 = getelementptr inbounds %struct.tep_handle, %struct.tep_handle* %23, i32 0, i32 2
  store i32 %22, i32* %24, align 4
  %25 = load %struct.tep_handle*, %struct.tep_handle** %6, align 8
  %26 = getelementptr inbounds %struct.tep_handle, %struct.tep_handle* %25, i32 0, i32 3
  store i32 1, i32* %26, align 4
  store i32 -1, i32* %5, align 4
  br label %49

27:                                               ; preds = %4
  %28 = load i8*, i8** %7, align 8
  %29 = load i64, i64* %8, align 8
  %30 = call i32 @init_input_buf(i8* %28, i64 %29)
  %31 = load %struct.tep_handle*, %struct.tep_handle** %6, align 8
  %32 = getelementptr inbounds %struct.tep_handle, %struct.tep_handle* %31, i32 0, i32 4
  %33 = load %struct.tep_handle*, %struct.tep_handle** %6, align 8
  %34 = getelementptr inbounds %struct.tep_handle, %struct.tep_handle* %33, i32 0, i32 0
  %35 = call i32 @parse_header_field(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32* %32, i32* %34, i32 1)
  %36 = load %struct.tep_handle*, %struct.tep_handle** %6, align 8
  %37 = getelementptr inbounds %struct.tep_handle, %struct.tep_handle* %36, i32 0, i32 5
  %38 = load %struct.tep_handle*, %struct.tep_handle** %6, align 8
  %39 = getelementptr inbounds %struct.tep_handle, %struct.tep_handle* %38, i32 0, i32 1
  %40 = call i32 @parse_header_field(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32* %37, i32* %39, i32 1)
  %41 = load %struct.tep_handle*, %struct.tep_handle** %6, align 8
  %42 = getelementptr inbounds %struct.tep_handle, %struct.tep_handle* %41, i32 0, i32 6
  %43 = call i32 @parse_header_field(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32* %42, i32* %10, i32 0)
  %44 = load %struct.tep_handle*, %struct.tep_handle** %6, align 8
  %45 = getelementptr inbounds %struct.tep_handle, %struct.tep_handle* %44, i32 0, i32 2
  %46 = load %struct.tep_handle*, %struct.tep_handle** %6, align 8
  %47 = getelementptr inbounds %struct.tep_handle, %struct.tep_handle* %46, i32 0, i32 7
  %48 = call i32 @parse_header_field(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32* %45, i32* %47, i32 1)
  store i32 0, i32* %5, align 4
  br label %49

49:                                               ; preds = %27, %13
  %50 = load i32, i32* %5, align 4
  ret i32 %50
}

declare dso_local i32 @init_input_buf(i8*, i64) #1

declare dso_local i32 @parse_header_field(i8*, i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
