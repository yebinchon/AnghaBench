; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/prog_tests/extr_core_reloc.c_test_core_reloc.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/prog_tests/extr_core_reloc.c_test_core_reloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.core_reloc_test_case = type { i32, i32, i32*, i32*, i64, i32, i32, i32 }
%struct.bpf_object_load_attr = type { i32, i64, %struct.bpf_object* }
%struct.bpf_object = type { i32 }
%struct.bpf_link = type opaque
%struct.bpf_map = type { i32 }
%struct.bpf_program = type { i32 }
%struct.data = type { i32*, i32 }

@.str = private unnamed_addr constant [25 x i8] c"raw_tracepoint/sys_enter\00", align 1
@test_cases = common dso_local global %struct.core_reloc_test_case* null, align 8
@.str.1 = private unnamed_addr constant [9 x i8] c"obj_open\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"failed to open '%s': %ld\0A\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"find_probe\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"prog '%s' not found\0A\00", align 1
@BPF_PROG_TYPE_RAW_TRACEPOINT = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [14 x i8] c"obj_load_fail\00", align 1
@.str.6 = private unnamed_addr constant [31 x i8] c"should fail to load prog '%s'\0A\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"obj_load\00", align 1
@.str.8 = private unnamed_addr constant [30 x i8] c"failed to load prog '%s': %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"sys_enter\00", align 1
@.str.10 = private unnamed_addr constant [14 x i8] c"attach_raw_tp\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"err %ld\0A\00", align 1
@.str.12 = private unnamed_addr constant [13 x i8] c"test_cor.bss\00", align 1
@.str.13 = private unnamed_addr constant [14 x i8] c"find_data_map\00", align 1
@.str.14 = private unnamed_addr constant [20 x i8] c"data map not found\0A\00", align 1
@.str.15 = private unnamed_addr constant [16 x i8] c"update_data_map\00", align 1
@.str.16 = private unnamed_addr constant [32 x i8] c"failed to update .data map: %d\0A\00", align 1
@.str.17 = private unnamed_addr constant [11 x i8] c"get_result\00", align 1
@.str.18 = private unnamed_addr constant [31 x i8] c"failed to get output data: %d\0A\00", align 1
@.str.19 = private unnamed_addr constant [13 x i8] c"check_result\00", align 1
@.str.20 = private unnamed_addr constant [31 x i8] c"input/output data don't match\0A\00", align 1
@.str.21 = private unnamed_addr constant [26 x i8] c"input byte #%d: 0x%02hhx\0A\00", align 1
@.str.22 = private unnamed_addr constant [44 x i8] c"output byte #%d: EXP 0x%02hhx GOT 0x%02hhx\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_core_reloc() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca %struct.bpf_object_load_attr, align 8
  %3 = alloca %struct.core_reloc_test_case*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.bpf_link*, align 8
  %9 = alloca %struct.bpf_map*, align 8
  %10 = alloca %struct.bpf_program*, align 8
  %11 = alloca %struct.bpf_object*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.data, align 8
  %14 = alloca i32, align 4
  store i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i8** %1, align 8
  %15 = bitcast %struct.bpf_object_load_attr* %2 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %15, i8 0, i64 24, i1 false)
  store i32 0, i32* %5, align 4
  store %struct.bpf_link* null, %struct.bpf_link** %8, align 8
  store i32 0, i32* %12, align 4
  store i32 0, i32* %6, align 4
  br label %16

16:                                               ; preds = %220, %0
  %17 = load i32, i32* %6, align 4
  %18 = load %struct.core_reloc_test_case*, %struct.core_reloc_test_case** @test_cases, align 8
  %19 = call i32 @ARRAY_SIZE(%struct.core_reloc_test_case* %18)
  %20 = icmp slt i32 %17, %19
  br i1 %20, label %21, label %223

