; ModuleID = '/home/carl/AnghaBench/linux/samples/bpf/extr_tracex5_user.c_install_accept_all_seccomp.c'
source_filename = "/home/carl/AnghaBench/linux/samples/bpf/extr_tracex5_user.c_install_accept_all_seccomp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock_filter = type { i32 }
%struct.sock_fprog = type { i16, %struct.sock_filter* }

@BPF_RET = common dso_local global i64 0, align 8
@BPF_K = common dso_local global i64 0, align 8
@SECCOMP_RET_ALLOW = common dso_local global i32 0, align 4
@PR_SET_SECCOMP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"prctl\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @install_accept_all_seccomp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @install_accept_all_seccomp() #0 {
  %1 = alloca [1 x %struct.sock_filter], align 4
  %2 = alloca %struct.sock_fprog, align 8
  %3 = getelementptr inbounds [1 x %struct.sock_filter], [1 x %struct.sock_filter]* %1, i64 0, i64 0
  %4 = load i64, i64* @BPF_RET, align 8
  %5 = load i64, i64* @BPF_K, align 8
  %6 = add nsw i64 %4, %5
  %7 = load i32, i32* @SECCOMP_RET_ALLOW, align 4
  %8 = call i32 @BPF_STMT(i64 %6, i32 %7)
  %9 = getelementptr inbounds %struct.sock_filter, %struct.sock_filter* %3, i32 0, i32 0
  store i32 %8, i32* %9, align 4
  %10 = getelementptr inbounds %struct.sock_fprog, %struct.sock_fprog* %2, i32 0, i32 0
  store i16 1, i16* %10, align 8
  %11 = getelementptr inbounds %struct.sock_fprog, %struct.sock_fprog* %2, i32 0, i32 1
  %12 = getelementptr inbounds [1 x %struct.sock_filter], [1 x %struct.sock_filter]* %1, i64 0, i64 0
  store %struct.sock_filter* %12, %struct.sock_filter** %11, align 8
  %13 = load i32, i32* @PR_SET_SECCOMP, align 4
  %14 = call i64 @prctl(i32 %13, i32 2, %struct.sock_fprog* %2)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %0
  %17 = call i32 @perror(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  br label %18

18:                                               ; preds = %16, %0
  ret void
}

declare dso_local i32 @BPF_STMT(i64, i32) #1

declare dso_local i64 @prctl(i32, i32, %struct.sock_fprog*) #1

declare dso_local i32 @perror(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
