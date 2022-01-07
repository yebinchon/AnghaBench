; ModuleID = '/home/carl/AnghaBench/linux/tools/bpf/bpftool/extr_btf.c_dump_btf_type.c'
source_filename = "/home/carl/AnghaBench/linux/tools/bpf/bpftool/extr_btf.c_dump_btf_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btf = type { i32 }
%struct.btf_type = type { i32, i32, i32, i32 }
%struct.btf_array = type { i32, i32, i32 }
%struct.btf_member = type { i32, i32, i32 }
%struct.btf_enum = type { i32, i32 }
%struct.btf_param = type { i32, i32 }
%struct.btf_var = type { i32 }
%struct.btf_var_secinfo = type { i32, i32, i32 }

@json_wtr = common dso_local global i32* null, align 8
@BTF_KIND_MAX = common dso_local global i32 0, align 4
@BTF_KIND_UNKN = common dso_local global i32 0, align 4
@json_output = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [3 x i8] c"id\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"kind\00", align 1
@btf_kind_str = common dso_local global i8** null, align 8
@.str.2 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"[%u] %s '%s'\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"size\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"bits_offset\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"nr_bits\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"encoding\00", align 1
@.str.8 = private unnamed_addr constant [47 x i8] c" size=%u bits_offset=%u nr_bits=%u encoding=%s\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"type_id\00", align 1
@.str.10 = private unnamed_addr constant [12 x i8] c" type_id=%u\00", align 1
@.str.11 = private unnamed_addr constant [14 x i8] c"index_type_id\00", align 1
@.str.12 = private unnamed_addr constant [9 x i8] c"nr_elems\00", align 1
@.str.13 = private unnamed_addr constant [41 x i8] c" type_id=%u index_type_id=%u nr_elems=%u\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"vlen\00", align 1
@.str.15 = private unnamed_addr constant [8 x i8] c"members\00", align 1
@.str.16 = private unnamed_addr constant [17 x i8] c" size=%u vlen=%u\00", align 1
@.str.17 = private unnamed_addr constant [14 x i8] c"bitfield_size\00", align 1
@.str.18 = private unnamed_addr constant [33 x i8] c"\0A\09'%s' type_id=%u bits_offset=%u\00", align 1
@.str.19 = private unnamed_addr constant [18 x i8] c" bitfield_size=%u\00", align 1
@.str.20 = private unnamed_addr constant [7 x i8] c"values\00", align 1
@.str.21 = private unnamed_addr constant [4 x i8] c"val\00", align 1
@.str.22 = private unnamed_addr constant [14 x i8] c"\0A\09'%s' val=%u\00", align 1
@.str.23 = private unnamed_addr constant [6 x i8] c"union\00", align 1
@.str.24 = private unnamed_addr constant [7 x i8] c"struct\00", align 1
@.str.25 = private unnamed_addr constant [9 x i8] c"fwd_kind\00", align 1
@.str.26 = private unnamed_addr constant [13 x i8] c" fwd_kind=%s\00", align 1
@.str.27 = private unnamed_addr constant [12 x i8] c"ret_type_id\00", align 1
@.str.28 = private unnamed_addr constant [7 x i8] c"params\00", align 1
@.str.29 = private unnamed_addr constant [24 x i8] c" ret_type_id=%u vlen=%u\00", align 1
@.str.30 = private unnamed_addr constant [18 x i8] c"\0A\09'%s' type_id=%u\00", align 1
@.str.31 = private unnamed_addr constant [8 x i8] c"linkage\00", align 1
@.str.32 = private unnamed_addr constant [24 x i8] c" type_id=%u, linkage=%s\00", align 1
@.str.33 = private unnamed_addr constant [5 x i8] c"vars\00", align 1
@.str.34 = private unnamed_addr constant [7 x i8] c"offset\00", align 1
@.str.35 = private unnamed_addr constant [31 x i8] c"\0A\09type_id=%u offset=%u size=%u\00", align 1
@.str.36 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.btf*, i32, %struct.btf_type*)* @dump_btf_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dump_btf_type(%struct.btf* %0, i32 %1, %struct.btf_type* %2) #0 {
  %4 = alloca %struct.btf*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.btf_type*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca %struct.btf_array*, align 8
  %13 = alloca %struct.btf_member*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.btf_enum*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i8*, align 8
  %23 = alloca i8*, align 8
  %24 = alloca %struct.btf_param*, align 8
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i8*, align 8
  %28 = alloca %struct.btf_var*, align 8
  %29 = alloca i8*, align 8
  %30 = alloca %struct.btf_var_secinfo*, align 8
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  store %struct.btf* %0, %struct.btf** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.btf_type* %2, %struct.btf_type** %6, align 8
  %33 = load i32*, i32** @json_wtr, align 8
  store i32* %33, i32** %7, align 8
  %34 = load %struct.btf_type*, %struct.btf_type** %6, align 8
  %35 = getelementptr inbounds %struct.btf_type, %struct.btf_type* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @BTF_INFO_KIND(i32 %36)
  store i32 %37, i32* %8, align 4
  %38 = load i32, i32* %8, align 4
  %39 = load i32, i32* @BTF_KIND_MAX, align 4
  %40 = icmp sle i32 %38, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %3
  %42 = load i32, i32* %8, align 4
  br label %45

43:                                               ; preds = %3
  %44 = load i32, i32* @BTF_KIND_UNKN, align 4
  br label %45

45:                                               ; preds = %43, %41
  %46 = phi i32 [ %42, %41 ], [ %44, %43 ]
  store i32 %46, i32* %9, align 4
  %47 = load i64, i64* @json_output, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %69