21:                                               ; preds = %16
  %22 = load %struct.core_reloc_test_case*, %struct.core_reloc_test_case** @test_cases, align 8
  %23 = load i32, i32* %6, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.core_reloc_test_case, %struct.core_reloc_test_case* %22, i64 %24
  store %struct.core_reloc_test_case* %25, %struct.core_reloc_test_case** %3, align 8
  %26 = load %struct.core_reloc_test_case*, %struct.core_reloc_test_case** %3, align 8
  %27 = getelementptr inbounds %struct.core_reloc_test_case, %struct.core_reloc_test_case* %26, i32 0, i32 7
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @test__start_subtest(i32 %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %21
  br label %220

32:                                               ; preds = %21
  %33 = load %struct.core_reloc_test_case*, %struct.core_reloc_test_case** %3, align 8
  %34 = getelementptr inbounds %struct.core_reloc_test_case, %struct.core_reloc_test_case* %33, i32 0, i32 6
  %35 = load i32, i32* %34, align 4
  %36 = call %struct.bpf_object* @bpf_object__open(i32 %35)
  store %struct.bpf_object* %36, %struct.bpf_object** %11, align 8
  %37 = load %struct.bpf_object*, %struct.bpf_object** %11, align 8
  %38 = call i32 @IS_ERR_OR_NULL(%struct.bpf_object* %37)
  %39 = load %struct.core_reloc_test_case*, %struct.core_reloc_test_case** %3, align 8
  %40 = getelementptr inbounds %struct.core_reloc_test_case, %struct.core_reloc_test_case* %39, i32 0, i32 6
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.bpf_object*, %struct.bpf_object** %11, align 8
  %43 = call i32 @PTR_ERR(%struct.bpf_object* %42)
  %44 = call i64 (i32, i8*, i8*, ...) @CHECK(i32 %38, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 %41, i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %32
  br label %220

47:                                               ; preds = %32
  %48 = load %struct.bpf_object*, %struct.bpf_object** %11, align 8
  %49 = load i8*, i8** %1, align 8
  %50 = call %struct.bpf_program* @bpf_object__find_program_by_title(%struct.bpf_object* %48, i8* %49)
  store %struct.bpf_program* %50, %struct.bpf_program** %10, align 8
  %51 = load %struct.bpf_program*, %struct.bpf_program** %10, align 8
  %52 = icmp ne %struct.bpf_program* %51, null
  %53 = xor i1 %52, true
  %54 = zext i1 %53 to i32
  %55 = load i8*, i8** %1, align 8
  %56 = call i64 (i32, i8*, i8*, ...) @CHECK(i32 %54, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), i8* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %47
  br label %208

59:                                               ; preds = %47
  %60 = load %struct.bpf_program*, %struct.bpf_program** %10, align 8
  %61 = load i32, i32* @BPF_PROG_TYPE_RAW_TRACEPOINT, align 4
  %62 = call i32 @bpf_program__set_type(%struct.bpf_program* %60, i32 %61)
  %63 = load %struct.bpf_object*, %struct.bpf_object** %11, align 8
  %64 = getelementptr inbounds %struct.bpf_object_load_attr, %struct.bpf_object_load_attr* %2, i32 0, i32 2
  store %struct.bpf_object* %63, %struct.bpf_object** %64, align 8
  %65 = getelementptr inbounds %struct.bpf_object_load_attr, %struct.bpf_object_load_attr* %2, i32 0, i32 1
  store i64 0, i64* %65, align 8
  %66 = load %struct.core_reloc_test_case*, %struct.core_reloc_test_case** %3, align 8
  %67 = getelementptr inbounds %struct.core_reloc_test_case, %struct.core_reloc_test_case* %66, i32 0, i32 5
  %68 = load i32, i32* %67, align 8
  %69 = getelementptr inbounds %struct.bpf_object_load_attr, %struct.bpf_object_load_attr* %2, i32 0, i32 0
  store i32 %68, i32* %69, align 8
  %70 = call i32 @bpf_object__load_xattr(%struct.bpf_object_load_attr* %2)
  store i32 %70, i32* %4, align 4
  %71 = load %struct.core_reloc_test_case*, %struct.core_reloc_test_case** %3, align 8
  %72 = getelementptr inbounds %struct.core_reloc_test_case, %struct.core_reloc_test_case* %71, i32 0, i32 4
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %82

75:                                               ; preds = %59
  %76 = load i32, i32* %4, align 4
  %77 = icmp ne i32 %76, 0
  %78 = xor i1 %77, true
  %79 = zext i1 %78 to i32
  %80 = load i8*, i8** %1, align 8
  %81 = call i64 (i32, i8*, i8*, ...) @CHECK(i32 %79, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i64 0, i64 0), i8* %80)
  br label %208

82:                                               ; preds = %59
  %83 = load i32, i32* %4, align 4
  %84 = load i8*, i8** %1, align 8
  %85 = load i32, i32* %4, align 4
  %86 = call i64 (i32, i8*, i8*, ...) @CHECK(i32 %83, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.8, i64 0, i64 0), i8* %84, i32 %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %82
  br label %208

89:                                               ; preds = %82
  br label %90

90:                                               ; preds = %89
  %91 = load %struct.bpf_program*, %struct.bpf_program** %10, align 8
  %92 = call %struct.bpf_object* @bpf_program__attach_raw_tracepoint(%struct.bpf_program* %91, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0))
  %93 = bitcast %struct.bpf_object* %92 to %struct.bpf_link*
  store %struct.bpf_link* %93, %struct.bpf_link** %8, align 8
  %94 = load %struct.bpf_link*, %struct.bpf_link** %8, align 8
  %95 = bitcast %struct.bpf_link* %94 to %struct.bpf_object*
  %96 = call i32 @IS_ERR(%struct.bpf_object* %95)
  %97 = load %struct.bpf_link*, %struct.bpf_link** %8, align 8
  %98 = bitcast %struct.bpf_link* %97 to %struct.bpf_object*
  %99 = call i32 @PTR_ERR(%struct.bpf_object* %98)
  %100 = call i64 (i32, i8*, i8*, ...) @CHECK(i32 %96, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i64 0, i64 0), i32 %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %103

