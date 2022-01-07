; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_af_inet.c_inet_accept.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_af_inet.c_inet_accept.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { i32, %struct.sock* }
%struct.sock = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.sock* (%struct.sock*, i32, i32*, i32)* }

@EINVAL = common dso_local global i32 0, align 4
@TCPF_ESTABLISHED = common dso_local global i32 0, align 4
@TCPF_SYN_RECV = common dso_local global i32 0, align 4
@TCPF_CLOSE_WAIT = common dso_local global i32 0, align 4
@TCPF_CLOSE = common dso_local global i32 0, align 4
@SS_CONNECTED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @inet_accept(%struct.socket* %0, %struct.socket* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.socket*, align 8
  %6 = alloca %struct.socket*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.sock*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.sock*, align 8
  store %struct.socket* %0, %struct.socket** %5, align 8
  store %struct.socket* %1, %struct.socket** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = load %struct.socket*, %struct.socket** %5, align 8
  %13 = getelementptr inbounds %struct.socket, %struct.socket* %12, i32 0, i32 1
  %14 = load %struct.sock*, %struct.sock** %13, align 8
  store %struct.sock* %14, %struct.sock** %9, align 8
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %10, align 4
  %17 = load %struct.sock*, %struct.sock** %9, align 8
  %18 = getelementptr inbounds %struct.sock, %struct.sock* %17, i32 0, i32 1
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load %struct.sock* (%struct.sock*, i32, i32*, i32)*, %struct.sock* (%struct.sock*, i32, i32*, i32)** %20, align 8
  %22 = load %struct.sock*, %struct.sock** %9, align 8
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* %8, align 4
  %25 = call %struct.sock* %21(%struct.sock* %22, i32 %23, i32* %10, i32 %24)
  store %struct.sock* %25, %struct.sock** %11, align 8
  %26 = load %struct.sock*, %struct.sock** %11, align 8
  %27 = icmp ne %struct.sock* %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %4
  br label %58

29:                                               ; preds = %4
  %30 = load %struct.sock*, %struct.sock** %11, align 8
  %31 = call i32 @lock_sock(%struct.sock* %30)
  %32 = load %struct.sock*, %struct.sock** %11, align 8
  %33 = call i32 @sock_rps_record_flow(%struct.sock* %32)
  %34 = load %struct.sock*, %struct.sock** %11, align 8
  %35 = getelementptr inbounds %struct.sock, %struct.sock* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = shl i32 1, %36
  %38 = load i32, i32* @TCPF_ESTABLISHED, align 4
  %39 = load i32, i32* @TCPF_SYN_RECV, align 4
  %40 = or i32 %38, %39
  %41 = load i32, i32* @TCPF_CLOSE_WAIT, align 4
  %42 = or i32 %40, %41
  %43 = load i32, i32* @TCPF_CLOSE, align 4
  %44 = or i32 %42, %43
  %45 = and i32 %37, %44
  %46 = icmp ne i32 %45, 0
  %47 = xor i1 %46, true
  %48 = zext i1 %47 to i32
  %49 = call i32 @WARN_ON(i32 %48)
  %50 = load %struct.sock*, %struct.sock** %11, align 8
  %51 = load %struct.socket*, %struct.socket** %6, align 8
  %52 = call i32 @sock_graft(%struct.sock* %50, %struct.socket* %51)
  %53 = load i32, i32* @SS_CONNECTED, align 4
  %54 = load %struct.socket*, %struct.socket** %6, align 8
  %55 = getelementptr inbounds %struct.socket, %struct.socket* %54, i32 0, i32 0
  store i32 %53, i32* %55, align 8
  store i32 0, i32* %10, align 4
  %56 = load %struct.sock*, %struct.sock** %11, align 8
  %57 = call i32 @release_sock(%struct.sock* %56)
  br label %58

58:                                               ; preds = %29, %28
  %59 = load i32, i32* %10, align 4
  ret i32 %59
}

declare dso_local i32 @lock_sock(%struct.sock*) #1

declare dso_local i32 @sock_rps_record_flow(%struct.sock*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @sock_graft(%struct.sock*, %struct.socket*) #1

declare dso_local i32 @release_sock(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
