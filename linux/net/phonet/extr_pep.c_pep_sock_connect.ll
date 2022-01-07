; ModuleID = '/home/carl/AnghaBench/linux/net/phonet/extr_pep.c_pep_sock_connect.c'
source_filename = "/home/carl/AnghaBench/linux/net/phonet/extr_pep.c_pep_sock_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.sockaddr = type { i32 }
%struct.pep_sock = type { i32, i32 }

@PAD = common dso_local global i32 0, align 4
@PN_PIPE_INVALID_HANDLE = common dso_local global i32 0, align 4
@PNS_PEP_CONNECT_REQ = common dso_local global i32 0, align 4
@TCP_SYN_SENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*, %struct.sockaddr*, i32)* @pep_sock_connect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pep_sock_connect(%struct.sock* %0, %struct.sockaddr* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sock*, align 8
  %6 = alloca %struct.sockaddr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.pep_sock*, align 8
  %9 = alloca i32, align 4
  %10 = alloca [4 x i32], align 16
  store %struct.sock* %0, %struct.sock** %5, align 8
  store %struct.sockaddr* %1, %struct.sockaddr** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.sock*, %struct.sock** %5, align 8
  %12 = call %struct.pep_sock* @pep_sk(%struct.sock* %11)
  store %struct.pep_sock* %12, %struct.pep_sock** %8, align 8
  %13 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 0
  store i32 0, i32* %13, align 4
  %14 = getelementptr inbounds i32, i32* %13, i64 1
  %15 = load i32, i32* @PAD, align 4
  store i32 %15, i32* %14, align 4
  %16 = getelementptr inbounds i32, i32* %14, i64 1
  %17 = load i32, i32* @PAD, align 4
  store i32 %17, i32* %16, align 4
  %18 = getelementptr inbounds i32, i32* %16, i64 1
  %19 = load i32, i32* @PAD, align 4
  store i32 %19, i32* %18, align 4
  %20 = load %struct.pep_sock*, %struct.pep_sock** %8, align 8
  %21 = getelementptr inbounds %struct.pep_sock, %struct.pep_sock* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @PN_PIPE_INVALID_HANDLE, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %3
  %26 = load %struct.pep_sock*, %struct.pep_sock** %8, align 8
  %27 = getelementptr inbounds %struct.pep_sock, %struct.pep_sock* %26, i32 0, i32 0
  store i32 1, i32* %27, align 4
  br label %28

28:                                               ; preds = %25, %3
  %29 = load %struct.sock*, %struct.sock** %5, align 8
  %30 = load i32, i32* @PNS_PEP_CONNECT_REQ, align 4
  %31 = load %struct.pep_sock*, %struct.pep_sock** %8, align 8
  %32 = getelementptr inbounds %struct.pep_sock, %struct.pep_sock* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 0
  %35 = call i32 @pipe_handler_request(%struct.sock* %29, i32 %30, i32 %33, i32* %34, i32 4)
  store i32 %35, i32* %9, align 4
  %36 = load i32, i32* %9, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %28
  %39 = load i32, i32* @PN_PIPE_INVALID_HANDLE, align 4
  %40 = load %struct.pep_sock*, %struct.pep_sock** %8, align 8
  %41 = getelementptr inbounds %struct.pep_sock, %struct.pep_sock* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 4
  %42 = load i32, i32* %9, align 4
  store i32 %42, i32* %4, align 4
  br label %47

43:                                               ; preds = %28
  %44 = load i32, i32* @TCP_SYN_SENT, align 4
  %45 = load %struct.sock*, %struct.sock** %5, align 8
  %46 = getelementptr inbounds %struct.sock, %struct.sock* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 4
  store i32 0, i32* %4, align 4
  br label %47

47:                                               ; preds = %43, %38
  %48 = load i32, i32* %4, align 4
  ret i32 %48
}

declare dso_local %struct.pep_sock* @pep_sk(%struct.sock*) #1

declare dso_local i32 @pipe_handler_request(%struct.sock*, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
