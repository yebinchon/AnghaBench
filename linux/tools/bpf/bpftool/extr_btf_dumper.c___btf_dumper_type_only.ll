; ModuleID = '/home/carl/AnghaBench/linux/tools/bpf/bpftool/extr_btf_dumper.c___btf_dumper_type_only.c'
source_filename = "/home/carl/AnghaBench/linux/tools/bpf/bpftool/extr_btf_dumper.c___btf_dumper_type_only.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btf = type { i32 }
%struct.btf_type = type { i32, i32, i32 }
%struct.btf_array = type { i32, i32 }
%struct.btf_var = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c"void \00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%s \00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"struct %s \00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"union %s \00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"enum %s \00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"[%d]\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"* \00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"%s %s \00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"union\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"struct\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"volatile \00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"const \00", align 1
@.str.12 = private unnamed_addr constant [10 x i8] c"restrict \00", align 1
@BTF_VAR_STATIC = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [8 x i8] c"static \00", align 1
@.str.14 = private unnamed_addr constant [4 x i8] c" %s\00", align 1
@.str.15 = private unnamed_addr constant [16 x i8] c"section (\22%s\22) \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.btf*, i32, i8*, i32, i32)* @__btf_dumper_type_only to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__btf_dumper_type_only(%struct.btf* %0, i32 %1, i8* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.btf*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.btf_type*, align 8
  %13 = alloca %struct.btf_array*, align 8
  %14 = alloca %struct.btf_var*, align 8
  %15 = alloca %struct.btf_type*, align 8
  store %struct.btf* %0, %struct.btf** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %16 = load i32, i32* %8, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %5
  %19 = call i32 (i8*, ...) @BTF_PRINT_ARG(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %20 = load i32, i32* %10, align 4
  store i32 %20, i32* %6, align 4
  br label %168

21:                                               ; preds = %5
  %22 = load %struct.btf*, %struct.btf** %7, align 8
  %23 = load i32, i32* %8, align 4
  %24 = call %struct.btf_type* @btf__type_by_id(%struct.btf* %22, i32 %23)
  store %struct.btf_type* %24, %struct.btf_type** %15, align 8
  %25 = load %struct.btf_type*, %struct.btf_type** %15, align 8
  %26 = getelementptr inbounds %struct.btf_type, %struct.btf_type* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @BTF_INFO_KIND(i32 %27)
  switch i32 %28, label %165 [
    i32 136, label %29
    i32 132, label %29
    i32 133, label %36
    i32 131, label %43
    i32 140, label %50
    i32 143, label %57
    i32 135, label %69
    i32 137, label %75
    i32 128, label %89
    i32 142, label %95
    i32 134, label %101
    i32 138, label %107
    i32 139, label %118
    i32 129, label %135
    i32 141, label %157
    i32 130, label %164
  ]

29:                                               ; preds = %21, %21
  %30 = load %struct.btf*, %struct.btf** %7, align 8
  %31 = load %struct.btf_type*, %struct.btf_type** %15, align 8
  %32 = getelementptr inbounds %struct.btf_type, %struct.btf_type* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @btf__name_by_offset(%struct.btf* %30, i32 %33)
  %35 = call i32 (i8*, ...) @BTF_PRINT_ARG(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %34)
  br label %166

36:                                               ; preds = %21
  %37 = load %struct.btf*, %struct.btf** %7, align 8
  %38 = load %struct.btf_type*, %struct.btf_type** %15, align 8
  %39 = getelementptr inbounds %struct.btf_type, %struct.btf_type* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @btf__name_by_offset(%struct.btf* %37, i32 %40)
  %42 = call i32 (i8*, ...) @BTF_PRINT_ARG(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 %41)
  br label %166

43:                                               ; preds = %21
  %44 = load %struct.btf*, %struct.btf** %7, align 8
  %45 = load %struct.btf_type*, %struct.btf_type** %15, align 8
  %46 = getelementptr inbounds %struct.btf_type, %struct.btf_type* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @btf__name_by_offset(%struct.btf* %44, i32 %47)
  %49 = call i32 (i8*, ...) @BTF_PRINT_ARG(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i32 %48)
  br label %166

50:                                               ; preds = %21
  %51 = load %struct.btf*, %struct.btf** %7, align 8
  %52 = load %struct.btf_type*, %struct.btf_type** %15, align 8
  %53 = getelementptr inbounds %struct.btf_type, %struct.btf_type* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @btf__name_by_offset(%struct.btf* %51, i32 %54)
  %56 = call i32 (i8*, ...) @BTF_PRINT_ARG(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i32 %55)
  br label %166

57:                                               ; preds = %21
  %58 = load %struct.btf_type*, %struct.btf_type** %15, align 8
  %59 = getelementptr inbounds %struct.btf_type, %struct.btf_type* %58, i64 1
  %60 = bitcast %struct.btf_type* %59 to %struct.btf_array*
  store %struct.btf_array* %60, %struct.btf_array** %13, align 8
  %61 = load %struct.btf_array*, %struct.btf_array** %13, align 8
  %62 = getelementptr inbounds %struct.btf_array, %struct.btf_array* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @BTF_PRINT_TYPE(i32 %63)
  %65 = load %struct.btf_array*, %struct.btf_array** %13, align 8
  %66 = getelementptr inbounds %struct.btf_array, %struct.btf_array* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i32 (i8*, ...) @BTF_PRINT_ARG(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 %67)
  br label %166

69:                                               ; preds = %21
  %70 = load %struct.btf_type*, %struct.btf_type** %15, align 8
  %71 = getelementptr inbounds %struct.btf_type, %struct.btf_type* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @BTF_PRINT_TYPE(i32 %72)
  %74 = call i32 (i8*, ...) @BTF_PRINT_ARG(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0))
  br label %166

