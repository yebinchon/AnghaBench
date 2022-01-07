; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/extr_test_verifier.c_bpf_fill_ld_abs_vlan_push_pop.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/extr_test_verifier.c_bpf_fill_ld_abs_vlan_push_pop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_test = type { i32, %struct.bpf_insn* }
%struct.bpf_insn = type { i32 }

@BPF_REG_6 = common dso_local global i32 0, align 4
@BPF_REG_1 = common dso_local global i32 0, align 4
@BPF_B = common dso_local global i32 0, align 4
@BPF_JNE = common dso_local global i32 0, align 4
@BPF_REG_0 = common dso_local global i32 0, align 4
@BPF_REG_2 = common dso_local global i32 0, align 4
@BPF_REG_3 = common dso_local global i32 0, align 4
@BPF_JMP = common dso_local global i32 0, align 4
@BPF_CALL = common dso_local global i32 0, align 4
@BPF_FUNC_skb_vlan_push = common dso_local global i32 0, align 4
@BPF_FUNC_skb_vlan_pop = common dso_local global i32 0, align 4
@BPF_MOV = common dso_local global i32 0, align 4
@PUSH_CNT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bpf_test*)* @bpf_fill_ld_abs_vlan_push_pop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bpf_fill_ld_abs_vlan_push_pop(%struct.bpf_test* %0) #0 {
  %2 = alloca %struct.bpf_test*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.bpf_insn*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.bpf_insn, align 4
  %9 = alloca %struct.bpf_insn, align 4
  %10 = alloca %struct.bpf_insn, align 4
  %11 = alloca %struct.bpf_insn, align 4
  %12 = alloca %struct.bpf_insn, align 4
  %13 = alloca %struct.bpf_insn, align 4
  %14 = alloca %struct.bpf_insn, align 4
  %15 = alloca %struct.bpf_insn, align 4
  %16 = alloca %struct.bpf_insn, align 4
  %17 = alloca %struct.bpf_insn, align 4
  %18 = alloca %struct.bpf_insn, align 4
  %19 = alloca %struct.bpf_insn, align 4
  %20 = alloca %struct.bpf_insn, align 4
  %21 = alloca %struct.bpf_insn, align 4
  %22 = alloca %struct.bpf_insn, align 4
  %23 = alloca %struct.bpf_insn, align 4
  %24 = alloca %struct.bpf_insn, align 4
  store %struct.bpf_test* %0, %struct.bpf_test** %2, align 8
  store i32 29708, i32* %3, align 4
  %25 = load %struct.bpf_test*, %struct.bpf_test** %2, align 8
  %26 = getelementptr inbounds %struct.bpf_test, %struct.bpf_test* %25, i32 0, i32 1
  %27 = load %struct.bpf_insn*, %struct.bpf_insn** %26, align 8
  store %struct.bpf_insn* %27, %struct.bpf_insn** %4, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %7, align 4
  %28 = load %struct.bpf_insn*, %struct.bpf_insn** %4, align 8
  %29 = load i32, i32* %5, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %5, align 4
  %31 = sext i32 %29 to i64
  %32 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %28, i64 %31
  %33 = load i32, i32* @BPF_REG_6, align 4
  %34 = load i32, i32* @BPF_REG_1, align 4
  %35 = call i32 @BPF_MOV64_REG(i32 %33, i32 %34)
  %36 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %8, i32 0, i32 0
  store i32 %35, i32* %36, align 4
  %37 = bitcast %struct.bpf_insn* %32 to i8*
  %38 = bitcast %struct.bpf_insn* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %37, i8* align 4 %38, i64 4, i1 false)
  br label %39

39:                                               ; preds = %211, %1
  store i32 0, i32* %6, align 4
  br label %40

40:                                               ; preds = %130, %39
  %41 = load i32, i32* %6, align 4
  %42 = icmp slt i32 %41, 51
  br i1 %42, label %43, label %133