49:                                               ; preds = %45
  %50 = load i32*, i32** %7, align 8
  %51 = call i32 @jsonw_start_object(i32* %50)
  %52 = load i32*, i32** %7, align 8
  %53 = load i32, i32* %5, align 4
  %54 = call i32 @jsonw_uint_field(i32* %52, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %53)
  %55 = load i32*, i32** %7, align 8
  %56 = load i8**, i8*** @btf_kind_str, align 8
  %57 = load i32, i32* %9, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i8*, i8** %56, i64 %58
  %60 = load i8*, i8** %59, align 8
  %61 = call i32 @jsonw_string_field(i32* %55, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* %60)
  %62 = load i32*, i32** %7, align 8
  %63 = load %struct.btf*, %struct.btf** %4, align 8
  %64 = load %struct.btf_type*, %struct.btf_type** %6, align 8
  %65 = getelementptr inbounds %struct.btf_type, %struct.btf_type* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 4
  %67 = call i8* @btf_str(%struct.btf* %63, i32 %66)
  %68 = call i32 @jsonw_string_field(i32* %62, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* %67)
  br label %82

69:                                               ; preds = %45
  %70 = load i32, i32* %5, align 4
  %71 = load i8**, i8*** @btf_kind_str, align 8
  %72 = load i32, i32* %9, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i8*, i8** %71, i64 %73
  %75 = load i8*, i8** %74, align 8
  %76 = load %struct.btf*, %struct.btf** %4, align 8
  %77 = load %struct.btf_type*, %struct.btf_type** %6, align 8
  %78 = getelementptr inbounds %struct.btf_type, %struct.btf_type* %77, i32 0, i32 3
  %79 = load i32, i32* %78, align 4
  %80 = call i8* @btf_str(%struct.btf* %76, i32 %79)
  %81 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i32 %70, i8* %75, i8* %80)
  br label %82

82:                                               ; preds = %69, %49
  %83 = load %struct.btf_type*, %struct.btf_type** %6, align 8
  %84 = getelementptr inbounds %struct.btf_type, %struct.btf_type* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @BTF_INFO_KIND(i32 %85)
  switch i32 %86, label %578 [
    i32 135, label %87
    i32 134, label %125
    i32 141, label %125
    i32 128, label %125
    i32 133, label %125
    i32 131, label %125
    i32 142, label %140
    i32 132, label %175
    i32 130, label %175
    i32 139, label %286
    i32 136, label %361
    i32 138, label %379
    i32 137, label %394
    i32 129, label %469
    i32 140, label %496
  ]

87:                                               ; preds = %82
  %88 = load %struct.btf_type*, %struct.btf_type** %6, align 8
  %89 = getelementptr inbounds %struct.btf_type, %struct.btf_type* %88, i64 1
  %90 = bitcast %struct.btf_type* %89 to i32*
  %91 = load i32, i32* %90, align 4
  store i32 %91, i32* %10, align 4
  %92 = load i32, i32* %10, align 4
  %93 = call i32 @BTF_INT_ENCODING(i32 %92)
  %94 = call i8* @btf_int_enc_str(i32 %93)
  store i8* %94, i8** %11, align 8
  %95 = load i64, i64* @json_output, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %114

97:                                               ; preds = %87
  %98 = load i32*, i32** %7, align 8
  %99 = load %struct.btf_type*, %struct.btf_type** %6, align 8
  %100 = getelementptr inbounds %struct.btf_type, %struct.btf_type* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @jsonw_uint_field(i32* %98, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32 %101)
  %103 = load i32*, i32** %7, align 8
  %104 = load i32, i32* %10, align 4
  %105 = call i32 @BTF_INT_OFFSET(i32 %104)
  %106 = call i32 @jsonw_uint_field(i32* %103, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), i32 %105)
  %107 = load i32*, i32** %7, align 8
  %108 = load i32, i32* %10, align 4
  %109 = call i32 @BTF_INT_BITS(i32 %108)
  %110 = call i32 @jsonw_uint_field(i32* %107, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i32 %109)
  %111 = load i32*, i32** %7, align 8
  %112 = load i8*, i8** %11, align 8
  %113 = call i32 @jsonw_string_field(i32* %111, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0), i8* %112)
  br label %124

114:                                              ; preds = %87
  %115 = load %struct.btf_type*, %struct.btf_type** %6, align 8
  %116 = getelementptr inbounds %struct.btf_type, %struct.btf_type* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = load i32, i32* %10, align 4
  %119 = call i32 @BTF_INT_OFFSET(i32 %118)
  %120 = load i32, i32* %10, align 4
  %121 = call i32 @BTF_INT_BITS(i32 %120)
  %122 = load i8*, i8** %11, align 8
  %123 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.8, i64 0, i64 0), i32 %117, i32 %119, i32 %121, i8* %122)
  br label %124

124:                                              ; preds = %114, %97
  br label %579

125:                                              ; preds = %82, %82, %82, %82, %82
  %126 = load i64, i64* @json_output, align 8
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %134

128:                                              ; preds = %125
  %129 = load i32*, i32** %7, align 8
  %130 = load %struct.btf_type*, %struct.btf_type** %6, align 8
  %131 = getelementptr inbounds %struct.btf_type, %struct.btf_type* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = call i32 @jsonw_uint_field(i32* %129, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0), i32 %132)
  br label %139

134:                                              ; preds = %125
  %135 = load %struct.btf_type*, %struct.btf_type** %6, align 8
  %136 = getelementptr inbounds %struct.btf_type, %struct.btf_type* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 4
  %138 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i64 0, i64 0), i32 %137)
  br label %139