75:                                               ; preds = %21
  %76 = load %struct.btf_type*, %struct.btf_type** %15, align 8
  %77 = getelementptr inbounds %struct.btf_type, %struct.btf_type* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @BTF_INFO_KFLAG(i32 %78)
  %80 = icmp ne i32 %79, 0
  %81 = zext i1 %80 to i64
  %82 = select i1 %80, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0)
  %83 = load %struct.btf*, %struct.btf** %7, align 8
  %84 = load %struct.btf_type*, %struct.btf_type** %15, align 8
  %85 = getelementptr inbounds %struct.btf_type, %struct.btf_type* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @btf__name_by_offset(%struct.btf* %83, i32 %86)
  %88 = call i32 (i8*, ...) @BTF_PRINT_ARG(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i8* %82, i32 %87)
  br label %166

89:                                               ; preds = %21
  %90 = call i32 (i8*, ...) @BTF_PRINT_ARG(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0))
  %91 = load %struct.btf_type*, %struct.btf_type** %15, align 8
  %92 = getelementptr inbounds %struct.btf_type, %struct.btf_type* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @BTF_PRINT_TYPE(i32 %93)
  br label %166

95:                                               ; preds = %21
  %96 = call i32 (i8*, ...) @BTF_PRINT_ARG(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i64 0, i64 0))
  %97 = load %struct.btf_type*, %struct.btf_type** %15, align 8
  %98 = getelementptr inbounds %struct.btf_type, %struct.btf_type* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @BTF_PRINT_TYPE(i32 %99)
  br label %166

101:                                              ; preds = %21
  %102 = call i32 (i8*, ...) @BTF_PRINT_ARG(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i64 0, i64 0))
  %103 = load %struct.btf_type*, %struct.btf_type** %15, align 8
  %104 = getelementptr inbounds %struct.btf_type, %struct.btf_type* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @BTF_PRINT_TYPE(i32 %105)
  br label %166

107:                                              ; preds = %21
  %108 = load %struct.btf*, %struct.btf** %7, align 8
  %109 = load i8*, i8** %9, align 8
  %110 = load %struct.btf_type*, %struct.btf_type** %15, align 8
  %111 = load i32, i32* %10, align 4
  %112 = load i32, i32* %11, align 4
  %113 = call i32 @btf_dump_func(%struct.btf* %108, i8* %109, %struct.btf_type* %110, %struct.btf_type* null, i32 %111, i32 %112)
  store i32 %113, i32* %10, align 4
  %114 = load i32, i32* %10, align 4
  %115 = icmp eq i32 %114, -1
  br i1 %115, label %116, label %117

116:                                              ; preds = %107
  store i32 -1, i32* %6, align 4
  br label %168

117:                                              ; preds = %107
  br label %166