102:                                              ; preds = %90
  br label %208

103:                                              ; preds = %90
  %104 = load %struct.bpf_object*, %struct.bpf_object** %11, align 8
  %105 = call %struct.bpf_map* @bpf_object__find_map_by_name(%struct.bpf_object* %104, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.12, i64 0, i64 0))
  store %struct.bpf_map* %105, %struct.bpf_map** %9, align 8
  %106 = load %struct.bpf_map*, %struct.bpf_map** %9, align 8
  %107 = icmp ne %struct.bpf_map* %106, null
  %108 = xor i1 %107, true
  %109 = zext i1 %108 to i32
  %110 = call i64 (i32, i8*, i8*, ...) @CHECK(i32 %109, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.14, i64 0, i64 0))
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %113

112:                                              ; preds = %103
  br label %208

113:                                              ; preds = %103
  %114 = call i32 @memset(%struct.data* %13, i32 0, i32 16)
  %115 = getelementptr inbounds %struct.data, %struct.data* %13, i32 0, i32 1
  %116 = load i32, i32* %115, align 8
  %117 = load %struct.core_reloc_test_case*, %struct.core_reloc_test_case** %3, align 8
  %118 = getelementptr inbounds %struct.core_reloc_test_case, %struct.core_reloc_test_case* %117, i32 0, i32 3
  %119 = load i32*, i32** %118, align 8
  %120 = load %struct.core_reloc_test_case*, %struct.core_reloc_test_case** %3, align 8
  %121 = getelementptr inbounds %struct.core_reloc_test_case, %struct.core_reloc_test_case* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = call i32 @memcpy(i32 %116, i32* %119, i32 %122)
  %124 = load %struct.bpf_map*, %struct.bpf_map** %9, align 8
  %125 = call i32 @bpf_map__fd(%struct.bpf_map* %124)
  %126 = call i32 @bpf_map_update_elem(i32 %125, i32* %12, %struct.data* %13, i32 0)
  store i32 %126, i32* %4, align 4
  %127 = load i32, i32* %4, align 4
  %128 = load i32, i32* %4, align 4
  %129 = call i64 (i32, i8*, i8*, ...) @CHECK(i32 %127, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.15, i64 0, i64 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.16, i64 0, i64 0), i32 %128)
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %132

131:                                              ; preds = %113
  br label %208

