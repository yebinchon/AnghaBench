; ModuleID = '/home/carl/AnghaBench/linux/kernel/bpf/extr_btf.c_btf_func_proto_check.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/bpf/extr_btf.c_btf_func_proto_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btf_verifier_env = type { %struct.btf* }
%struct.btf = type { i32 }
%struct.btf_type = type { i64 }
%struct.btf_param = type { i64, i64 }

@.str = private unnamed_addr constant [20 x i8] c"Invalid return type\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"Invalid arg#%u\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.btf_verifier_env*, %struct.btf_type*)* @btf_func_proto_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @btf_func_proto_check(%struct.btf_verifier_env* %0, %struct.btf_type* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.btf_verifier_env*, align 8
  %5 = alloca %struct.btf_type*, align 8
  %6 = alloca %struct.btf_type*, align 8
  %7 = alloca %struct.btf_param*, align 8
  %8 = alloca %struct.btf*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca %struct.btf_type*, align 8
  %14 = alloca i64, align 8
  store %struct.btf_verifier_env* %0, %struct.btf_verifier_env** %4, align 8
  store %struct.btf_type* %1, %struct.btf_type** %5, align 8
  %15 = load %struct.btf_verifier_env*, %struct.btf_verifier_env** %4, align 8
  %16 = getelementptr inbounds %struct.btf_verifier_env, %struct.btf_verifier_env* %15, i32 0, i32 0
  %17 = load %struct.btf*, %struct.btf** %16, align 8
  store %struct.btf* %17, %struct.btf** %8, align 8
  %18 = load %struct.btf_type*, %struct.btf_type** %5, align 8
  %19 = getelementptr inbounds %struct.btf_type, %struct.btf_type* %18, i64 1
  %20 = bitcast %struct.btf_type* %19 to %struct.btf_param*
  store %struct.btf_param* %20, %struct.btf_param** %7, align 8
  %21 = load %struct.btf_type*, %struct.btf_type** %5, align 8
  %22 = call i32 @btf_type_vlen(%struct.btf_type* %21)
  store i32 %22, i32* %9, align 4
  %23 = load %struct.btf_type*, %struct.btf_type** %5, align 8
  %24 = getelementptr inbounds %struct.btf_type, %struct.btf_type* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %72

27:                                               ; preds = %2
  %28 = load %struct.btf_type*, %struct.btf_type** %5, align 8
  %29 = getelementptr inbounds %struct.btf_type, %struct.btf_type* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  store i64 %30, i64* %12, align 8
  %31 = load %struct.btf*, %struct.btf** %8, align 8
  %32 = load i64, i64* %12, align 8
  %33 = call %struct.btf_type* @btf_type_by_id(%struct.btf* %31, i64 %32)
  store %struct.btf_type* %33, %struct.btf_type** %6, align 8
  %34 = load %struct.btf_type*, %struct.btf_type** %6, align 8
  %35 = icmp ne %struct.btf_type* %34, null
  br i1 %35, label %42, label %36

