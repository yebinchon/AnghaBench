; ModuleID = '/home/carl/AnghaBench/linux/tools/lib/bpf/extr_btf.c_btf_fixup_datasec.c'
source_filename = "/home/carl/AnghaBench/linux/tools/lib/bpf/extr_btf.c_btf_fixup_datasec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_object = type { i32 }
%struct.btf = type { i32 }
%struct.btf_type = type { i64, i32 }
%struct.btf_var_secinfo = type { i64, i32 }
%struct.btf_var = type { i64 }

@.str = private unnamed_addr constant [51 x i8] c"No name found in string section for DATASEC kind.\0A\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"Invalid size for section %s: %u bytes\0A\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"Non-VAR type seen in section %s\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@BTF_VAR_STATIC = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [46 x i8] c"No name found in string section for VAR kind\0A\00", align 1
@.str.4 = private unnamed_addr constant [44 x i8] c"No offset found in symbol table for VAR %s\0A\00", align 1
@compare_vsi_off = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bpf_object*, %struct.btf*, %struct.btf_type*)* @btf_fixup_datasec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @btf_fixup_datasec(%struct.bpf_object* %0, %struct.btf* %1, %struct.btf_type* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.bpf_object*, align 8
  %6 = alloca %struct.btf*, align 8
  %7 = alloca %struct.btf_type*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.btf_type*, align 8
  %14 = alloca %struct.btf_var_secinfo*, align 8
  %15 = alloca %struct.btf_var*, align 8
  %16 = alloca i32, align 4
  store %struct.bpf_object* %0, %struct.bpf_object** %5, align 8
  store %struct.btf* %1, %struct.btf** %6, align 8
  store %struct.btf_type* %2, %struct.btf_type** %7, align 8
  store i64 0, i64* %8, align 8
  store i64 0, i64* %9, align 8
  %17 = load %struct.btf_type*, %struct.btf_type** %7, align 8
  %18 = call i64 @btf_vlen(%struct.btf_type* %17)
  store i64 %18, i64* %11, align 8
  %19 = load %struct.btf*, %struct.btf** %6, align 8
  %20 = load %struct.btf_type*, %struct.btf_type** %7, align 8
  %21 = getelementptr inbounds %struct.btf_type, %struct.btf_type* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = call i8* @btf__name_by_offset(%struct.btf* %19, i32 %22)
  store i8* %23, i8** %12, align 8
  %24 = load i8*, i8** %12, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %30, label %26

26:                                               ; preds = %3
  %27 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0))
  %28 = load i32, i32* @ENOENT, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %4, align 4
  br label %127

30:                                               ; preds = %3
  %31 = load %struct.bpf_object*, %struct.bpf_object** %5, align 8
  %32 = load i8*, i8** %12, align 8
  %33 = call i32 @bpf_object__section_size(%struct.bpf_object* %31, i8* %32, i64* %8)
  store i32 %33, i32* %16, align 4
  %34 = load i32, i32* %16, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %50, label %36

36:                                               ; preds = %30
  %37 = load i64, i64* %8, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %50

39:                                               ; preds = %36
  %40 = load %struct.btf_type*, %struct.btf_type** %7, align 8
  %41 = getelementptr inbounds %struct.btf_type, %struct.btf_type* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %56

44:                                               ; preds = %39
  %45 = load %struct.btf_type*, %struct.btf_type** %7, align 8
  %46 = getelementptr inbounds %struct.btf_type, %struct.btf_type* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* %8, align 8
  %49 = icmp ne i64 %47, %48
  br i1 %49, label %50, label %56

50:                                               ; preds = %44, %36, %30
  %51 = load i8*, i8** %12, align 8
  %52 = load i64, i64* %8, align 8
  %53 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i8* %51, i64 %52)
  %54 = load i32, i32* @ENOENT, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %4, align 4
  br label %127

56:                                               ; preds = %44, %39
  %57 = load i64, i64* %8, align 8
  %58 = load %struct.btf_type*, %struct.btf_type** %7, align 8
  %59 = getelementptr inbounds %struct.btf_type, %struct.btf_type* %58, i32 0, i32 0
  store i64 %57, i64* %59, align 8
  store i64 0, i64* %10, align 8
  %60 = load %struct.btf_type*, %struct.btf_type** %7, align 8
  %61 = call %struct.btf_var_secinfo* @btf_var_secinfos(%struct.btf_type* %60)
  store %struct.btf_var_secinfo* %61, %struct.btf_var_secinfo** %14, align 8
  br label %62

62:                                               ; preds = %116, %56
  %63 = load i64, i64* %10, align 8
  %64 = load i64, i64* %11, align 8
  %65 = icmp slt i64 %63, %64
  br i1 %65, label %66, label %121

