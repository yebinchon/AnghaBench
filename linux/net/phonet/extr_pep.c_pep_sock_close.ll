; ModuleID = '/home/carl/AnghaBench/linux/net/phonet/extr_pep.c_pep_sock_close.c'
source_filename = "/home/carl/AnghaBench/linux/net/phonet/extr_pep.c_pep_sock_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32, i64 }
%struct.pep_sock = type { i32 }

@TCPF_SYN_RECV = common dso_local global i32 0, align 4
@TCPF_ESTABLISHED = common dso_local global i32 0, align 4
@pipe_do_rcv = common dso_local global i64 0, align 8
@PNS_PEP_DISCONNECT_REQ = common dso_local global i32 0, align 4
@PAD = common dso_local global i32 0, align 4
@TCP_CLOSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sock*, i64)* @pep_sock_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pep_sock_close(%struct.sock* %0, i64 %1) #0 {
  %3 = alloca %struct.sock*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.pep_sock*, align 8
  %6 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = load %struct.sock*, %struct.sock** %3, align 8
  %8 = call %struct.pep_sock* @pep_sk(%struct.sock* %7)
  store %struct.pep_sock* %8, %struct.pep_sock** %5, align 8
  store i32 0, i32* %6, align 4
  %9 = load %struct.sock*, %struct.sock** %3, align 8
  %10 = call i32 @sock_hold(%struct.sock* %9)
  %11 = load %struct.sock*, %struct.sock** %3, align 8
  %12 = call i32 @sk_common_release(%struct.sock* %11)
  %13 = load %struct.sock*, %struct.sock** %3, align 8
  %14 = call i32 @lock_sock(%struct.sock* %13)
  %15 = load %struct.sock*, %struct.sock** %3, align 8
  %16 = getelementptr inbounds %struct.sock, %struct.sock* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = shl i32 1, %17
  %19 = load i32, i32* @TCPF_SYN_RECV, align 4
  %20 = load i32, i32* @TCPF_ESTABLISHED, align 4
  %21 = or i32 %19, %20
  %22 = and i32 %18, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %39

24:                                               ; preds = %2
  %25 = load %struct.sock*, %struct.sock** %3, align 8
  %26 = getelementptr inbounds %struct.sock, %struct.sock* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @pipe_do_rcv, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %24
  %31 = load %struct.sock*, %struct.sock** %3, align 8
  %32 = call i32 @pipe_do_remove(%struct.sock* %31)
  br label %38

33:                                               ; preds = %24
  %34 = load %struct.sock*, %struct.sock** %3, align 8
  %35 = load i32, i32* @PNS_PEP_DISCONNECT_REQ, align 4
  %36 = load i32, i32* @PAD, align 4
  %37 = call i32 @pipe_handler_request(%struct.sock* %34, i32 %35, i32 %36, i32* null, i32 0)
  br label %38

38:                                               ; preds = %33, %30
  br label %39

39:                                               ; preds = %38, %2
  %40 = load i32, i32* @TCP_CLOSE, align 4
  %41 = load %struct.sock*, %struct.sock** %3, align 8
  %42 = getelementptr inbounds %struct.sock, %struct.sock* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 8
  %43 = load %struct.pep_sock*, %struct.pep_sock** %5, align 8
  %44 = getelementptr inbounds %struct.pep_sock, %struct.pep_sock* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  store i32 %45, i32* %6, align 4
  %46 = load %struct.pep_sock*, %struct.pep_sock** %5, align 8
  %47 = getelementptr inbounds %struct.pep_sock, %struct.pep_sock* %46, i32 0, i32 0
  store i32 0, i32* %47, align 4
  %48 = load %struct.sock*, %struct.sock** %3, align 8
  %49 = call i32 @release_sock(%struct.sock* %48)
  %50 = load i32, i32* %6, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %39
  %53 = load %struct.sock*, %struct.sock** %3, align 8
  %54 = call i32 @gprs_detach(%struct.sock* %53)
  br label %55

55:                                               ; preds = %52, %39
  %56 = load %struct.sock*, %struct.sock** %3, align 8
  %57 = call i32 @sock_put(%struct.sock* %56)
  ret void
}

declare dso_local %struct.pep_sock* @pep_sk(%struct.sock*) #1

declare dso_local i32 @sock_hold(%struct.sock*) #1

declare dso_local i32 @sk_common_release(%struct.sock*) #1

declare dso_local i32 @lock_sock(%struct.sock*) #1

declare dso_local i32 @pipe_do_remove(%struct.sock*) #1

declare dso_local i32 @pipe_handler_request(%struct.sock*, i32, i32, i32*, i32) #1

declare dso_local i32 @release_sock(%struct.sock*) #1

declare dso_local i32 @gprs_detach(%struct.sock*) #1

declare dso_local i32 @sock_put(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
