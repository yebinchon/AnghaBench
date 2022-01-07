; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/prog_tests/extr_flow_dissector.c_test_flow_dissector.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/prog_tests/extr_flow_dissector.c_test_flow_dissector.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i32, i64 }
%struct.bpf_flow_keys = type { i32 }
%struct.bpf_object = type { i32 }
%struct.bpf_prog_test_run_attr = type { i32, i32, i32, i32, i32, i32, %struct.bpf_flow_keys*, %struct.bpf_flow_keys*, i32* }

@.str = private unnamed_addr constant [13 x i8] c"./bpf_flow.o\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"flow_dissector\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"jmp_table\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"last_dissection\00", align 1
@tests = common dso_local global %struct.TYPE_4__* null, align 8
@test_flow_dissector.ctx = internal global %struct.bpf_flow_keys zeroinitializer, align 4
@.str.4 = private unnamed_addr constant [51 x i8] c"err %d errno %d retval %d duration %d size %u/%lu\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@BPF_FLOW_DISSECTOR = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [16 x i8] c"bpf_prog_attach\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"err %d errno %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"tap0\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"create_tap\00", align 1
@.str.9 = private unnamed_addr constant [20 x i8] c"tap_fd %d errno %d\0A\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"ifup\00", align 1
@BPF_FLOW_DISSECTOR_F_PARSE_1ST_FRAG = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [7 x i8] c"tx_tap\00", align 1
@.str.12 = private unnamed_addr constant [24 x i8] c"bpf_map_lookup_elem %d\0A\00", align 1
@.str.13 = private unnamed_addr constant [17 x i8] c"skb-less err %d\0A\00", align 1
@.str.14 = private unnamed_addr constant [24 x i8] c"bpf_map_delete_elem %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_flow_dissector() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.bpf_object*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.bpf_flow_keys, align 4
  %9 = alloca %struct.bpf_prog_test_run_attr, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.bpf_prog_test_run_attr, align 8
  %12 = alloca %struct.bpf_flow_keys, align 4
  %13 = alloca i32, align 4
  store i32 -1, i32* %4, align 4
  store i32 0, i32* %7, align 4
  %14 = call i32 @bpf_flow_load(%struct.bpf_object** %6, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i32* %3, i32* %4)
  store i32 %14, i32* %2, align 4
  %15 = load i32, i32* %2, align 4
  %16 = call i64 @CHECK_FAIL(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %0
  br label %238

19:                                               ; preds = %0
  store i32 0, i32* %1, align 4
  br label %20

20:                                               ; preds = %107, %19
  %21 = load i32, i32* %1, align 4
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** @tests, align 8
  %23 = call i32 @ARRAY_SIZE(%struct.TYPE_4__* %22)
  %24 = icmp slt i32 %21, %23
  br i1 %24, label %25, label %110

25:                                               ; preds = %20
  %26 = getelementptr inbounds %struct.bpf_prog_test_run_attr, %struct.bpf_prog_test_run_attr* %9, i32 0, i32 0
  %27 = load i32, i32* %3, align 4
  store i32 %27, i32* %26, align 8
  %28 = getelementptr inbounds %struct.bpf_prog_test_run_attr, %struct.bpf_prog_test_run_attr* %9, i32 0, i32 1
  store i32 4, i32* %28, align 4
  %29 = getelementptr inbounds %struct.bpf_prog_test_run_attr, %struct.bpf_prog_test_run_attr* %9, i32 0, i32 2
  store i32 0, i32* %29, align 8
  %30 = getelementptr inbounds %struct.bpf_prog_test_run_attr, %struct.bpf_prog_test_run_attr* %9, i32 0, i32 3
  store i32 0, i32* %30, align 4
  %31 = getelementptr inbounds %struct.bpf_prog_test_run_attr, %struct.bpf_prog_test_run_attr* %9, i32 0, i32 4
  store i32 0, i32* %31, align 8
  %32 = getelementptr inbounds %struct.bpf_prog_test_run_attr, %struct.bpf_prog_test_run_attr* %9, i32 0, i32 5
  store i32 0, i32* %32, align 4
  %33 = getelementptr inbounds %struct.bpf_prog_test_run_attr, %struct.bpf_prog_test_run_attr* %9, i32 0, i32 6
  store %struct.bpf_flow_keys* null, %struct.bpf_flow_keys** %33, align 8
  %34 = getelementptr inbounds %struct.bpf_prog_test_run_attr, %struct.bpf_prog_test_run_attr* %9, i32 0, i32 7
  store %struct.bpf_flow_keys* %8, %struct.bpf_flow_keys** %34, align 8
  %35 = getelementptr inbounds %struct.bpf_prog_test_run_attr, %struct.bpf_prog_test_run_attr* %9, i32 0, i32 8
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** @tests, align 8
  %37 = load i32, i32* %1, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 3
  store i32* %40, i32** %35, align 8
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** @tests, align 8
  %42 = load i32, i32* %1, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %57

48:                                               ; preds = %25
  %49 = getelementptr inbounds %struct.bpf_prog_test_run_attr, %struct.bpf_prog_test_run_attr* %9, i32 0, i32 6
  store %struct.bpf_flow_keys* @test_flow_dissector.ctx, %struct.bpf_flow_keys** %49, align 8
  %50 = getelementptr inbounds %struct.bpf_prog_test_run_attr, %struct.bpf_prog_test_run_attr* %9, i32 0, i32 2
  store i32 4, i32* %50, align 8
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** @tests, align 8
  %52 = load i32, i32* %1, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  store i32 %56, i32* getelementptr inbounds (%struct.bpf_flow_keys, %struct.bpf_flow_keys* @test_flow_dissector.ctx, i32 0, i32 0), align 4
  br label %57

57:                                               ; preds = %48, %25
  %58 = call i32 @bpf_prog_test_run_xattr(%struct.bpf_prog_test_run_attr* %9)
  store i32 %58, i32* %2, align 4
  %59 = getelementptr inbounds %struct.bpf_prog_test_run_attr, %struct.bpf_prog_test_run_attr* %9, i32 0, i32 3
  %60 = load i32, i32* %59, align 4
  %61 = sext i32 %60 to i64
  %62 = icmp ne i64 %61, 4
  br i1 %62, label %70, label %63

63:                                               ; preds = %57
  %64 = load i32, i32* %2, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %70, label %66

66:                                               ; preds = %63
  %67 = getelementptr inbounds %struct.bpf_prog_test_run_attr, %struct.bpf_prog_test_run_attr* %9, i32 0, i32 4
  %68 = load i32, i32* %67, align 8
  %69 = icmp ne i32 %68, 1
  br label %70

70:                                               ; preds = %66, %63, %57
  %71 = phi i1 [ true, %63 ], [ true, %57 ], [ %69, %66 ]
  %72 = zext i1 %71 to i32
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** @tests, align 8
  %74 = load i32, i32* %1, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i64 %75
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* %2, align 4
  %80 = load i32, i32* @errno, align 4
  %81 = getelementptr inbounds %struct.bpf_prog_test_run_attr, %struct.bpf_prog_test_run_attr* %9, i32 0, i32 4
  %82 = load i32, i32* %81, align 8
  %83 = getelementptr inbounds %struct.bpf_prog_test_run_attr, %struct.bpf_prog_test_run_attr* %9, i32 0, i32 5
  %84 = load i32, i32* %83, align 4
  %85 = getelementptr inbounds %struct.bpf_prog_test_run_attr, %struct.bpf_prog_test_run_attr* %9, i32 0, i32 3
  %86 = load i32, i32* %85, align 4
  %87 = call i32 (i32, i32, i8*, i32, ...) @CHECK_ATTR(i32 %72, i32 %78, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.4, i64 0, i64 0), i32 %79, i32 %80, i32 %82, i32 %84, i32 %86, i64 4)
  %88 = load %struct.TYPE_4__*, %struct.TYPE_4__** @tests, align 8
  %89 = load i32, i32* %1, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i64 %90
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.TYPE_4__*, %struct.TYPE_4__** @tests, align 8
  %95 = load i32, i32* %1, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i64 %96
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 2
  %99 = getelementptr inbounds %struct.bpf_flow_keys, %struct.bpf_flow_keys* %8, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = bitcast %struct.TYPE_5__* %98 to { i32, i64 }*
  %102 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %101, i32 0, i32 1
  %105 = load i64, i64* %104, align 8
  %106 = call i32 @CHECK_FLOW_KEYS(i32 %93, i32 %100, i32 %103, i64 %105)
  br label %107

