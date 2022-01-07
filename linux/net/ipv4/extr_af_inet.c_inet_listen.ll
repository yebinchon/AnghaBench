; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_af_inet.c_inet_listen.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_af_inet.c_inet_listen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { i64, i64, %struct.sock* }
%struct.sock = type { i8, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_11__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@SS_UNCONNECTED = common dso_local global i64 0, align 8
@SOCK_STREAM = common dso_local global i64 0, align 8
@TCPF_CLOSE = common dso_local global i32 0, align 4
@TCPF_LISTEN = common dso_local global i32 0, align 4
@TCP_LISTEN = common dso_local global i8 0, align 1
@TFO_SERVER_WO_SOCKOPT1 = common dso_local global i32 0, align 4
@TFO_SERVER_ENABLE = common dso_local global i32 0, align 4
@BPF_SOCK_OPS_TCP_LISTEN_CB = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @inet_listen(%struct.socket* %0, i32 %1) #0 {
  %3 = alloca %struct.socket*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.sock*, align 8
  %6 = alloca i8, align 1
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.socket* %0, %struct.socket** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.socket*, %struct.socket** %3, align 8
  %10 = getelementptr inbounds %struct.socket, %struct.socket* %9, i32 0, i32 2
  %11 = load %struct.sock*, %struct.sock** %10, align 8
  store %struct.sock* %11, %struct.sock** %5, align 8
  %12 = load %struct.sock*, %struct.sock** %5, align 8
  %13 = call i32 @lock_sock(%struct.sock* %12)
  %14 = load i32, i32* @EINVAL, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %7, align 4
  %16 = load %struct.socket*, %struct.socket** %3, align 8
  %17 = getelementptr inbounds %struct.socket, %struct.socket* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @SS_UNCONNECTED, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %27, label %21

21:                                               ; preds = %2
  %22 = load %struct.socket*, %struct.socket** %3, align 8
  %23 = getelementptr inbounds %struct.socket, %struct.socket* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @SOCK_STREAM, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %21, %2
  br label %92

28:                                               ; preds = %21
  %29 = load %struct.sock*, %struct.sock** %5, align 8
  %30 = getelementptr inbounds %struct.sock, %struct.sock* %29, i32 0, i32 0
  %31 = load i8, i8* %30, align 4
  store i8 %31, i8* %6, align 1
  %32 = load i8, i8* %6, align 1
  %33 = zext i8 %32 to i32
  %34 = shl i32 1, %33
  %35 = load i32, i32* @TCPF_CLOSE, align 4
  %36 = load i32, i32* @TCPF_LISTEN, align 4
  %37 = or i32 %35, %36
  %38 = and i32 %34, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %28
  br label %92

41:                                               ; preds = %28
  %42 = load i32, i32* %4, align 4
  %43 = load %struct.sock*, %struct.sock** %5, align 8
  %44 = getelementptr inbounds %struct.sock, %struct.sock* %43, i32 0, i32 1
  store i32 %42, i32* %44, align 4
  %45 = load i8, i8* %6, align 1
  %46 = zext i8 %45 to i32
  %47 = load i8, i8* @TCP_LISTEN, align 1
  %48 = zext i8 %47 to i32
  %49 = icmp ne i32 %46, %48
  br i1 %49, label %50, label %91

50:                                               ; preds = %41
  %51 = load %struct.sock*, %struct.sock** %5, align 8
  %52 = call %struct.TYPE_10__* @sock_net(%struct.sock* %51)
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  store i32 %55, i32* %8, align 4
  %56 = load i32, i32* %8, align 4
  %57 = load i32, i32* @TFO_SERVER_WO_SOCKOPT1, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %80

60:                                               ; preds = %50
  %61 = load i32, i32* %8, align 4
  %62 = load i32, i32* @TFO_SERVER_ENABLE, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %80

65:                                               ; preds = %60
  %66 = load %struct.sock*, %struct.sock** %5, align 8
  %67 = call %struct.TYPE_11__* @inet_csk(%struct.sock* %66)
  %68 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %80, label %73

73:                                               ; preds = %65
  %74 = load %struct.sock*, %struct.sock** %5, align 8
  %75 = load i32, i32* %4, align 4
  %76 = call i32 @fastopen_queue_tune(%struct.sock* %74, i32 %75)
  %77 = load %struct.sock*, %struct.sock** %5, align 8
  %78 = call %struct.TYPE_10__* @sock_net(%struct.sock* %77)
  %79 = call i32 @tcp_fastopen_init_key_once(%struct.TYPE_10__* %78)
  br label %80

80:                                               ; preds = %73, %65, %60, %50
  %81 = load %struct.sock*, %struct.sock** %5, align 8
  %82 = load i32, i32* %4, align 4
  %83 = call i32 @inet_csk_listen_start(%struct.sock* %81, i32 %82)
  store i32 %83, i32* %7, align 4
  %84 = load i32, i32* %7, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %80
  br label %92

87:                                               ; preds = %80
  %88 = load %struct.sock*, %struct.sock** %5, align 8
  %89 = load i32, i32* @BPF_SOCK_OPS_TCP_LISTEN_CB, align 4
  %90 = call i32 @tcp_call_bpf(%struct.sock* %88, i32 %89, i32 0, i32* null)
  br label %91

91:                                               ; preds = %87, %41
  store i32 0, i32* %7, align 4
  br label %92

92:                                               ; preds = %91, %86, %40, %27
  %93 = load %struct.sock*, %struct.sock** %5, align 8
  %94 = call i32 @release_sock(%struct.sock* %93)
  %95 = load i32, i32* %7, align 4
  ret i32 %95
}

declare dso_local i32 @lock_sock(%struct.sock*) #1

declare dso_local %struct.TYPE_10__* @sock_net(%struct.sock*) #1

declare dso_local %struct.TYPE_11__* @inet_csk(%struct.sock*) #1

declare dso_local i32 @fastopen_queue_tune(%struct.sock*, i32) #1

declare dso_local i32 @tcp_fastopen_init_key_once(%struct.TYPE_10__*) #1

declare dso_local i32 @inet_csk_listen_start(%struct.sock*, i32) #1

declare dso_local i32 @tcp_call_bpf(%struct.sock*, i32, i32, i32*) #1

declare dso_local i32 @release_sock(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
