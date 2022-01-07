; ModuleID = '/home/carl/AnghaBench/linux/tools/lib/traceevent/extr_event-parse.c_get_event_fields.c'
source_filename = "/home/carl/AnghaBench/linux/tools/lib/traceevent/extr_event-parse.c_get_event_fields.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tep_format_field = type { %struct.tep_format_field* }

@.str = private unnamed_addr constant [43 x i8] c"event %s has more %s fields than specified\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"event %s has less %s fields than specified\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.tep_format_field** (i8*, i8*, i32, %struct.tep_format_field*)* @get_event_fields to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.tep_format_field** @get_event_fields(i8* %0, i8* %1, i32 %2, %struct.tep_format_field* %3) #0 {
  %5 = alloca %struct.tep_format_field**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.tep_format_field*, align 8
  %10 = alloca %struct.tep_format_field**, align 8
  %11 = alloca %struct.tep_format_field*, align 8
  %12 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.tep_format_field* %3, %struct.tep_format_field** %9, align 8
  store i32 0, i32* %12, align 4
  %13 = load i32, i32* %8, align 4
  %14 = add nsw i32 %13, 1
  %15 = sext i32 %14 to i64
  %16 = mul i64 8, %15
  %17 = trunc i64 %16 to i32
  %18 = call %struct.tep_format_field** @malloc(i32 %17)
  store %struct.tep_format_field** %18, %struct.tep_format_field*** %10, align 8
  %19 = load %struct.tep_format_field**, %struct.tep_format_field*** %10, align 8
  %20 = icmp ne %struct.tep_format_field** %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %4
  store %struct.tep_format_field** null, %struct.tep_format_field*** %5, align 8
  br label %63

22:                                               ; preds = %4
  %23 = load %struct.tep_format_field*, %struct.tep_format_field** %9, align 8
  store %struct.tep_format_field* %23, %struct.tep_format_field** %11, align 8
  br label %24

24:                                               ; preds = %45, %22
  %25 = load %struct.tep_format_field*, %struct.tep_format_field** %11, align 8
  %26 = icmp ne %struct.tep_format_field* %25, null
  br i1 %26, label %27, label %49

27:                                               ; preds = %24
  %28 = load %struct.tep_format_field*, %struct.tep_format_field** %11, align 8
  %29 = load %struct.tep_format_field**, %struct.tep_format_field*** %10, align 8
  %30 = load i32, i32* %12, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %12, align 4
  %32 = sext i32 %30 to i64
  %33 = getelementptr inbounds %struct.tep_format_field*, %struct.tep_format_field** %29, i64 %32
  store %struct.tep_format_field* %28, %struct.tep_format_field** %33, align 8
  %34 = load i32, i32* %12, align 4
  %35 = load i32, i32* %8, align 4
  %36 = add nsw i32 %35, 1
  %37 = icmp eq i32 %34, %36
  br i1 %37, label %38, label %44

38:                                               ; preds = %27
  %39 = load i8*, i8** %7, align 8
  %40 = load i8*, i8** %6, align 8
  %41 = call i32 @do_warning(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i8* %39, i8* %40)
  %42 = load i32, i32* %12, align 4
  %43 = add nsw i32 %42, -1
  store i32 %43, i32* %12, align 4
  br label %49

44:                                               ; preds = %27
  br label %45

45:                                               ; preds = %44
  %46 = load %struct.tep_format_field*, %struct.tep_format_field** %11, align 8
  %47 = getelementptr inbounds %struct.tep_format_field, %struct.tep_format_field* %46, i32 0, i32 0
  %48 = load %struct.tep_format_field*, %struct.tep_format_field** %47, align 8
  store %struct.tep_format_field* %48, %struct.tep_format_field** %11, align 8
  br label %24

49:                                               ; preds = %38, %24
  %50 = load i32, i32* %12, align 4
  %51 = load i32, i32* %8, align 4
  %52 = icmp ne i32 %50, %51
  br i1 %52, label %53, label %57

53:                                               ; preds = %49
  %54 = load i8*, i8** %7, align 8
  %55 = load i8*, i8** %6, align 8
  %56 = call i32 @do_warning(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i8* %54, i8* %55)
  br label %57

57:                                               ; preds = %53, %49
  %58 = load %struct.tep_format_field**, %struct.tep_format_field*** %10, align 8
  %59 = load i32, i32* %12, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.tep_format_field*, %struct.tep_format_field** %58, i64 %60
  store %struct.tep_format_field* null, %struct.tep_format_field** %61, align 8
  %62 = load %struct.tep_format_field**, %struct.tep_format_field*** %10, align 8
  store %struct.tep_format_field** %62, %struct.tep_format_field*** %5, align 8
  br label %63

63:                                               ; preds = %57, %21
  %64 = load %struct.tep_format_field**, %struct.tep_format_field*** %5, align 8
  ret %struct.tep_format_field** %64
}

declare dso_local %struct.tep_format_field** @malloc(i32) #1

declare dso_local i32 @do_warning(i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