107:                                              ; preds = %70
  %108 = load i32, i32* %1, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %1, align 4
  br label %20

110:                                              ; preds = %20
  %111 = load i32, i32* %3, align 4
  %112 = load i32, i32* @BPF_FLOW_DISSECTOR, align 4
  %113 = call i32 @bpf_prog_attach(i32 %111, i32 0, i32 %112, i32 0)
  store i32 %113, i32* %2, align 4
  %114 = load i32, i32* %2, align 4
  %115 = load i32, i32* %2, align 4
  %116 = load i32, i32* @errno, align 4
  %117 = call i32 @CHECK(i32 %114, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i32 %115, i32 %116)
  %118 = call i32 @create_tap(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0))
  store i32 %118, i32* %5, align 4
  %119 = load i32, i32* %5, align 4
  %120 = icmp slt i32 %119, 0
  %121 = zext i1 %120 to i32
  %122 = load i32, i32* %5, align 4
  %123 = load i32, i32* @errno, align 4
  %124 = call i32 @CHECK(i32 %121, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.9, i64 0, i64 0), i32 %122, i32 %123)
  %125 = call i32 @ifup(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0))
  store i32 %125, i32* %2, align 4
  %126 = load i32, i32* %2, align 4
  %127 = load i32, i32* %2, align 4
  %128 = load i32, i32* @errno, align 4
  %129 = call i32 @CHECK(i32 %126, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i32 %127, i32 %128)
  store i32 0, i32* %1, align 4
  br label %130