43:                                               ; preds = %40
  %44 = load %struct.bpf_insn*, %struct.bpf_insn** %4, align 8
  %45 = load i32, i32* %5, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %5, align 4
  %47 = sext i32 %45 to i64
  %48 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %44, i64 %47
  %49 = load i32, i32* @BPF_B, align 4
  %50 = call i32 @BPF_LD_ABS(i32 %49, i32 0)
  %51 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %9, i32 0, i32 0
  store i32 %50, i32* %51, align 4
  %52 = bitcast %struct.bpf_insn* %48 to i8*
  %53 = bitcast %struct.bpf_insn* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %52, i8* align 4 %53, i64 4, i1 false)
  %54 = load %struct.bpf_insn*, %struct.bpf_insn** %4, align 8
  %55 = load i32, i32* %5, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %54, i64 %56
  %58 = load i32, i32* @BPF_JNE, align 4
  %59 = load i32, i32* @BPF_REG_0, align 4
  %60 = load i32, i32* %3, align 4
  %61 = load i32, i32* %5, align 4
  %62 = sub i32 %60, %61
  %63 = sub i32 %62, 3
  %64 = call i32 @BPF_JMP32_IMM(i32 %58, i32 %59, i32 52, i32 %63)
  %65 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %10, i32 0, i32 0
  store i32 %64, i32* %65, align 4
  %66 = bitcast %struct.bpf_insn* %57 to i8*
  %67 = bitcast %struct.bpf_insn* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %66, i8* align 4 %67, i64 4, i1 false)
  %68 = load i32, i32* %5, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %5, align 4
  %70 = load %struct.bpf_insn*, %struct.bpf_insn** %4, align 8
  %71 = load i32, i32* %5, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %5, align 4
  %73 = sext i32 %71 to i64
  %74 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %70, i64 %73
  %75 = load i32, i32* @BPF_REG_1, align 4
  %76 = load i32, i32* @BPF_REG_6, align 4
  %77 = call i32 @BPF_MOV64_REG(i32 %75, i32 %76)
  %78 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %11, i32 0, i32 0
  store i32 %77, i32* %78, align 4
  %79 = bitcast %struct.bpf_insn* %74 to i8*
  %80 = bitcast %struct.bpf_insn* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %79, i8* align 4 %80, i64 4, i1 false)
  %81 = load %struct.bpf_insn*, %struct.bpf_insn** %4, align 8
  %82 = load i32, i32* %5, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %5, align 4
  %84 = sext i32 %82 to i64
  %85 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %81, i64 %84
  %86 = load i32, i32* @BPF_REG_2, align 4
  %87 = call i32 @BPF_MOV64_IMM(i32 %86, i32 1)
  %88 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %12, i32 0, i32 0
  store i32 %87, i32* %88, align 4
  %89 = bitcast %struct.bpf_insn* %85 to i8*
  %90 = bitcast %struct.bpf_insn* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %89, i8* align 4 %90, i64 4, i1 false)
  %91 = load %struct.bpf_insn*, %struct.bpf_insn** %4, align 8
  %92 = load i32, i32* %5, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %5, align 4
  %94 = sext i32 %92 to i64
  %95 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %91, i64 %94
  %96 = load i32, i32* @BPF_REG_3, align 4
  %97 = call i32 @BPF_MOV64_IMM(i32 %96, i32 2)
  %98 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %13, i32 0, i32 0
  store i32 %97, i32* %98, align 4
  %99 = bitcast %struct.bpf_insn* %95 to i8*
  %100 = bitcast %struct.bpf_insn* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %99, i8* align 4 %100, i64 4, i1 false)
  %101 = load %struct.bpf_insn*, %struct.bpf_insn** %4, align 8
  %102 = load i32, i32* %5, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %5, align 4
  %104 = sext i32 %102 to i64
  %105 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %101, i64 %104
  %106 = load i32, i32* @BPF_JMP, align 4
  %107 = load i32, i32* @BPF_CALL, align 4
  %108 = or i32 %106, %107
  %109 = load i32, i32* @BPF_FUNC_skb_vlan_push, align 4
  %110 = call i32 @BPF_RAW_INSN(i32 %108, i32 0, i32 0, i32 0, i32 %109)
  %111 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %14, i32 0, i32 0
  store i32 %110, i32* %111, align 4
  %112 = bitcast %struct.bpf_insn* %105 to i8*
  %113 = bitcast %struct.bpf_insn* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %112, i8* align 4 %113, i64 4, i1 false)
  %114 = load %struct.bpf_insn*, %struct.bpf_insn** %4, align 8
  %115 = load i32, i32* %5, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %114, i64 %116
  %118 = load i32, i32* @BPF_JNE, align 4
  %119 = load i32, i32* @BPF_REG_0, align 4
  %120 = load i32, i32* %3, align 4
  %121 = load i32, i32* %5, align 4
  %122 = sub i32 %120, %121
  %123 = sub i32 %122, 3
  %124 = call i32 @BPF_JMP_IMM(i32 %118, i32 %119, i32 0, i32 %123)
  %125 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %15, i32 0, i32 0
  store i32 %124, i32* %125, align 4
  %126 = bitcast %struct.bpf_insn* %117 to i8*
  %127 = bitcast %struct.bpf_insn* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %126, i8* align 4 %127, i64 4, i1 false)
  %128 = load i32, i32* %5, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %5, align 4
  br label %130

130:                                              ; preds = %43
  %131 = load i32, i32* %6, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %6, align 4
  br label %40

133:                                              ; preds = %40
  store i32 0, i32* %6, align 4
  br label %134

