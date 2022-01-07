; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_data-convert-bt.c_event_class_add_field.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_data-convert-bt.c_event_class_add_field.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bt_ctf_event_class = type { i32 }
%struct.bt_ctf_field_type = type { i32 }
%struct.tep_format_field = type { i8*, i8* }

@.str = private unnamed_addr constant [34 x i8] c"Failed to fix invalid identifier.\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"Failed to create dup name for '%s'\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bt_ctf_event_class*, %struct.bt_ctf_field_type*, %struct.tep_format_field*)* @event_class_add_field to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @event_class_add_field(%struct.bt_ctf_event_class* %0, %struct.bt_ctf_field_type* %1, %struct.tep_format_field* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.bt_ctf_event_class*, align 8
  %6 = alloca %struct.bt_ctf_field_type*, align 8
  %7 = alloca %struct.tep_format_field*, align 8
  %8 = alloca %struct.bt_ctf_field_type*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.bt_ctf_event_class* %0, %struct.bt_ctf_event_class** %5, align 8
  store %struct.bt_ctf_field_type* %1, %struct.bt_ctf_field_type** %6, align 8
  store %struct.tep_format_field* %2, %struct.tep_format_field** %7, align 8
  store %struct.bt_ctf_field_type* null, %struct.bt_ctf_field_type** %8, align 8
  store i32 1, i32* %10, align 4
  %12 = load %struct.tep_format_field*, %struct.tep_format_field** %7, align 8
  %13 = getelementptr inbounds %struct.tep_format_field, %struct.tep_format_field* %12, i32 0, i32 0
  %14 = load i8*, i8** %13, align 8
  %15 = load %struct.tep_format_field*, %struct.tep_format_field** %7, align 8
  %16 = getelementptr inbounds %struct.tep_format_field, %struct.tep_format_field* %15, i32 0, i32 1
  %17 = load i8*, i8** %16, align 8
  %18 = icmp ne i8* %14, %17
  br i1 %18, label %19, label %26

19:                                               ; preds = %3
  %20 = load %struct.bt_ctf_event_class*, %struct.bt_ctf_event_class** %5, align 8
  %21 = load %struct.bt_ctf_field_type*, %struct.bt_ctf_field_type** %6, align 8
  %22 = load %struct.tep_format_field*, %struct.tep_format_field** %7, align 8
  %23 = getelementptr inbounds %struct.tep_format_field, %struct.tep_format_field* %22, i32 0, i32 0
  %24 = load i8*, i8** %23, align 8
  %25 = call i32 @bt_ctf_event_class_add_field(%struct.bt_ctf_event_class* %20, %struct.bt_ctf_field_type* %21, i8* %24)
  store i32 %25, i32* %4, align 4
  br label %81

26:                                               ; preds = %3
  %27 = load %struct.tep_format_field*, %struct.tep_format_field** %7, align 8
  %28 = getelementptr inbounds %struct.tep_format_field, %struct.tep_format_field* %27, i32 0, i32 1
  %29 = load i8*, i8** %28, align 8
  store i8* %29, i8** %9, align 8
  %30 = load i8*, i8** %9, align 8
  %31 = call i64 @bt_ctf_validate_identifier(i8* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %26
  %34 = load i8*, i8** %9, align 8
  %35 = load %struct.tep_format_field*, %struct.tep_format_field** %7, align 8
  %36 = getelementptr inbounds %struct.tep_format_field, %struct.tep_format_field* %35, i32 0, i32 1
  %37 = load i8*, i8** %36, align 8
  %38 = call i8* @change_name(i8* %34, i8* %37, i32 -1)
  store i8* %38, i8** %9, align 8
  br label %39

39:                                               ; preds = %33, %26
  %40 = load i8*, i8** %9, align 8
  %41 = icmp ne i8* %40, null
  br i1 %41, label %44, label %42

42:                                               ; preds = %39
  %43 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %81

44:                                               ; preds = %39
  br label %45

45:                                               ; preds = %67, %44
  %46 = load %struct.bt_ctf_event_class*, %struct.bt_ctf_event_class** %5, align 8
  %47 = load i8*, i8** %9, align 8
  %48 = call %struct.bt_ctf_field_type* @bt_ctf_event_class_get_field_by_name(%struct.bt_ctf_event_class* %46, i8* %47)
  store %struct.bt_ctf_field_type* %48, %struct.bt_ctf_field_type** %8, align 8
  %49 = icmp ne %struct.bt_ctf_field_type* %48, null
  br i1 %49, label %50, label %68

50:                                               ; preds = %45
  %51 = load %struct.bt_ctf_field_type*, %struct.bt_ctf_field_type** %8, align 8
  %52 = call i32 @bt_ctf_field_type_put(%struct.bt_ctf_field_type* %51)
  %53 = load i8*, i8** %9, align 8
  %54 = load %struct.tep_format_field*, %struct.tep_format_field** %7, align 8
  %55 = getelementptr inbounds %struct.tep_format_field, %struct.tep_format_field* %54, i32 0, i32 1
  %56 = load i8*, i8** %55, align 8
  %57 = load i32, i32* %10, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %10, align 4
  %59 = call i8* @change_name(i8* %53, i8* %56, i32 %57)
  store i8* %59, i8** %9, align 8
  %60 = load i8*, i8** %9, align 8
  %61 = icmp ne i8* %60, null
  br i1 %61, label %67, label %62

62:                                               ; preds = %50
  %63 = load %struct.tep_format_field*, %struct.tep_format_field** %7, align 8
  %64 = getelementptr inbounds %struct.tep_format_field, %struct.tep_format_field* %63, i32 0, i32 1
  %65 = load i8*, i8** %64, align 8
  %66 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i8* %65)
  store i32 -1, i32* %4, align 4
  br label %81

67:                                               ; preds = %50
  br label %45

68:                                               ; preds = %45
  %69 = load %struct.bt_ctf_event_class*, %struct.bt_ctf_event_class** %5, align 8
  %70 = load %struct.bt_ctf_field_type*, %struct.bt_ctf_field_type** %6, align 8
  %71 = load i8*, i8** %9, align 8
  %72 = call i32 @bt_ctf_event_class_add_field(%struct.bt_ctf_event_class* %69, %struct.bt_ctf_field_type* %70, i8* %71)
  store i32 %72, i32* %11, align 4
  %73 = load i32, i32* %11, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %79, label %75

75:                                               ; preds = %68
  %76 = load i8*, i8** %9, align 8
  %77 = load %struct.tep_format_field*, %struct.tep_format_field** %7, align 8
  %78 = getelementptr inbounds %struct.tep_format_field, %struct.tep_format_field* %77, i32 0, i32 0
  store i8* %76, i8** %78, align 8
  br label %79

79:                                               ; preds = %75, %68
  %80 = load i32, i32* %11, align 4
  store i32 %80, i32* %4, align 4
  br label %81

81:                                               ; preds = %79, %62, %42, %19
  %82 = load i32, i32* %4, align 4
  ret i32 %82
}

declare dso_local i32 @bt_ctf_event_class_add_field(%struct.bt_ctf_event_class*, %struct.bt_ctf_field_type*, i8*) #1

declare dso_local i64 @bt_ctf_validate_identifier(i8*) #1

declare dso_local i8* @change_name(i8*, i8*, i32) #1

declare dso_local i32 @pr_err(i8*, ...) #1

declare dso_local %struct.bt_ctf_field_type* @bt_ctf_event_class_get_field_by_name(%struct.bt_ctf_event_class*, i8*) #1

declare dso_local i32 @bt_ctf_field_type_put(%struct.bt_ctf_field_type*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