139:                                              ; preds = %134, %128
  br label %579

140:                                              ; preds = %82
  %141 = load %struct.btf_type*, %struct.btf_type** %6, align 8
  %142 = getelementptr inbounds %struct.btf_type, %struct.btf_type* %141, i64 1
  %143 = bitcast %struct.btf_type* %142 to i8*
  %144 = bitcast i8* %143 to %struct.btf_array*
  store %struct.btf_array* %144, %struct.btf_array** %12, align 8
  %145 = load i64, i64* @json_output, align 8
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %163

147:                                              ; preds = %140
  %148 = load i32*, i32** %7, align 8
  %149 = load %struct.btf_array*, %struct.btf_array** %12, align 8
  %150 = getelementptr inbounds %struct.btf_array, %struct.btf_array* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 4
  %152 = call i32 @jsonw_uint_field(i32* %148, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0), i32 %151)
  %153 = load i32*, i32** %7, align 8
  %154 = load %struct.btf_array*, %struct.btf_array** %12, align 8
  %155 = getelementptr inbounds %struct.btf_array, %struct.btf_array* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 4
  %157 = call i32 @jsonw_uint_field(i32* %153, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i64 0, i64 0), i32 %156)
  %158 = load i32*, i32** %7, align 8
  %159 = load %struct.btf_array*, %struct.btf_array** %12, align 8
  %160 = getelementptr inbounds %struct.btf_array, %struct.btf_array* %159, i32 0, i32 2
  %161 = load i32, i32* %160, align 4
  %162 = call i32 @jsonw_uint_field(i32* %158, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i64 0, i64 0), i32 %161)
  br label %174

163:                                              ; preds = %140
  %164 = load %struct.btf_array*, %struct.btf_array** %12, align 8
  %165 = getelementptr inbounds %struct.btf_array, %struct.btf_array* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 4
  %167 = load %struct.btf_array*, %struct.btf_array** %12, align 8
  %168 = getelementptr inbounds %struct.btf_array, %struct.btf_array* %167, i32 0, i32 1
  %169 = load i32, i32* %168, align 4
  %170 = load %struct.btf_array*, %struct.btf_array** %12, align 8
  %171 = getelementptr inbounds %struct.btf_array, %struct.btf_array* %170, i32 0, i32 2
  %172 = load i32, i32* %171, align 4
  %173 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.13, i64 0, i64 0), i32 %166, i32 %169, i32 %172)
  br label %174

174:                                              ; preds = %163, %147
  br label %579

175:                                              ; preds = %82, %82
  %176 = load %struct.btf_type*, %struct.btf_type** %6, align 8
  %177 = getelementptr inbounds %struct.btf_type, %struct.btf_type* %176, i64 1
  %178 = bitcast %struct.btf_type* %177 to i8*
  %179 = bitcast i8* %178 to %struct.btf_member*
  store %struct.btf_member* %179, %struct.btf_member** %13, align 8
  %180 = load %struct.btf_type*, %struct.btf_type** %6, align 8
  %181 = getelementptr inbounds %struct.btf_type, %struct.btf_type* %180, i32 0, i32 2
  %182 = load i32, i32* %181, align 4
  %183 = call i32 @BTF_INFO_VLEN(i32 %182)
  store i32 %183, i32* %14, align 4
  %184 = load i64, i64* @json_output, align 8
  %185 = icmp ne i64 %184, 0
  br i1 %185, label %186, label %199

186:                                              ; preds = %175
  %187 = load i32*, i32** %7, align 8
  %188 = load %struct.btf_type*, %struct.btf_type** %6, align 8
  %189 = getelementptr inbounds %struct.btf_type, %struct.btf_type* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 4
  %191 = call i32 @jsonw_uint_field(i32* %187, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32 %190)
  %192 = load i32*, i32** %7, align 8
  %193 = load i32, i32* %14, align 4
  %194 = call i32 @jsonw_uint_field(i32* %192, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32 %193)
  %195 = load i32*, i32** %7, align 8
  %196 = call i32 @jsonw_name(i32* %195, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15, i64 0, i64 0))
  %197 = load i32*, i32** %7, align 8
  %198 = call i32 @jsonw_start_array(i32* %197)
  br label %205

199:                                              ; preds = %175
  %200 = load %struct.btf_type*, %struct.btf_type** %6, align 8
  %201 = getelementptr inbounds %struct.btf_type, %struct.btf_type* %200, i32 0, i32 0
  %202 = load i32, i32* %201, align 4
  %203 = load i32, i32* %14, align 4
  %204 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.16, i64 0, i64 0), i32 %202, i32 %203)
  br label %205

205:                                              ; preds = %199, %186
  store i32 0, i32* %15, align 4
  br label %206

206:                                              ; preds = %274, %205
  %207 = load i32, i32* %15, align 4
  %208 = load i32, i32* %14, align 4
  %209 = icmp slt i32 %207, %208
  br i1 %209, label %210, label %279

210:                                              ; preds = %206
  %211 = load %struct.btf*, %struct.btf** %4, align 8
  %212 = load %struct.btf_member*, %struct.btf_member** %13, align 8
  %213 = getelementptr inbounds %struct.btf_member, %struct.btf_member* %212, i32 0, i32 2
  %214 = load i32, i32* %213, align 4
  %215 = call i8* @btf_str(%struct.btf* %211, i32 %214)
  store i8* %215, i8** %16, align 8
  %216 = load %struct.btf_type*, %struct.btf_type** %6, align 8
  %217 = getelementptr inbounds %struct.btf_type, %struct.btf_type* %216, i32 0, i32 2
  %218 = load i32, i32* %217, align 4
  %219 = call i32 @BTF_INFO_KFLAG(i32 %218)
  %220 = icmp ne i32 %219, 0
  br i1 %220, label %221, label %230

