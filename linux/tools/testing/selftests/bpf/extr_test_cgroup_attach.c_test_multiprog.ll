; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/extr_test_cgroup_attach.c_test_multiprog.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/extr_test_cgroup_attach.c_test_multiprog.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"/cg1\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"/cg1/cg2\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"/cg1/cg2/cg3\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"/cg1/cg2/cg3/cg4\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"/cg1/cg2/cg3/cg4/cg5\00", align 1
@BPF_CGROUP_INET_EGRESS = common dso_local global i32 0, align 4
@BPF_F_ALLOW_MULTI = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [22 x i8] c"Attaching prog to cg1\00", align 1
@.str.6 = private unnamed_addr constant [50 x i8] c"Unexpected success attaching the same prog to cg1\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"Attaching prog2 to cg1\00", align 1
@BPF_F_ALLOW_OVERRIDE = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [22 x i8] c"Attaching prog to cg2\00", align 1
@.str.9 = private unnamed_addr constant [22 x i8] c"Attaching prog to cg3\00", align 1
@.str.10 = private unnamed_addr constant [22 x i8] c"Attaching prog to cg4\00", align 1
@.str.11 = private unnamed_addr constant [22 x i8] c"Attaching prog to cg5\00", align 1
@PING_CMD = common dso_local global i32 0, align 4
@map_fd = common dso_local global i32 0, align 4
@BPF_F_QUERY_EFFECTIVE = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@ENOSPC = common dso_local global i64 0, align 8
@.str.12 = private unnamed_addr constant [24 x i8] c"Detaching prog from cg5\00", align 1
@.str.13 = private unnamed_addr constant [38 x i8] c"Unexpected success on detach from cg3\00", align 1
@.str.14 = private unnamed_addr constant [19 x i8] c"Detaching from cg3\00", align 1
@.str.15 = private unnamed_addr constant [24 x i8] c"Detaching prog from cg4\00", align 1
@.str.16 = private unnamed_addr constant [13 x i8] c"#multi:PASS\0A\00", align 1
@.str.17 = private unnamed_addr constant [13 x i8] c"#multi:FAIL\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @test_multiprog to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_multiprog() #0 {
  %1 = alloca [4 x i32], align 16
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca [6 x i32], align 16
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store i32 0, i32* %2, align 4
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %16 = bitcast [6 x i32]* %12 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %16, i8 0, i64 24, i1 false)
  store i32 0, i32* %13, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %15, align 4
  br label %17

17:                                               ; preds = %34, %0
  %18 = load i32, i32* %15, align 4
  %19 = icmp slt i32 %18, 6
  br i1 %19, label %20, label %37

20:                                               ; preds = %17
  %21 = load i32, i32* %15, align 4
  %22 = shl i32 1, %21
  %23 = call i32 @prog_load_cnt(i32 1, i32 %22)
  %24 = load i32, i32* %15, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds [6 x i32], [6 x i32]* %12, i64 0, i64 %25
  store i32 %23, i32* %26, align 4
  %27 = load i32, i32* %15, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds [6 x i32], [6 x i32]* %12, i64 0, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %20
  br label %345

33:                                               ; preds = %20
  br label %34

34:                                               ; preds = %33
  %35 = load i32, i32* %15, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %15, align 4
  br label %17

37:                                               ; preds = %17
  %38 = call i32 @prog_load_cnt(i32 0, i32 1)
  store i32 %38, i32* %11, align 4
  %39 = load i32, i32* %11, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %37
  br label %345

42:                                               ; preds = %37
  %43 = call i64 (...) @setup_cgroup_environment()
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %42
  br label %345

46:                                               ; preds = %42
  %47 = call i32 @create_and_get_cgroup(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store i32 %47, i32* %5, align 4
  %48 = load i32, i32* %5, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %46
  br label %345

51:                                               ; preds = %46
  %52 = call i32 @create_and_get_cgroup(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  store i32 %52, i32* %6, align 4
  %53 = load i32, i32* %6, align 4
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %51
  br label %345

56:                                               ; preds = %51
  %57 = call i32 @create_and_get_cgroup(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  store i32 %57, i32* %7, align 4
  %58 = load i32, i32* %7, align 4
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %56
  br label %345

61:                                               ; preds = %56
  %62 = call i32 @create_and_get_cgroup(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0))
  store i32 %62, i32* %8, align 4
  %63 = load i32, i32* %8, align 4
  %64 = icmp slt i32 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %61
  br label %345

66:                                               ; preds = %61
  %67 = call i32 @create_and_get_cgroup(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0))
  store i32 %67, i32* %9, align 4
  %68 = load i32, i32* %9, align 4
  %69 = icmp slt i32 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %66
  br label %345

71:                                               ; preds = %66
  %72 = call i64 @join_cgroup(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0))
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %71
  br label %345

