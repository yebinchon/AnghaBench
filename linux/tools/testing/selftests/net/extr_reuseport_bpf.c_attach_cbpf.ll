; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/net/extr_reuseport_bpf.c_attach_cbpf.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/net/extr_reuseport_bpf.c_attach_cbpf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock_filter = type { i32, i32, i32, i32 }
%struct.sock_fprog = type { %struct.sock_filter*, i32 }

@BPF_LD = common dso_local global i32 0, align 4
@BPF_W = common dso_local global i32 0, align 4
@BPF_ABS = common dso_local global i32 0, align 4
@BPF_ALU = common dso_local global i32 0, align 4
@BPF_MOD = common dso_local global i32 0, align 4
@BPF_RET = common dso_local global i32 0, align 4
@BPF_A = common dso_local global i32 0, align 4
@SOL_SOCKET = common dso_local global i32 0, align 4
@SO_ATTACH_REUSEPORT_CBPF = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"failed to set SO_ATTACH_REUSEPORT_CBPF\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @attach_cbpf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @attach_cbpf(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca [3 x %struct.sock_filter], align 16
  %6 = alloca %struct.sock_fprog, align 8
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %7 = getelementptr inbounds [3 x %struct.sock_filter], [3 x %struct.sock_filter]* %5, i64 0, i64 0
  %8 = getelementptr inbounds %struct.sock_filter, %struct.sock_filter* %7, i32 0, i32 0
  %9 = load i32, i32* @BPF_LD, align 4
  %10 = load i32, i32* @BPF_W, align 4
  %11 = or i32 %9, %10
  %12 = load i32, i32* @BPF_ABS, align 4
  %13 = or i32 %11, %12
  store i32 %13, i32* %8, align 16
  %14 = getelementptr inbounds %struct.sock_filter, %struct.sock_filter* %7, i32 0, i32 1
  store i32 0, i32* %14, align 4
  %15 = getelementptr inbounds %struct.sock_filter, %struct.sock_filter* %7, i32 0, i32 2
  store i32 0, i32* %15, align 8
  %16 = getelementptr inbounds %struct.sock_filter, %struct.sock_filter* %7, i32 0, i32 3
  store i32 0, i32* %16, align 4
  %17 = getelementptr inbounds %struct.sock_filter, %struct.sock_filter* %7, i64 1
  %18 = getelementptr inbounds %struct.sock_filter, %struct.sock_filter* %17, i32 0, i32 0
  %19 = load i32, i32* @BPF_ALU, align 4
  %20 = load i32, i32* @BPF_MOD, align 4
  %21 = or i32 %19, %20
  store i32 %21, i32* %18, align 16
  %22 = getelementptr inbounds %struct.sock_filter, %struct.sock_filter* %17, i32 0, i32 1
  store i32 0, i32* %22, align 4
  %23 = getelementptr inbounds %struct.sock_filter, %struct.sock_filter* %17, i32 0, i32 2
  store i32 0, i32* %23, align 8
  %24 = getelementptr inbounds %struct.sock_filter, %struct.sock_filter* %17, i32 0, i32 3
  %25 = load i32, i32* %4, align 4
  store i32 %25, i32* %24, align 4
  %26 = getelementptr inbounds %struct.sock_filter, %struct.sock_filter* %17, i64 1
  %27 = getelementptr inbounds %struct.sock_filter, %struct.sock_filter* %26, i32 0, i32 0
  %28 = load i32, i32* @BPF_RET, align 4
  %29 = load i32, i32* @BPF_A, align 4
  %30 = or i32 %28, %29
  store i32 %30, i32* %27, align 16
  %31 = getelementptr inbounds %struct.sock_filter, %struct.sock_filter* %26, i32 0, i32 1
  store i32 0, i32* %31, align 4
  %32 = getelementptr inbounds %struct.sock_filter, %struct.sock_filter* %26, i32 0, i32 2
  store i32 0, i32* %32, align 8
  %33 = getelementptr inbounds %struct.sock_filter, %struct.sock_filter* %26, i32 0, i32 3
  store i32 0, i32* %33, align 4
  %34 = getelementptr inbounds %struct.sock_fprog, %struct.sock_fprog* %6, i32 0, i32 0
  %35 = getelementptr inbounds [3 x %struct.sock_filter], [3 x %struct.sock_filter]* %5, i64 0, i64 0
  store %struct.sock_filter* %35, %struct.sock_filter** %34, align 8
  %36 = getelementptr inbounds %struct.sock_fprog, %struct.sock_fprog* %6, i32 0, i32 1
  %37 = getelementptr inbounds [3 x %struct.sock_filter], [3 x %struct.sock_filter]* %5, i64 0, i64 0
  %38 = call i32 @ARRAY_SIZE(%struct.sock_filter* %37)
  store i32 %38, i32* %36, align 8
  %39 = load i32, i32* %3, align 4
  %40 = load i32, i32* @SOL_SOCKET, align 4
  %41 = load i32, i32* @SO_ATTACH_REUSEPORT_CBPF, align 4
  %42 = call i64 @setsockopt(i32 %39, i32 %40, i32 %41, %struct.sock_fprog* %6, i32 16)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %2
  %45 = load i32, i32* @errno, align 4
  %46 = call i32 @error(i32 1, i32 %45, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  br label %47

47:                                               ; preds = %44, %2
  ret void
}

declare dso_local i32 @ARRAY_SIZE(%struct.sock_filter*) #1

declare dso_local i64 @setsockopt(i32, i32, i32, %struct.sock_fprog*, i32) #1

declare dso_local i32 @error(i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
