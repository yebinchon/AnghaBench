; ModuleID = '/home/carl/AnghaBench/linux/tools/bpf/bpftool/extr_map.c_do_create.c'
source_filename = "/home/carl/AnghaBench/linux/tools/bpf/bpftool/extr_map.c_do_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_create_map_attr = type { i8*, i64, i32, i32, i32, i32, i64, i32* }

@.str = private unnamed_addr constant [5 x i8] c"type\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"map type already specified\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"unrecognized map type: %s\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"key\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"key size\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"value\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"value size\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"entries\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c"max entries\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"flags\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"dev\00", align 1
@.str.12 = private unnamed_addr constant [33 x i8] c"offload device already specified\00", align 1
@.str.13 = private unnamed_addr constant [32 x i8] c"unrecognized netdevice '%s': %s\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [15 x i8] c"unknown arg %s\00", align 1
@.str.15 = private unnamed_addr constant [23 x i8] c"map name not specified\00", align 1
@.str.16 = private unnamed_addr constant [22 x i8] c"map create failed: %s\00", align 1
@json_output = common dso_local global i64 0, align 8
@json_wtr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8**)* @do_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_create(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.bpf_create_map_attr, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %10 = bitcast %struct.bpf_create_map_attr* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %10, i8 0, i64 48, i1 false)
  %11 = call i32 @REQ_ARGS(i32 7)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %174

14:                                               ; preds = %2
  %15 = call i8* (...) @GET_ARG()
  store i8* %15, i8** %7, align 8
  br label %16

16:                                               ; preds = %141, %14
  %17 = load i32, i32* %4, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %142

19:                                               ; preds = %16
  %20 = call i32 @REQ_ARGS(i32 2)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %19
  store i32 -1, i32* %3, align 4
  br label %174

23:                                               ; preds = %19
  %24 = load i8**, i8*** %5, align 8
  %25 = load i8*, i8** %24, align 8
  %26 = call i64 @is_prefix(i8* %25, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %50

28:                                               ; preds = %23
  %29 = call i32 (...) @NEXT_ARG()
  %30 = getelementptr inbounds %struct.bpf_create_map_attr, %struct.bpf_create_map_attr* %6, i32 0, i32 6
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %28
  %34 = call i32 (i8*, ...) @p_err(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %174

35:                                               ; preds = %28
  %36 = load i8**, i8*** %5, align 8
  %37 = load i8*, i8** %36, align 8
  %38 = call i64 @map_type_from_str(i8* %37)
  %39 = getelementptr inbounds %struct.bpf_create_map_attr, %struct.bpf_create_map_attr* %6, i32 0, i32 6
  store i64 %38, i64* %39, align 8
  %40 = getelementptr inbounds %struct.bpf_create_map_attr, %struct.bpf_create_map_attr* %6, i32 0, i32 6
  %41 = load i64, i64* %40, align 8
  %42 = trunc i64 %41 to i32
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %35
  %45 = load i8**, i8*** %5, align 8
  %46 = load i8*, i8** %45, align 8
  %47 = call i32 (i8*, ...) @p_err(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i8* %46)
  store i32 -1, i32* %3, align 4
  br label %174

48:                                               ; preds = %35
  %49 = call i32 (...) @NEXT_ARG()
  br label %141

50:                                               ; preds = %23
  %51 = load i8**, i8*** %5, align 8
  %52 = load i8*, i8** %51, align 8
  %53 = call i64 @is_prefix(i8* %52, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %50
  %56 = call i32 (...) @NEXT_ARG()
  %57 = call i8* (...) @GET_ARG()
  %58 = getelementptr inbounds %struct.bpf_create_map_attr, %struct.bpf_create_map_attr* %6, i32 0, i32 0
  store i8* %57, i8** %58, align 8
  br label %140

59:                                               ; preds = %50
  %60 = load i8**, i8*** %5, align 8
  %61 = load i8*, i8** %60, align 8
  %62 = call i64 @is_prefix(i8* %61, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %70

64:                                               ; preds = %59
  %65 = getelementptr inbounds %struct.bpf_create_map_attr, %struct.bpf_create_map_attr* %6, i32 0, i32 5
  %66 = call i64 @parse_u32_arg(i32* %4, i8*** %5, i32* %65, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0))
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %64
  store i32 -1, i32* %3, align 4
  br label %174

69:                                               ; preds = %64
  br label %139

70:                                               ; preds = %59
  %71 = load i8**, i8*** %5, align 8
  %72 = load i8*, i8** %71, align 8
  %73 = call i64 @is_prefix(i8* %72, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %81

75:                                               ; preds = %70
  %76 = getelementptr inbounds %struct.bpf_create_map_attr, %struct.bpf_create_map_attr* %6, i32 0, i32 4
  %77 = call i64 @parse_u32_arg(i32* %4, i8*** %5, i32* %76, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0))
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %75
  store i32 -1, i32* %3, align 4
  br label %174

80:                                               ; preds = %75
  br label %138

81:                                               ; preds = %70
  %82 = load i8**, i8*** %5, align 8
  %83 = load i8*, i8** %82, align 8
  %84 = call i64 @is_prefix(i8* %83, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0))
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %92

86:                                               ; preds = %81
  %87 = getelementptr inbounds %struct.bpf_create_map_attr, %struct.bpf_create_map_attr* %6, i32 0, i32 3
  %88 = call i64 @parse_u32_arg(i32* %4, i8*** %5, i32* %87, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i64 0, i64 0))
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %86
  store i32 -1, i32* %3, align 4
  br label %174

91:                                               ; preds = %86
  br label %137

92:                                               ; preds = %81
  %93 = load i8**, i8*** %5, align 8
  %94 = load i8*, i8** %93, align 8
  %95 = call i64 @is_prefix(i8* %94, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0))
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %103