75:                                               ; preds = %71
  %76 = getelementptr inbounds [6 x i32], [6 x i32]* %12, i64 0, i64 0
  %77 = load i32, i32* %76, align 16
  %78 = load i32, i32* %5, align 4
  %79 = load i32, i32* @BPF_CGROUP_INET_EGRESS, align 4
  %80 = load i32, i32* @BPF_F_ALLOW_MULTI, align 4
  %81 = call i64 @bpf_prog_attach(i32 %77, i32 %78, i32 %79, i32 %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %75
  %84 = call i32 @log_err(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0))
  br label %345

85:                                               ; preds = %75
  %86 = getelementptr inbounds [6 x i32], [6 x i32]* %12, i64 0, i64 0
  %87 = load i32, i32* %86, align 16
  %88 = load i32, i32* %5, align 4
  %89 = load i32, i32* @BPF_CGROUP_INET_EGRESS, align 4
  %90 = load i32, i32* @BPF_F_ALLOW_MULTI, align 4
  %91 = call i64 @bpf_prog_attach(i32 %87, i32 %88, i32 %89, i32 %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %95, label %93

93:                                               ; preds = %85
  %94 = call i32 @log_err(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.6, i64 0, i64 0))
  br label %345

95:                                               ; preds = %85
  %96 = getelementptr inbounds [6 x i32], [6 x i32]* %12, i64 0, i64 1
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* %5, align 4
  %99 = load i32, i32* @BPF_CGROUP_INET_EGRESS, align 4
  %100 = load i32, i32* @BPF_F_ALLOW_MULTI, align 4
  %101 = call i64 @bpf_prog_attach(i32 %97, i32 %98, i32 %99, i32 %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %105

103:                                              ; preds = %95
  %104 = call i32 @log_err(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0))
  br label %345

105:                                              ; preds = %95
  %106 = getelementptr inbounds [6 x i32], [6 x i32]* %12, i64 0, i64 2
  %107 = load i32, i32* %106, align 8
  %108 = load i32, i32* %6, align 4
  %109 = load i32, i32* @BPF_CGROUP_INET_EGRESS, align 4
  %110 = load i32, i32* @BPF_F_ALLOW_OVERRIDE, align 4
  %111 = call i64 @bpf_prog_attach(i32 %107, i32 %108, i32 %109, i32 %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %115

113:                                              ; preds = %105
  %114 = call i32 @log_err(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i64 0, i64 0))
  br label %345

115:                                              ; preds = %105
  %116 = getelementptr inbounds [6 x i32], [6 x i32]* %12, i64 0, i64 3
  %117 = load i32, i32* %116, align 4
  %118 = load i32, i32* %7, align 4
  %119 = load i32, i32* @BPF_CGROUP_INET_EGRESS, align 4
  %120 = load i32, i32* @BPF_F_ALLOW_MULTI, align 4
  %121 = call i64 @bpf_prog_attach(i32 %117, i32 %118, i32 %119, i32 %120)
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %125

123:                                              ; preds = %115
  %124 = call i32 @log_err(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.9, i64 0, i64 0))
  br label %345

125:                                              ; preds = %115
  %126 = getelementptr inbounds [6 x i32], [6 x i32]* %12, i64 0, i64 4
  %127 = load i32, i32* %126, align 16
  %128 = load i32, i32* %8, align 4
  %129 = load i32, i32* @BPF_CGROUP_INET_EGRESS, align 4
  %130 = load i32, i32* @BPF_F_ALLOW_OVERRIDE, align 4
  %131 = call i64 @bpf_prog_attach(i32 %127, i32 %128, i32 %129, i32 %130)
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %135

