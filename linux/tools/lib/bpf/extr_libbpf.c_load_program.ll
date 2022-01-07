; ModuleID = '/home/carl/AnghaBench/linux/tools/lib/bpf/extr_libbpf.c_load_program.c'
source_filename = "/home/carl/AnghaBench/linux/tools/lib/bpf/extr_libbpf.c_load_program.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_program = type { i64, i32, i64, i32, i32, i32, i32, i32, i32, %struct.TYPE_4__*, i32, i32, %struct.TYPE_3__*, i64 }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i64 }
%struct.bpf_insn = type { i32 }
%struct.bpf_load_program_attr = type { i64, i32, i8*, i32, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.bpf_insn*, i32 }

@STRERR_BUFSIZE = common dso_local global i32 0, align 4
@BPF_LOG_BUF_SIZE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [61 x i8] c"Alloc log buffer for bpf loader error, continue without log\0A\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"verifier log:\0A%s\00", align 1
@errno = common dso_local global i64 0, align 8
@ENOSPC = common dso_local global i64 0, align 8
@LIBBPF_ERRNO__LOAD = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"load bpf program failed: %s\0A\00", align 1
@LIBBPF_ERRNO__VERIFY = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [23 x i8] c"-- BEGIN DUMP LOG ---\0A\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"\0A%s\0A\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"-- END LOG --\0A\00", align 1
@BPF_MAXINSNS = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [49 x i8] c"Program too large (%zu insns), at most %d insns\0A\00", align 1
@LIBBPF_ERRNO__PROG2BIG = common dso_local global i32 0, align 4
@BPF_PROG_TYPE_KPROBE = common dso_local global i64 0, align 8
@LIBBPF_ERRNO__PROGTYPE = common dso_local global i32 0, align 4
@LIBBPF_ERRNO__KVER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bpf_program*, %struct.bpf_insn*, i32, i8*, i32, i32*)* @load_program to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @load_program(%struct.bpf_program* %0, %struct.bpf_insn* %1, i32 %2, i8* %3, i32 %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.bpf_program*, align 8
  %9 = alloca %struct.bpf_insn*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca %struct.bpf_load_program_attr, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i8*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store %struct.bpf_program* %0, %struct.bpf_program** %8, align 8
  store %struct.bpf_insn* %1, %struct.bpf_insn** %9, align 8
  store i32 %2, i32* %10, align 4
  store i8* %3, i8** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32* %5, i32** %13, align 8
  %24 = load i32, i32* @STRERR_BUFSIZE, align 4
  %25 = zext i32 %24 to i64
  %26 = call i8* @llvm.stacksave()
  store i8* %26, i8** %16, align 8
  %27 = alloca i8, i64 %25, align 16
  store i64 %25, i64* %17, align 8
  %28 = load i32, i32* @BPF_LOG_BUF_SIZE, align 4
  store i32 %28, i32* %18, align 4
  %29 = load %struct.bpf_insn*, %struct.bpf_insn** %9, align 8
  %30 = icmp ne %struct.bpf_insn* %29, null
  br i1 %30, label %31, label %34

31:                                               ; preds = %6
  %32 = load i32, i32* %10, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %31, %6
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %7, align 4
  store i32 1, i32* %22, align 4
  br label %222

37:                                               ; preds = %31
  %38 = call i32 @memset(%struct.bpf_load_program_attr* %14, i32 0, i32 104)
  %39 = load %struct.bpf_program*, %struct.bpf_program** %8, align 8
  %40 = getelementptr inbounds %struct.bpf_program, %struct.bpf_program* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = getelementptr inbounds %struct.bpf_load_program_attr, %struct.bpf_load_program_attr* %14, i32 0, i32 0
  store i64 %41, i64* %42, align 8
  %43 = load %struct.bpf_program*, %struct.bpf_program** %8, align 8
  %44 = getelementptr inbounds %struct.bpf_program, %struct.bpf_program* %43, i32 0, i32 13
  %45 = load i64, i64* %44, align 8
  %46 = getelementptr inbounds %struct.bpf_load_program_attr, %struct.bpf_load_program_attr* %14, i32 0, i32 4
  store i64 %45, i64* %46, align 8
  %47 = load %struct.bpf_program*, %struct.bpf_program** %8, align 8
  %48 = getelementptr inbounds %struct.bpf_program, %struct.bpf_program* %47, i32 0, i32 12
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %37
  %54 = load %struct.bpf_program*, %struct.bpf_program** %8, align 8
  %55 = getelementptr inbounds %struct.bpf_program, %struct.bpf_program* %54, i32 0, i32 11
  %56 = load i32, i32* %55, align 4
  %57 = getelementptr inbounds %struct.bpf_load_program_attr, %struct.bpf_load_program_attr* %14, i32 0, i32 16
  store i32 %56, i32* %57, align 8
  br label %58

58:                                               ; preds = %53, %37
  %59 = load %struct.bpf_insn*, %struct.bpf_insn** %9, align 8
  %60 = getelementptr inbounds %struct.bpf_load_program_attr, %struct.bpf_load_program_attr* %14, i32 0, i32 15
  store %struct.bpf_insn* %59, %struct.bpf_insn** %60, align 8
  %61 = load i32, i32* %10, align 4
  %62 = getelementptr inbounds %struct.bpf_load_program_attr, %struct.bpf_load_program_attr* %14, i32 0, i32 1
  store i32 %61, i32* %62, align 8
  %63 = load i8*, i8** %11, align 8
  %64 = getelementptr inbounds %struct.bpf_load_program_attr, %struct.bpf_load_program_attr* %14, i32 0, i32 2
  store i8* %63, i8** %64, align 8
  %65 = load i32, i32* %12, align 4
  %66 = getelementptr inbounds %struct.bpf_load_program_attr, %struct.bpf_load_program_attr* %14, i32 0, i32 14
  store i32 %65, i32* %66, align 8
  %67 = load %struct.bpf_program*, %struct.bpf_program** %8, align 8
  %68 = getelementptr inbounds %struct.bpf_program, %struct.bpf_program* %67, i32 0, i32 10
  %69 = load i32, i32* %68, align 8
  %70 = getelementptr inbounds %struct.bpf_load_program_attr, %struct.bpf_load_program_attr* %14, i32 0, i32 13
  store i32 %69, i32* %70, align 4
  %71 = load %struct.bpf_program*, %struct.bpf_program** %8, align 8
  %72 = getelementptr inbounds %struct.bpf_program, %struct.bpf_program* %71, i32 0, i32 9
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %82

77:                                               ; preds = %58
  %78 = load %struct.bpf_program*, %struct.bpf_program** %8, align 8
  %79 = getelementptr inbounds %struct.bpf_program, %struct.bpf_program* %78, i32 0, i32 9
  %80 = load %struct.TYPE_4__*, %struct.TYPE_4__** %79, align 8
  %81 = call i32 @bpf_object__btf_fd(%struct.TYPE_4__* %80)
  store i32 %81, i32* %20, align 4
  br label %83

82:                                               ; preds = %58
  store i32 -1, i32* %20, align 4
  br label %83

83:                                               ; preds = %82, %77
  %84 = load i32, i32* %20, align 4
  %85 = icmp sge i32 %84, 0
  br i1 %85, label %86, label %88

86:                                               ; preds = %83
  %87 = load i32, i32* %20, align 4
  br label %89

88:                                               ; preds = %83
  br label %89

89:                                               ; preds = %88, %86
  %90 = phi i32 [ %87, %86 ], [ 0, %88 ]
  %91 = getelementptr inbounds %struct.bpf_load_program_attr, %struct.bpf_load_program_attr* %14, i32 0, i32 3
  store i32 %90, i32* %91, align 8
  %92 = load %struct.bpf_program*, %struct.bpf_program** %8, align 8
  %93 = getelementptr inbounds %struct.bpf_program, %struct.bpf_program* %92, i32 0, i32 8
  %94 = load i32, i32* %93, align 4
  %95 = getelementptr inbounds %struct.bpf_load_program_attr, %struct.bpf_load_program_attr* %14, i32 0, i32 12
  store i32 %94, i32* %95, align 8
  %96 = load %struct.bpf_program*, %struct.bpf_program** %8, align 8
  %97 = getelementptr inbounds %struct.bpf_program, %struct.bpf_program* %96, i32 0, i32 7
  %98 = load i32, i32* %97, align 8
  %99 = getelementptr inbounds %struct.bpf_load_program_attr, %struct.bpf_load_program_attr* %14, i32 0, i32 11
  store i32 %98, i32* %99, align 4
  %100 = load %struct.bpf_program*, %struct.bpf_program** %8, align 8
  %101 = getelementptr inbounds %struct.bpf_program, %struct.bpf_program* %100, i32 0, i32 6
  %102 = load i32, i32* %101, align 4
  %103 = getelementptr inbounds %struct.bpf_load_program_attr, %struct.bpf_load_program_attr* %14, i32 0, i32 10
  store i32 %102, i32* %103, align 8
  %104 = load %struct.bpf_program*, %struct.bpf_program** %8, align 8
  %105 = getelementptr inbounds %struct.bpf_program, %struct.bpf_program* %104, i32 0, i32 5
  %106 = load i32, i32* %105, align 8
  %107 = getelementptr inbounds %struct.bpf_load_program_attr, %struct.bpf_load_program_attr* %14, i32 0, i32 9
  store i32 %106, i32* %107, align 4
  %108 = load %struct.bpf_program*, %struct.bpf_program** %8, align 8
  %109 = getelementptr inbounds %struct.bpf_program, %struct.bpf_program* %108, i32 0, i32 4
  %110 = load i32, i32* %109, align 4
  %111 = getelementptr inbounds %struct.bpf_load_program_attr, %struct.bpf_load_program_attr* %14, i32 0, i32 8
  store i32 %110, i32* %111, align 8
  %112 = load %struct.bpf_program*, %struct.bpf_program** %8, align 8
  %113 = getelementptr inbounds %struct.bpf_program, %struct.bpf_program* %112, i32 0, i32 3
  %114 = load i32, i32* %113, align 8
  %115 = getelementptr inbounds %struct.bpf_load_program_attr, %struct.bpf_load_program_attr* %14, i32 0, i32 7
  store i32 %114, i32* %115, align 4
  %116 = load %struct.bpf_program*, %struct.bpf_program** %8, align 8
  %117 = getelementptr inbounds %struct.bpf_program, %struct.bpf_program* %116, i32 0, i32 2
  %118 = load i64, i64* %117, align 8
  %119 = getelementptr inbounds %struct.bpf_load_program_attr, %struct.bpf_load_program_attr* %14, i32 0, i32 5
  store i64 %118, i64* %119, align 8
  %120 = load %struct.bpf_program*, %struct.bpf_program** %8, align 8
  %121 = getelementptr inbounds %struct.bpf_program, %struct.bpf_program* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 8
  %123 = getelementptr inbounds %struct.bpf_load_program_attr, %struct.bpf_load_program_attr* %14, i32 0, i32 6
  store i32 %122, i32* %123, align 8
  br label %124

124:                                              ; preds = %151, %89
  %125 = load i32, i32* %18, align 4
  %126 = call i8* @malloc(i32 %125)
  store i8* %126, i8** %19, align 8
  %127 = load i8*, i8** %19, align 8
  %128 = icmp ne i8* %127, null
  br i1 %128, label %131, label %129

129:                                              ; preds = %124
  %130 = call i32 (i8*, ...) @pr_warning(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0))
  br label %131