134:                                              ; preds = %204, %133
  %135 = load i32, i32* %6, align 4
  %136 = icmp slt i32 %135, 51
  br i1 %136, label %137, label %207

137:                                              ; preds = %134
  %138 = load %struct.bpf_insn*, %struct.bpf_insn** %4, align 8
  %139 = load i32, i32* %5, align 4
  %140 = add nsw i32 %139, 1
  store i32 %140, i32* %5, align 4
  %141 = sext i32 %139 to i64
  %142 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %138, i64 %141
  %143 = load i32, i32* @BPF_B, align 4
  %144 = call i32 @BPF_LD_ABS(i32 %143, i32 0)
  %145 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %16, i32 0, i32 0
  store i32 %144, i32* %145, align 4
  %146 = bitcast %struct.bpf_insn* %142 to i8*
  %147 = bitcast %struct.bpf_insn* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %146, i8* align 4 %147, i64 4, i1 false)
  %148 = load %struct.bpf_insn*, %struct.bpf_insn** %4, align 8
  %149 = load i32, i32* %5, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %148, i64 %150
  %152 = load i32, i32* @BPF_JNE, align 4
  %153 = load i32, i32* @BPF_REG_0, align 4
  %154 = load i32, i32* %3, align 4
  %155 = load i32, i32* %5, align 4
  %156 = sub i32 %154, %155
  %157 = sub i32 %156, 3
  %158 = call i32 @BPF_JMP32_IMM(i32 %152, i32 %153, i32 52, i32 %157)
  %159 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %17, i32 0, i32 0
  store i32 %158, i32* %159, align 4
  %160 = bitcast %struct.bpf_insn* %151 to i8*
  %161 = bitcast %struct.bpf_insn* %17 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %160, i8* align 4 %161, i64 4, i1 false)
  %162 = load i32, i32* %5, align 4
  %163 = add nsw i32 %162, 1
  store i32 %163, i32* %5, align 4
  %164 = load %struct.bpf_insn*, %struct.bpf_insn** %4, align 8
  %165 = load i32, i32* %5, align 4
  %166 = add nsw i32 %165, 1
  store i32 %166, i32* %5, align 4
  %167 = sext i32 %165 to i64
  %168 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %164, i64 %167
  %169 = load i32, i32* @BPF_REG_1, align 4
  %170 = load i32, i32* @BPF_REG_6, align 4
  %171 = call i32 @BPF_MOV64_REG(i32 %169, i32 %170)
  %172 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %18, i32 0, i32 0
  store i32 %171, i32* %172, align 4
  %173 = bitcast %struct.bpf_insn* %168 to i8*
  %174 = bitcast %struct.bpf_insn* %18 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %173, i8* align 4 %174, i64 4, i1 false)
  %175 = load %struct.bpf_insn*, %struct.bpf_insn** %4, align 8
  %176 = load i32, i32* %5, align 4
  %177 = add nsw i32 %176, 1
  store i32 %177, i32* %5, align 4
  %178 = sext i32 %176 to i64
  %179 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %175, i64 %178
  %180 = load i32, i32* @BPF_JMP, align 4
  %181 = load i32, i32* @BPF_CALL, align 4
  %182 = or i32 %180, %181
  %183 = load i32, i32* @BPF_FUNC_skb_vlan_pop, align 4
  %184 = call i32 @BPF_RAW_INSN(i32 %182, i32 0, i32 0, i32 0, i32 %183)
  %185 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %19, i32 0, i32 0
  store i32 %184, i32* %185, align 4
  %186 = bitcast %struct.bpf_insn* %179 to i8*
  %187 = bitcast %struct.bpf_insn* %19 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %186, i8* align 4 %187, i64 4, i1 false)
  %188 = load %struct.bpf_insn*, %struct.bpf_insn** %4, align 8
  %189 = load i32, i32* %5, align 4
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %188, i64 %190
  %192 = load i32, i32* @BPF_JNE, align 4
  %193 = load i32, i32* @BPF_REG_0, align 4
  %194 = load i32, i32* %3, align 4
  %195 = load i32, i32* %5, align 4
  %196 = sub i32 %194, %195
  %197 = sub i32 %196, 3
  %198 = call i32 @BPF_JMP_IMM(i32 %192, i32 %193, i32 0, i32 %197)
  %199 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %20, i32 0, i32 0
  store i32 %198, i32* %199, align 4
  %200 = bitcast %struct.bpf_insn* %191 to i8*
  %201 = bitcast %struct.bpf_insn* %20 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %200, i8* align 4 %201, i64 4, i1 false)
  %202 = load i32, i32* %5, align 4
  %203 = add nsw i32 %202, 1
  store i32 %203, i32* %5, align 4
  br label %204

