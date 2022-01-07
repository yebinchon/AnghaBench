; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_data-convert-bt.c_add_callchain_output_values.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_data-convert-bt.c_add_callchain_output_values.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bt_ctf_event_class = type { i32 }
%struct.bt_ctf_event = type { i32 }
%struct.ip_callchain = type { i32, i64 }
%struct.bt_ctf_field_type = type { i32 }
%struct.bt_ctf_field = type { i32 }

@.str = private unnamed_addr constant [20 x i8] c"perf_callchain_size\00", align 1
@.str.1 = private unnamed_addr constant [67 x i8] c"failed to create 'perf_callchain_size' for callchain output event\0A\00", align 1
@.str.2 = private unnamed_addr constant [51 x i8] c"failed to set field value for perf_callchain_size\0A\00", align 1
@.str.3 = private unnamed_addr constant [46 x i8] c"failed to set payload to perf_callchain_size\0A\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"perf_callchain\00", align 1
@.str.5 = private unnamed_addr constant [62 x i8] c"failed to create 'perf_callchain' for callchain output event\0A\00", align 1
@.str.6 = private unnamed_addr constant [42 x i8] c"failed to set length of 'perf_callchain'\0A\00", align 1
@.str.7 = private unnamed_addr constant [29 x i8] c"failed to set callchain[%d]\0A\00", align 1
@.str.8 = private unnamed_addr constant [36 x i8] c"failed to set payload for raw_data\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bt_ctf_event_class*, %struct.bt_ctf_event*, %struct.ip_callchain*)* @add_callchain_output_values to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_callchain_output_values(%struct.bt_ctf_event_class* %0, %struct.bt_ctf_event* %1, %struct.ip_callchain* %2) #0 {
  %4 = alloca %struct.bt_ctf_event_class*, align 8
  %5 = alloca %struct.bt_ctf_event*, align 8
  %6 = alloca %struct.ip_callchain*, align 8
  %7 = alloca %struct.bt_ctf_field_type*, align 8
  %8 = alloca %struct.bt_ctf_field_type*, align 8
  %9 = alloca %struct.bt_ctf_field*, align 8
  %10 = alloca %struct.bt_ctf_field*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.bt_ctf_field*, align 8
  store %struct.bt_ctf_event_class* %0, %struct.bt_ctf_event_class** %4, align 8
  store %struct.bt_ctf_event* %1, %struct.bt_ctf_event** %5, align 8
  store %struct.ip_callchain* %2, %struct.ip_callchain** %6, align 8
  %15 = load %struct.ip_callchain*, %struct.ip_callchain** %6, align 8
  %16 = getelementptr inbounds %struct.ip_callchain, %struct.ip_callchain* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  store i32 %17, i32* %11, align 4
  %18 = load %struct.bt_ctf_event_class*, %struct.bt_ctf_event_class** %4, align 8
  %19 = call %struct.bt_ctf_field_type* @bt_ctf_event_class_get_field_by_name(%struct.bt_ctf_event_class* %18, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  store %struct.bt_ctf_field_type* %19, %struct.bt_ctf_field_type** %7, align 8
  %20 = load %struct.bt_ctf_field_type*, %struct.bt_ctf_field_type** %7, align 8
  %21 = call %struct.bt_ctf_field* @bt_ctf_field_create(%struct.bt_ctf_field_type* %20)
  store %struct.bt_ctf_field* %21, %struct.bt_ctf_field** %9, align 8
  %22 = load %struct.bt_ctf_field*, %struct.bt_ctf_field** %9, align 8
  %23 = icmp ne %struct.bt_ctf_field* %22, null
  br i1 %23, label %26, label %24

24:                                               ; preds = %3
  %25 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %13, align 4
  br label %107

26:                                               ; preds = %3
  %27 = load %struct.bt_ctf_field*, %struct.bt_ctf_field** %9, align 8
  %28 = load i32, i32* %11, align 4
  %29 = call i32 @bt_ctf_field_unsigned_integer_set_value(%struct.bt_ctf_field* %27, i32 %28)
  store i32 %29, i32* %13, align 4
  %30 = load i32, i32* %13, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %26
  %33 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.2, i64 0, i64 0))
  br label %104

34:                                               ; preds = %26
  %35 = load %struct.bt_ctf_event*, %struct.bt_ctf_event** %5, align 8
  %36 = load %struct.bt_ctf_field*, %struct.bt_ctf_field** %9, align 8
  %37 = call i32 @bt_ctf_event_set_payload(%struct.bt_ctf_event* %35, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), %struct.bt_ctf_field* %36)
  store i32 %37, i32* %13, align 4
  %38 = load i32, i32* %13, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %34
  %41 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.3, i64 0, i64 0))
  br label %104

42:                                               ; preds = %34
  %43 = load %struct.bt_ctf_event_class*, %struct.bt_ctf_event_class** %4, align 8
  %44 = call %struct.bt_ctf_field_type* @bt_ctf_event_class_get_field_by_name(%struct.bt_ctf_event_class* %43, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0))
  store %struct.bt_ctf_field_type* %44, %struct.bt_ctf_field_type** %8, align 8
  %45 = load %struct.bt_ctf_field_type*, %struct.bt_ctf_field_type** %8, align 8
  %46 = call %struct.bt_ctf_field* @bt_ctf_field_create(%struct.bt_ctf_field_type* %45)
  store %struct.bt_ctf_field* %46, %struct.bt_ctf_field** %10, align 8
  %47 = load %struct.bt_ctf_field*, %struct.bt_ctf_field** %10, align 8
  %48 = icmp ne %struct.bt_ctf_field* %47, null
  br i1 %48, label %51, label %49