133:                                              ; preds = %125
  %134 = call i32 @log_err(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.10, i64 0, i64 0))
  br label %345

135:                                              ; preds = %125
  %136 = getelementptr inbounds [6 x i32], [6 x i32]* %12, i64 0, i64 5
  %137 = load i32, i32* %136, align 4
  %138 = load i32, i32* %9, align 4
  %139 = load i32, i32* @BPF_CGROUP_INET_EGRESS, align 4
  %140 = call i64 @bpf_prog_attach(i32 %137, i32 %138, i32 %139, i32 0)
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %144

142:                                              ; preds = %135
  %143 = call i32 @log_err(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.11, i64 0, i64 0))
  br label %345

144:                                              ; preds = %135
  %145 = load i32, i32* @PING_CMD, align 4
  %146 = call i64 @system(i32 %145)
  %147 = icmp eq i64 %146, 0
  %148 = zext i1 %147 to i32
  %149 = call i32 @assert(i32 %148)
  %150 = load i32, i32* @map_fd, align 4
  %151 = call i64 @bpf_map_lookup_elem(i32 %150, i32* %10, i64* %14)
  %152 = icmp eq i64 %151, 0
  %153 = zext i1 %152 to i32
  %154 = call i32 @assert(i32 %153)
  %155 = load i64, i64* %14, align 8
  %156 = icmp eq i64 %155, 43
  %157 = zext i1 %156 to i32
  %158 = call i32 @assert(i32 %157)
  %159 = load i32, i32* %9, align 4
  %160 = load i32, i32* @BPF_CGROUP_INET_EGRESS, align 4
  %161 = load i32, i32* @BPF_F_QUERY_EFFECTIVE, align 4
  %162 = call i32 @bpf_prog_query(i32 %159, i32 %160, i32 %161, i32* null, i32* null, i32* %2)
  %163 = icmp eq i32 %162, 0
  %164 = zext i1 %163 to i32
  %165 = call i32 @assert(i32 %164)
  %166 = load i32, i32* %2, align 4
  %167 = icmp eq i32 %166, 4
  %168 = zext i1 %167 to i32
  %169 = call i32 @assert(i32 %168)
  %170 = load i32, i32* %9, align 4
  %171 = load i32, i32* @BPF_CGROUP_INET_EGRESS, align 4
  %172 = load i32, i32* @BPF_F_QUERY_EFFECTIVE, align 4
  %173 = getelementptr inbounds [4 x i32], [4 x i32]* %1, i64 0, i64 0
  %174 = call i32 @bpf_prog_query(i32 %170, i32 %171, i32 %172, i32* %3, i32* %173, i32* %2)
  %175 = icmp eq i32 %174, 0
  %176 = zext i1 %175 to i32
  %177 = call i32 @assert(i32 %176)
  %178 = load i32, i32* %2, align 4
  %179 = icmp eq i32 %178, 4
  %180 = zext i1 %179 to i32
  %181 = call i32 @assert(i32 %180)
  %182 = load i32, i32* %3, align 4
  %183 = icmp eq i32 %182, 0
  %184 = zext i1 %183 to i32
  %185 = call i32 @assert(i32 %184)
  %186 = getelementptr inbounds [4 x i32], [4 x i32]* %1, i64 0, i64 0
  %187 = load i32, i32* %186, align 16
  store i32 %187, i32* %4, align 4
  %188 = getelementptr inbounds [4 x i32], [4 x i32]* %1, i64 0, i64 0
  store i32 0, i32* %188, align 16
  store i32 2, i32* %2, align 4
  %189 = load i32, i32* %9, align 4
  %190 = load i32, i32* @BPF_CGROUP_INET_EGRESS, align 4
  %191 = load i32, i32* @BPF_F_QUERY_EFFECTIVE, align 4
  %192 = getelementptr inbounds [4 x i32], [4 x i32]* %1, i64 0, i64 0
  %193 = call i32 @bpf_prog_query(i32 %189, i32 %190, i32 %191, i32* %3, i32* %192, i32* %2)
  %194 = icmp eq i32 %193, -1
  br i1 %194, label %195, label %199

195:                                              ; preds = %144
  %196 = load i64, i64* @errno, align 8
  %197 = load i64, i64* @ENOSPC, align 8
  %198 = icmp eq i64 %196, %197
  br label %199