131:                                              ; preds = %129, %124
  %132 = load i8*, i8** %19, align 8
  %133 = load i32, i32* %18, align 4
  %134 = call i32 @bpf_load_program_xattr(%struct.bpf_load_program_attr* %14, i8* %132, i32 %133)
  store i32 %134, i32* %21, align 4
  %135 = load i32, i32* %21, align 4
  %136 = icmp sge i32 %135, 0
  br i1 %136, label %137, label %147

137:                                              ; preds = %131
  %138 = getelementptr inbounds %struct.bpf_load_program_attr, %struct.bpf_load_program_attr* %14, i32 0, i32 5
  %139 = load i64, i64* %138, align 8
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %144

141:                                              ; preds = %137
  %142 = load i8*, i8** %19, align 8
  %143 = call i32 @pr_debug(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i8* %142)
  br label %144

144:                                              ; preds = %141, %137
  %145 = load i32, i32* %21, align 4
  %146 = load i32*, i32** %13, align 8
  store i32 %145, i32* %146, align 4
  store i32 0, i32* %21, align 4
  br label %218

147:                                              ; preds = %131
  %148 = load i64, i64* @errno, align 8
  %149 = load i64, i64* @ENOSPC, align 8
  %150 = icmp eq i64 %148, %149
  br i1 %150, label %151, label %156