221:                                              ; preds = %210
  %222 = load %struct.btf_member*, %struct.btf_member** %13, align 8
  %223 = getelementptr inbounds %struct.btf_member, %struct.btf_member* %222, i32 0, i32 0
  %224 = load i32, i32* %223, align 4
  %225 = call i32 @BTF_MEMBER_BIT_OFFSET(i32 %224)
  store i32 %225, i32* %17, align 4
  %226 = load %struct.btf_member*, %struct.btf_member** %13, align 8
  %227 = getelementptr inbounds %struct.btf_member, %struct.btf_member* %226, i32 0, i32 0
  %228 = load i32, i32* %227, align 4
  %229 = call i32 @BTF_MEMBER_BITFIELD_SIZE(i32 %228)
  store i32 %229, i32* %18, align 4
  br label %234

230:                                              ; preds = %210
  %231 = load %struct.btf_member*, %struct.btf_member** %13, align 8
  %232 = getelementptr inbounds %struct.btf_member, %struct.btf_member* %231, i32 0, i32 0
  %233 = load i32, i32* %232, align 4
  store i32 %233, i32* %17, align 4
  store i32 0, i32* %18, align 4
  br label %234

234:                                              ; preds = %230, %221
  %235 = load i64, i64* @json_output, align 8
  %236 = icmp ne i64 %235, 0
  br i1 %236, label %237, label %260

237:                                              ; preds = %234
  %238 = load i32*, i32** %7, align 8
  %239 = call i32 @jsonw_start_object(i32* %238)
  %240 = load i32*, i32** %7, align 8
  %241 = load i8*, i8** %16, align 8
  %242 = call i32 @jsonw_string_field(i32* %240, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* %241)
  %243 = load i32*, i32** %7, align 8
  %244 = load %struct.btf_member*, %struct.btf_member** %13, align 8
  %245 = getelementptr inbounds %struct.btf_member, %struct.btf_member* %244, i32 0, i32 1
  %246 = load i32, i32* %245, align 4
  %247 = call i32 @jsonw_uint_field(i32* %243, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0), i32 %246)
  %248 = load i32*, i32** %7, align 8
  %249 = load i32, i32* %17, align 4
  %250 = call i32 @jsonw_uint_field(i32* %248, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), i32 %249)
  %251 = load i32, i32* %18, align 4
  %252 = icmp ne i32 %251, 0
  br i1 %252, label %253, label %257

253:                                              ; preds = %237
  %254 = load i32*, i32** %7, align 8
  %255 = load i32, i32* %18, align 4
  %256 = call i32 @jsonw_uint_field(i32* %254, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 %255)
  br label %257

257:                                              ; preds = %253, %237
  %258 = load i32*, i32** %7, align 8
  %259 = call i32 @jsonw_end_object(i32* %258)
  br label %273

260:                                              ; preds = %234
  %261 = load i8*, i8** %16, align 8
  %262 = load %struct.btf_member*, %struct.btf_member** %13, align 8
  %263 = getelementptr inbounds %struct.btf_member, %struct.btf_member* %262, i32 0, i32 1
  %264 = load i32, i32* %263, align 4
  %265 = load i32, i32* %17, align 4
  %266 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.18, i64 0, i64 0), i8* %261, i32 %264, i32 %265)
  %267 = load i32, i32* %18, align 4
  %268 = icmp ne i32 %267, 0
  br i1 %268, label %269, label %272

269:                                              ; preds = %260
  %270 = load i32, i32* %18, align 4
  %271 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.19, i64 0, i64 0), i32 %270)
  br label %272

272:                                              ; preds = %269, %260
  br label %273

273:                                              ; preds = %272, %257
  br label %274

274:                                              ; preds = %273
  %275 = load i32, i32* %15, align 4
  %276 = add nsw i32 %275, 1
  store i32 %276, i32* %15, align 4
  %277 = load %struct.btf_member*, %struct.btf_member** %13, align 8
  %278 = getelementptr inbounds %struct.btf_member, %struct.btf_member* %277, i32 1
  store %struct.btf_member* %278, %struct.btf_member** %13, align 8
  br label %206

279:                                              ; preds = %206
  %280 = load i64, i64* @json_output, align 8
  %281 = icmp ne i64 %280, 0
  br i1 %281, label %282, label %285

282:                                              ; preds = %279
  %283 = load i32*, i32** %7, align 8
  %284 = call i32 @jsonw_end_array(i32* %283)
  br label %285

285:                                              ; preds = %282, %279
  br label %579

286:                                              ; preds = %82
  %287 = load %struct.btf_type*, %struct.btf_type** %6, align 8
  %288 = getelementptr inbounds %struct.btf_type, %struct.btf_type* %287, i64 1
  %289 = bitcast %struct.btf_type* %288 to i8*
  %290 = bitcast i8* %289 to %struct.btf_enum*
  store %struct.btf_enum* %290, %struct.btf_enum** %19, align 8
  %291 = load %struct.btf_type*, %struct.btf_type** %6, align 8
  %292 = getelementptr inbounds %struct.btf_type, %struct.btf_type* %291, i32 0, i32 2
  %293 = load i32, i32* %292, align 4
  %294 = call i32 @BTF_INFO_VLEN(i32 %293)
  store i32 %294, i32* %20, align 4
  %295 = load i64, i64* @json_output, align 8
  %296 = icmp ne i64 %295, 0
  br i1 %296, label %297, label %310