199:                                              ; preds = %195, %144
  %200 = phi i1 [ false, %144 ], [ %198, %195 ]
  %201 = zext i1 %200 to i32
  %202 = call i32 @assert(i32 %201)
  %203 = load i32, i32* %2, align 4
  %204 = icmp eq i32 %203, 4
  %205 = zext i1 %204 to i32
  %206 = call i32 @assert(i32 %205)
  %207 = getelementptr inbounds [4 x i32], [4 x i32]* %1, i64 0, i64 0
  %208 = load i32, i32* %207, align 16
  %209 = load i32, i32* %4, align 4
  %210 = icmp eq i32 %208, %209
  %211 = zext i1 %210 to i32
  %212 = call i32 @assert(i32 %211)
  %213 = getelementptr inbounds [4 x i32], [4 x i32]* %1, i64 0, i64 0
  store i32 0, i32* %213, align 16
  %214 = load i32, i32* %9, align 4
  %215 = load i32, i32* @BPF_CGROUP_INET_EGRESS, align 4
  %216 = getelementptr inbounds [4 x i32], [4 x i32]* %1, i64 0, i64 0
  %217 = call i32 @bpf_prog_query(i32 %214, i32 %215, i32 0, i32* null, i32* %216, i32* %2)
  %218 = icmp eq i32 %217, 0
  %219 = zext i1 %218 to i32
  %220 = call i32 @assert(i32 %219)
  %221 = load i32, i32* %2, align 4
  %222 = icmp eq i32 %221, 1
  %223 = zext i1 %222 to i32
  %224 = call i32 @assert(i32 %223)
  %225 = getelementptr inbounds [4 x i32], [4 x i32]* %1, i64 0, i64 0
  %226 = load i32, i32* %225, align 16
  %227 = load i32, i32* %4, align 4
  %228 = icmp eq i32 %226, %227
  %229 = zext i1 %228 to i32
  %230 = call i32 @assert(i32 %229)
  %231 = load i32, i32* %9, align 4
  %232 = load i32, i32* @BPF_CGROUP_INET_EGRESS, align 4
  %233 = call i64 @bpf_prog_detach2(i32 -1, i32 %231, i32 %232)
  %234 = icmp ne i64 %233, 0
  br i1 %234, label %235, label %237

235:                                              ; preds = %199
  %236 = call i32 @log_err(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.12, i64 0, i64 0))
  br label %345

237:                                              ; preds = %199
  store i64 0, i64* %14, align 8
  %238 = load i32, i32* @map_fd, align 4
  %239 = call i64 @bpf_map_update_elem(i32 %238, i32* %10, i64* %14, i32 0)
  %240 = icmp eq i64 %239, 0
  %241 = zext i1 %240 to i32
  %242 = call i32 @assert(i32 %241)
  %243 = load i32, i32* @PING_CMD, align 4
  %244 = call i64 @system(i32 %243)
  %245 = icmp eq i64 %244, 0
  %246 = zext i1 %245 to i32
  %247 = call i32 @assert(i32 %246)
  %248 = load i32, i32* @map_fd, align 4
  %249 = call i64 @bpf_map_lookup_elem(i32 %248, i32* %10, i64* %14)
  %250 = icmp eq i64 %249, 0
  %251 = zext i1 %250 to i32
  %252 = call i32 @assert(i32 %251)
  %253 = load i64, i64* %14, align 8
  %254 = icmp eq i64 %253, 27
  %255 = zext i1 %254 to i32
  %256 = call i32 @assert(i32 %255)
  store i64 0, i64* @errno, align 8
  %257 = load i32, i32* %7, align 4
  %258 = load i32, i32* @BPF_CGROUP_INET_EGRESS, align 4
  %259 = call i64 @bpf_prog_detach2(i32 0, i32 %257, i32 %258)
  %260 = icmp ne i64 %259, 0
  br i1 %260, label %263, label %261

261:                                              ; preds = %237
  %262 = call i32 @log_err(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.13, i64 0, i64 0))
  br label %345

