; ModuleID = '/home/carl/AnghaBench/linux/samples/seccomp/extr_bpf-fancy.c_main.c'
source_filename = "/home/carl/AnghaBench/linux/samples/seccomp/extr_bpf-fancy.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock_filter = type { i32 }
%struct.bpf_labels = type { i32 }
%struct.sock_fprog = type { i16, %struct.sock_filter* }

@main.msg1 = internal constant [24 x i8] c"Please type something: \00", align 16
@main.msg2 = internal constant [12 x i8] c"You typed: \00", align 1
@LOAD_SYSCALL_NR = common dso_local global %struct.sock_filter zeroinitializer, align 4
@__NR_exit = common dso_local global i32 0, align 4
@ALLOW = common dso_local global %struct.sock_filter zeroinitializer, align 4
@__NR_exit_group = common dso_local global i32 0, align 4
@__NR_write = common dso_local global i32 0, align 4
@write_fd = common dso_local global i32 0, align 4
@__NR_read = common dso_local global i32 0, align 4
@read = common dso_local global i32 0, align 4
@DENY = common dso_local global %struct.sock_filter zeroinitializer, align 4
@STDIN_FILENO = common dso_local global i64 0, align 8
@STDOUT_FILENO = common dso_local global i64 0, align 8
@write_buf = common dso_local global i32 0, align 4
@STDERR_FILENO = common dso_local global i64 0, align 8
@msg1_len = common dso_local global i32 0, align 4
@msg2_len = common dso_local global i32 0, align 4
@buf_len = common dso_local global i32 0, align 4
@PR_SET_NO_NEW_PRIVS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"prctl(NO_NEW_PRIVS)\00", align 1
@PR_SET_SECCOMP = common dso_local global i32 0, align 4
@SECCOMP_MODE_FILTER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"prctl(SECCOMP)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.bpf_labels, align 4
  %7 = alloca [256 x i8], align 16
  %8 = alloca [37 x %struct.sock_filter], align 16
  %9 = alloca %struct.sock_filter, align 4
  %10 = alloca %struct.sock_filter, align 4
  %11 = alloca %struct.sock_filter, align 4
  %12 = alloca %struct.sock_filter, align 4
  %13 = alloca %struct.sock_filter, align 4
  %14 = alloca %struct.sock_filter, align 4
  %15 = alloca %struct.sock_filter, align 4
  %16 = alloca %struct.sock_fprog, align 8
  %17 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %18 = bitcast %struct.bpf_labels* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %18, i8 0, i64 4, i1 false)
  %19 = getelementptr inbounds [37 x %struct.sock_filter], [37 x %struct.sock_filter]* %8, i64 0, i64 0
  %20 = bitcast %struct.sock_filter* %19 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %20, i8* align 4 bitcast (%struct.sock_filter* @LOAD_SYSCALL_NR to i8*), i64 4, i1 false)
  %21 = getelementptr inbounds %struct.sock_filter, %struct.sock_filter* %19, i64 1
  %22 = load i32, i32* @__NR_exit, align 4
  %23 = load i32, i32* getelementptr inbounds (%struct.sock_filter, %struct.sock_filter* @ALLOW, i32 0, i32 0), align 4
  %24 = call i32 @SYSCALL(i32 %22, i32 %23)
  %25 = getelementptr inbounds %struct.sock_filter, %struct.sock_filter* %21, i32 0, i32 0
  store i32 %24, i32* %25, align 4
  %26 = getelementptr inbounds %struct.sock_filter, %struct.sock_filter* %21, i64 1
  %27 = load i32, i32* @__NR_exit_group, align 4
  %28 = load i32, i32* getelementptr inbounds (%struct.sock_filter, %struct.sock_filter* @ALLOW, i32 0, i32 0), align 4
  %29 = call i32 @SYSCALL(i32 %27, i32 %28)
  %30 = getelementptr inbounds %struct.sock_filter, %struct.sock_filter* %26, i32 0, i32 0
  store i32 %29, i32* %30, align 4
  %31 = getelementptr inbounds %struct.sock_filter, %struct.sock_filter* %26, i64 1
  %32 = load i32, i32* @__NR_write, align 4
  %33 = load i32, i32* @write_fd, align 4
  %34 = call i32 @JUMP(%struct.bpf_labels* %6, i32 %33)
  %35 = getelementptr inbounds %struct.sock_filter, %struct.sock_filter* %9, i32 0, i32 0
  store i32 %34, i32* %35, align 4
  %36 = getelementptr inbounds %struct.sock_filter, %struct.sock_filter* %9, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @SYSCALL(i32 %32, i32 %37)
  %39 = getelementptr inbounds %struct.sock_filter, %struct.sock_filter* %31, i32 0, i32 0
  store i32 %38, i32* %39, align 4
  %40 = getelementptr inbounds %struct.sock_filter, %struct.sock_filter* %31, i64 1
  %41 = load i32, i32* @__NR_read, align 4
  %42 = load i32, i32* @read, align 4
  %43 = call i32 @JUMP(%struct.bpf_labels* %6, i32 %42)
  %44 = getelementptr inbounds %struct.sock_filter, %struct.sock_filter* %10, i32 0, i32 0
  store i32 %43, i32* %44, align 4
  %45 = getelementptr inbounds %struct.sock_filter, %struct.sock_filter* %10, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @SYSCALL(i32 %41, i32 %46)
  %48 = getelementptr inbounds %struct.sock_filter, %struct.sock_filter* %40, i32 0, i32 0
  store i32 %47, i32* %48, align 4
  %49 = getelementptr inbounds %struct.sock_filter, %struct.sock_filter* %40, i64 1
  %50 = bitcast %struct.sock_filter* %49 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %50, i8* align 4 bitcast (%struct.sock_filter* @DENY to i8*), i64 4, i1 false)
  %51 = getelementptr inbounds %struct.sock_filter, %struct.sock_filter* %49, i64 1
  %52 = load i32, i32* @read, align 4
  %53 = call i32 @LABEL(%struct.bpf_labels* %6, i32 %52)
  %54 = getelementptr inbounds %struct.sock_filter, %struct.sock_filter* %51, i32 0, i32 0
  store i32 %53, i32* %54, align 4
  %55 = getelementptr inbounds %struct.sock_filter, %struct.sock_filter* %51, i64 1
  %56 = call i32 @ARG(i32 0)
  %57 = getelementptr inbounds %struct.sock_filter, %struct.sock_filter* %55, i32 0, i32 0
  store i32 %56, i32* %57, align 4
  %58 = getelementptr inbounds %struct.sock_filter, %struct.sock_filter* %55, i64 1
  %59 = load i64, i64* @STDIN_FILENO, align 8
  %60 = load i32, i32* getelementptr inbounds (%struct.sock_filter, %struct.sock_filter* @DENY, i32 0, i32 0), align 4
  %61 = call i32 @JNE(i64 %59, i32 %60)
  %62 = getelementptr inbounds %struct.sock_filter, %struct.sock_filter* %58, i32 0, i32 0
  store i32 %61, i32* %62, align 4
  %63 = getelementptr inbounds %struct.sock_filter, %struct.sock_filter* %58, i64 1
  %64 = call i32 @ARG(i32 1)
  %65 = getelementptr inbounds %struct.sock_filter, %struct.sock_filter* %63, i32 0, i32 0
  store i32 %64, i32* %65, align 4
  %66 = getelementptr inbounds %struct.sock_filter, %struct.sock_filter* %63, i64 1
  %67 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 0
  %68 = ptrtoint i8* %67 to i64
  %69 = load i32, i32* getelementptr inbounds (%struct.sock_filter, %struct.sock_filter* @DENY, i32 0, i32 0), align 4
  %70 = call i32 @JNE(i64 %68, i32 %69)
  %71 = getelementptr inbounds %struct.sock_filter, %struct.sock_filter* %66, i32 0, i32 0
  store i32 %70, i32* %71, align 4
  %72 = getelementptr inbounds %struct.sock_filter, %struct.sock_filter* %66, i64 1
  %73 = call i32 @ARG(i32 2)
  %74 = getelementptr inbounds %struct.sock_filter, %struct.sock_filter* %72, i32 0, i32 0
  store i32 %73, i32* %74, align 4
  %75 = getelementptr inbounds %struct.sock_filter, %struct.sock_filter* %72, i64 1
  %76 = load i32, i32* getelementptr inbounds (%struct.sock_filter, %struct.sock_filter* @DENY, i32 0, i32 0), align 4
  %77 = call i32 @JGE(i32 256, i32 %76)
  %78 = getelementptr inbounds %struct.sock_filter, %struct.sock_filter* %75, i32 0, i32 0
  store i32 %77, i32* %78, align 4
  %79 = getelementptr inbounds %struct.sock_filter, %struct.sock_filter* %75, i64 1
  %80 = bitcast %struct.sock_filter* %79 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %80, i8* align 4 bitcast (%struct.sock_filter* @ALLOW to i8*), i64 4, i1 false)
  %81 = getelementptr inbounds %struct.sock_filter, %struct.sock_filter* %79, i64 1
  %82 = load i32, i32* @write_fd, align 4
  %83 = call i32 @LABEL(%struct.bpf_labels* %6, i32 %82)
  %84 = getelementptr inbounds %struct.sock_filter, %struct.sock_filter* %81, i32 0, i32 0
  store i32 %83, i32* %84, align 4
  %85 = getelementptr inbounds %struct.sock_filter, %struct.sock_filter* %81, i64 1
  %86 = call i32 @ARG(i32 0)
  %87 = getelementptr inbounds %struct.sock_filter, %struct.sock_filter* %85, i32 0, i32 0
  store i32 %86, i32* %87, align 4
  %88 = getelementptr inbounds %struct.sock_filter, %struct.sock_filter* %85, i64 1
  %89 = load i64, i64* @STDOUT_FILENO, align 8
  %90 = load i32, i32* @write_buf, align 4
  %91 = call i32 @JUMP(%struct.bpf_labels* %6, i32 %90)
  %92 = getelementptr inbounds %struct.sock_filter, %struct.sock_filter* %11, i32 0, i32 0
  store i32 %91, i32* %92, align 4
  %93 = getelementptr inbounds %struct.sock_filter, %struct.sock_filter* %11, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @JEQ(i64 %89, i32 %94)
  %96 = getelementptr inbounds %struct.sock_filter, %struct.sock_filter* %88, i32 0, i32 0
  store i32 %95, i32* %96, align 4
  %97 = getelementptr inbounds %struct.sock_filter, %struct.sock_filter* %88, i64 1
  %98 = load i64, i64* @STDERR_FILENO, align 8
  %99 = load i32, i32* @write_buf, align 4
  %100 = call i32 @JUMP(%struct.bpf_labels* %6, i32 %99)
  %101 = getelementptr inbounds %struct.sock_filter, %struct.sock_filter* %12, i32 0, i32 0
  store i32 %100, i32* %101, align 4
  %102 = getelementptr inbounds %struct.sock_filter, %struct.sock_filter* %12, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @JEQ(i64 %98, i32 %103)
  %105 = getelementptr inbounds %struct.sock_filter, %struct.sock_filter* %97, i32 0, i32 0
  store i32 %104, i32* %105, align 4
  %106 = getelementptr inbounds %struct.sock_filter, %struct.sock_filter* %97, i64 1
  %107 = bitcast %struct.sock_filter* %106 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %107, i8* align 4 bitcast (%struct.sock_filter* @DENY to i8*), i64 4, i1 false)
  %108 = getelementptr inbounds %struct.sock_filter, %struct.sock_filter* %106, i64 1
  %109 = load i32, i32* @write_buf, align 4
  %110 = call i32 @LABEL(%struct.bpf_labels* %6, i32 %109)
  %111 = getelementptr inbounds %struct.sock_filter, %struct.sock_filter* %108, i32 0, i32 0
  store i32 %110, i32* %111, align 4
  %112 = getelementptr inbounds %struct.sock_filter, %struct.sock_filter* %108, i64 1
  %113 = call i32 @ARG(i32 1)
  %114 = getelementptr inbounds %struct.sock_filter, %struct.sock_filter* %112, i32 0, i32 0
  store i32 %113, i32* %114, align 4
  %115 = getelementptr inbounds %struct.sock_filter, %struct.sock_filter* %112, i64 1
  %116 = load i32, i32* @msg1_len, align 4
  %117 = call i32 @JUMP(%struct.bpf_labels* %6, i32 %116)
  %118 = getelementptr inbounds %struct.sock_filter, %struct.sock_filter* %13, i32 0, i32 0
  store i32 %117, i32* %118, align 4
  %119 = getelementptr inbounds %struct.sock_filter, %struct.sock_filter* %13, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = call i32 @JEQ(i64 ptrtoint ([24 x i8]* @main.msg1 to i64), i32 %120)
  %122 = getelementptr inbounds %struct.sock_filter, %struct.sock_filter* %115, i32 0, i32 0
  store i32 %121, i32* %122, align 4
  %123 = getelementptr inbounds %struct.sock_filter, %struct.sock_filter* %115, i64 1
  %124 = load i32, i32* @msg2_len, align 4
  %125 = call i32 @JUMP(%struct.bpf_labels* %6, i32 %124)
  %126 = getelementptr inbounds %struct.sock_filter, %struct.sock_filter* %14, i32 0, i32 0
  store i32 %125, i32* %126, align 4
  %127 = getelementptr inbounds %struct.sock_filter, %struct.sock_filter* %14, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = call i32 @JEQ(i64 ptrtoint ([12 x i8]* @main.msg2 to i64), i32 %128)
  %130 = getelementptr inbounds %struct.sock_filter, %struct.sock_filter* %123, i32 0, i32 0
  store i32 %129, i32* %130, align 4
  %131 = getelementptr inbounds %struct.sock_filter, %struct.sock_filter* %123, i64 1
  %132 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 0
  %133 = ptrtoint i8* %132 to i64
  %134 = load i32, i32* @buf_len, align 4
  %135 = call i32 @JUMP(%struct.bpf_labels* %6, i32 %134)
  %136 = getelementptr inbounds %struct.sock_filter, %struct.sock_filter* %15, i32 0, i32 0
  store i32 %135, i32* %136, align 4
  %137 = getelementptr inbounds %struct.sock_filter, %struct.sock_filter* %15, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = call i32 @JEQ(i64 %133, i32 %138)
  %140 = getelementptr inbounds %struct.sock_filter, %struct.sock_filter* %131, i32 0, i32 0
  store i32 %139, i32* %140, align 4
  %141 = getelementptr inbounds %struct.sock_filter, %struct.sock_filter* %131, i64 1
  %142 = bitcast %struct.sock_filter* %141 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %142, i8* align 4 bitcast (%struct.sock_filter* @DENY to i8*), i64 4, i1 false)
  %143 = getelementptr inbounds %struct.sock_filter, %struct.sock_filter* %141, i64 1
  %144 = load i32, i32* @msg1_len, align 4
  %145 = call i32 @LABEL(%struct.bpf_labels* %6, i32 %144)
  %146 = getelementptr inbounds %struct.sock_filter, %struct.sock_filter* %143, i32 0, i32 0
  store i32 %145, i32* %146, align 4
  %147 = getelementptr inbounds %struct.sock_filter, %struct.sock_filter* %143, i64 1
  %148 = call i32 @ARG(i32 2)
  %149 = getelementptr inbounds %struct.sock_filter, %struct.sock_filter* %147, i32 0, i32 0
  store i32 %148, i32* %149, align 4
  %150 = getelementptr inbounds %struct.sock_filter, %struct.sock_filter* %147, i64 1
  %151 = load i32, i32* getelementptr inbounds (%struct.sock_filter, %struct.sock_filter* @ALLOW, i32 0, i32 0), align 4
  %152 = call i32 @JLT(i32 24, i32 %151)
  %153 = getelementptr inbounds %struct.sock_filter, %struct.sock_filter* %150, i32 0, i32 0
  store i32 %152, i32* %153, align 4
  %154 = getelementptr inbounds %struct.sock_filter, %struct.sock_filter* %150, i64 1
  %155 = bitcast %struct.sock_filter* %154 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %155, i8* align 4 bitcast (%struct.sock_filter* @DENY to i8*), i64 4, i1 false)
  %156 = getelementptr inbounds %struct.sock_filter, %struct.sock_filter* %154, i64 1
  %157 = load i32, i32* @msg2_len, align 4
  %158 = call i32 @LABEL(%struct.bpf_labels* %6, i32 %157)
  %159 = getelementptr inbounds %struct.sock_filter, %struct.sock_filter* %156, i32 0, i32 0
  store i32 %158, i32* %159, align 4
  %160 = getelementptr inbounds %struct.sock_filter, %struct.sock_filter* %156, i64 1
  %161 = call i32 @ARG(i32 2)
  %162 = getelementptr inbounds %struct.sock_filter, %struct.sock_filter* %160, i32 0, i32 0
  store i32 %161, i32* %162, align 4
  %163 = getelementptr inbounds %struct.sock_filter, %struct.sock_filter* %160, i64 1
  %164 = load i32, i32* getelementptr inbounds (%struct.sock_filter, %struct.sock_filter* @ALLOW, i32 0, i32 0), align 4
  %165 = call i32 @JLT(i32 12, i32 %164)
  %166 = getelementptr inbounds %struct.sock_filter, %struct.sock_filter* %163, i32 0, i32 0
  store i32 %165, i32* %166, align 4
  %167 = getelementptr inbounds %struct.sock_filter, %struct.sock_filter* %163, i64 1
  %168 = bitcast %struct.sock_filter* %167 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %168, i8* align 4 bitcast (%struct.sock_filter* @DENY to i8*), i64 4, i1 false)
  %169 = getelementptr inbounds %struct.sock_filter, %struct.sock_filter* %167, i64 1
  %170 = load i32, i32* @buf_len, align 4
  %171 = call i32 @LABEL(%struct.bpf_labels* %6, i32 %170)
  %172 = getelementptr inbounds %struct.sock_filter, %struct.sock_filter* %169, i32 0, i32 0
  store i32 %171, i32* %172, align 4
  %173 = getelementptr inbounds %struct.sock_filter, %struct.sock_filter* %169, i64 1
  %174 = call i32 @ARG(i32 2)
  %175 = getelementptr inbounds %struct.sock_filter, %struct.sock_filter* %173, i32 0, i32 0
  store i32 %174, i32* %175, align 4
  %176 = getelementptr inbounds %struct.sock_filter, %struct.sock_filter* %173, i64 1
  %177 = load i32, i32* getelementptr inbounds (%struct.sock_filter, %struct.sock_filter* @ALLOW, i32 0, i32 0), align 4
  %178 = call i32 @JLT(i32 256, i32 %177)
  %179 = getelementptr inbounds %struct.sock_filter, %struct.sock_filter* %176, i32 0, i32 0
  store i32 %178, i32* %179, align 4
  %180 = getelementptr inbounds %struct.sock_filter, %struct.sock_filter* %176, i64 1
  %181 = bitcast %struct.sock_filter* %180 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %181, i8* align 4 bitcast (%struct.sock_filter* @DENY to i8*), i64 4, i1 false)
  %182 = getelementptr inbounds %struct.sock_fprog, %struct.sock_fprog* %16, i32 0, i32 0
  store i16 37, i16* %182, align 8
  %183 = getelementptr inbounds %struct.sock_fprog, %struct.sock_fprog* %16, i32 0, i32 1
  %184 = getelementptr inbounds [37 x %struct.sock_filter], [37 x %struct.sock_filter]* %8, i64 0, i64 0
  store %struct.sock_filter* %184, %struct.sock_filter** %183, align 8
  %185 = getelementptr inbounds [37 x %struct.sock_filter], [37 x %struct.sock_filter]* %8, i64 0, i64 0
  %186 = call i32 @bpf_resolve_jumps(%struct.bpf_labels* %6, %struct.sock_filter* %185, i32 37)
  %187 = load i32, i32* @PR_SET_NO_NEW_PRIVS, align 4
  %188 = call i64 (i32, i32, %struct.sock_fprog*, ...) @prctl(i32 %187, i32 1, %struct.sock_fprog* null, i32 0, i32 0)
  %189 = icmp ne i64 %188, 0
  br i1 %189, label %190, label %192