97:                                               ; preds = %92
  %98 = getelementptr inbounds %struct.bpf_create_map_attr, %struct.bpf_create_map_attr* %6, i32 0, i32 2
  %99 = call i64 @parse_u32_arg(i32* %4, i8*** %5, i32* %98, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0))
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %102

101:                                              ; preds = %97
  store i32 -1, i32* %3, align 4
  br label %174

102:                                              ; preds = %97
  br label %136

103:                                              ; preds = %92
  %104 = load i8**, i8*** %5, align 8
  %105 = load i8*, i8** %104, align 8
  %106 = call i64 @is_prefix(i8* %105, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0))
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %131

108:                                              ; preds = %103
  %109 = call i32 (...) @NEXT_ARG()
  %110 = getelementptr inbounds %struct.bpf_create_map_attr, %struct.bpf_create_map_attr* %6, i32 0, i32 1
  %111 = load i64, i64* %110, align 8
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %115

113:                                              ; preds = %108
  %114 = call i32 (i8*, ...) @p_err(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.12, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %174

115:                                              ; preds = %108
  %116 = load i8**, i8*** %5, align 8
  %117 = load i8*, i8** %116, align 8
  %118 = call i64 @if_nametoindex(i8* %117)
  %119 = getelementptr inbounds %struct.bpf_create_map_attr, %struct.bpf_create_map_attr* %6, i32 0, i32 1
  store i64 %118, i64* %119, align 8
  %120 = getelementptr inbounds %struct.bpf_create_map_attr, %struct.bpf_create_map_attr* %6, i32 0, i32 1
  %121 = load i64, i64* %120, align 8
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %129, label %123

123:                                              ; preds = %115
  %124 = load i8**, i8*** %5, align 8
  %125 = load i8*, i8** %124, align 8
  %126 = load i32, i32* @errno, align 4
  %127 = call i8* @strerror(i32 %126)
  %128 = call i32 (i8*, ...) @p_err(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.13, i64 0, i64 0), i8* %125, i8* %127)
  store i32 -1, i32* %3, align 4
  br label %174