263:                                              ; preds = %237
  %264 = getelementptr inbounds [6 x i32], [6 x i32]* %12, i64 0, i64 3
  %265 = load i32, i32* %264, align 4
  %266 = load i32, i32* %7, align 4
  %267 = load i32, i32* @BPF_CGROUP_INET_EGRESS, align 4
  %268 = call i64 @bpf_prog_detach2(i32 %265, i32 %266, i32 %267)
  %269 = icmp ne i64 %268, 0
  br i1 %269, label %270, label %272

270:                                              ; preds = %263
  %271 = call i32 @log_err(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.14, i64 0, i64 0))
  br label %345

272:                                              ; preds = %263
  store i64 0, i64* %14, align 8
  %273 = load i32, i32* @map_fd, align 4
  %274 = call i64 @bpf_map_update_elem(i32 %273, i32* %10, i64* %14, i32 0)
  %275 = icmp eq i64 %274, 0
  %276 = zext i1 %275 to i32
  %277 = call i32 @assert(i32 %276)
  %278 = load i32, i32* @PING_CMD, align 4
  %279 = call i64 @system(i32 %278)
  %280 = icmp eq i64 %279, 0
  %281 = zext i1 %280 to i32
  %282 = call i32 @assert(i32 %281)
  %283 = load i32, i32* @map_fd, align 4
  %284 = call i64 @bpf_map_lookup_elem(i32 %283, i32* %10, i64* %14)
  %285 = icmp eq i64 %284, 0
  %286 = zext i1 %285 to i32
  %287 = call i32 @assert(i32 %286)
  %288 = load i64, i64* %14, align 8
  %289 = icmp eq i64 %288, 19
  %290 = zext i1 %289 to i32
  %291 = call i32 @assert(i32 %290)
  %292 = load i32, i32* %8, align 4
  %293 = load i32, i32* @BPF_CGROUP_INET_EGRESS, align 4
  %294 = call i64 @bpf_prog_detach2(i32 -1, i32 %292, i32 %293)
  %295 = icmp ne i64 %294, 0
  br i1 %295, label %296, label %298

296:                                              ; preds = %272
  %297 = call i32 @log_err(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.15, i64 0, i64 0))
  br label %345

298:                                              ; preds = %272
  store i64 0, i64* %14, align 8
  %299 = load i32, i32* @map_fd, align 4
  %300 = call i64 @bpf_map_update_elem(i32 %299, i32* %10, i64* %14, i32 0)
  %301 = icmp eq i64 %300, 0
  %302 = zext i1 %301 to i32
  %303 = call i32 @assert(i32 %302)
  %304 = load i32, i32* @PING_CMD, align 4
  %305 = call i64 @system(i32 %304)
  %306 = icmp eq i64 %305, 0
  %307 = zext i1 %306 to i32
  %308 = call i32 @assert(i32 %307)
  %309 = load i32, i32* @map_fd, align 4
  %310 = call i64 @bpf_map_lookup_elem(i32 %309, i32* %10, i64* %14)
  %311 = icmp eq i64 %310, 0
  %312 = zext i1 %311 to i32
  %313 = call i32 @assert(i32 %312)
  %314 = load i64, i64* %14, align 8
  %315 = icmp eq i64 %314, 7
  %316 = zext i1 %315 to i32
  %317 = call i32 @assert(i32 %316)
  store i32 4, i32* %2, align 4
  %318 = load i32, i32* %9, align 4
  %319 = load i32, i32* @BPF_CGROUP_INET_EGRESS, align 4
  %320 = load i32, i32* @BPF_F_QUERY_EFFECTIVE, align 4
  %321 = getelementptr inbounds [4 x i32], [4 x i32]* %1, i64 0, i64 0
  %322 = call i32 @bpf_prog_query(i32 %318, i32 %319, i32 %320, i32* %3, i32* %321, i32* %2)
  %323 = icmp eq i32 %322, 0
  %324 = zext i1 %323 to i32
  %325 = call i32 @assert(i32 %324)
  %326 = load i32, i32* %2, align 4
  %327 = icmp eq i32 %326, 3
  %328 = zext i1 %327 to i32
  %329 = call i32 @assert(i32 %328)
  %330 = load i32, i32* %3, align 4
  %331 = icmp eq i32 %330, 0
  %332 = zext i1 %331 to i32
  %333 = call i32 @assert(i32 %332)
  %334 = load i32, i32* %9, align 4
  %335 = load i32, i32* @BPF_CGROUP_INET_EGRESS, align 4
  %336 = getelementptr inbounds [4 x i32], [4 x i32]* %1, i64 0, i64 0
  %337 = call i32 @bpf_prog_query(i32 %334, i32 %335, i32 0, i32* null, i32* %336, i32* %2)
  %338 = icmp eq i32 %337, 0
  %339 = zext i1 %338 to i32
  %340 = call i32 @assert(i32 %339)
  %341 = load i32, i32* %2, align 4
  %342 = icmp eq i32 %341, 0
  %343 = zext i1 %342 to i32
  %344 = call i32 @assert(i32 %343)
  br label %346