151:                                              ; preds = %147
  %152 = load i32, i32* %18, align 4
  %153 = shl i32 %152, 1
  store i32 %153, i32* %18, align 4
  %154 = load i8*, i8** %19, align 8
  %155 = call i32 @free(i8* %154)
  br label %124

156:                                              ; preds = %147
  %157 = load i32, i32* @LIBBPF_ERRNO__LOAD, align 4
  %158 = sub nsw i32 0, %157
  store i32 %158, i32* %21, align 4
  %159 = load i64, i64* @errno, align 8
  %160 = trunc i64 %25 to i32
  %161 = call i8* @libbpf_strerror_r(i64 %159, i8* %27, i32 %160)
  store i8* %161, i8** %15, align 8
  %162 = load i8*, i8** %15, align 8
  %163 = call i32 (i8*, ...) @pr_warning(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i8* %162)
  %164 = load i8*, i8** %19, align 8
  %165 = icmp ne i8* %164, null
  br i1 %165, label %166, label %179

166:                                              ; preds = %156
  %167 = load i8*, i8** %19, align 8
  %168 = getelementptr inbounds i8, i8* %167, i64 0
  %169 = load i8, i8* %168, align 1
  %170 = sext i8 %169 to i32
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %179

172:                                              ; preds = %166
  %173 = load i32, i32* @LIBBPF_ERRNO__VERIFY, align 4
  %174 = sub nsw i32 0, %173
  store i32 %174, i32* %21, align 4
  %175 = call i32 (i8*, ...) @pr_warning(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  %176 = load i8*, i8** %19, align 8
  %177 = call i32 (i8*, ...) @pr_warning(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8* %176)
  %178 = call i32 (i8*, ...) @pr_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0))
  br label %217

