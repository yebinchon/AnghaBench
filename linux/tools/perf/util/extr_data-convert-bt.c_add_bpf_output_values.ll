; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_data-convert-bt.c_add_bpf_output_values.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_data-convert-bt.c_add_bpf_output_values.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bt_ctf_event_class = type { i32 }
%struct.bt_ctf_event = type { i32 }
%struct.perf_sample = type { i32, i64 }
%struct.bt_ctf_field_type = type { i32 }
%struct.bt_ctf_field = type { i32 }

@.str = private unnamed_addr constant [61 x i8] c"Incorrect raw_size (%u) in bpf output event, skip %zu bytes\0A\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"raw_len\00", align 1
@.str.2 = private unnamed_addr constant [49 x i8] c"failed to create 'raw_len' for bpf output event\0A\00", align 1
@.str.3 = private unnamed_addr constant [39 x i8] c"failed to set field value for raw_len\0A\00", align 1
@.str.4 = private unnamed_addr constant [34 x i8] c"failed to set payload to raw_len\0A\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"raw_data\00", align 1
@.str.6 = private unnamed_addr constant [50 x i8] c"failed to create 'raw_data' for bpf output event\0A\00", align 1
@.str.7 = private unnamed_addr constant [36 x i8] c"failed to set length of 'raw_data'\0A\00", align 1
@.str.8 = private unnamed_addr constant [28 x i8] c"failed to set raw_data[%d]\0A\00", align 1
@.str.9 = private unnamed_addr constant [36 x i8] c"failed to set payload for raw_data\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bt_ctf_event_class*, %struct.bt_ctf_event*, %struct.perf_sample*)* @add_bpf_output_values to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_bpf_output_values(%struct.bt_ctf_event_class* %0, %struct.bt_ctf_event* %1, %struct.perf_sample* %2) #0 {
  %4 = alloca %struct.bt_ctf_event_class*, align 8
  %5 = alloca %struct.bt_ctf_event*, align 8
  %6 = alloca %struct.perf_sample*, align 8
  %7 = alloca %struct.bt_ctf_field_type*, align 8
  %8 = alloca %struct.bt_ctf_field_type*, align 8
  %9 = alloca %struct.bt_ctf_field*, align 8
  %10 = alloca %struct.bt_ctf_field*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.bt_ctf_field*, align 8
  store %struct.bt_ctf_event_class* %0, %struct.bt_ctf_event_class** %4, align 8
  store %struct.bt_ctf_event* %1, %struct.bt_ctf_event** %5, align 8
  store %struct.perf_sample* %2, %struct.perf_sample** %6, align 8
  %16 = load %struct.perf_sample*, %struct.perf_sample** %6, align 8
  %17 = getelementptr inbounds %struct.perf_sample, %struct.perf_sample* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  store i32 %18, i32* %11, align 4
  %19 = load i32, i32* %11, align 4
  %20 = zext i32 %19 to i64
  %21 = udiv i64 %20, 4
  %22 = trunc i64 %21 to i32
  store i32 %22, i32* %12, align 4
  %23 = load i32, i32* %12, align 4
  %24 = zext i32 %23 to i64
  %25 = mul i64 %24, 4
  %26 = load i32, i32* %11, align 4
  %27 = zext i32 %26 to i64
  %28 = icmp ne i64 %25, %27
  br i1 %28, label %29, label %39

29:                                               ; preds = %3
  %30 = load i32, i32* %11, align 4
  %31 = load i32, i32* %12, align 4
  %32 = zext i32 %31 to i64
  %33 = mul i64 %32, 4
  %34 = load i32, i32* %11, align 4
  %35 = zext i32 %34 to i64
  %36 = sub i64 %33, %35
  %37 = trunc i64 %36 to i32
  %38 = call i32 @pr_warning(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0), i32 %30, i32 %37)
  br label %39

39:                                               ; preds = %29, %3
  %40 = load %struct.bt_ctf_event_class*, %struct.bt_ctf_event_class** %4, align 8
  %41 = call %struct.bt_ctf_field_type* @bt_ctf_event_class_get_field_by_name(%struct.bt_ctf_event_class* %40, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  store %struct.bt_ctf_field_type* %41, %struct.bt_ctf_field_type** %7, align 8
  %42 = load %struct.bt_ctf_field_type*, %struct.bt_ctf_field_type** %7, align 8
  %43 = call %struct.bt_ctf_field* @bt_ctf_field_create(%struct.bt_ctf_field_type* %42)
  store %struct.bt_ctf_field* %43, %struct.bt_ctf_field** %9, align 8
  %44 = load %struct.bt_ctf_field*, %struct.bt_ctf_field** %9, align 8
  %45 = icmp ne %struct.bt_ctf_field* %44, null
  br i1 %45, label %48, label %46

46:                                               ; preds = %39
  %47 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %14, align 4
  br label %129

48:                                               ; preds = %39
  %49 = load %struct.bt_ctf_field*, %struct.bt_ctf_field** %9, align 8
  %50 = load i32, i32* %12, align 4
  %51 = call i32 @bt_ctf_field_unsigned_integer_set_value(%struct.bt_ctf_field* %49, i32 %50)
  store i32 %51, i32* %14, align 4
  %52 = load i32, i32* %14, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %48
  %55 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0))
  br label %126

56:                                               ; preds = %48
  %57 = load %struct.bt_ctf_event*, %struct.bt_ctf_event** %5, align 8
  %58 = load %struct.bt_ctf_field*, %struct.bt_ctf_field** %9, align 8
  %59 = call i32 @bt_ctf_event_set_payload(%struct.bt_ctf_event* %57, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), %struct.bt_ctf_field* %58)
  store i32 %59, i32* %14, align 4
  %60 = load i32, i32* %14, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %56
  %63 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0))
  br label %126