297:                                              ; preds = %286
  %298 = load i32*, i32** %7, align 8
  %299 = load %struct.btf_type*, %struct.btf_type** %6, align 8
  %300 = getelementptr inbounds %struct.btf_type, %struct.btf_type* %299, i32 0, i32 0
  %301 = load i32, i32* %300, align 4
  %302 = call i32 @jsonw_uint_field(i32* %298, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32 %301)
  %303 = load i32*, i32** %7, align 8
  %304 = load i32, i32* %20, align 4
  %305 = call i32 @jsonw_uint_field(i32* %303, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32 %304)
  %306 = load i32*, i32** %7, align 8
  %307 = call i32 @jsonw_name(i32* %306, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.20, i64 0, i64 0))
  %308 = load i32*, i32** %7, align 8
  %309 = call i32 @jsonw_start_array(i32* %308)
  br label %316

310:                                              ; preds = %286
  %311 = load %struct.btf_type*, %struct.btf_type** %6, align 8
  %312 = getelementptr inbounds %struct.btf_type, %struct.btf_type* %311, i32 0, i32 0
  %313 = load i32, i32* %312, align 4
  %314 = load i32, i32* %20, align 4
  %315 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.16, i64 0, i64 0), i32 %313, i32 %314)
  br label %316

316:                                              ; preds = %310, %297
  store i32 0, i32* %21, align 4
  br label %317

317:                                              ; preds = %349, %316
  %318 = load i32, i32* %21, align 4
  %319 = load i32, i32* %20, align 4
  %320 = icmp slt i32 %318, %319
  br i1 %320, label %321, label %354

321:                                              ; preds = %317
  %322 = load %struct.btf*, %struct.btf** %4, align 8
  %323 = load %struct.btf_enum*, %struct.btf_enum** %19, align 8
  %324 = getelementptr inbounds %struct.btf_enum, %struct.btf_enum* %323, i32 0, i32 1
  %325 = load i32, i32* %324, align 4
  %326 = call i8* @btf_str(%struct.btf* %322, i32 %325)
  store i8* %326, i8** %22, align 8
  %327 = load i64, i64* @json_output, align 8
  %328 = icmp ne i64 %327, 0
  br i1 %328, label %329, label %342

329:                                              ; preds = %321
  %330 = load i32*, i32** %7, align 8
  %331 = call i32 @jsonw_start_object(i32* %330)
  %332 = load i32*, i32** %7, align 8
  %333 = load i8*, i8** %22, align 8
  %334 = call i32 @jsonw_string_field(i32* %332, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* %333)
  %335 = load i32*, i32** %7, align 8
  %336 = load %struct.btf_enum*, %struct.btf_enum** %19, align 8
  %337 = getelementptr inbounds %struct.btf_enum, %struct.btf_enum* %336, i32 0, i32 0
  %338 = load i32, i32* %337, align 4
  %339 = call i32 @jsonw_uint_field(i32* %335, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.21, i64 0, i64 0), i32 %338)
  %340 = load i32*, i32** %7, align 8
  %341 = call i32 @jsonw_end_object(i32* %340)
  br label %348

342:                                              ; preds = %321
  %343 = load i8*, i8** %22, align 8
  %344 = load %struct.btf_enum*, %struct.btf_enum** %19, align 8
  %345 = getelementptr inbounds %struct.btf_enum, %struct.btf_enum* %344, i32 0, i32 0
  %346 = load i32, i32* %345, align 4
  %347 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.22, i64 0, i64 0), i8* %343, i32 %346)
  br label %348

348:                                              ; preds = %342, %329
  br label %349

349:                                              ; preds = %348
  %350 = load i32, i32* %21, align 4
  %351 = add nsw i32 %350, 1
  store i32 %351, i32* %21, align 4
  %352 = load %struct.btf_enum*, %struct.btf_enum** %19, align 8
  %353 = getelementptr inbounds %struct.btf_enum, %struct.btf_enum* %352, i32 1
  store %struct.btf_enum* %353, %struct.btf_enum** %19, align 8
  br label %317

354:                                              ; preds = %317
  %355 = load i64, i64* @json_output, align 8
  %356 = icmp ne i64 %355, 0
  br i1 %356, label %357, label %360

357:                                              ; preds = %354
  %358 = load i32*, i32** %7, align 8
  %359 = call i32 @jsonw_end_array(i32* %358)
  br label %360

360:                                              ; preds = %357, %354
  br label %579

361:                                              ; preds = %82
  %362 = load %struct.btf_type*, %struct.btf_type** %6, align 8
  %363 = getelementptr inbounds %struct.btf_type, %struct.btf_type* %362, i32 0, i32 2
  %364 = load i32, i32* %363, align 4
  %365 = call i32 @BTF_INFO_KFLAG(i32 %364)
  %366 = icmp ne i32 %365, 0
  %367 = zext i1 %366 to i64
  %368 = select i1 %366, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.23, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.24, i64 0, i64 0)
  store i8* %368, i8** %23, align 8
  %369 = load i64, i64* @json_output, align 8
  %370 = icmp ne i64 %369, 0
  br i1 %370, label %371, label %375

371:                                              ; preds = %361
  %372 = load i32*, i32** %7, align 8
  %373 = load i8*, i8** %23, align 8
  %374 = call i32 @jsonw_string_field(i32* %372, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.25, i64 0, i64 0), i8* %373)
  br label %378

