; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_dctcp.c_dctcp_init.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_dctcp.c_dctcp_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i64 }
%struct.tcp_sock = type { i32, i32 }
%struct.dctcp = type { i64, i64, i32, i32 }
%struct.TYPE_2__ = type { i32* }

@TCP_ECN_OK = common dso_local global i32 0, align 4
@TCP_LISTEN = common dso_local global i64 0, align 8
@TCP_CLOSE = common dso_local global i64 0, align 8
@dctcp_alpha_on_init = common dso_local global i32 0, align 4
@DCTCP_MAX_ALPHA = common dso_local global i32 0, align 4
@dctcp_reno = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sock*)* @dctcp_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dctcp_init(%struct.sock* %0) #0 {
  %2 = alloca %struct.sock*, align 8
  %3 = alloca %struct.tcp_sock*, align 8
  %4 = alloca %struct.dctcp*, align 8
  store %struct.sock* %0, %struct.sock** %2, align 8
  %5 = load %struct.sock*, %struct.sock** %2, align 8
  %6 = call %struct.tcp_sock* @tcp_sk(%struct.sock* %5)
  store %struct.tcp_sock* %6, %struct.tcp_sock** %3, align 8
  %7 = load %struct.tcp_sock*, %struct.tcp_sock** %3, align 8
  %8 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @TCP_ECN_OK, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %25, label %13

13:                                               ; preds = %1
  %14 = load %struct.sock*, %struct.sock** %2, align 8
  %15 = getelementptr inbounds %struct.sock, %struct.sock* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @TCP_LISTEN, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %25, label %19

19:                                               ; preds = %13
  %20 = load %struct.sock*, %struct.sock** %2, align 8
  %21 = getelementptr inbounds %struct.sock, %struct.sock* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @TCP_CLOSE, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %45

25:                                               ; preds = %19, %13, %1
  %26 = load %struct.sock*, %struct.sock** %2, align 8
  %27 = call %struct.dctcp* @inet_csk_ca(%struct.sock* %26)
  store %struct.dctcp* %27, %struct.dctcp** %4, align 8
  %28 = load %struct.tcp_sock*, %struct.tcp_sock** %3, align 8
  %29 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.dctcp*, %struct.dctcp** %4, align 8
  %32 = getelementptr inbounds %struct.dctcp, %struct.dctcp* %31, i32 0, i32 3
  store i32 %30, i32* %32, align 4
  %33 = load i32, i32* @dctcp_alpha_on_init, align 4
  %34 = load i32, i32* @DCTCP_MAX_ALPHA, align 4
  %35 = call i32 @min(i32 %33, i32 %34)
  %36 = load %struct.dctcp*, %struct.dctcp** %4, align 8
  %37 = getelementptr inbounds %struct.dctcp, %struct.dctcp* %36, i32 0, i32 2
  store i32 %35, i32* %37, align 8
  %38 = load %struct.dctcp*, %struct.dctcp** %4, align 8
  %39 = getelementptr inbounds %struct.dctcp, %struct.dctcp* %38, i32 0, i32 1
  store i64 0, i64* %39, align 8
  %40 = load %struct.dctcp*, %struct.dctcp** %4, align 8
  %41 = getelementptr inbounds %struct.dctcp, %struct.dctcp* %40, i32 0, i32 0
  store i64 0, i64* %41, align 8
  %42 = load %struct.tcp_sock*, %struct.tcp_sock** %3, align 8
  %43 = load %struct.dctcp*, %struct.dctcp** %4, align 8
  %44 = call i32 @dctcp_reset(%struct.tcp_sock* %42, %struct.dctcp* %43)
  br label %51

45:                                               ; preds = %19
  %46 = load %struct.sock*, %struct.sock** %2, align 8
  %47 = call %struct.TYPE_2__* @inet_csk(%struct.sock* %46)
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  store i32* @dctcp_reno, i32** %48, align 8
  %49 = load %struct.sock*, %struct.sock** %2, align 8
  %50 = call i32 @INET_ECN_dontxmit(%struct.sock* %49)
  br label %51

51:                                               ; preds = %45, %25
  ret void
}

declare dso_local %struct.tcp_sock* @tcp_sk(%struct.sock*) #1

declare dso_local %struct.dctcp* @inet_csk_ca(%struct.sock*) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @dctcp_reset(%struct.tcp_sock*, %struct.dctcp*) #1

declare dso_local %struct.TYPE_2__* @inet_csk(%struct.sock*) #1

declare dso_local i32 @INET_ECN_dontxmit(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
