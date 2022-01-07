; ModuleID = '/home/carl/AnghaBench/linux/samples/seccomp/extr_bpf-direct.c_install_filter.c'
source_filename = "/home/carl/AnghaBench/linux/samples/seccomp/extr_bpf-direct.c_install_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock_filter = type { i32 }
%struct.sock_fprog = type { i16, %struct.sock_filter* }

@BPF_LD = common dso_local global i64 0, align 8
@BPF_W = common dso_local global i64 0, align 8
@BPF_ABS = common dso_local global i64 0, align 8
@syscall_nr = common dso_local global i32 0, align 4
@BPF_JMP = common dso_local global i64 0, align 8
@BPF_JEQ = common dso_local global i64 0, align 8
@BPF_K = common dso_local global i64 0, align 8
@__NR_rt_sigreturn = common dso_local global i32 0, align 4
@BPF_RET = common dso_local global i64 0, align 8
@SECCOMP_RET_ALLOW = common dso_local global i32 0, align 4
@__NR_exit_group = common dso_local global i32 0, align 4
@__NR_exit = common dso_local global i32 0, align 4
@__NR_read = common dso_local global i32 0, align 4
@__NR_write = common dso_local global i32 0, align 4
@STDIN_FILENO = common dso_local global i32 0, align 4
@SECCOMP_RET_KILL = common dso_local global i32 0, align 4
@STDOUT_FILENO = common dso_local global i32 0, align 4
@STDERR_FILENO = common dso_local global i32 0, align 4
@SECCOMP_RET_TRAP = common dso_local global i32 0, align 4
@PR_SET_NO_NEW_PRIVS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"prctl(NO_NEW_PRIVS)\00", align 1
@PR_SET_SECCOMP = common dso_local global i32 0, align 4
@SECCOMP_MODE_FILTER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"prctl\00", align 1
@__NR_sigreturn = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @install_filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @install_filter() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [18 x %struct.sock_filter], align 16
  %3 = alloca %struct.sock_fprog, align 8
  %4 = getelementptr inbounds [18 x %struct.sock_filter], [18 x %struct.sock_filter]* %2, i64 0, i64 0
  %5 = load i64, i64* @BPF_LD, align 8
  %6 = load i64, i64* @BPF_W, align 8
  %7 = add nsw i64 %5, %6
  %8 = load i64, i64* @BPF_ABS, align 8
  %9 = add nsw i64 %7, %8
  %10 = load i32, i32* @syscall_nr, align 4
  %11 = call i32 @BPF_STMT(i64 %9, i32 %10)
  %12 = getelementptr inbounds %struct.sock_filter, %struct.sock_filter* %4, i32 0, i32 0
  store i32 %11, i32* %12, align 4
  %13 = getelementptr inbounds %struct.sock_filter, %struct.sock_filter* %4, i64 1
  %14 = load i64, i64* @BPF_JMP, align 8
  %15 = load i64, i64* @BPF_JEQ, align 8
  %16 = add nsw i64 %14, %15
  %17 = load i64, i64* @BPF_K, align 8
  %18 = add nsw i64 %16, %17
  %19 = load i32, i32* @__NR_rt_sigreturn, align 4
  %20 = call i32 @BPF_JUMP(i64 %18, i32 %19, i32 0, i32 1)
  %21 = getelementptr inbounds %struct.sock_filter, %struct.sock_filter* %13, i32 0, i32 0
  store i32 %20, i32* %21, align 4
  %22 = getelementptr inbounds %struct.sock_filter, %struct.sock_filter* %13, i64 1
  %23 = load i64, i64* @BPF_RET, align 8
  %24 = load i64, i64* @BPF_K, align 8
  %25 = add nsw i64 %23, %24
  %26 = load i32, i32* @SECCOMP_RET_ALLOW, align 4
  %27 = call i32 @BPF_STMT(i64 %25, i32 %26)
  %28 = getelementptr inbounds %struct.sock_filter, %struct.sock_filter* %22, i32 0, i32 0
  store i32 %27, i32* %28, align 4
  %29 = getelementptr inbounds %struct.sock_filter, %struct.sock_filter* %22, i64 1
  %30 = load i64, i64* @BPF_JMP, align 8
  %31 = load i64, i64* @BPF_JEQ, align 8
  %32 = add nsw i64 %30, %31
  %33 = load i64, i64* @BPF_K, align 8
  %34 = add nsw i64 %32, %33
  %35 = load i32, i32* @__NR_exit_group, align 4
  %36 = call i32 @BPF_JUMP(i64 %34, i32 %35, i32 0, i32 1)
  %37 = getelementptr inbounds %struct.sock_filter, %struct.sock_filter* %29, i32 0, i32 0
  store i32 %36, i32* %37, align 4
  %38 = getelementptr inbounds %struct.sock_filter, %struct.sock_filter* %29, i64 1
  %39 = load i64, i64* @BPF_RET, align 8
  %40 = load i64, i64* @BPF_K, align 8
  %41 = add nsw i64 %39, %40
  %42 = load i32, i32* @SECCOMP_RET_ALLOW, align 4
  %43 = call i32 @BPF_STMT(i64 %41, i32 %42)
  %44 = getelementptr inbounds %struct.sock_filter, %struct.sock_filter* %38, i32 0, i32 0
  store i32 %43, i32* %44, align 4
  %45 = getelementptr inbounds %struct.sock_filter, %struct.sock_filter* %38, i64 1
  %46 = load i64, i64* @BPF_JMP, align 8
  %47 = load i64, i64* @BPF_JEQ, align 8
  %48 = add nsw i64 %46, %47
  %49 = load i64, i64* @BPF_K, align 8
  %50 = add nsw i64 %48, %49
  %51 = load i32, i32* @__NR_exit, align 4
  %52 = call i32 @BPF_JUMP(i64 %50, i32 %51, i32 0, i32 1)
  %53 = getelementptr inbounds %struct.sock_filter, %struct.sock_filter* %45, i32 0, i32 0
  store i32 %52, i32* %53, align 4
  %54 = getelementptr inbounds %struct.sock_filter, %struct.sock_filter* %45, i64 1
  %55 = load i64, i64* @BPF_RET, align 8
  %56 = load i64, i64* @BPF_K, align 8
  %57 = add nsw i64 %55, %56
  %58 = load i32, i32* @SECCOMP_RET_ALLOW, align 4
  %59 = call i32 @BPF_STMT(i64 %57, i32 %58)
  %60 = getelementptr inbounds %struct.sock_filter, %struct.sock_filter* %54, i32 0, i32 0
  store i32 %59, i32* %60, align 4
  %61 = getelementptr inbounds %struct.sock_filter, %struct.sock_filter* %54, i64 1
  %62 = load i64, i64* @BPF_JMP, align 8
  %63 = load i64, i64* @BPF_JEQ, align 8
  %64 = add nsw i64 %62, %63
  %65 = load i64, i64* @BPF_K, align 8
  %66 = add nsw i64 %64, %65
  %67 = load i32, i32* @__NR_read, align 4
  %68 = call i32 @BPF_JUMP(i64 %66, i32 %67, i32 1, i32 0)
  %69 = getelementptr inbounds %struct.sock_filter, %struct.sock_filter* %61, i32 0, i32 0
  store i32 %68, i32* %69, align 4
  %70 = getelementptr inbounds %struct.sock_filter, %struct.sock_filter* %61, i64 1
  %71 = load i64, i64* @BPF_JMP, align 8
  %72 = load i64, i64* @BPF_JEQ, align 8
  %73 = add nsw i64 %71, %72
  %74 = load i64, i64* @BPF_K, align 8
  %75 = add nsw i64 %73, %74
  %76 = load i32, i32* @__NR_write, align 4
  %77 = call i32 @BPF_JUMP(i64 %75, i32 %76, i32 3, i32 2)
  %78 = getelementptr inbounds %struct.sock_filter, %struct.sock_filter* %70, i32 0, i32 0
  store i32 %77, i32* %78, align 4
  %79 = getelementptr inbounds %struct.sock_filter, %struct.sock_filter* %70, i64 1
  %80 = load i64, i64* @BPF_LD, align 8
  %81 = load i64, i64* @BPF_W, align 8
  %82 = add nsw i64 %80, %81
  %83 = load i64, i64* @BPF_ABS, align 8
  %84 = add nsw i64 %82, %83
  %85 = call i32 @syscall_arg(i32 0)
  %86 = call i32 @BPF_STMT(i64 %84, i32 %85)
  %87 = getelementptr inbounds %struct.sock_filter, %struct.sock_filter* %79, i32 0, i32 0
  store i32 %86, i32* %87, align 4
  %88 = getelementptr inbounds %struct.sock_filter, %struct.sock_filter* %79, i64 1
  %89 = load i64, i64* @BPF_JMP, align 8
  %90 = load i64, i64* @BPF_JEQ, align 8
  %91 = add nsw i64 %89, %90
  %92 = load i64, i64* @BPF_K, align 8
  %93 = add nsw i64 %91, %92
  %94 = load i32, i32* @STDIN_FILENO, align 4
  %95 = call i32 @BPF_JUMP(i64 %93, i32 %94, i32 4, i32 0)
  %96 = getelementptr inbounds %struct.sock_filter, %struct.sock_filter* %88, i32 0, i32 0
  store i32 %95, i32* %96, align 4
  %97 = getelementptr inbounds %struct.sock_filter, %struct.sock_filter* %88, i64 1
  %98 = load i64, i64* @BPF_RET, align 8
  %99 = load i64, i64* @BPF_K, align 8
  %100 = add nsw i64 %98, %99
  %101 = load i32, i32* @SECCOMP_RET_KILL, align 4
  %102 = call i32 @BPF_STMT(i64 %100, i32 %101)
  %103 = getelementptr inbounds %struct.sock_filter, %struct.sock_filter* %97, i32 0, i32 0
  store i32 %102, i32* %103, align 4
  %104 = getelementptr inbounds %struct.sock_filter, %struct.sock_filter* %97, i64 1
  %105 = load i64, i64* @BPF_LD, align 8
  %106 = load i64, i64* @BPF_W, align 8
  %107 = add nsw i64 %105, %106
  %108 = load i64, i64* @BPF_ABS, align 8
  %109 = add nsw i64 %107, %108
  %110 = call i32 @syscall_arg(i32 0)
  %111 = call i32 @BPF_STMT(i64 %109, i32 %110)
  %112 = getelementptr inbounds %struct.sock_filter, %struct.sock_filter* %104, i32 0, i32 0
  store i32 %111, i32* %112, align 4
  %113 = getelementptr inbounds %struct.sock_filter, %struct.sock_filter* %104, i64 1
  %114 = load i64, i64* @BPF_JMP, align 8
  %115 = load i64, i64* @BPF_JEQ, align 8
  %116 = add nsw i64 %114, %115
  %117 = load i64, i64* @BPF_K, align 8
  %118 = add nsw i64 %116, %117
  %119 = load i32, i32* @STDOUT_FILENO, align 4
  %120 = call i32 @BPF_JUMP(i64 %118, i32 %119, i32 1, i32 0)
  %121 = getelementptr inbounds %struct.sock_filter, %struct.sock_filter* %113, i32 0, i32 0
  store i32 %120, i32* %121, align 4
  %122 = getelementptr inbounds %struct.sock_filter, %struct.sock_filter* %113, i64 1
  %123 = load i64, i64* @BPF_JMP, align 8
  %124 = load i64, i64* @BPF_JEQ, align 8
  %125 = add nsw i64 %123, %124
  %126 = load i64, i64* @BPF_K, align 8
  %127 = add nsw i64 %125, %126
  %128 = load i32, i32* @STDERR_FILENO, align 4
  %129 = call i32 @BPF_JUMP(i64 %127, i32 %128, i32 1, i32 2)
  %130 = getelementptr inbounds %struct.sock_filter, %struct.sock_filter* %122, i32 0, i32 0
  store i32 %129, i32* %130, align 4
  %131 = getelementptr inbounds %struct.sock_filter, %struct.sock_filter* %122, i64 1
  %132 = load i64, i64* @BPF_RET, align 8
  %133 = load i64, i64* @BPF_K, align 8
  %134 = add nsw i64 %132, %133
  %135 = load i32, i32* @SECCOMP_RET_ALLOW, align 4
  %136 = call i32 @BPF_STMT(i64 %134, i32 %135)
  %137 = getelementptr inbounds %struct.sock_filter, %struct.sock_filter* %131, i32 0, i32 0
  store i32 %136, i32* %137, align 4
  %138 = getelementptr inbounds %struct.sock_filter, %struct.sock_filter* %131, i64 1
  %139 = load i64, i64* @BPF_RET, align 8
  %140 = load i64, i64* @BPF_K, align 8
  %141 = add nsw i64 %139, %140
  %142 = load i32, i32* @SECCOMP_RET_TRAP, align 4
  %143 = call i32 @BPF_STMT(i64 %141, i32 %142)
  %144 = getelementptr inbounds %struct.sock_filter, %struct.sock_filter* %138, i32 0, i32 0
  store i32 %143, i32* %144, align 4
  %145 = getelementptr inbounds %struct.sock_filter, %struct.sock_filter* %138, i64 1
  %146 = load i64, i64* @BPF_RET, align 8
  %147 = load i64, i64* @BPF_K, align 8
  %148 = add nsw i64 %146, %147
  %149 = load i32, i32* @SECCOMP_RET_KILL, align 4
  %150 = call i32 @BPF_STMT(i64 %148, i32 %149)
  %151 = getelementptr inbounds %struct.sock_filter, %struct.sock_filter* %145, i32 0, i32 0
  store i32 %150, i32* %151, align 4
  %152 = getelementptr inbounds %struct.sock_fprog, %struct.sock_fprog* %3, i32 0, i32 0
  store i16 18, i16* %152, align 8
  %153 = getelementptr inbounds %struct.sock_fprog, %struct.sock_fprog* %3, i32 0, i32 1
  %154 = getelementptr inbounds [18 x %struct.sock_filter], [18 x %struct.sock_filter]* %2, i64 0, i64 0
  store %struct.sock_filter* %154, %struct.sock_filter** %153, align 8
  %155 = load i32, i32* @PR_SET_NO_NEW_PRIVS, align 4
  %156 = call i64 (i32, i32, %struct.sock_fprog*, ...) @prctl(i32 %155, i32 1, %struct.sock_fprog* null, i32 0, i32 0)
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %158, label %160

158:                                              ; preds = %0
  %159 = call i32 @perror(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %1, align 4
  br label %168

160:                                              ; preds = %0
  %161 = load i32, i32* @PR_SET_SECCOMP, align 4
  %162 = load i32, i32* @SECCOMP_MODE_FILTER, align 4
  %163 = call i64 (i32, i32, %struct.sock_fprog*, ...) @prctl(i32 %161, i32 %162, %struct.sock_fprog* %3)
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %165, label %167

165:                                              ; preds = %160
  %166 = call i32 @perror(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* %1, align 4
  br label %168

167:                                              ; preds = %160
  store i32 0, i32* %1, align 4
  br label %168

168:                                              ; preds = %167, %165, %158
  %169 = load i32, i32* %1, align 4
  ret i32 %169
}

declare dso_local i32 @BPF_STMT(i64, i32) #1

declare dso_local i32 @BPF_JUMP(i64, i32, i32, i32) #1

declare dso_local i32 @syscall_arg(i32) #1

declare dso_local i64 @prctl(i32, i32, %struct.sock_fprog*, ...) #1

declare dso_local i32 @perror(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