375:                                              ; preds = %361
  %376 = load i8*, i8** %23, align 8
  %377 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.26, i64 0, i64 0), i8* %376)
  br label %378

378:                                              ; preds = %375, %371
  br label %579

379:                                              ; preds = %82
  %380 = load i64, i64* @json_output, align 8
  %381 = icmp ne i64 %380, 0
  br i1 %381, label %382, label %388

382:                                              ; preds = %379
  %383 = load i32*, i32** %7, align 8
  %384 = load %struct.btf_type*, %struct.btf_type** %6, align 8
  %385 = getelementptr inbounds %struct.btf_type, %struct.btf_type* %384, i32 0, i32 1
  %386 = load i32, i32* %385, align 4
  %387 = call i32 @jsonw_uint_field(i32* %383, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0), i32 %386)
  br label %393

388:                                              ; preds = %379
  %389 = load %struct.btf_type*, %struct.btf_type** %6, align 8
  %390 = getelementptr inbounds %struct.btf_type, %struct.btf_type* %389, i32 0, i32 1
  %391 = load i32, i32* %390, align 4
  %392 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i64 0, i64 0), i32 %391)
  br label %393

393:                                              ; preds = %388, %382
  br label %579

394:                                              ; preds = %82
  %395 = load %struct.btf_type*, %struct.btf_type** %6, align 8
  %396 = getelementptr inbounds %struct.btf_type, %struct.btf_type* %395, i64 1
  %397 = bitcast %struct.btf_type* %396 to i8*
  %398 = bitcast i8* %397 to %struct.btf_param*
  store %struct.btf_param* %398, %struct.btf_param** %24, align 8
  %399 = load %struct.btf_type*, %struct.btf_type** %6, align 8
  %400 = getelementptr inbounds %struct.btf_type, %struct.btf_type* %399, i32 0, i32 2
  %401 = load i32, i32* %400, align 4
  %402 = call i32 @BTF_INFO_VLEN(i32 %401)
  store i32 %402, i32* %25, align 4
  %403 = load i64, i64* @json_output, align 8
  %404 = icmp ne i64 %403, 0
  br i1 %404, label %405, label %418

405:                                              ; preds = %394
  %406 = load i32*, i32** %7, align 8
  %407 = load %struct.btf_type*, %struct.btf_type** %6, align 8
  %408 = getelementptr inbounds %struct.btf_type, %struct.btf_type* %407, i32 0, i32 1
  %409 = load i32, i32* %408, align 4
  %410 = call i32 @jsonw_uint_field(i32* %406, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.27, i64 0, i64 0), i32 %409)
  %411 = load i32*, i32** %7, align 8
  %412 = load i32, i32* %25, align 4
  %413 = call i32 @jsonw_uint_field(i32* %411, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32 %412)
  %414 = load i32*, i32** %7, align 8
  %415 = call i32 @jsonw_name(i32* %414, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.28, i64 0, i64 0))
  %416 = load i32*, i32** %7, align 8
  %417 = call i32 @jsonw_start_array(i32* %416)
  br label %424

418:                                              ; preds = %394
  %419 = load %struct.btf_type*, %struct.btf_type** %6, align 8
  %420 = getelementptr inbounds %struct.btf_type, %struct.btf_type* %419, i32 0, i32 1
  %421 = load i32, i32* %420, align 4
  %422 = load i32, i32* %25, align 4
  %423 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.29, i64 0, i64 0), i32 %421, i32 %422)
  br label %424

424:                                              ; preds = %418, %405
  store i32 0, i32* %26, align 4
  br label %425

425:                                              ; preds = %457, %424
  %426 = load i32, i32* %26, align 4
  %427 = load i32, i32* %25, align 4
  %428 = icmp slt i32 %426, %427
  br i1 %428, label %429, label %462

429:                                              ; preds = %425
  %430 = load %struct.btf*, %struct.btf** %4, align 8
  %431 = load %struct.btf_param*, %struct.btf_param** %24, align 8
  %432 = getelementptr inbounds %struct.btf_param, %struct.btf_param* %431, i32 0, i32 1
  %433 = load i32, i32* %432, align 4
  %434 = call i8* @btf_str(%struct.btf* %430, i32 %433)
  store i8* %434, i8** %27, align 8
  %435 = load i64, i64* @json_output, align 8
  %436 = icmp ne i64 %435, 0
  br i1 %436, label %437, label %450

437:                                              ; preds = %429
  %438 = load i32*, i32** %7, align 8
  %439 = call i32 @jsonw_start_object(i32* %438)
  %440 = load i32*, i32** %7, align 8
  %441 = load i8*, i8** %27, align 8
  %442 = call i32 @jsonw_string_field(i32* %440, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* %441)
  %443 = load i32*, i32** %7, align 8
  %444 = load %struct.btf_param*, %struct.btf_param** %24, align 8
  %445 = getelementptr inbounds %struct.btf_param, %struct.btf_param* %444, i32 0, i32 0
  %446 = load i32, i32* %445, align 4
  %447 = call i32 @jsonw_uint_field(i32* %443, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0), i32 %446)
  %448 = load i32*, i32** %7, align 8
  %449 = call i32 @jsonw_end_object(i32* %448)
  br label %456

450:                                              ; preds = %429
  %451 = load i8*, i8** %27, align 8
  %452 = load %struct.btf_param*, %struct.btf_param** %24, align 8
  %453 = getelementptr inbounds %struct.btf_param, %struct.btf_param* %452, i32 0, i32 0
  %454 = load i32, i32* %453, align 4
  %455 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.30, i64 0, i64 0), i8* %451, i32 %454)
  br label %456