49:                                               ; preds = %42
  %50 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.5, i64 0, i64 0))
  store i32 -1, i32* %13, align 4
  br label %101

51:                                               ; preds = %42
  %52 = load %struct.bt_ctf_field*, %struct.bt_ctf_field** %10, align 8
  %53 = load %struct.bt_ctf_field*, %struct.bt_ctf_field** %9, align 8
  %54 = call i32 @bt_ctf_field_sequence_set_length(%struct.bt_ctf_field* %52, %struct.bt_ctf_field* %53)
  store i32 %54, i32* %13, align 4
  %55 = load i32, i32* %13, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %51
  %58 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.6, i64 0, i64 0))
  br label %98

59:                                               ; preds = %51
  store i32 0, i32* %12, align 4
  br label %60

60:                                               ; preds = %86, %59
  %61 = load i32, i32* %12, align 4
  %62 = load i32, i32* %11, align 4
  %63 = icmp ult i32 %61, %62
  br i1 %63, label %64, label %89

64:                                               ; preds = %60
  %65 = load %struct.bt_ctf_field*, %struct.bt_ctf_field** %10, align 8
  %66 = load i32, i32* %12, align 4
  %67 = call %struct.bt_ctf_field* @bt_ctf_field_sequence_get_field(%struct.bt_ctf_field* %65, i32 %66)
  store %struct.bt_ctf_field* %67, %struct.bt_ctf_field** %14, align 8
  %68 = load %struct.bt_ctf_field*, %struct.bt_ctf_field** %14, align 8
  %69 = load %struct.ip_callchain*, %struct.ip_callchain** %6, align 8
  %70 = getelementptr inbounds %struct.ip_callchain, %struct.ip_callchain* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = inttoptr i64 %71 to i32*
  %73 = load i32, i32* %12, align 4
  %74 = zext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %72, i64 %74
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @bt_ctf_field_unsigned_integer_set_value(%struct.bt_ctf_field* %68, i32 %76)
  store i32 %77, i32* %13, align 4
  %78 = load %struct.bt_ctf_field*, %struct.bt_ctf_field** %14, align 8
  %79 = call i32 @bt_ctf_field_put(%struct.bt_ctf_field* %78)
  %80 = load i32, i32* %13, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %64
  %83 = load i32, i32* %12, align 4
  %84 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i64 0, i64 0), i32 %83)
  br label %98

85:                                               ; preds = %64
  br label %86

86:                                               ; preds = %85
  %87 = load i32, i32* %12, align 4
  %88 = add i32 %87, 1
  store i32 %88, i32* %12, align 4
  br label %60

89:                                               ; preds = %60
  %90 = load %struct.bt_ctf_event*, %struct.bt_ctf_event** %5, align 8
  %91 = load %struct.bt_ctf_field*, %struct.bt_ctf_field** %10, align 8
  %92 = call i32 @bt_ctf_event_set_payload(%struct.bt_ctf_event* %90, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), %struct.bt_ctf_field* %91)
  store i32 %92, i32* %13, align 4
  %93 = load i32, i32* %13, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %97

95:                                               ; preds = %89
  %96 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8, i64 0, i64 0))
  br label %97

97:                                               ; preds = %95, %89
  br label %98

98:                                               ; preds = %97, %82, %57
  %99 = load %struct.bt_ctf_field*, %struct.bt_ctf_field** %10, align 8
  %100 = call i32 @bt_ctf_field_put(%struct.bt_ctf_field* %99)
  br label %101

101:                                              ; preds = %98, %49
  %102 = load %struct.bt_ctf_field_type*, %struct.bt_ctf_field_type** %8, align 8
  %103 = call i32 @bt_ctf_field_type_put(%struct.bt_ctf_field_type* %102)
  br label %104

104:                                              ; preds = %101, %40, %32
  %105 = load %struct.bt_ctf_field*, %struct.bt_ctf_field** %9, align 8
  %106 = call i32 @bt_ctf_field_put(%struct.bt_ctf_field* %105)
  br label %107

107:                                              ; preds = %104, %24
  %108 = load %struct.bt_ctf_field_type*, %struct.bt_ctf_field_type** %7, align 8
  %109 = call i32 @bt_ctf_field_type_put(%struct.bt_ctf_field_type* %108)
  %110 = load i32, i32* %13, align 4
  ret i32 %110
}

declare dso_local %struct.bt_ctf_field_type* @bt_ctf_event_class_get_field_by_name(%struct.bt_ctf_event_class*, i8*) #1

declare dso_local %struct.bt_ctf_field* @bt_ctf_field_create(%struct.bt_ctf_field_type*) #1

declare dso_local i32 @pr_err(i8*, ...) #1

declare dso_local i32 @bt_ctf_field_unsigned_integer_set_value(%struct.bt_ctf_field*, i32) #1

declare dso_local i32 @bt_ctf_event_set_payload(%struct.bt_ctf_event*, i8*, %struct.bt_ctf_field*) #1

declare dso_local i32 @bt_ctf_field_sequence_set_length(%struct.bt_ctf_field*, %struct.bt_ctf_field*) #1

declare dso_local %struct.bt_ctf_field* @bt_ctf_field_sequence_get_field(%struct.bt_ctf_field*, i32) #1

declare dso_local i32 @bt_ctf_field_put(%struct.bt_ctf_field*) #1

declare dso_local i32 @bt_ctf_field_type_put(%struct.bt_ctf_field_type*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