179:                                              ; preds = %166, %156
  %180 = getelementptr inbounds %struct.bpf_load_program_attr, %struct.bpf_load_program_attr* %14, i32 0, i32 1
  %181 = load i32, i32* %180, align 8
  %182 = load i32, i32* @BPF_MAXINSNS, align 4
  %183 = icmp sge i32 %181, %182
  br i1 %183, label %184, label %191

184:                                              ; preds = %179
  %185 = getelementptr inbounds %struct.bpf_load_program_attr, %struct.bpf_load_program_attr* %14, i32 0, i32 1
  %186 = load i32, i32* %185, align 8
  %187 = load i32, i32* @BPF_MAXINSNS, align 4
  %188 = call i32 (i8*, ...) @pr_warning(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.6, i64 0, i64 0), i32 %186, i32 %187)
  %189 = load i32, i32* @LIBBPF_ERRNO__PROG2BIG, align 4
  %190 = sub nsw i32 0, %189
  store i32 %190, i32* %21, align 4
  br label %216

191:                                              ; preds = %179
  %192 = getelementptr inbounds %struct.bpf_load_program_attr, %struct.bpf_load_program_attr* %14, i32 0, i32 0
  %193 = load i64, i64* %192, align 8
  %194 = load i64, i64* @BPF_PROG_TYPE_KPROBE, align 8
  %195 = icmp ne i64 %193, %194
  br i1 %195, label %196, label %209

196:                                              ; preds = %191
  %197 = load i64, i64* @BPF_PROG_TYPE_KPROBE, align 8
  %198 = getelementptr inbounds %struct.bpf_load_program_attr, %struct.bpf_load_program_attr* %14, i32 0, i32 0
  store i64 %197, i64* %198, align 8
  %199 = getelementptr inbounds %struct.bpf_load_program_attr, %struct.bpf_load_program_attr* %14, i32 0, i32 4
  store i64 0, i64* %199, align 8
  %200 = call i32 @bpf_load_program_xattr(%struct.bpf_load_program_attr* %14, i8* null, i32 0)
  store i32 %200, i32* %23, align 4
  %201 = load i32, i32* %23, align 4
  %202 = icmp sge i32 %201, 0
  br i1 %202, label %203, label %208

203:                                              ; preds = %196
  %204 = load i32, i32* %23, align 4
  %205 = call i32 @close(i32 %204)
  %206 = load i32, i32* @LIBBPF_ERRNO__PROGTYPE, align 4
  %207 = sub nsw i32 0, %206
  store i32 %207, i32* %21, align 4
  br label %218

208:                                              ; preds = %196
  br label %209

209:                                              ; preds = %208, %191
  %210 = load i8*, i8** %19, align 8
  %211 = icmp ne i8* %210, null
  br i1 %211, label %212, label %215

212:                                              ; preds = %209
  %213 = load i32, i32* @LIBBPF_ERRNO__KVER, align 4
  %214 = sub nsw i32 0, %213
  store i32 %214, i32* %21, align 4
  br label %215

215:                                              ; preds = %212, %209
  br label %216

216:                                              ; preds = %215, %184
  br label %217

217:                                              ; preds = %216, %172
  br label %218

218:                                              ; preds = %217, %203, %144
  %219 = load i8*, i8** %19, align 8
  %220 = call i32 @free(i8* %219)
  %221 = load i32, i32* %21, align 4
  store i32 %221, i32* %7, align 4
  store i32 1, i32* %22, align 4
  br label %222

222:                                              ; preds = %218, %34
  %223 = load i8*, i8** %16, align 8
  call void @llvm.stackrestore(i8* %223)
  %224 = load i32, i32* %7, align 4
  ret i32 %224
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memset(%struct.bpf_load_program_attr*, i32, i32) #2

declare dso_local i32 @bpf_object__btf_fd(%struct.TYPE_4__*) #2

declare dso_local i8* @malloc(i32) #2

declare dso_local i32 @pr_warning(i8*, ...) #2

declare dso_local i32 @bpf_load_program_xattr(%struct.bpf_load_program_attr*, i8*, i32) #2

declare dso_local i32 @pr_debug(i8*, i8*) #2

declare dso_local i32 @free(i8*) #2

declare dso_local i8* @libbpf_strerror_r(i64, i8*, i32) #2

declare dso_local i32 @close(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