204:                                              ; preds = %137
  %205 = load i32, i32* %6, align 4
  %206 = add nsw i32 %205, 1
  store i32 %206, i32* %6, align 4
  br label %134

207:                                              ; preds = %134
  %208 = load i32, i32* %7, align 4
  %209 = add nsw i32 %208, 1
  store i32 %209, i32* %7, align 4
  %210 = icmp slt i32 %209, 5
  br i1 %210, label %211, label %212

211:                                              ; preds = %207
  br label %39

212:                                              ; preds = %207
  br label %213

213:                                              ; preds = %229, %212
  %214 = load i32, i32* %5, align 4
  %215 = load i32, i32* %3, align 4
  %216 = sub i32 %215, 3
  %217 = icmp ult i32 %214, %216
  br i1 %217, label %218, label %232

218:                                              ; preds = %213
  %219 = load %struct.bpf_insn*, %struct.bpf_insn** %4, align 8
  %220 = load i32, i32* %5, align 4
  %221 = sext i32 %220 to i64
  %222 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %219, i64 %221
  %223 = load i32, i32* @BPF_MOV, align 4
  %224 = load i32, i32* @BPF_REG_0, align 4
  %225 = call i32 @BPF_ALU64_IMM(i32 %223, i32 %224, i32 3055)
  %226 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %21, i32 0, i32 0
  store i32 %225, i32* %226, align 4
  %227 = bitcast %struct.bpf_insn* %222 to i8*
  %228 = bitcast %struct.bpf_insn* %21 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %227, i8* align 4 %228, i64 4, i1 false)
  br label %229

229:                                              ; preds = %218
  %230 = load i32, i32* %5, align 4
  %231 = add nsw i32 %230, 1
  store i32 %231, i32* %5, align 4
  br label %213

232:                                              ; preds = %213
  %233 = load %struct.bpf_insn*, %struct.bpf_insn** %4, align 8
  %234 = load i32, i32* %3, align 4
  %235 = sub i32 %234, 3
  %236 = zext i32 %235 to i64
  %237 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %233, i64 %236
  %238 = call i32 @BPF_JMP_A(i32 1)
  %239 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %22, i32 0, i32 0
  store i32 %238, i32* %239, align 4
  %240 = bitcast %struct.bpf_insn* %237 to i8*
  %241 = bitcast %struct.bpf_insn* %22 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %240, i8* align 4 %241, i64 4, i1 false)
  %242 = load %struct.bpf_insn*, %struct.bpf_insn** %4, align 8
  %243 = load i32, i32* %3, align 4
  %244 = sub i32 %243, 2
  %245 = zext i32 %244 to i64
  %246 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %242, i64 %245
  %247 = load i32, i32* @BPF_REG_0, align 4
  %248 = call i32 @BPF_MOV32_IMM(i32 %247, i32 0)
  %249 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %23, i32 0, i32 0
  store i32 %248, i32* %249, align 4
  %250 = bitcast %struct.bpf_insn* %246 to i8*
  %251 = bitcast %struct.bpf_insn* %23 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %250, i8* align 4 %251, i64 4, i1 false)
  %252 = load %struct.bpf_insn*, %struct.bpf_insn** %4, align 8
  %253 = load i32, i32* %3, align 4
  %254 = sub i32 %253, 1
  %255 = zext i32 %254 to i64
  %256 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %252, i64 %255
  %257 = call i32 (...) @BPF_EXIT_INSN()
  %258 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %24, i32 0, i32 0
  store i32 %257, i32* %258, align 4
  %259 = bitcast %struct.bpf_insn* %256 to i8*
  %260 = bitcast %struct.bpf_insn* %24 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %259, i8* align 4 %260, i64 4, i1 false)
  %261 = load i32, i32* %3, align 4
  %262 = load %struct.bpf_test*, %struct.bpf_test** %2, align 8
  %263 = getelementptr inbounds %struct.bpf_test, %struct.bpf_test* %262, i32 0, i32 0
  store i32 %261, i32* %263, align 8
  ret void
}

declare dso_local i32 @BPF_MOV64_REG(i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @BPF_LD_ABS(i32, i32) #1

declare dso_local i32 @BPF_JMP32_IMM(i32, i32, i32, i32) #1

declare dso_local i32 @BPF_MOV64_IMM(i32, i32) #1

declare dso_local i32 @BPF_RAW_INSN(i32, i32, i32, i32, i32) #1

declare dso_local i32 @BPF_JMP_IMM(i32, i32, i32, i32) #1

declare dso_local i32 @BPF_ALU64_IMM(i32, i32, i32) #1

declare dso_local i32 @BPF_JMP_A(i32) #1

declare dso_local i32 @BPF_MOV32_IMM(i32, i32) #1

declare dso_local i32 @BPF_EXIT_INSN(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