132:                                              ; preds = %113
  %133 = call i32 @usleep(i32 1)
  %134 = load %struct.bpf_map*, %struct.bpf_map** %9, align 8
  %135 = call i32 @bpf_map__fd(%struct.bpf_map* %134)
  %136 = call i32 @bpf_map_lookup_elem(i32 %135, i32* %12, %struct.data* %13)
  store i32 %136, i32* %4, align 4
  %137 = load i32, i32* %4, align 4
  %138 = load i32, i32* %4, align 4
  %139 = call i64 (i32, i8*, i8*, ...) @CHECK(i32 %137, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.17, i64 0, i64 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.18, i64 0, i64 0), i32 %138)
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %142

141:                                              ; preds = %132
  br label %208

142:                                              ; preds = %132
  %143 = getelementptr inbounds %struct.data, %struct.data* %13, i32 0, i32 0
  %144 = load i32*, i32** %143, align 8
  %145 = load %struct.core_reloc_test_case*, %struct.core_reloc_test_case** %3, align 8
  %146 = getelementptr inbounds %struct.core_reloc_test_case, %struct.core_reloc_test_case* %145, i32 0, i32 2
  %147 = load i32*, i32** %146, align 8
  %148 = load %struct.core_reloc_test_case*, %struct.core_reloc_test_case** %3, align 8
  %149 = getelementptr inbounds %struct.core_reloc_test_case, %struct.core_reloc_test_case* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 4
  %151 = call i64 @memcmp(i32* %144, i32* %147, i32 %150)
  %152 = icmp eq i64 %151, 0
  %153 = zext i1 %152 to i32
  store i32 %153, i32* %7, align 4
  %154 = load i32, i32* %7, align 4
  %155 = icmp ne i32 %154, 0
  %156 = xor i1 %155, true
  %157 = zext i1 %156 to i32
  %158 = call i64 (i32, i8*, i8*, ...) @CHECK(i32 %157, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.19, i64 0, i64 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.20, i64 0, i64 0))
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %160, label %207

160:                                              ; preds = %142
  store i32 0, i32* %14, align 4
  br label %161

161:                                              ; preds = %177, %160
  %162 = load i32, i32* %14, align 4
  %163 = load %struct.core_reloc_test_case*, %struct.core_reloc_test_case** %3, align 8
  %164 = getelementptr inbounds %struct.core_reloc_test_case, %struct.core_reloc_test_case* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 8
  %166 = icmp slt i32 %162, %165
  br i1 %166, label %167, label %180

167:                                              ; preds = %161
  %168 = load i32, i32* %14, align 4
  %169 = load %struct.core_reloc_test_case*, %struct.core_reloc_test_case** %3, align 8
  %170 = getelementptr inbounds %struct.core_reloc_test_case, %struct.core_reloc_test_case* %169, i32 0, i32 3
  %171 = load i32*, i32** %170, align 8
  %172 = load i32, i32* %14, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds i32, i32* %171, i64 %173
  %175 = load i32, i32* %174, align 4
  %176 = call i32 (i8*, i32, i32, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.21, i64 0, i64 0), i32 %168, i32 %175)
  br label %177

177:                                              ; preds = %167
  %178 = load i32, i32* %14, align 4
  %179 = add nsw i32 %178, 1
  store i32 %179, i32* %14, align 4
  br label %161

180:                                              ; preds = %161
  store i32 0, i32* %14, align 4
  br label %181

181:                                              ; preds = %203, %180
  %182 = load i32, i32* %14, align 4
  %183 = load %struct.core_reloc_test_case*, %struct.core_reloc_test_case** %3, align 8
  %184 = getelementptr inbounds %struct.core_reloc_test_case, %struct.core_reloc_test_case* %183, i32 0, i32 1
  %185 = load i32, i32* %184, align 4
  %186 = icmp slt i32 %182, %185
  br i1 %186, label %187, label %206