64:                                               ; preds = %56
  %65 = load %struct.bt_ctf_event_class*, %struct.bt_ctf_event_class** %4, align 8
  %66 = call %struct.bt_ctf_field_type* @bt_ctf_event_class_get_field_by_name(%struct.bt_ctf_event_class* %65, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0))
  store %struct.bt_ctf_field_type* %66, %struct.bt_ctf_field_type** %8, align 8
  %67 = load %struct.bt_ctf_field_type*, %struct.bt_ctf_field_type** %8, align 8
  %68 = call %struct.bt_ctf_field* @bt_ctf_field_create(%struct.bt_ctf_field_type* %67)
  store %struct.bt_ctf_field* %68, %struct.bt_ctf_field** %10, align 8
  %69 = load %struct.bt_ctf_field*, %struct.bt_ctf_field** %10, align 8
  %70 = icmp ne %struct.bt_ctf_field* %69, null
  br i1 %70, label %73, label %71

71:                                               ; preds = %64
  %72 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.6, i64 0, i64 0))
  store i32 -1, i32* %14, align 4
  br label %123

73:                                               ; preds = %64
  %74 = load %struct.bt_ctf_field*, %struct.bt_ctf_field** %10, align 8
  %75 = load %struct.bt_ctf_field*, %struct.bt_ctf_field** %9, align 8
  %76 = call i32 @bt_ctf_field_sequence_set_length(%struct.bt_ctf_field* %74, %struct.bt_ctf_field* %75)
  store i32 %76, i32* %14, align 4
  %77 = load i32, i32* %14, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %73
  %80 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.7, i64 0, i64 0))
  br label %120

81:                                               ; preds = %73
  store i32 0, i32* %13, align 4
  br label %82

82:                                               ; preds = %108, %81
  %83 = load i32, i32* %13, align 4
  %84 = load i32, i32* %12, align 4
  %85 = icmp ult i32 %83, %84
  br i1 %85, label %86, label %111

86:                                               ; preds = %82
  %87 = load %struct.bt_ctf_field*, %struct.bt_ctf_field** %10, align 8
  %88 = load i32, i32* %13, align 4
  %89 = call %struct.bt_ctf_field* @bt_ctf_field_sequence_get_field(%struct.bt_ctf_field* %87, i32 %88)
  store %struct.bt_ctf_field* %89, %struct.bt_ctf_field** %15, align 8
  %90 = load %struct.bt_ctf_field*, %struct.bt_ctf_field** %15, align 8
  %91 = load %struct.perf_sample*, %struct.perf_sample** %6, align 8
  %92 = getelementptr inbounds %struct.perf_sample, %struct.perf_sample* %91, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  %94 = inttoptr i64 %93 to i32*
  %95 = load i32, i32* %13, align 4
  %96 = zext i32 %95 to i64
  %97 = getelementptr inbounds i32, i32* %94, i64 %96
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @bt_ctf_field_unsigned_integer_set_value(%struct.bt_ctf_field* %90, i32 %98)
  store i32 %99, i32* %14, align 4
  %100 = load %struct.bt_ctf_field*, %struct.bt_ctf_field** %15, align 8
  %101 = call i32 @bt_ctf_field_put(%struct.bt_ctf_field* %100)
  %102 = load i32, i32* %14, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %107

104:                                              ; preds = %86
  %105 = load i32, i32* %13, align 4
  %106 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8, i64 0, i64 0), i32 %105)
  br label %120

107:                                              ; preds = %86
  br label %108

108:                                              ; preds = %107
  %109 = load i32, i32* %13, align 4
  %110 = add i32 %109, 1
  store i32 %110, i32* %13, align 4
  br label %82

111:                                              ; preds = %82
  %112 = load %struct.bt_ctf_event*, %struct.bt_ctf_event** %5, align 8
  %113 = load %struct.bt_ctf_field*, %struct.bt_ctf_field** %10, align 8
  %114 = call i32 @bt_ctf_event_set_payload(%struct.bt_ctf_event* %112, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), %struct.bt_ctf_field* %113)
  store i32 %114, i32* %14, align 4
  %115 = load i32, i32* %14, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %119

117:                                              ; preds = %111
  %118 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.9, i64 0, i64 0))
  br label %119

119:                                              ; preds = %117, %111
  br label %120

120:                                              ; preds = %119, %104, %79
  %121 = load %struct.bt_ctf_field*, %struct.bt_ctf_field** %10, align 8
  %122 = call i32 @bt_ctf_field_put(%struct.bt_ctf_field* %121)
  br label %123

123:                                              ; preds = %120, %71
  %124 = load %struct.bt_ctf_field_type*, %struct.bt_ctf_field_type** %8, align 8
  %125 = call i32 @bt_ctf_field_type_put(%struct.bt_ctf_field_type* %124)
  br label %126

126:                                              ; preds = %123, %62, %54
  %127 = load %struct.bt_ctf_field*, %struct.bt_ctf_field** %9, align 8
  %128 = call i32 @bt_ctf_field_put(%struct.bt_ctf_field* %127)
  br label %129

129:                                              ; preds = %126, %46
  %130 = load %struct.bt_ctf_field_type*, %struct.bt_ctf_field_type** %7, align 8
  %131 = call i32 @bt_ctf_field_type_put(%struct.bt_ctf_field_type* %130)
  %132 = load i32, i32* %14, align 4
  ret i32 %132
}

declare dso_local i32 @pr_warning(i8*, i32, i32) #1

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
