; ModuleID = '/home/carl/AnghaBench/linux/kernel/bpf/extr_btf.c_btf_array_resolve.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/bpf/extr_btf.c_btf_array_resolve.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btf_verifier_env = type { %struct.btf* }
%struct.btf = type { i32 }
%struct.resolve_vertex = type { i32 }
%struct.btf_array = type { i32, i32, i32 }
%struct.btf_type = type { i32 }

@.str = private unnamed_addr constant [14 x i8] c"Invalid index\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"Invalid elem\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"Invalid array of int\00", align 1
@U32_MAX = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [29 x i8] c"Array size overflows U32_MAX\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.btf_verifier_env*, %struct.resolve_vertex*)* @btf_array_resolve to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @btf_array_resolve(%struct.btf_verifier_env* %0, %struct.resolve_vertex* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.btf_verifier_env*, align 8
  %5 = alloca %struct.resolve_vertex*, align 8
  %6 = alloca %struct.btf_array*, align 8
  %7 = alloca %struct.btf_type*, align 8
  %8 = alloca %struct.btf_type*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.btf*, align 8
  %12 = alloca i32, align 4
  store %struct.btf_verifier_env* %0, %struct.btf_verifier_env** %4, align 8
  store %struct.resolve_vertex* %1, %struct.resolve_vertex** %5, align 8
  %13 = load %struct.resolve_vertex*, %struct.resolve_vertex** %5, align 8
  %14 = getelementptr inbounds %struct.resolve_vertex, %struct.resolve_vertex* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.btf_array* @btf_type_array(i32 %15)
  store %struct.btf_array* %16, %struct.btf_array** %6, align 8
  %17 = load %struct.btf_verifier_env*, %struct.btf_verifier_env** %4, align 8
  %18 = getelementptr inbounds %struct.btf_verifier_env, %struct.btf_verifier_env* %17, i32 0, i32 0
  %19 = load %struct.btf*, %struct.btf** %18, align 8
  store %struct.btf* %19, %struct.btf** %11, align 8
  %20 = load %struct.btf_array*, %struct.btf_array** %6, align 8
  %21 = getelementptr inbounds %struct.btf_array, %struct.btf_array* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %10, align 4
  %23 = load %struct.btf*, %struct.btf** %11, align 8
  %24 = load i32, i32* %10, align 4
  %25 = call %struct.btf_type* @btf_type_by_id(%struct.btf* %23, i32 %24)
  store %struct.btf_type* %25, %struct.btf_type** %8, align 8
  %26 = load %struct.btf_type*, %struct.btf_type** %8, align 8
  %27 = call i64 @btf_type_nosize_or_null(%struct.btf_type* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %33, label %29

29:                                               ; preds = %2
  %30 = load %struct.btf_type*, %struct.btf_type** %8, align 8
  %31 = call i64 @btf_type_is_resolve_source_only(%struct.btf_type* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %41

33:                                               ; preds = %29, %2
  %34 = load %struct.btf_verifier_env*, %struct.btf_verifier_env** %4, align 8
  %35 = load %struct.resolve_vertex*, %struct.resolve_vertex** %5, align 8
  %36 = getelementptr inbounds %struct.resolve_vertex, %struct.resolve_vertex* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @btf_verifier_log_type(%struct.btf_verifier_env* %34, i32 %37, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %3, align 4
  br label %173

41:                                               ; preds = %29
  %42 = load %struct.btf_verifier_env*, %struct.btf_verifier_env** %4, align 8
  %43 = load %struct.btf_type*, %struct.btf_type** %8, align 8
  %44 = call i32 @env_type_is_resolve_sink(%struct.btf_verifier_env* %42, %struct.btf_type* %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %56, label %46

46:                                               ; preds = %41
  %47 = load %struct.btf_verifier_env*, %struct.btf_verifier_env** %4, align 8
  %48 = load i32, i32* %10, align 4
  %49 = call i32 @env_type_is_resolved(%struct.btf_verifier_env* %47, i32 %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %56, label %51

51:                                               ; preds = %46
  %52 = load %struct.btf_verifier_env*, %struct.btf_verifier_env** %4, align 8
  %53 = load %struct.btf_type*, %struct.btf_type** %8, align 8
  %54 = load i32, i32* %10, align 4
  %55 = call i32 @env_stack_push(%struct.btf_verifier_env* %52, %struct.btf_type* %53, i32 %54)
  store i32 %55, i32* %3, align 4
  br label %173

56:                                               ; preds = %46, %41
  %57 = load %struct.btf*, %struct.btf** %11, align 8
  %58 = call %struct.btf_type* @btf_type_id_size(%struct.btf* %57, i32* %10, i32* null)
  store %struct.btf_type* %58, %struct.btf_type** %8, align 8
  %59 = load %struct.btf_type*, %struct.btf_type** %8, align 8
  %60 = icmp ne %struct.btf_type* %59, null
  br i1 %60, label %61, label %69

61:                                               ; preds = %56
  %62 = load %struct.btf_type*, %struct.btf_type** %8, align 8
  %63 = call i64 @btf_type_is_int(%struct.btf_type* %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %61
  %66 = load %struct.btf_type*, %struct.btf_type** %8, align 8
  %67 = call i32 @btf_type_int_is_regular(%struct.btf_type* %66)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %77, label %69

69:                                               ; preds = %65, %61, %56
  %70 = load %struct.btf_verifier_env*, %struct.btf_verifier_env** %4, align 8
  %71 = load %struct.resolve_vertex*, %struct.resolve_vertex** %5, align 8
  %72 = getelementptr inbounds %struct.resolve_vertex, %struct.resolve_vertex* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @btf_verifier_log_type(%struct.btf_verifier_env* %70, i32 %73, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %75 = load i32, i32* @EINVAL, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %3, align 4
  br label %173

77:                                               ; preds = %65
  %78 = load %struct.btf_array*, %struct.btf_array** %6, align 8
  %79 = getelementptr inbounds %struct.btf_array, %struct.btf_array* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  store i32 %80, i32* %9, align 4
  %81 = load %struct.btf*, %struct.btf** %11, align 8
  %82 = load i32, i32* %9, align 4
  %83 = call %struct.btf_type* @btf_type_by_id(%struct.btf* %81, i32 %82)
  store %struct.btf_type* %83, %struct.btf_type** %7, align 8
  %84 = load %struct.btf_type*, %struct.btf_type** %7, align 8
  %85 = call i64 @btf_type_nosize_or_null(%struct.btf_type* %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %91, label %87

87:                                               ; preds = %77
  %88 = load %struct.btf_type*, %struct.btf_type** %7, align 8
  %89 = call i64 @btf_type_is_resolve_source_only(%struct.btf_type* %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %99

91:                                               ; preds = %87, %77
  %92 = load %struct.btf_verifier_env*, %struct.btf_verifier_env** %4, align 8
  %93 = load %struct.resolve_vertex*, %struct.resolve_vertex** %5, align 8
  %94 = getelementptr inbounds %struct.resolve_vertex, %struct.resolve_vertex* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @btf_verifier_log_type(%struct.btf_verifier_env* %92, i32 %95, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  %97 = load i32, i32* @EINVAL, align 4
  %98 = sub nsw i32 0, %97
  store i32 %98, i32* %3, align 4
  br label %173

99:                                               ; preds = %87
  %100 = load %struct.btf_verifier_env*, %struct.btf_verifier_env** %4, align 8
  %101 = load %struct.btf_type*, %struct.btf_type** %7, align 8
  %102 = call i32 @env_type_is_resolve_sink(%struct.btf_verifier_env* %100, %struct.btf_type* %101)
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %114, label %104

104:                                              ; preds = %99
  %105 = load %struct.btf_verifier_env*, %struct.btf_verifier_env** %4, align 8
  %106 = load i32, i32* %9, align 4
  %107 = call i32 @env_type_is_resolved(%struct.btf_verifier_env* %105, i32 %106)
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %114, label %109

109:                                              ; preds = %104
  %110 = load %struct.btf_verifier_env*, %struct.btf_verifier_env** %4, align 8
  %111 = load %struct.btf_type*, %struct.btf_type** %7, align 8
  %112 = load i32, i32* %9, align 4
  %113 = call i32 @env_stack_push(%struct.btf_verifier_env* %110, %struct.btf_type* %111, i32 %112)
  store i32 %113, i32* %3, align 4
  br label %173

114:                                              ; preds = %104, %99
  %115 = load %struct.btf*, %struct.btf** %11, align 8
  %116 = call %struct.btf_type* @btf_type_id_size(%struct.btf* %115, i32* %9, i32* %12)
  store %struct.btf_type* %116, %struct.btf_type** %7, align 8
  %117 = load %struct.btf_type*, %struct.btf_type** %7, align 8
  %118 = icmp ne %struct.btf_type* %117, null
  br i1 %118, label %127, label %119

119:                                              ; preds = %114
  %120 = load %struct.btf_verifier_env*, %struct.btf_verifier_env** %4, align 8
  %121 = load %struct.resolve_vertex*, %struct.resolve_vertex** %5, align 8
  %122 = getelementptr inbounds %struct.resolve_vertex, %struct.resolve_vertex* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = call i32 @btf_verifier_log_type(%struct.btf_verifier_env* %120, i32 %123, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  %125 = load i32, i32* @EINVAL, align 4
  %126 = sub nsw i32 0, %125
  store i32 %126, i32* %3, align 4
  br label %173

127:                                              ; preds = %114
  %128 = load %struct.btf_type*, %struct.btf_type** %7, align 8
  %129 = call i64 @btf_type_is_int(%struct.btf_type* %128)
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %143

131:                                              ; preds = %127
  %132 = load %struct.btf_type*, %struct.btf_type** %7, align 8
  %133 = call i32 @btf_type_int_is_regular(%struct.btf_type* %132)
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %143, label %135

135:                                              ; preds = %131
  %136 = load %struct.btf_verifier_env*, %struct.btf_verifier_env** %4, align 8
  %137 = load %struct.resolve_vertex*, %struct.resolve_vertex** %5, align 8
  %138 = getelementptr inbounds %struct.resolve_vertex, %struct.resolve_vertex* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = call i32 @btf_verifier_log_type(%struct.btf_verifier_env* %136, i32 %139, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  %141 = load i32, i32* @EINVAL, align 4
  %142 = sub nsw i32 0, %141
  store i32 %142, i32* %3, align 4
  br label %173

143:                                              ; preds = %131, %127
  %144 = load %struct.btf_array*, %struct.btf_array** %6, align 8
  %145 = getelementptr inbounds %struct.btf_array, %struct.btf_array* %144, i32 0, i32 2
  %146 = load i32, i32* %145, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %164

148:                                              ; preds = %143
  %149 = load i32, i32* %12, align 4
  %150 = load i32, i32* @U32_MAX, align 4
  %151 = load %struct.btf_array*, %struct.btf_array** %6, align 8
  %152 = getelementptr inbounds %struct.btf_array, %struct.btf_array* %151, i32 0, i32 2
  %153 = load i32, i32* %152, align 4
  %154 = sdiv i32 %150, %153
  %155 = icmp sgt i32 %149, %154
  br i1 %155, label %156, label %164

156:                                              ; preds = %148
  %157 = load %struct.btf_verifier_env*, %struct.btf_verifier_env** %4, align 8
  %158 = load %struct.resolve_vertex*, %struct.resolve_vertex** %5, align 8
  %159 = getelementptr inbounds %struct.resolve_vertex, %struct.resolve_vertex* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 4
  %161 = call i32 @btf_verifier_log_type(%struct.btf_verifier_env* %157, i32 %160, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  %162 = load i32, i32* @EINVAL, align 4
  %163 = sub nsw i32 0, %162
  store i32 %163, i32* %3, align 4
  br label %173

164:                                              ; preds = %148, %143
  %165 = load %struct.btf_verifier_env*, %struct.btf_verifier_env** %4, align 8
  %166 = load i32, i32* %9, align 4
  %167 = load i32, i32* %12, align 4
  %168 = load %struct.btf_array*, %struct.btf_array** %6, align 8
  %169 = getelementptr inbounds %struct.btf_array, %struct.btf_array* %168, i32 0, i32 2
  %170 = load i32, i32* %169, align 4
  %171 = mul nsw i32 %167, %170
  %172 = call i32 @env_stack_pop_resolved(%struct.btf_verifier_env* %165, i32 %166, i32 %171)
  store i32 0, i32* %3, align 4
  br label %173

173:                                              ; preds = %164, %156, %135, %119, %109, %91, %69, %51, %33
  %174 = load i32, i32* %3, align 4
  ret i32 %174
}

declare dso_local %struct.btf_array* @btf_type_array(i32) #1

declare dso_local %struct.btf_type* @btf_type_by_id(%struct.btf*, i32) #1

declare dso_local i64 @btf_type_nosize_or_null(%struct.btf_type*) #1

declare dso_local i64 @btf_type_is_resolve_source_only(%struct.btf_type*) #1

declare dso_local i32 @btf_verifier_log_type(%struct.btf_verifier_env*, i32, i8*) #1

declare dso_local i32 @env_type_is_resolve_sink(%struct.btf_verifier_env*, %struct.btf_type*) #1

declare dso_local i32 @env_type_is_resolved(%struct.btf_verifier_env*, i32) #1

declare dso_local i32 @env_stack_push(%struct.btf_verifier_env*, %struct.btf_type*, i32) #1

declare dso_local %struct.btf_type* @btf_type_id_size(%struct.btf*, i32*, i32*) #1

declare dso_local i64 @btf_type_is_int(%struct.btf_type*) #1

declare dso_local i32 @btf_type_int_is_regular(%struct.btf_type*) #1

declare dso_local i32 @env_stack_pop_resolved(%struct.btf_verifier_env*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