345:                                              ; preds = %296, %270, %261, %235, %142, %133, %123, %113, %103, %93, %83, %74, %70, %65, %60, %55, %50, %45, %41, %32
  store i32 1, i32* %13, align 4
  br label %346

346:                                              ; preds = %345, %298
  store i32 0, i32* %15, align 4
  br label %347

347:                                              ; preds = %363, %346
  %348 = load i32, i32* %15, align 4
  %349 = icmp slt i32 %348, 6
  br i1 %349, label %350, label %366

350:                                              ; preds = %347
  %351 = load i32, i32* %15, align 4
  %352 = sext i32 %351 to i64
  %353 = getelementptr inbounds [6 x i32], [6 x i32]* %12, i64 0, i64 %352
  %354 = load i32, i32* %353, align 4
  %355 = icmp sgt i32 %354, 0
  br i1 %355, label %356, label %362

356:                                              ; preds = %350
  %357 = load i32, i32* %15, align 4
  %358 = sext i32 %357 to i64
  %359 = getelementptr inbounds [6 x i32], [6 x i32]* %12, i64 0, i64 %358
  %360 = load i32, i32* %359, align 4
  %361 = call i32 @close(i32 %360)
  br label %362

362:                                              ; preds = %356, %350
  br label %363

363:                                              ; preds = %362
  %364 = load i32, i32* %15, align 4
  %365 = add nsw i32 %364, 1
  store i32 %365, i32* %15, align 4
  br label %347

366:                                              ; preds = %347
  %367 = load i32, i32* %5, align 4
  %368 = call i32 @close(i32 %367)
  %369 = load i32, i32* %6, align 4
  %370 = call i32 @close(i32 %369)
  %371 = load i32, i32* %7, align 4
  %372 = call i32 @close(i32 %371)
  %373 = load i32, i32* %8, align 4
  %374 = call i32 @close(i32 %373)
  %375 = load i32, i32* %9, align 4
  %376 = call i32 @close(i32 %375)
  %377 = call i32 (...) @cleanup_cgroup_environment()
  %378 = load i32, i32* %13, align 4
  %379 = icmp ne i32 %378, 0
  br i1 %379, label %382, label %380

380:                                              ; preds = %366
  %381 = call i32 @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.16, i64 0, i64 0))
  br label %384

382:                                              ; preds = %366
  %383 = call i32 @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.17, i64 0, i64 0))
  br label %384

384:                                              ; preds = %382, %380
  %385 = load i32, i32* %13, align 4
  ret i32 %385
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @prog_load_cnt(i32, i32) #2

declare dso_local i64 @setup_cgroup_environment(...) #2

declare dso_local i32 @create_and_get_cgroup(i8*) #2

declare dso_local i64 @join_cgroup(i8*) #2

declare dso_local i64 @bpf_prog_attach(i32, i32, i32, i32) #2

declare dso_local i32 @log_err(i8*) #2

declare dso_local i32 @assert(i32) #2

declare dso_local i64 @system(i32) #2

declare dso_local i64 @bpf_map_lookup_elem(i32, i32*, i64*) #2

declare dso_local i32 @bpf_prog_query(i32, i32, i32, i32*, i32*, i32*) #2

declare dso_local i64 @bpf_prog_detach2(i32, i32, i32) #2

declare dso_local i64 @bpf_map_update_elem(i32, i32*, i64*, i32) #2

declare dso_local i32 @close(i32) #2

declare dso_local i32 @cleanup_cgroup_environment(...) #2

declare dso_local i32 @printf(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