187:                                              ; preds = %181
  %188 = load i32, i32* %14, align 4
  %189 = load %struct.core_reloc_test_case*, %struct.core_reloc_test_case** %3, align 8
  %190 = getelementptr inbounds %struct.core_reloc_test_case, %struct.core_reloc_test_case* %189, i32 0, i32 2
  %191 = load i32*, i32** %190, align 8
  %192 = load i32, i32* %14, align 4
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds i32, i32* %191, i64 %193
  %195 = load i32, i32* %194, align 4
  %196 = getelementptr inbounds %struct.data, %struct.data* %13, i32 0, i32 0
  %197 = load i32*, i32** %196, align 8
  %198 = load i32, i32* %14, align 4
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds i32, i32* %197, i64 %199
  %201 = load i32, i32* %200, align 4
  %202 = call i32 (i8*, i32, i32, ...) @printf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.22, i64 0, i64 0), i32 %188, i32 %195, i32 %201)
  br label %203

203:                                              ; preds = %187
  %204 = load i32, i32* %14, align 4
  %205 = add nsw i32 %204, 1
  store i32 %205, i32* %14, align 4
  br label %181

206:                                              ; preds = %181
  br label %208

207:                                              ; preds = %142
  br label %208

208:                                              ; preds = %207, %206, %141, %131, %112, %102, %88, %75, %58
  %209 = load %struct.bpf_link*, %struct.bpf_link** %8, align 8
  %210 = bitcast %struct.bpf_link* %209 to %struct.bpf_object*
  %211 = call i32 @IS_ERR_OR_NULL(%struct.bpf_object* %210)
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %217, label %213

213:                                              ; preds = %208
  %214 = load %struct.bpf_link*, %struct.bpf_link** %8, align 8
  %215 = bitcast %struct.bpf_link* %214 to %struct.bpf_object*
  %216 = call i32 @bpf_link__destroy(%struct.bpf_object* %215)
  store %struct.bpf_link* null, %struct.bpf_link** %8, align 8
  br label %217

217:                                              ; preds = %213, %208
  %218 = load %struct.bpf_object*, %struct.bpf_object** %11, align 8
  %219 = call i32 @bpf_object__close(%struct.bpf_object* %218)
  br label %220

220:                                              ; preds = %217, %46, %31
  %221 = load i32, i32* %6, align 4
  %222 = add nsw i32 %221, 1
  store i32 %222, i32* %6, align 4
  br label %16

223:                                              ; preds = %16
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @ARRAY_SIZE(%struct.core_reloc_test_case*) #2

declare dso_local i32 @test__start_subtest(i32) #2

declare dso_local %struct.bpf_object* @bpf_object__open(i32) #2

declare dso_local i64 @CHECK(i32, i8*, i8*, ...) #2

declare dso_local i32 @IS_ERR_OR_NULL(%struct.bpf_object*) #2

declare dso_local i32 @PTR_ERR(%struct.bpf_object*) #2

declare dso_local %struct.bpf_program* @bpf_object__find_program_by_title(%struct.bpf_object*, i8*) #2

declare dso_local i32 @bpf_program__set_type(%struct.bpf_program*, i32) #2

declare dso_local i32 @bpf_object__load_xattr(%struct.bpf_object_load_attr*) #2

declare dso_local %struct.bpf_object* @bpf_program__attach_raw_tracepoint(%struct.bpf_program*, i8*) #2

declare dso_local i32 @IS_ERR(%struct.bpf_object*) #2

declare dso_local %struct.bpf_map* @bpf_object__find_map_by_name(%struct.bpf_object*, i8*) #2

declare dso_local i32 @memset(%struct.data*, i32, i32) #2

declare dso_local i32 @memcpy(i32, i32*, i32) #2

declare dso_local i32 @bpf_map_update_elem(i32, i32*, %struct.data*, i32) #2

declare dso_local i32 @bpf_map__fd(%struct.bpf_map*) #2

declare dso_local i32 @usleep(i32) #2

declare dso_local i32 @bpf_map_lookup_elem(i32, i32*, %struct.data*) #2

declare dso_local i64 @memcmp(i32*, i32*, i32) #2

declare dso_local i32 @printf(i8*, i32, i32, ...) #2

declare dso_local i32 @bpf_link__destroy(%struct.bpf_object*) #2

declare dso_local i32 @bpf_object__close(%struct.bpf_object*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