66:                                               ; preds = %62
  %67 = load %struct.btf*, %struct.btf** %6, align 8
  %68 = load %struct.btf_var_secinfo*, %struct.btf_var_secinfo** %14, align 8
  %69 = getelementptr inbounds %struct.btf_var_secinfo, %struct.btf_var_secinfo* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = call %struct.btf_type* @btf__type_by_id(%struct.btf* %67, i32 %70)
  store %struct.btf_type* %71, %struct.btf_type** %13, align 8
  %72 = load %struct.btf_type*, %struct.btf_type** %13, align 8
  %73 = call %struct.btf_var* @btf_var(%struct.btf_type* %72)
  store %struct.btf_var* %73, %struct.btf_var** %15, align 8
  %74 = load %struct.btf_type*, %struct.btf_type** %13, align 8
  %75 = call i32 @btf_is_var(%struct.btf_type* %74)
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %82, label %77

77:                                               ; preds = %66
  %78 = load i8*, i8** %12, align 8
  %79 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i8* %78)
  %80 = load i32, i32* @EINVAL, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %4, align 4
  br label %127

82:                                               ; preds = %66
  %83 = load %struct.btf_var*, %struct.btf_var** %15, align 8
  %84 = getelementptr inbounds %struct.btf_var, %struct.btf_var* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* @BTF_VAR_STATIC, align 8
  %87 = icmp eq i64 %85, %86
  br i1 %87, label %88, label %89

88:                                               ; preds = %82
  br label %116

89:                                               ; preds = %82
  %90 = load %struct.btf*, %struct.btf** %6, align 8
  %91 = load %struct.btf_type*, %struct.btf_type** %13, align 8
  %92 = getelementptr inbounds %struct.btf_type, %struct.btf_type* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 8
  %94 = call i8* @btf__name_by_offset(%struct.btf* %90, i32 %93)
  store i8* %94, i8** %12, align 8
  %95 = load i8*, i8** %12, align 8
  %96 = icmp ne i8* %95, null
  br i1 %96, label %101, label %97

97:                                               ; preds = %89
  %98 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.3, i64 0, i64 0))
  %99 = load i32, i32* @ENOENT, align 4
  %100 = sub nsw i32 0, %99
  store i32 %100, i32* %4, align 4
  br label %127

101:                                              ; preds = %89
  %102 = load %struct.bpf_object*, %struct.bpf_object** %5, align 8
  %103 = load i8*, i8** %12, align 8
  %104 = call i32 @bpf_object__variable_offset(%struct.bpf_object* %102, i8* %103, i64* %9)
  store i32 %104, i32* %16, align 4
  %105 = load i32, i32* %16, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %112

107:                                              ; preds = %101
  %108 = load i8*, i8** %12, align 8
  %109 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.4, i64 0, i64 0), i8* %108)
  %110 = load i32, i32* @ENOENT, align 4
  %111 = sub nsw i32 0, %110
  store i32 %111, i32* %4, align 4
  br label %127

112:                                              ; preds = %101
  %113 = load i64, i64* %9, align 8
  %114 = load %struct.btf_var_secinfo*, %struct.btf_var_secinfo** %14, align 8
  %115 = getelementptr inbounds %struct.btf_var_secinfo, %struct.btf_var_secinfo* %114, i32 0, i32 0
  store i64 %113, i64* %115, align 8
  br label %116

116:                                              ; preds = %112, %88
  %117 = load i64, i64* %10, align 8
  %118 = add nsw i64 %117, 1
  store i64 %118, i64* %10, align 8
  %119 = load %struct.btf_var_secinfo*, %struct.btf_var_secinfo** %14, align 8
  %120 = getelementptr inbounds %struct.btf_var_secinfo, %struct.btf_var_secinfo* %119, i32 1
  store %struct.btf_var_secinfo* %120, %struct.btf_var_secinfo** %14, align 8
  br label %62

121:                                              ; preds = %62
  %122 = load %struct.btf_type*, %struct.btf_type** %7, align 8
  %123 = getelementptr inbounds %struct.btf_type, %struct.btf_type* %122, i64 1
  %124 = load i64, i64* %11, align 8
  %125 = load i32, i32* @compare_vsi_off, align 4
  %126 = call i32 @qsort(%struct.btf_type* %123, i64 %124, i32 16, i32 %125)
  store i32 0, i32* %4, align 4
  br label %127

127:                                              ; preds = %121, %107, %97, %77, %50, %26
  %128 = load i32, i32* %4, align 4
  ret i32 %128
}

declare dso_local i64 @btf_vlen(%struct.btf_type*) #1

declare dso_local i8* @btf__name_by_offset(%struct.btf*, i32) #1

declare dso_local i32 @pr_debug(i8*, ...) #1

declare dso_local i32 @bpf_object__section_size(%struct.bpf_object*, i8*, i64*) #1

declare dso_local %struct.btf_var_secinfo* @btf_var_secinfos(%struct.btf_type*) #1

declare dso_local %struct.btf_type* @btf__type_by_id(%struct.btf*, i32) #1

declare dso_local %struct.btf_var* @btf_var(%struct.btf_type*) #1

declare dso_local i32 @btf_is_var(%struct.btf_type*) #1

declare dso_local i32 @bpf_object__variable_offset(%struct.bpf_object*, i8*, i64*) #1

declare dso_local i32 @qsort(%struct.btf_type*, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