130:                                              ; preds = %229, %110
  %131 = load i32, i32* %1, align 4
  %132 = load %struct.TYPE_4__*, %struct.TYPE_4__** @tests, align 8
  %133 = call i32 @ARRAY_SIZE(%struct.TYPE_4__* %132)
  %134 = icmp slt i32 %131, %133
  br i1 %134, label %135, label %232

135:                                              ; preds = %130
  %136 = load i32, i32* @BPF_FLOW_DISSECTOR_F_PARSE_1ST_FRAG, align 4
  store i32 %136, i32* %10, align 4
  %137 = bitcast %struct.bpf_prog_test_run_attr* %11 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %137, i8 0, i64 48, i1 false)
  %138 = bitcast %struct.bpf_flow_keys* %12 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %138, i8 0, i64 4, i1 false)
  %139 = load %struct.TYPE_4__*, %struct.TYPE_4__** @tests, align 8
  %140 = load i32, i32* %1, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %139, i64 %141
  %143 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %142, i32 0, i32 2
  %144 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %143, i32 0, i32 1
  %145 = load i64, i64* %144, align 8
  %146 = trunc i64 %145 to i32
  %147 = shl i32 %146, 16
  %148 = load %struct.TYPE_4__*, %struct.TYPE_4__** @tests, align 8
  %149 = load i32, i32* %1, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %148, i64 %150
  %152 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %151, i32 0, i32 2
  %153 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 8
  %155 = or i32 %147, %154
  store i32 %155, i32* %13, align 4
  %156 = load %struct.TYPE_4__*, %struct.TYPE_4__** @tests, align 8
  %157 = load i32, i32* %1, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %156, i64 %158
  %160 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 8
  %162 = load i32, i32* %10, align 4
  %163 = icmp ne i32 %161, %162
  br i1 %163, label %164, label %165

164:                                              ; preds = %135
  br label %229