190:                                              ; preds = %2
  %191 = call i32 @perror(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %229

192:                                              ; preds = %2
  %193 = load i32, i32* @PR_SET_SECCOMP, align 4
  %194 = load i32, i32* @SECCOMP_MODE_FILTER, align 4
  %195 = call i64 (i32, i32, %struct.sock_fprog*, ...) @prctl(i32 %193, i32 %194, %struct.sock_fprog* %16)
  %196 = icmp ne i64 %195, 0
  br i1 %196, label %197, label %199

197:                                              ; preds = %192
  %198 = call i32 @perror(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %229

199:                                              ; preds = %192
  %200 = load i32, i32* @__NR_write, align 4
  %201 = load i64, i64* @STDOUT_FILENO, align 8
  %202 = call i32 @strlen(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @main.msg1, i64 0, i64 0))
  %203 = call i32 @syscall(i32 %200, i64 %201, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @main.msg1, i64 0, i64 0), i32 %202)
  %204 = load i32, i32* @__NR_read, align 4
  %205 = load i64, i64* @STDIN_FILENO, align 8
  %206 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 0
  %207 = call i32 @syscall(i32 %204, i64 %205, i8* %206, i32 255)
  store i32 %207, i32* %17, align 4
  %208 = load i32, i32* %17, align 4
  %209 = icmp sgt i32 %208, 0
  br i1 %209, label %210, label %212