456:                                              ; preds = %450, %437
  br label %457

457:                                              ; preds = %456
  %458 = load i32, i32* %26, align 4
  %459 = add nsw i32 %458, 1
  store i32 %459, i32* %26, align 4
  %460 = load %struct.btf_param*, %struct.btf_param** %24, align 8
  %461 = getelementptr inbounds %struct.btf_param, %struct.btf_param* %460, i32 1
  store %struct.btf_param* %461, %struct.btf_param** %24, align 8
  br label %425

462:                                              ; preds = %425
  %463 = load i64, i64* @json_output, align 8
  %464 = icmp ne i64 %463, 0
  br i1 %464, label %465, label %468

465:                                              ; preds = %462
  %466 = load i32*, i32** %7, align 8
  %467 = call i32 @jsonw_end_array(i32* %466)
  br label %468

468:                                              ; preds = %465, %462
  br label %579

469:                                              ; preds = %82
  %470 = load %struct.btf_type*, %struct.btf_type** %6, align 8
  %471 = getelementptr inbounds %struct.btf_type, %struct.btf_type* %470, i64 1
  %472 = bitcast %struct.btf_type* %471 to i8*
  %473 = bitcast i8* %472 to %struct.btf_var*
  store %struct.btf_var* %473, %struct.btf_var** %28, align 8
  %474 = load %struct.btf_var*, %struct.btf_var** %28, align 8
  %475 = getelementptr inbounds %struct.btf_var, %struct.btf_var* %474, i32 0, i32 0
  %476 = load i32, i32* %475, align 4
  %477 = call i8* @btf_var_linkage_str(i32 %476)
  store i8* %477, i8** %29, align 8
  %478 = load i64, i64* @json_output, align 8
  %479 = icmp ne i64 %478, 0
  br i1 %479, label %480, label %489

480:                                              ; preds = %469
  %481 = load i32*, i32** %7, align 8
  %482 = load %struct.btf_type*, %struct.btf_type** %6, align 8
  %483 = getelementptr inbounds %struct.btf_type, %struct.btf_type* %482, i32 0, i32 1
  %484 = load i32, i32* %483, align 4
  %485 = call i32 @jsonw_uint_field(i32* %481, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0), i32 %484)
  %486 = load i32*, i32** %7, align 8
  %487 = load i8*, i8** %29, align 8
  %488 = call i32 @jsonw_string_field(i32* %486, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.31, i64 0, i64 0), i8* %487)
  br label %495

489:                                              ; preds = %469
  %490 = load %struct.btf_type*, %struct.btf_type** %6, align 8
  %491 = getelementptr inbounds %struct.btf_type, %struct.btf_type* %490, i32 0, i32 1
  %492 = load i32, i32* %491, align 4
  %493 = load i8*, i8** %29, align 8
  %494 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.32, i64 0, i64 0), i32 %492, i8* %493)
  br label %495

495:                                              ; preds = %489, %480
  br label %579

496:                                              ; preds = %82
  %497 = load %struct.btf_type*, %struct.btf_type** %6, align 8
  %498 = getelementptr inbounds %struct.btf_type, %struct.btf_type* %497, i64 1
  %499 = bitcast %struct.btf_type* %498 to i8*
  %500 = bitcast i8* %499 to %struct.btf_var_secinfo*
  store %struct.btf_var_secinfo* %500, %struct.btf_var_secinfo** %30, align 8
  %501 = load %struct.btf_type*, %struct.btf_type** %6, align 8
  %502 = getelementptr inbounds %struct.btf_type, %struct.btf_type* %501, i32 0, i32 2
  %503 = load i32, i32* %502, align 4
  %504 = call i32 @BTF_INFO_VLEN(i32 %503)
  store i32 %504, i32* %31, align 4
  %505 = load i64, i64* @json_output, align 8
  %506 = icmp ne i64 %505, 0
  br i1 %506, label %507, label %520

507:                                              ; preds = %496
  %508 = load i32*, i32** %7, align 8
  %509 = load %struct.btf_type*, %struct.btf_type** %6, align 8
  %510 = getelementptr inbounds %struct.btf_type, %struct.btf_type* %509, i32 0, i32 0
  %511 = load i32, i32* %510, align 4
  %512 = call i32 @jsonw_uint_field(i32* %508, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32 %511)
  %513 = load i32*, i32** %7, align 8
  %514 = load i32, i32* %31, align 4
  %515 = call i32 @jsonw_uint_field(i32* %513, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32 %514)
  %516 = load i32*, i32** %7, align 8
  %517 = call i32 @jsonw_name(i32* %516, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.33, i64 0, i64 0))
  %518 = load i32*, i32** %7, align 8
  %519 = call i32 @jsonw_start_array(i32* %518)
  br label %526

520:                                              ; preds = %496
  %521 = load %struct.btf_type*, %struct.btf_type** %6, align 8
  %522 = getelementptr inbounds %struct.btf_type, %struct.btf_type* %521, i32 0, i32 0
  %523 = load i32, i32* %522, align 4
  %524 = load i32, i32* %31, align 4
  %525 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.16, i64 0, i64 0), i32 %523, i32 %524)
  br label %526

526:                                              ; preds = %520, %507
  store i32 0, i32* %32, align 4
  br label %527

527:                                              ; preds = %566, %526
  %528 = load i32, i32* %32, align 4
  %529 = load i32, i32* %31, align 4
  %530 = icmp slt i32 %528, %529
  br i1 %530, label %531, label %571

