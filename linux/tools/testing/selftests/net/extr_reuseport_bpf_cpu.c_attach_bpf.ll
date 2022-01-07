; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/net/extr_reuseport_bpf_cpu.c_attach_bpf.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/net/extr_reuseport_bpf_cpu.c_attach_bpf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock_filter = type { i32, i64, i32, i32 }
%struct.sock_fprog = type { i32, %struct.sock_filter* }

@BPF_LD = common dso_local global i32 0, align 4
@BPF_W = common dso_local global i32 0, align 4
@BPF_ABS = common dso_local global i32 0, align 4
@SKF_AD_OFF = common dso_local global i64 0, align 8
@SKF_AD_CPU = common dso_local global i64 0, align 8
@BPF_RET = common dso_local global i32 0, align 4
@BPF_A = common dso_local global i32 0, align 4
@SOL_SOCKET = common dso_local global i32 0, align 4
@SO_ATTACH_REUSEPORT_CBPF = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"failed to set SO_ATTACH_REUSEPORT_CBPF\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @attach_bpf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @attach_bpf(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca [2 x %struct.sock_filter], align 16
  %4 = alloca %struct.sock_fprog, align 8
  store i32 %0, i32* %2, align 4
  %5 = getelementptr inbounds [2 x %struct.sock_filter], [2 x %struct.sock_filter]* %3, i64 0, i64 0
  %6 = getelementptr inbounds %struct.sock_filter, %struct.sock_filter* %5, i32 0, i32 0
  %7 = load i32, i32* @BPF_LD, align 4
  %8 = load i32, i32* @BPF_W, align 4
  %9 = or i32 %7, %8
  %10 = load i32, i32* @BPF_ABS, align 4
  %11 = or i32 %9, %10
  store i32 %11, i32* %6, align 8
  %12 = getelementptr inbounds %struct.sock_filter, %struct.sock_filter* %5, i32 0, i32 1
  store i64 0, i64* %12, align 8
  %13 = getelementptr inbounds %struct.sock_filter, %struct.sock_filter* %5, i32 0, i32 2
  store i32 0, i32* %13, align 8
  %14 = getelementptr inbounds %struct.sock_filter, %struct.sock_filter* %5, i32 0, i32 3
  %15 = load i64, i64* @SKF_AD_OFF, align 8
  %16 = load i64, i64* @SKF_AD_CPU, align 8
  %17 = add nsw i64 %15, %16
  %18 = trunc i64 %17 to i32
  store i32 %18, i32* %14, align 4
  %19 = getelementptr inbounds %struct.sock_filter, %struct.sock_filter* %5, i64 1
  %20 = getelementptr inbounds %struct.sock_filter, %struct.sock_filter* %19, i32 0, i32 0
  %21 = load i32, i32* @BPF_RET, align 4
  %22 = load i32, i32* @BPF_A, align 4
  %23 = or i32 %21, %22
  store i32 %23, i32* %20, align 8
  %24 = getelementptr inbounds %struct.sock_filter, %struct.sock_filter* %19, i32 0, i32 1
  store i64 0, i64* %24, align 8
  %25 = getelementptr inbounds %struct.sock_filter, %struct.sock_filter* %19, i32 0, i32 2
  store i32 0, i32* %25, align 8
  %26 = getelementptr inbounds %struct.sock_filter, %struct.sock_filter* %19, i32 0, i32 3
  store i32 0, i32* %26, align 4
  %27 = getelementptr inbounds %struct.sock_fprog, %struct.sock_fprog* %4, i32 0, i32 0
  store i32 2, i32* %27, align 8
  %28 = getelementptr inbounds %struct.sock_fprog, %struct.sock_fprog* %4, i32 0, i32 1
  %29 = getelementptr inbounds [2 x %struct.sock_filter], [2 x %struct.sock_filter]* %3, i64 0, i64 0
  store %struct.sock_filter* %29, %struct.sock_filter** %28, align 8
  %30 = load i32, i32* %2, align 4
  %31 = load i32, i32* @SOL_SOCKET, align 4
  %32 = load i32, i32* @SO_ATTACH_REUSEPORT_CBPF, align 4
  %33 = call i64 @setsockopt(i32 %30, i32 %31, i32 %32, %struct.sock_fprog* %4, i32 16)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %1
  %36 = load i32, i32* @errno, align 4
  %37 = call i32 @error(i32 1, i32 %36, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  br label %38

38:                                               ; preds = %35, %1
  ret void
}

declare dso_local i64 @setsockopt(i32, i32, i32, %struct.sock_fprog*, i32) #1

declare dso_local i32 @error(i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
