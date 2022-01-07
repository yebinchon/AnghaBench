; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/net/extr_psock_fanout.c_sock_fanout_set_cbpf.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/net/extr_psock_fanout.c_sock_fanout_set_cbpf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock_filter = type { i32 }
%struct.sock_fprog = type { i32, %struct.sock_filter* }

@BPF_LD = common dso_local global i64 0, align 8
@BPF_B = common dso_local global i64 0, align 8
@BPF_ABS = common dso_local global i64 0, align 8
@BPF_RET = common dso_local global i64 0, align 8
@BPF_A = common dso_local global i64 0, align 8
@SOL_PACKET = common dso_local global i32 0, align 4
@PACKET_FANOUT_DATA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"fanout data cbpf\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @sock_fanout_set_cbpf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sock_fanout_set_cbpf(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca [2 x %struct.sock_filter], align 4
  %4 = alloca %struct.sock_fprog, align 8
  store i32 %0, i32* %2, align 4
  %5 = getelementptr inbounds [2 x %struct.sock_filter], [2 x %struct.sock_filter]* %3, i64 0, i64 0
  %6 = load i64, i64* @BPF_LD, align 8
  %7 = load i64, i64* @BPF_B, align 8
  %8 = add nsw i64 %6, %7
  %9 = load i64, i64* @BPF_ABS, align 8
  %10 = add nsw i64 %8, %9
  %11 = call i32 @BPF_STMT(i64 %10, i32 80)
  %12 = getelementptr inbounds %struct.sock_filter, %struct.sock_filter* %5, i32 0, i32 0
  store i32 %11, i32* %12, align 4
  %13 = getelementptr inbounds %struct.sock_filter, %struct.sock_filter* %5, i64 1
  %14 = load i64, i64* @BPF_RET, align 8
  %15 = load i64, i64* @BPF_A, align 8
  %16 = add nsw i64 %14, %15
  %17 = call i32 @BPF_STMT(i64 %16, i32 0)
  %18 = getelementptr inbounds %struct.sock_filter, %struct.sock_filter* %13, i32 0, i32 0
  store i32 %17, i32* %18, align 4
  %19 = getelementptr inbounds [2 x %struct.sock_filter], [2 x %struct.sock_filter]* %3, i64 0, i64 0
  %20 = getelementptr inbounds %struct.sock_fprog, %struct.sock_fprog* %4, i32 0, i32 1
  store %struct.sock_filter* %19, %struct.sock_filter** %20, align 8
  %21 = getelementptr inbounds %struct.sock_fprog, %struct.sock_fprog* %4, i32 0, i32 0
  store i32 2, i32* %21, align 8
  %22 = load i32, i32* %2, align 4
  %23 = load i32, i32* @SOL_PACKET, align 4
  %24 = load i32, i32* @PACKET_FANOUT_DATA, align 4
  %25 = call i64 @setsockopt(i32 %22, i32 %23, i32 %24, %struct.sock_fprog* %4, i32 16)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %1
  %28 = call i32 @perror(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %29 = call i32 @exit(i32 1) #3
  unreachable

30:                                               ; preds = %1
  ret void
}

declare dso_local i32 @BPF_STMT(i64, i32) #1

declare dso_local i64 @setsockopt(i32, i32, i32, %struct.sock_fprog*, i32) #1

declare dso_local i32 @perror(i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