531:                                              ; preds = %527
  %532 = load i64, i64* @json_output, align 8
  %533 = icmp ne i64 %532, 0
  br i1 %533, label %534, label %554

534:                                              ; preds = %531
  %535 = load i32*, i32** %7, align 8
  %536 = call i32 @jsonw_start_object(i32* %535)
  %537 = load i32*, i32** %7, align 8
  %538 = load %struct.btf_var_secinfo*, %struct.btf_var_secinfo** %30, align 8
  %539 = getelementptr inbounds %struct.btf_var_secinfo, %struct.btf_var_secinfo* %538, i32 0, i32 0
  %540 = load i32, i32* %539, align 4
  %541 = call i32 @jsonw_uint_field(i32* %537, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0), i32 %540)
  %542 = load i32*, i32** %7, align 8
  %543 = load %struct.btf_var_secinfo*, %struct.btf_var_secinfo** %30, align 8
  %544 = getelementptr inbounds %struct.btf_var_secinfo, %struct.btf_var_secinfo* %543, i32 0, i32 1
  %545 = load i32, i32* %544, align 4
  %546 = call i32 @jsonw_uint_field(i32* %542, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.34, i64 0, i64 0), i32 %545)
  %547 = load i32*, i32** %7, align 8
  %548 = load %struct.btf_var_secinfo*, %struct.btf_var_secinfo** %30, align 8
  %549 = getelementptr inbounds %struct.btf_var_secinfo, %struct.btf_var_secinfo* %548, i32 0, i32 2
  %550 = load i32, i32* %549, align 4
  %551 = call i32 @jsonw_uint_field(i32* %547, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32 %550)
  %552 = load i32*, i32** %7, align 8
  %553 = call i32 @jsonw_end_object(i32* %552)
  br label %565

554:                                              ; preds = %531
  %555 = load %struct.btf_var_secinfo*, %struct.btf_var_secinfo** %30, align 8
  %556 = getelementptr inbounds %struct.btf_var_secinfo, %struct.btf_var_secinfo* %555, i32 0, i32 0
  %557 = load i32, i32* %556, align 4
  %558 = load %struct.btf_var_secinfo*, %struct.btf_var_secinfo** %30, align 8
  %559 = getelementptr inbounds %struct.btf_var_secinfo, %struct.btf_var_secinfo* %558, i32 0, i32 1
  %560 = load i32, i32* %559, align 4
  %561 = load %struct.btf_var_secinfo*, %struct.btf_var_secinfo** %30, align 8
  %562 = getelementptr inbounds %struct.btf_var_secinfo, %struct.btf_var_secinfo* %561, i32 0, i32 2
  %563 = load i32, i32* %562, align 4
  %564 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.35, i64 0, i64 0), i32 %557, i32 %560, i32 %563)
  br label %565

565:                                              ; preds = %554, %534
  br label %566

566:                                              ; preds = %565
  %567 = load i32, i32* %32, align 4
  %568 = add nsw i32 %567, 1
  store i32 %568, i32* %32, align 4
  %569 = load %struct.btf_var_secinfo*, %struct.btf_var_secinfo** %30, align 8
  %570 = getelementptr inbounds %struct.btf_var_secinfo, %struct.btf_var_secinfo* %569, i32 1
  store %struct.btf_var_secinfo* %570, %struct.btf_var_secinfo** %30, align 8
  br label %527

571:                                              ; preds = %527
  %572 = load i64, i64* @json_output, align 8
  %573 = icmp ne i64 %572, 0
  br i1 %573, label %574, label %577

574:                                              ; preds = %571
  %575 = load i32*, i32** %7, align 8
  %576 = call i32 @jsonw_end_array(i32* %575)
  br label %577

577:                                              ; preds = %574, %571
  br label %579

578:                                              ; preds = %82
  br label %579

579:                                              ; preds = %578, %577, %495, %468, %393, %378, %360, %285, %174, %139, %124
  %580 = load i64, i64* @json_output, align 8
  %581 = icmp ne i64 %580, 0
  br i1 %581, label %582, label %585

582:                                              ; preds = %579
  %583 = load i32*, i32** @json_wtr, align 8
  %584 = call i32 @jsonw_end_object(i32* %583)
  br label %587

585:                                              ; preds = %579
  %586 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.36, i64 0, i64 0))
  br label %587

587:                                              ; preds = %585, %582
  ret i32 0
}

declare dso_local i32 @BTF_INFO_KIND(i32) #1

declare dso_local i32 @jsonw_start_object(i32*) #1

declare dso_local i32 @jsonw_uint_field(i32*, i8*, i32) #1

declare dso_local i32 @jsonw_string_field(i32*, i8*, i8*) #1

declare dso_local i8* @btf_str(%struct.btf*, i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i8* @btf_int_enc_str(i32) #1

declare dso_local i32 @BTF_INT_ENCODING(i32) #1

declare dso_local i32 @BTF_INT_OFFSET(i32) #1

declare dso_local i32 @BTF_INT_BITS(i32) #1

declare dso_local i32 @BTF_INFO_VLEN(i32) #1

declare dso_local i32 @jsonw_name(i32*, i8*) #1

declare dso_local i32 @jsonw_start_array(i32*) #1

declare dso_local i32 @BTF_INFO_KFLAG(i32) #1

declare dso_local i32 @BTF_MEMBER_BIT_OFFSET(i32) #1

declare dso_local i32 @BTF_MEMBER_BITFIELD_SIZE(i32) #1

declare dso_local i32 @jsonw_end_object(i32*) #1

declare dso_local i32 @jsonw_end_array(i32*) #1

declare dso_local i8* @btf_var_linkage_str(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