118:                                              ; preds = %21
  %119 = load %struct.btf*, %struct.btf** %7, align 8
  %120 = load %struct.btf_type*, %struct.btf_type** %15, align 8
  %121 = getelementptr inbounds %struct.btf_type, %struct.btf_type* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = call %struct.btf_type* @btf__type_by_id(%struct.btf* %119, i32 %122)
  store %struct.btf_type* %123, %struct.btf_type** %12, align 8
  %124 = load %struct.btf*, %struct.btf** %7, align 8
  %125 = load i8*, i8** %9, align 8
  %126 = load %struct.btf_type*, %struct.btf_type** %12, align 8
  %127 = load %struct.btf_type*, %struct.btf_type** %15, align 8
  %128 = load i32, i32* %10, align 4
  %129 = load i32, i32* %11, align 4
  %130 = call i32 @btf_dump_func(%struct.btf* %124, i8* %125, %struct.btf_type* %126, %struct.btf_type* %127, i32 %128, i32 %129)
  store i32 %130, i32* %10, align 4
  %131 = load i32, i32* %10, align 4
  %132 = icmp eq i32 %131, -1
  br i1 %132, label %133, label %134

133:                                              ; preds = %118
  store i32 -1, i32* %6, align 4
  br label %168

134:                                              ; preds = %118
  br label %166

135:                                              ; preds = %21
  %136 = load %struct.btf_type*, %struct.btf_type** %15, align 8
  %137 = getelementptr inbounds %struct.btf_type, %struct.btf_type* %136, i64 1
  %138 = bitcast %struct.btf_type* %137 to %struct.btf_var*
  store %struct.btf_var* %138, %struct.btf_var** %14, align 8
  %139 = load %struct.btf_var*, %struct.btf_var** %14, align 8
  %140 = getelementptr inbounds %struct.btf_var, %struct.btf_var* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = load i32, i32* @BTF_VAR_STATIC, align 4
  %143 = icmp eq i32 %141, %142
  br i1 %143, label %144, label %146

144:                                              ; preds = %135
  %145 = call i32 (i8*, ...) @BTF_PRINT_ARG(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i64 0, i64 0))
  br label %146

146:                                              ; preds = %144, %135
  %147 = load %struct.btf_type*, %struct.btf_type** %15, align 8
  %148 = getelementptr inbounds %struct.btf_type, %struct.btf_type* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 4
  %150 = call i32 @BTF_PRINT_TYPE(i32 %149)
  %151 = load %struct.btf*, %struct.btf** %7, align 8
  %152 = load %struct.btf_type*, %struct.btf_type** %15, align 8
  %153 = getelementptr inbounds %struct.btf_type, %struct.btf_type* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 4
  %155 = call i32 @btf__name_by_offset(%struct.btf* %151, i32 %154)
  %156 = call i32 (i8*, ...) @BTF_PRINT_ARG(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i64 0, i64 0), i32 %155)
  br label %166

157:                                              ; preds = %21
  %158 = load %struct.btf*, %struct.btf** %7, align 8
  %159 = load %struct.btf_type*, %struct.btf_type** %15, align 8
  %160 = getelementptr inbounds %struct.btf_type, %struct.btf_type* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 4
  %162 = call i32 @btf__name_by_offset(%struct.btf* %158, i32 %161)
  %163 = call i32 (i8*, ...) @BTF_PRINT_ARG(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.15, i64 0, i64 0), i32 %162)
  br label %166

164:                                              ; preds = %21
  br label %165

165:                                              ; preds = %21, %164
  store i32 -1, i32* %6, align 4
  br label %168

166:                                              ; preds = %157, %146, %134, %117, %101, %95, %89, %75, %69, %57, %50, %43, %36, %29
  %167 = load i32, i32* %10, align 4
  store i32 %167, i32* %6, align 4
  br label %168

168:                                              ; preds = %166, %165, %133, %116, %18
  %169 = load i32, i32* %6, align 4
  ret i32 %169
}

declare dso_local i32 @BTF_PRINT_ARG(i8*, ...) #1

declare dso_local %struct.btf_type* @btf__type_by_id(%struct.btf*, i32) #1

declare dso_local i32 @BTF_INFO_KIND(i32) #1

declare dso_local i32 @btf__name_by_offset(%struct.btf*, i32) #1

declare dso_local i32 @BTF_PRINT_TYPE(i32) #1

declare dso_local i32 @BTF_INFO_KFLAG(i32) #1

declare dso_local i32 @btf_dump_func(%struct.btf*, i8*, %struct.btf_type*, %struct.btf_type*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