129:                                              ; preds = %115
  %130 = call i32 (...) @NEXT_ARG()
  br label %135

131:                                              ; preds = %103
  %132 = load i8**, i8*** %5, align 8
  %133 = load i8*, i8** %132, align 8
  %134 = call i32 (i8*, ...) @p_err(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.14, i64 0, i64 0), i8* %133)
  store i32 -1, i32* %3, align 4
  br label %174

135:                                              ; preds = %129
  br label %136

136:                                              ; preds = %135, %102
  br label %137

137:                                              ; preds = %136, %91
  br label %138

138:                                              ; preds = %137, %80
  br label %139

139:                                              ; preds = %138, %69
  br label %140

140:                                              ; preds = %139, %55
  br label %141

141:                                              ; preds = %140, %48
  br label %16

142:                                              ; preds = %16
  %143 = getelementptr inbounds %struct.bpf_create_map_attr, %struct.bpf_create_map_attr* %6, i32 0, i32 0
  %144 = load i8*, i8** %143, align 8
  %145 = icmp ne i8* %144, null
  br i1 %145, label %148, label %146

146:                                              ; preds = %142
  %147 = call i32 (i8*, ...) @p_err(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.15, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %174

148:                                              ; preds = %142
  %149 = call i32 (...) @set_max_rlimit()
  %150 = call i32 @bpf_create_map_xattr(%struct.bpf_create_map_attr* %6)
  store i32 %150, i32* %9, align 4
  %151 = load i32, i32* %9, align 4
  %152 = icmp slt i32 %151, 0
  br i1 %152, label %153, label %157

153:                                              ; preds = %148
  %154 = load i32, i32* @errno, align 4
  %155 = call i8* @strerror(i32 %154)
  %156 = call i32 (i8*, ...) @p_err(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i8* %155)
  store i32 -1, i32* %3, align 4
  br label %174

157:                                              ; preds = %148
  %158 = load i32, i32* %9, align 4
  %159 = load i8*, i8** %7, align 8
  %160 = call i32 @do_pin_fd(i32 %158, i8* %159)
  store i32 %160, i32* %8, align 4
  %161 = load i32, i32* %9, align 4
  %162 = call i32 @close(i32 %161)
  %163 = load i32, i32* %8, align 4
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %167

165:                                              ; preds = %157
  %166 = load i32, i32* %8, align 4
  store i32 %166, i32* %3, align 4
  br label %174

167:                                              ; preds = %157
  %168 = load i64, i64* @json_output, align 8
  %169 = icmp ne i64 %168, 0
  br i1 %169, label %170, label %173

170:                                              ; preds = %167
  %171 = load i32, i32* @json_wtr, align 4
  %172 = call i32 @jsonw_null(i32 %171)
  br label %173

173:                                              ; preds = %170, %167
  store i32 0, i32* %3, align 4
  br label %174

174:                                              ; preds = %173, %165, %153, %146, %131, %123, %113, %101, %90, %79, %68, %44, %33, %22, %13
  %175 = load i32, i32* %3, align 4
  ret i32 %175
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @REQ_ARGS(i32) #2

declare dso_local i8* @GET_ARG(...) #2

declare dso_local i64 @is_prefix(i8*, i8*) #2

declare dso_local i32 @NEXT_ARG(...) #2

declare dso_local i32 @p_err(i8*, ...) #2

declare dso_local i64 @map_type_from_str(i8*) #2

declare dso_local i64 @parse_u32_arg(i32*, i8***, i32*, i8*) #2

declare dso_local i64 @if_nametoindex(i8*) #2

declare dso_local i8* @strerror(i32) #2

declare dso_local i32 @set_max_rlimit(...) #2

declare dso_local i32 @bpf_create_map_xattr(%struct.bpf_create_map_attr*) #2

declare dso_local i32 @do_pin_fd(i32, i8*) #2

declare dso_local i32 @close(i32) #2

declare dso_local i32 @jsonw_null(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