165:                                              ; preds = %135
  %166 = load i32, i32* %5, align 4
  %167 = load %struct.TYPE_4__*, %struct.TYPE_4__** @tests, align 8
  %168 = load i32, i32* %1, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %167, i64 %169
  %171 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %170, i32 0, i32 3
  %172 = call i32 @tx_tap(i32 %166, i32* %171, i32 4)
  store i32 %172, i32* %2, align 4
  %173 = load i32, i32* %2, align 4
  %174 = icmp slt i32 %173, 0
  %175 = zext i1 %174 to i32
  %176 = load i32, i32* %2, align 4
  %177 = load i32, i32* @errno, align 4
  %178 = call i32 @CHECK(i32 %175, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i32 %176, i32 %177)
  %179 = load i32, i32* %4, align 4
  %180 = call i32 @bpf_map_lookup_elem(i32 %179, i32* %13, %struct.bpf_flow_keys* %12)
  store i32 %180, i32* %2, align 4
  %181 = load i32, i32* %2, align 4
  %182 = load %struct.TYPE_4__*, %struct.TYPE_4__** @tests, align 8
  %183 = load i32, i32* %1, align 4
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %182, i64 %184
  %186 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %185, i32 0, i32 1
  %187 = load i32, i32* %186, align 4
  %188 = load i32, i32* %2, align 4
  %189 = call i32 (i32, i32, i8*, i32, ...) @CHECK_ATTR(i32 %181, i32 %187, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.12, i64 0, i64 0), i32 %188)
  %190 = load i32, i32* %2, align 4
  %191 = load %struct.TYPE_4__*, %struct.TYPE_4__** @tests, align 8
  %192 = load i32, i32* %1, align 4
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %191, i64 %193
  %195 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %194, i32 0, i32 1
  %196 = load i32, i32* %195, align 4
  %197 = load i32, i32* %2, align 4
  %198 = call i32 (i32, i32, i8*, i32, ...) @CHECK_ATTR(i32 %190, i32 %196, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.13, i64 0, i64 0), i32 %197)
  %199 = load %struct.TYPE_4__*, %struct.TYPE_4__** @tests, align 8
  %200 = load i32, i32* %1, align 4
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %199, i64 %201
  %203 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %202, i32 0, i32 1
  %204 = load i32, i32* %203, align 4
  %205 = load %struct.TYPE_4__*, %struct.TYPE_4__** @tests, align 8
  %206 = load i32, i32* %1, align 4
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %205, i64 %207
  %209 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %208, i32 0, i32 2
  %210 = getelementptr inbounds %struct.bpf_flow_keys, %struct.bpf_flow_keys* %12, i32 0, i32 0
  %211 = load i32, i32* %210, align 4
  %212 = bitcast %struct.TYPE_5__* %209 to { i32, i64 }*
  %213 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %212, i32 0, i32 0
  %214 = load i32, i32* %213, align 8
  %215 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %212, i32 0, i32 1
  %216 = load i64, i64* %215, align 8
  %217 = call i32 @CHECK_FLOW_KEYS(i32 %204, i32 %211, i32 %214, i64 %216)
  %218 = load i32, i32* %4, align 4
  %219 = call i32 @bpf_map_delete_elem(i32 %218, i32* %13)
  store i32 %219, i32* %2, align 4
  %220 = load i32, i32* %2, align 4
  %221 = load %struct.TYPE_4__*, %struct.TYPE_4__** @tests, align 8
  %222 = load i32, i32* %1, align 4
  %223 = sext i32 %222 to i64
  %224 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %221, i64 %223
  %225 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %224, i32 0, i32 1
  %226 = load i32, i32* %225, align 4
  %227 = load i32, i32* %2, align 4
  %228 = call i32 (i32, i32, i8*, i32, ...) @CHECK_ATTR(i32 %220, i32 %226, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.14, i64 0, i64 0), i32 %227)
  br label %229

229:                                              ; preds = %165, %164
  %230 = load i32, i32* %1, align 4
  %231 = add nsw i32 %230, 1
  store i32 %231, i32* %1, align 4
  br label %130

232:                                              ; preds = %130
  %233 = load i32, i32* %3, align 4
  %234 = load i32, i32* @BPF_FLOW_DISSECTOR, align 4
  %235 = call i32 @bpf_prog_detach(i32 %233, i32 %234)
  %236 = load %struct.bpf_object*, %struct.bpf_object** %6, align 8
  %237 = call i32 @bpf_object__close(%struct.bpf_object* %236)
  br label %238

238:                                              ; preds = %232, %18
  ret void
}

declare dso_local i32 @bpf_flow_load(%struct.bpf_object**, i8*, i8*, i8*, i8*, i32*, i32*) #1

declare dso_local i64 @CHECK_FAIL(i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_4__*) #1

declare dso_local i32 @bpf_prog_test_run_xattr(%struct.bpf_prog_test_run_attr*) #1

declare dso_local i32 @CHECK_ATTR(i32, i32, i8*, i32, ...) #1

declare dso_local i32 @CHECK_FLOW_KEYS(i32, i32, i32, i64) #1

declare dso_local i32 @bpf_prog_attach(i32, i32, i32, i32) #1

declare dso_local i32 @CHECK(i32, i8*, i8*, i32, i32) #1

declare dso_local i32 @create_tap(i8*) #1

declare dso_local i32 @ifup(i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @tx_tap(i32, i32*, i32) #1

declare dso_local i32 @bpf_map_lookup_elem(i32, i32*, %struct.bpf_flow_keys*) #1

declare dso_local i32 @bpf_map_delete_elem(i32, i32*) #1

declare dso_local i32 @bpf_prog_detach(i32, i32) #1

declare dso_local i32 @bpf_object__close(%struct.bpf_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
