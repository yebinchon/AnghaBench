; ModuleID = '/home/carl/AnghaBench/linux/tools/lib/bpf/extr_btf_dump.c_btf_dump_mark_referenced.c'
source_filename = "/home/carl/AnghaBench/linux/tools/lib/bpf/extr_btf_dump.c_btf_dump_mark_referenced.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btf_dump = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.btf_type = type { i64 }
%struct.btf_array = type { i64, i64 }
%struct.btf_member = type { i64 }
%struct.btf_param = type { i64 }
%struct.btf_var_secinfo = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.btf_dump*)* @btf_dump_mark_referenced to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @btf_dump_mark_referenced(%struct.btf_dump* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.btf_dump*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.btf_type*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.btf_array*, align 8
  %10 = alloca %struct.btf_member*, align 8
  %11 = alloca %struct.btf_param*, align 8
  %12 = alloca %struct.btf_var_secinfo*, align 8
  store %struct.btf_dump* %0, %struct.btf_dump** %3, align 8
  %13 = load %struct.btf_dump*, %struct.btf_dump** %3, align 8
  %14 = getelementptr inbounds %struct.btf_dump, %struct.btf_dump* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @btf__get_nr_types(i32 %15)
  store i32 %16, i32* %6, align 4
  store i32 1, i32* %4, align 4
  br label %17

17:                                               ; preds = %130, %1
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* %6, align 4
  %20 = icmp sle i32 %18, %19
  br i1 %20, label %21, label %133

21:                                               ; preds = %17
  %22 = load %struct.btf_dump*, %struct.btf_dump** %3, align 8
  %23 = getelementptr inbounds %struct.btf_dump, %struct.btf_dump* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* %4, align 4
  %26 = call %struct.btf_type* @btf__type_by_id(i32 %24, i32 %25)
  store %struct.btf_type* %26, %struct.btf_type** %7, align 8
  %27 = load %struct.btf_type*, %struct.btf_type** %7, align 8
  %28 = call i32 @btf_vlen(%struct.btf_type* %27)
  store i32 %28, i32* %8, align 4
  %29 = load %struct.btf_type*, %struct.btf_type** %7, align 8
  %30 = call i32 @btf_kind(%struct.btf_type* %29)
  switch i32 %30, label %126 [
    i32 135, label %31
    i32 139, label %31
    i32 136, label %31
    i32 128, label %32
    i32 141, label %32
    i32 133, label %32
    i32 134, label %32
    i32 131, label %32
    i32 138, label %32
    i32 129, label %32
    i32 142, label %41
    i32 132, label %60
    i32 130, label %60
    i32 137, label %82
    i32 140, label %104
  ]

31:                                               ; preds = %21, %21, %21
  br label %129

32:                                               ; preds = %21, %21, %21, %21, %21, %21, %21
  %33 = load %struct.btf_dump*, %struct.btf_dump** %3, align 8
  %34 = getelementptr inbounds %struct.btf_dump, %struct.btf_dump* %33, i32 0, i32 0
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = load %struct.btf_type*, %struct.btf_type** %7, align 8
  %37 = getelementptr inbounds %struct.btf_type, %struct.btf_type* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  store i32 1, i32* %40, align 4
  br label %129

41:                                               ; preds = %21
  %42 = load %struct.btf_type*, %struct.btf_type** %7, align 8
  %43 = call %struct.btf_array* @btf_array(%struct.btf_type* %42)
  store %struct.btf_array* %43, %struct.btf_array** %9, align 8
  %44 = load %struct.btf_dump*, %struct.btf_dump** %3, align 8
  %45 = getelementptr inbounds %struct.btf_dump, %struct.btf_dump* %44, i32 0, i32 0
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = load %struct.btf_array*, %struct.btf_array** %9, align 8
  %48 = getelementptr inbounds %struct.btf_array, %struct.btf_array* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  store i32 1, i32* %51, align 4
  %52 = load %struct.btf_dump*, %struct.btf_dump** %3, align 8
  %53 = getelementptr inbounds %struct.btf_dump, %struct.btf_dump* %52, i32 0, i32 0
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %53, align 8
  %55 = load %struct.btf_array*, %struct.btf_array** %9, align 8
  %56 = getelementptr inbounds %struct.btf_array, %struct.btf_array* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  store i32 1, i32* %59, align 4
  br label %129

60:                                               ; preds = %21, %21
  %61 = load %struct.btf_type*, %struct.btf_type** %7, align 8
  %62 = call %struct.btf_member* @btf_members(%struct.btf_type* %61)
  store %struct.btf_member* %62, %struct.btf_member** %10, align 8
  store i32 0, i32* %5, align 4
  br label %63

63:                                               ; preds = %76, %60
  %64 = load i32, i32* %5, align 4
  %65 = load i32, i32* %8, align 4
  %66 = icmp slt i32 %64, %65
  br i1 %66, label %67, label %81

67:                                               ; preds = %63
  %68 = load %struct.btf_dump*, %struct.btf_dump** %3, align 8
  %69 = getelementptr inbounds %struct.btf_dump, %struct.btf_dump* %68, i32 0, i32 0
  %70 = load %struct.TYPE_2__*, %struct.TYPE_2__** %69, align 8
  %71 = load %struct.btf_member*, %struct.btf_member** %10, align 8
  %72 = getelementptr inbounds %struct.btf_member, %struct.btf_member* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 0
  store i32 1, i32* %75, align 4
  br label %76

76:                                               ; preds = %67
  %77 = load i32, i32* %5, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %5, align 4
  %79 = load %struct.btf_member*, %struct.btf_member** %10, align 8
  %80 = getelementptr inbounds %struct.btf_member, %struct.btf_member* %79, i32 1
  store %struct.btf_member* %80, %struct.btf_member** %10, align 8
  br label %63

81:                                               ; preds = %63
  br label %129

82:                                               ; preds = %21
  %83 = load %struct.btf_type*, %struct.btf_type** %7, align 8
  %84 = call %struct.btf_param* @btf_params(%struct.btf_type* %83)
  store %struct.btf_param* %84, %struct.btf_param** %11, align 8
  store i32 0, i32* %5, align 4
  br label %85

85:                                               ; preds = %98, %82
  %86 = load i32, i32* %5, align 4
  %87 = load i32, i32* %8, align 4
  %88 = icmp slt i32 %86, %87
  br i1 %88, label %89, label %103

89:                                               ; preds = %85
  %90 = load %struct.btf_dump*, %struct.btf_dump** %3, align 8
  %91 = getelementptr inbounds %struct.btf_dump, %struct.btf_dump* %90, i32 0, i32 0
  %92 = load %struct.TYPE_2__*, %struct.TYPE_2__** %91, align 8
  %93 = load %struct.btf_param*, %struct.btf_param** %11, align 8
  %94 = getelementptr inbounds %struct.btf_param, %struct.btf_param* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i64 %95
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i32 0, i32 0
  store i32 1, i32* %97, align 4
  br label %98

98:                                               ; preds = %89
  %99 = load i32, i32* %5, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %5, align 4
  %101 = load %struct.btf_param*, %struct.btf_param** %11, align 8
  %102 = getelementptr inbounds %struct.btf_param, %struct.btf_param* %101, i32 1
  store %struct.btf_param* %102, %struct.btf_param** %11, align 8
  br label %85

103:                                              ; preds = %85
  br label %129

104:                                              ; preds = %21
  %105 = load %struct.btf_type*, %struct.btf_type** %7, align 8
  %106 = call %struct.btf_var_secinfo* @btf_var_secinfos(%struct.btf_type* %105)
  store %struct.btf_var_secinfo* %106, %struct.btf_var_secinfo** %12, align 8
  store i32 0, i32* %5, align 4
  br label %107

107:                                              ; preds = %120, %104
  %108 = load i32, i32* %5, align 4
  %109 = load i32, i32* %8, align 4
  %110 = icmp slt i32 %108, %109
  br i1 %110, label %111, label %125

111:                                              ; preds = %107
  %112 = load %struct.btf_dump*, %struct.btf_dump** %3, align 8
  %113 = getelementptr inbounds %struct.btf_dump, %struct.btf_dump* %112, i32 0, i32 0
  %114 = load %struct.TYPE_2__*, %struct.TYPE_2__** %113, align 8
  %115 = load %struct.btf_var_secinfo*, %struct.btf_var_secinfo** %12, align 8
  %116 = getelementptr inbounds %struct.btf_var_secinfo, %struct.btf_var_secinfo* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %114, i64 %117
  %119 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %118, i32 0, i32 0
  store i32 1, i32* %119, align 4
  br label %120

120:                                              ; preds = %111
  %121 = load i32, i32* %5, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %5, align 4
  %123 = load %struct.btf_var_secinfo*, %struct.btf_var_secinfo** %12, align 8
  %124 = getelementptr inbounds %struct.btf_var_secinfo, %struct.btf_var_secinfo* %123, i32 1
  store %struct.btf_var_secinfo* %124, %struct.btf_var_secinfo** %12, align 8
  br label %107

125:                                              ; preds = %107
  br label %129

126:                                              ; preds = %21
  %127 = load i32, i32* @EINVAL, align 4
  %128 = sub nsw i32 0, %127
  store i32 %128, i32* %2, align 4
  br label %134

129:                                              ; preds = %125, %103, %81, %41, %32, %31
  br label %130

130:                                              ; preds = %129
  %131 = load i32, i32* %4, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %4, align 4
  br label %17

133:                                              ; preds = %17
  store i32 0, i32* %2, align 4
  br label %134

134:                                              ; preds = %133, %126
  %135 = load i32, i32* %2, align 4
  ret i32 %135
}

declare dso_local i32 @btf__get_nr_types(i32) #1

declare dso_local %struct.btf_type* @btf__type_by_id(i32, i32) #1

declare dso_local i32 @btf_vlen(%struct.btf_type*) #1

declare dso_local i32 @btf_kind(%struct.btf_type*) #1

declare dso_local %struct.btf_array* @btf_array(%struct.btf_type*) #1

declare dso_local %struct.btf_member* @btf_members(%struct.btf_type*) #1

declare dso_local %struct.btf_param* @btf_params(%struct.btf_type*) #1

declare dso_local %struct.btf_var_secinfo* @btf_var_secinfos(%struct.btf_type*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