210:                                              ; preds = %199
  %211 = load i32, i32* %17, align 4
  br label %213

212:                                              ; preds = %199
  br label %213

213:                                              ; preds = %212, %210
  %214 = phi i32 [ %211, %210 ], [ 0, %212 ]
  store i32 %214, i32* %17, align 4
  %215 = load i32, i32* @__NR_write, align 4
  %216 = load i64, i64* @STDERR_FILENO, align 8
  %217 = call i32 @strlen(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @main.msg2, i64 0, i64 0))
  %218 = call i32 @syscall(i32 %215, i64 %216, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @main.msg2, i64 0, i64 0), i32 %217)
  %219 = load i32, i32* @__NR_write, align 4
  %220 = load i64, i64* @STDERR_FILENO, align 8
  %221 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 0
  %222 = load i32, i32* %17, align 4
  %223 = call i32 @syscall(i32 %219, i64 %220, i8* %221, i32 %222)
  %224 = load i32, i32* @__NR_write, align 4
  %225 = load i64, i64* @STDERR_FILENO, align 8
  %226 = call i32 @strlen(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @main.msg2, i64 0, i64 0))
  %227 = add nsw i32 %226, 2
  %228 = call i32 @syscall(i32 %224, i64 %225, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @main.msg2, i64 0, i64 0), i32 %227)
  store i32 0, i32* %3, align 4
  br label %229

229:                                              ; preds = %213, %197, %190
  %230 = load i32, i32* %3, align 4
  ret i32 %230
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @SYSCALL(i32, i32) #2

declare dso_local i32 @JUMP(%struct.bpf_labels*, i32) #2

declare dso_local i32 @LABEL(%struct.bpf_labels*, i32) #2

declare dso_local i32 @ARG(i32) #2

declare dso_local i32 @JNE(i64, i32) #2

declare dso_local i32 @JGE(i32, i32) #2

declare dso_local i32 @JEQ(i64, i32) #2

declare dso_local i32 @JLT(i32, i32) #2

declare dso_local i32 @bpf_resolve_jumps(%struct.bpf_labels*, %struct.sock_filter*, i32) #2

declare dso_local i64 @prctl(i32, i32, %struct.sock_fprog*, ...) #2

declare dso_local i32 @perror(i8*) #2

declare dso_local i32 @syscall(i32, i64, i8*, i32) #2

declare dso_local i32 @strlen(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