36:                                               ; preds = %27
  %37 = load %struct.btf_verifier_env*, %struct.btf_verifier_env** %4, align 8
  %38 = load %struct.btf_type*, %struct.btf_type** %5, align 8
  %39 = call i32 (%struct.btf_verifier_env*, %struct.btf_type*, i8*, ...) @btf_verifier_log_type(%struct.btf_verifier_env* %37, %struct.btf_type* %38, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %40 = load i32, i32* @EINVAL, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %3, align 4
  br label %201

42:                                               ; preds = %27
  %43 = load %struct.btf_type*, %struct.btf_type** %6, align 8
  %44 = call i64 @btf_type_needs_resolve(%struct.btf_type* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %61

46:                                               ; preds = %42
  %47 = load %struct.btf_verifier_env*, %struct.btf_verifier_env** %4, align 8
  %48 = load i64, i64* %12, align 8
  %49 = call i32 @env_type_is_resolved(%struct.btf_verifier_env* %47, i64 %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %61, label %51

51:                                               ; preds = %46
  %52 = load %struct.btf_verifier_env*, %struct.btf_verifier_env** %4, align 8
  %53 = load %struct.btf_type*, %struct.btf_type** %6, align 8
  %54 = load i64, i64* %12, align 8
  %55 = call i32 @btf_resolve(%struct.btf_verifier_env* %52, %struct.btf_type* %53, i64 %54)
  store i32 %55, i32* %11, align 4
  %56 = load i32, i32* %11, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %51
  %59 = load i32, i32* %11, align 4
  store i32 %59, i32* %3, align 4
  br label %201

60:                                               ; preds = %51
  br label %61

61:                                               ; preds = %60, %46, %42
  %62 = load %struct.btf*, %struct.btf** %8, align 8
  %63 = call i32 @btf_type_id_size(%struct.btf* %62, i64* %12, i32* null)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %71, label %65

65:                                               ; preds = %61
  %66 = load %struct.btf_verifier_env*, %struct.btf_verifier_env** %4, align 8
  %67 = load %struct.btf_type*, %struct.btf_type** %5, align 8
  %68 = call i32 (%struct.btf_verifier_env*, %struct.btf_type*, i8*, ...) @btf_verifier_log_type(%struct.btf_verifier_env* %66, %struct.btf_type* %67, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %69 = load i32, i32* @EINVAL, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %3, align 4
  br label %201

71:                                               ; preds = %61
  br label %72

72:                                               ; preds = %71, %2
  %73 = load i32, i32* %9, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %76, label %75

75:                                               ; preds = %72
  store i32 0, i32* %3, align 4
  br label %201

76:                                               ; preds = %72
  %77 = load %struct.btf_param*, %struct.btf_param** %7, align 8
  %78 = load i32, i32* %9, align 4
  %79 = sub nsw i32 %78, 1
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.btf_param, %struct.btf_param* %77, i64 %80
  %82 = getelementptr inbounds %struct.btf_param, %struct.btf_param* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %104, label %85

85:                                               ; preds = %76
  %86 = load %struct.btf_param*, %struct.btf_param** %7, align 8
  %87 = load i32, i32* %9, align 4
  %88 = sub nsw i32 %87, 1
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.btf_param, %struct.btf_param* %86, i64 %89
  %91 = getelementptr inbounds %struct.btf_param, %struct.btf_param* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %101

94:                                               ; preds = %85
  %95 = load %struct.btf_verifier_env*, %struct.btf_verifier_env** %4, align 8
  %96 = load %struct.btf_type*, %struct.btf_type** %5, align 8
  %97 = load i32, i32* %9, align 4
  %98 = call i32 (%struct.btf_verifier_env*, %struct.btf_type*, i8*, ...) @btf_verifier_log_type(%struct.btf_verifier_env* %95, %struct.btf_type* %96, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 %97)
  %99 = load i32, i32* @EINVAL, align 4
  %100 = sub nsw i32 0, %99
  store i32 %100, i32* %3, align 4
  br label %201

101:                                              ; preds = %85
  %102 = load i32, i32* %9, align 4
  %103 = add nsw i32 %102, -1
  store i32 %103, i32* %9, align 4
  br label %104

104:                                              ; preds = %101, %76
  store i32 0, i32* %11, align 4
  store i32 0, i32* %10, align 4
  br label %105

105:                                              ; preds = %196, %104
  %106 = load i32, i32* %10, align 4
  %107 = load i32, i32* %9, align 4
  %108 = icmp slt i32 %106, %107
  br i1 %108, label %109, label %199

109:                                              ; preds = %105
  %110 = load %struct.btf_param*, %struct.btf_param** %7, align 8
  %111 = load i32, i32* %10, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds %struct.btf_param, %struct.btf_param* %110, i64 %112
  %114 = getelementptr inbounds %struct.btf_param, %struct.btf_param* %113, i32 0, i32 1
  %115 = load i64, i64* %114, align 8
  store i64 %115, i64* %14, align 8
  %116 = load %struct.btf*, %struct.btf** %8, align 8
  %117 = load i64, i64* %14, align 8
  %118 = call %struct.btf_type* @btf_type_by_id(%struct.btf* %116, i64 %117)
  store %struct.btf_type* %118, %struct.btf_type** %13, align 8
  %119 = load %struct.btf_type*, %struct.btf_type** %13, align 8
  %120 = icmp ne %struct.btf_type* %119, null
  br i1 %120, label %129, label %121

121:                                              ; preds = %109
  %122 = load %struct.btf_verifier_env*, %struct.btf_verifier_env** %4, align 8
  %123 = load %struct.btf_type*, %struct.btf_type** %5, align 8
  %124 = load i32, i32* %10, align 4
  %125 = add nsw i32 %124, 1
  %126 = call i32 (%struct.btf_verifier_env*, %struct.btf_type*, i8*, ...) @btf_verifier_log_type(%struct.btf_verifier_env* %122, %struct.btf_type* %123, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 %125)
  %127 = load i32, i32* @EINVAL, align 4
  %128 = sub nsw i32 0, %127
  store i32 %128, i32* %11, align 4
  br label %199

129:                                              ; preds = %109
  %130 = load %struct.btf_param*, %struct.btf_param** %7, align 8
  %131 = load i32, i32* %10, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds %struct.btf_param, %struct.btf_param* %130, i64 %132
  %134 = getelementptr inbounds %struct.btf_param, %struct.btf_param* %133, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %165

137:                                              ; preds = %129
  %138 = load %struct.btf*, %struct.btf** %8, align 8
  %139 = load %struct.btf_param*, %struct.btf_param** %7, align 8
  %140 = load i32, i32* %10, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds %struct.btf_param, %struct.btf_param* %139, i64 %141
  %143 = getelementptr inbounds %struct.btf_param, %struct.btf_param* %142, i32 0, i32 0
  %144 = load i64, i64* %143, align 8
  %145 = call i32 @btf_name_offset_valid(%struct.btf* %138, i64 %144)
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %157

147:                                              ; preds = %137
  %148 = load %struct.btf*, %struct.btf** %8, align 8
  %149 = load %struct.btf_param*, %struct.btf_param** %7, align 8
  %150 = load i32, i32* %10, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds %struct.btf_param, %struct.btf_param* %149, i64 %151
  %153 = getelementptr inbounds %struct.btf_param, %struct.btf_param* %152, i32 0, i32 0
  %154 = load i64, i64* %153, align 8
  %155 = call i32 @btf_name_valid_identifier(%struct.btf* %148, i64 %154)
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %165, label %157

157:                                              ; preds = %147, %137
  %158 = load %struct.btf_verifier_env*, %struct.btf_verifier_env** %4, align 8
  %159 = load %struct.btf_type*, %struct.btf_type** %5, align 8
  %160 = load i32, i32* %10, align 4
  %161 = add nsw i32 %160, 1
  %162 = call i32 (%struct.btf_verifier_env*, %struct.btf_type*, i8*, ...) @btf_verifier_log_type(%struct.btf_verifier_env* %158, %struct.btf_type* %159, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 %161)
  %163 = load i32, i32* @EINVAL, align 4
  %164 = sub nsw i32 0, %163
  store i32 %164, i32* %11, align 4
  br label %199

165:                                              ; preds = %147, %129
  %166 = load %struct.btf_type*, %struct.btf_type** %13, align 8
  %167 = call i64 @btf_type_needs_resolve(%struct.btf_type* %166)
  %168 = icmp ne i64 %167, 0
  br i1 %168, label %169, label %183

169:                                              ; preds = %165
  %170 = load %struct.btf_verifier_env*, %struct.btf_verifier_env** %4, align 8
  %171 = load i64, i64* %14, align 8
  %172 = call i32 @env_type_is_resolved(%struct.btf_verifier_env* %170, i64 %171)
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %183, label %174

174:                                              ; preds = %169
  %175 = load %struct.btf_verifier_env*, %struct.btf_verifier_env** %4, align 8
  %176 = load %struct.btf_type*, %struct.btf_type** %13, align 8
  %177 = load i64, i64* %14, align 8
  %178 = call i32 @btf_resolve(%struct.btf_verifier_env* %175, %struct.btf_type* %176, i64 %177)
  store i32 %178, i32* %11, align 4
  %179 = load i32, i32* %11, align 4
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %182

181:                                              ; preds = %174
  br label %199

182:                                              ; preds = %174
  br label %183

183:                                              ; preds = %182, %169, %165
  %184 = load %struct.btf*, %struct.btf** %8, align 8
  %185 = call i32 @btf_type_id_size(%struct.btf* %184, i64* %14, i32* null)
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %195, label %187

187:                                              ; preds = %183
  %188 = load %struct.btf_verifier_env*, %struct.btf_verifier_env** %4, align 8
  %189 = load %struct.btf_type*, %struct.btf_type** %5, align 8
  %190 = load i32, i32* %10, align 4
  %191 = add nsw i32 %190, 1
  %192 = call i32 (%struct.btf_verifier_env*, %struct.btf_type*, i8*, ...) @btf_verifier_log_type(%struct.btf_verifier_env* %188, %struct.btf_type* %189, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 %191)
  %193 = load i32, i32* @EINVAL, align 4
  %194 = sub nsw i32 0, %193
  store i32 %194, i32* %11, align 4
  br label %199

195:                                              ; preds = %183
  br label %196

196:                                              ; preds = %195
  %197 = load i32, i32* %10, align 4
  %198 = add nsw i32 %197, 1
  store i32 %198, i32* %10, align 4
  br label %105

199:                                              ; preds = %187, %181, %157, %121, %105
  %200 = load i32, i32* %11, align 4
  store i32 %200, i32* %3, align 4
  br label %201

201:                                              ; preds = %199, %94, %75, %65, %58, %36
  %202 = load i32, i32* %3, align 4
  ret i32 %202
}

declare dso_local i32 @btf_type_vlen(%struct.btf_type*) #1

declare dso_local %struct.btf_type* @btf_type_by_id(%struct.btf*, i64) #1

declare dso_local i32 @btf_verifier_log_type(%struct.btf_verifier_env*, %struct.btf_type*, i8*, ...) #1

declare dso_local i64 @btf_type_needs_resolve(%struct.btf_type*) #1

declare dso_local i32 @env_type_is_resolved(%struct.btf_verifier_env*, i64) #1

declare dso_local i32 @btf_resolve(%struct.btf_verifier_env*, %struct.btf_type*, i64) #1

declare dso_local i32 @btf_type_id_size(%struct.btf*, i64*, i32*) #1

declare dso_local i32 @btf_name_offset_valid(%struct.btf*, i64) #1

declare dso_local i32 @btf_name_valid_identifier(%struct.btf*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
