; ModuleID = '/home/carl/AnghaBench/linux/kernel/bpf/extr_btf.c_btf_enum_check_meta.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/bpf/extr_btf.c_btf_enum_check_meta.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btf_verifier_env = type { %struct.btf* }
%struct.btf = type { i32 }
%struct.btf_type = type { i32, i64 }
%struct.btf_enum = type { i32, i64 }

@.str = private unnamed_addr constant [28 x i8] c"meta_left:%u meta_needed:%u\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"Invalid btf_info kind_flag\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"Unexpected size\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"Invalid name\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"\09Invalid name_offset:%u\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"\09%s val=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.btf_verifier_env*, %struct.btf_type*, i32)* @btf_enum_check_meta to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @btf_enum_check_meta(%struct.btf_verifier_env* %0, %struct.btf_type* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.btf_verifier_env*, align 8
  %6 = alloca %struct.btf_type*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.btf_enum*, align 8
  %9 = alloca %struct.btf*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.btf_verifier_env* %0, %struct.btf_verifier_env** %5, align 8
  store %struct.btf_type* %1, %struct.btf_type** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load %struct.btf_type*, %struct.btf_type** %6, align 8
  %14 = call %struct.btf_enum* @btf_type_enum(%struct.btf_type* %13)
  store %struct.btf_enum* %14, %struct.btf_enum** %8, align 8
  %15 = load %struct.btf_verifier_env*, %struct.btf_verifier_env** %5, align 8
  %16 = getelementptr inbounds %struct.btf_verifier_env, %struct.btf_verifier_env* %15, i32 0, i32 0
  %17 = load %struct.btf*, %struct.btf** %16, align 8
  store %struct.btf* %17, %struct.btf** %9, align 8
  %18 = load %struct.btf_type*, %struct.btf_type** %6, align 8
  %19 = call i32 @btf_type_vlen(%struct.btf_type* %18)
  store i32 %19, i32* %11, align 4
  %20 = load i32, i32* %11, align 4
  %21 = sext i32 %20 to i64
  %22 = mul i64 %21, 16
  %23 = trunc i64 %22 to i32
  store i32 %23, i32* %12, align 4
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* %12, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %35

27:                                               ; preds = %3
  %28 = load %struct.btf_verifier_env*, %struct.btf_verifier_env** %5, align 8
  %29 = load %struct.btf_type*, %struct.btf_type** %6, align 8
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* %12, align 4
  %32 = call i32 @btf_verifier_log_basic(%struct.btf_verifier_env* %28, %struct.btf_type* %29, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %30, i32 %31)
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %4, align 4
  br label %158

35:                                               ; preds = %3
  %36 = load %struct.btf_type*, %struct.btf_type** %6, align 8
  %37 = call i64 @btf_type_kflag(%struct.btf_type* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %45

39:                                               ; preds = %35
  %40 = load %struct.btf_verifier_env*, %struct.btf_verifier_env** %5, align 8
  %41 = load %struct.btf_type*, %struct.btf_type** %6, align 8
  %42 = call i32 @btf_verifier_log_type(%struct.btf_verifier_env* %40, %struct.btf_type* %41, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %43 = load i32, i32* @EINVAL, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %4, align 4
  br label %158

45:                                               ; preds = %35
  %46 = load %struct.btf_type*, %struct.btf_type** %6, align 8
  %47 = getelementptr inbounds %struct.btf_type, %struct.btf_type* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = icmp sgt i32 %48, 8
  br i1 %49, label %56, label %50

50:                                               ; preds = %45
  %51 = load %struct.btf_type*, %struct.btf_type** %6, align 8
  %52 = getelementptr inbounds %struct.btf_type, %struct.btf_type* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @is_power_of_2(i32 %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %62, label %56

56:                                               ; preds = %50, %45
  %57 = load %struct.btf_verifier_env*, %struct.btf_verifier_env** %5, align 8
  %58 = load %struct.btf_type*, %struct.btf_type** %6, align 8
  %59 = call i32 @btf_verifier_log_type(%struct.btf_verifier_env* %57, %struct.btf_type* %58, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  %60 = load i32, i32* @EINVAL, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %4, align 4
  br label %158

62:                                               ; preds = %50
  %63 = load %struct.btf_type*, %struct.btf_type** %6, align 8
  %64 = getelementptr inbounds %struct.btf_type, %struct.btf_type* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %82

67:                                               ; preds = %62
  %68 = load %struct.btf_verifier_env*, %struct.btf_verifier_env** %5, align 8
  %69 = getelementptr inbounds %struct.btf_verifier_env, %struct.btf_verifier_env* %68, i32 0, i32 0
  %70 = load %struct.btf*, %struct.btf** %69, align 8
  %71 = load %struct.btf_type*, %struct.btf_type** %6, align 8
  %72 = getelementptr inbounds %struct.btf_type, %struct.btf_type* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = call i32 @btf_name_valid_identifier(%struct.btf* %70, i64 %73)
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %82, label %76

76:                                               ; preds = %67
  %77 = load %struct.btf_verifier_env*, %struct.btf_verifier_env** %5, align 8
  %78 = load %struct.btf_type*, %struct.btf_type** %6, align 8
  %79 = call i32 @btf_verifier_log_type(%struct.btf_verifier_env* %77, %struct.btf_type* %78, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0))
  %80 = load i32, i32* @EINVAL, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %4, align 4
  br label %158

82:                                               ; preds = %67, %62
  %83 = load %struct.btf_verifier_env*, %struct.btf_verifier_env** %5, align 8
  %84 = load %struct.btf_type*, %struct.btf_type** %6, align 8
  %85 = call i32 @btf_verifier_log_type(%struct.btf_verifier_env* %83, %struct.btf_type* %84, i8* null)
  store i32 0, i32* %10, align 4
  br label %86

86:                                               ; preds = %153, %82
  %87 = load i32, i32* %10, align 4
  %88 = load i32, i32* %11, align 4
  %89 = icmp slt i32 %87, %88
  br i1 %89, label %90, label %156

90:                                               ; preds = %86
  %91 = load %struct.btf*, %struct.btf** %9, align 8
  %92 = load %struct.btf_enum*, %struct.btf_enum** %8, align 8
  %93 = load i32, i32* %10, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.btf_enum, %struct.btf_enum* %92, i64 %94
  %96 = getelementptr inbounds %struct.btf_enum, %struct.btf_enum* %95, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = call i32 @btf_name_offset_valid(%struct.btf* %91, i64 %97)
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %112, label %100

100:                                              ; preds = %90
  %101 = load %struct.btf_verifier_env*, %struct.btf_verifier_env** %5, align 8
  %102 = load %struct.btf_enum*, %struct.btf_enum** %8, align 8
  %103 = load i32, i32* %10, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds %struct.btf_enum, %struct.btf_enum* %102, i64 %104
  %106 = getelementptr inbounds %struct.btf_enum, %struct.btf_enum* %105, i32 0, i32 1
  %107 = load i64, i64* %106, align 8
  %108 = trunc i64 %107 to i32
  %109 = call i32 (%struct.btf_verifier_env*, i8*, i32, ...) @btf_verifier_log(%struct.btf_verifier_env* %101, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i32 %108)
  %110 = load i32, i32* @EINVAL, align 4
  %111 = sub nsw i32 0, %110
  store i32 %111, i32* %4, align 4
  br label %158

112:                                              ; preds = %90
  %113 = load %struct.btf_enum*, %struct.btf_enum** %8, align 8
  %114 = load i32, i32* %10, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds %struct.btf_enum, %struct.btf_enum* %113, i64 %115
  %117 = getelementptr inbounds %struct.btf_enum, %struct.btf_enum* %116, i32 0, i32 1
  %118 = load i64, i64* %117, align 8
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %130

120:                                              ; preds = %112
  %121 = load %struct.btf*, %struct.btf** %9, align 8
  %122 = load %struct.btf_enum*, %struct.btf_enum** %8, align 8
  %123 = load i32, i32* %10, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds %struct.btf_enum, %struct.btf_enum* %122, i64 %124
  %126 = getelementptr inbounds %struct.btf_enum, %struct.btf_enum* %125, i32 0, i32 1
  %127 = load i64, i64* %126, align 8
  %128 = call i32 @btf_name_valid_identifier(%struct.btf* %121, i64 %127)
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %136, label %130

130:                                              ; preds = %120, %112
  %131 = load %struct.btf_verifier_env*, %struct.btf_verifier_env** %5, align 8
  %132 = load %struct.btf_type*, %struct.btf_type** %6, align 8
  %133 = call i32 @btf_verifier_log_type(%struct.btf_verifier_env* %131, %struct.btf_type* %132, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0))
  %134 = load i32, i32* @EINVAL, align 4
  %135 = sub nsw i32 0, %134
  store i32 %135, i32* %4, align 4
  br label %158

136:                                              ; preds = %120
  %137 = load %struct.btf_verifier_env*, %struct.btf_verifier_env** %5, align 8
  %138 = load %struct.btf*, %struct.btf** %9, align 8
  %139 = load %struct.btf_enum*, %struct.btf_enum** %8, align 8
  %140 = load i32, i32* %10, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds %struct.btf_enum, %struct.btf_enum* %139, i64 %141
  %143 = getelementptr inbounds %struct.btf_enum, %struct.btf_enum* %142, i32 0, i32 1
  %144 = load i64, i64* %143, align 8
  %145 = call i32 @__btf_name_by_offset(%struct.btf* %138, i64 %144)
  %146 = load %struct.btf_enum*, %struct.btf_enum** %8, align 8
  %147 = load i32, i32* %10, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds %struct.btf_enum, %struct.btf_enum* %146, i64 %148
  %150 = getelementptr inbounds %struct.btf_enum, %struct.btf_enum* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 8
  %152 = call i32 (%struct.btf_verifier_env*, i8*, i32, ...) @btf_verifier_log(%struct.btf_verifier_env* %137, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), i32 %145, i32 %151)
  br label %153

153:                                              ; preds = %136
  %154 = load i32, i32* %10, align 4
  %155 = add nsw i32 %154, 1
  store i32 %155, i32* %10, align 4
  br label %86

156:                                              ; preds = %86
  %157 = load i32, i32* %12, align 4
  store i32 %157, i32* %4, align 4
  br label %158

158:                                              ; preds = %156, %130, %100, %76, %56, %39, %27
  %159 = load i32, i32* %4, align 4
  ret i32 %159
}

declare dso_local %struct.btf_enum* @btf_type_enum(%struct.btf_type*) #1

declare dso_local i32 @btf_type_vlen(%struct.btf_type*) #1

declare dso_local i32 @btf_verifier_log_basic(%struct.btf_verifier_env*, %struct.btf_type*, i8*, i32, i32) #1

declare dso_local i64 @btf_type_kflag(%struct.btf_type*) #1

declare dso_local i32 @btf_verifier_log_type(%struct.btf_verifier_env*, %struct.btf_type*, i8*) #1

declare dso_local i32 @is_power_of_2(i32) #1

declare dso_local i32 @btf_name_valid_identifier(%struct.btf*, i64) #1

declare dso_local i32 @btf_name_offset_valid(%struct.btf*, i64) #1

declare dso_local i32 @btf_verifier_log(%struct.btf_verifier_env*, i8*, i32, ...) #1

declare dso_local i32 @__btf_name_by_offset(%struct.btf*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
