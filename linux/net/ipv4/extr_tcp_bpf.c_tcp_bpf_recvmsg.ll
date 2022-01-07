; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_bpf.c_tcp_bpf_recvmsg.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_bpf.c_tcp_bpf_recvmsg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.msghdr = type { i32 }
%struct.sk_psock = type { i32 }

@MSG_ERRQUEUE = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tcp_bpf_recvmsg(%struct.sock* %0, %struct.msghdr* %1, i64 %2, i32 %3, i32 %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.sock*, align 8
  %9 = alloca %struct.msghdr*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca %struct.sk_psock*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  store %struct.sock* %0, %struct.sock** %8, align 8
  store %struct.msghdr* %1, %struct.msghdr** %9, align 8
  store i64 %2, i64* %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32* %5, i32** %13, align 8
  %20 = load i32, i32* %12, align 4
  %21 = load i32, i32* @MSG_ERRQUEUE, align 4
  %22 = and i32 %20, %21
  %23 = call i64 @unlikely(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %6
  %26 = load %struct.sock*, %struct.sock** %8, align 8
  %27 = load %struct.msghdr*, %struct.msghdr** %9, align 8
  %28 = load i64, i64* %10, align 8
  %29 = load i32*, i32** %13, align 8
  %30 = call i32 @inet_recv_error(%struct.sock* %26, %struct.msghdr* %27, i64 %28, i32* %29)
  store i32 %30, i32* %7, align 4
  br label %120

31:                                               ; preds = %6
  %32 = load %struct.sock*, %struct.sock** %8, align 8
  %33 = getelementptr inbounds %struct.sock, %struct.sock* %32, i32 0, i32 0
  %34 = call i64 @skb_queue_empty(i32* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %44, label %36

36:                                               ; preds = %31
  %37 = load %struct.sock*, %struct.sock** %8, align 8
  %38 = load %struct.msghdr*, %struct.msghdr** %9, align 8
  %39 = load i64, i64* %10, align 8
  %40 = load i32, i32* %11, align 4
  %41 = load i32, i32* %12, align 4
  %42 = load i32*, i32** %13, align 8
  %43 = call i32 @tcp_recvmsg(%struct.sock* %37, %struct.msghdr* %38, i64 %39, i32 %40, i32 %41, i32* %42)
  store i32 %43, i32* %7, align 4
  br label %120

44:                                               ; preds = %31
  %45 = load %struct.sock*, %struct.sock** %8, align 8
  %46 = call %struct.sk_psock* @sk_psock_get(%struct.sock* %45)
  store %struct.sk_psock* %46, %struct.sk_psock** %14, align 8
  %47 = load %struct.sk_psock*, %struct.sk_psock** %14, align 8
  %48 = icmp ne %struct.sk_psock* %47, null
  %49 = xor i1 %48, true
  %50 = zext i1 %49 to i32
  %51 = call i64 @unlikely(i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %61

53:                                               ; preds = %44
  %54 = load %struct.sock*, %struct.sock** %8, align 8
  %55 = load %struct.msghdr*, %struct.msghdr** %9, align 8
  %56 = load i64, i64* %10, align 8
  %57 = load i32, i32* %11, align 4
  %58 = load i32, i32* %12, align 4
  %59 = load i32*, i32** %13, align 8
  %60 = call i32 @tcp_recvmsg(%struct.sock* %54, %struct.msghdr* %55, i64 %56, i32 %57, i32 %58, i32* %59)
  store i32 %60, i32* %7, align 4
  br label %120

61:                                               ; preds = %44
  %62 = load %struct.sock*, %struct.sock** %8, align 8
  %63 = call i32 @lock_sock(%struct.sock* %62)
  br label %64

64:                                               ; preds = %89, %61
  %65 = load %struct.sock*, %struct.sock** %8, align 8
  %66 = load %struct.sk_psock*, %struct.sk_psock** %14, align 8
  %67 = load %struct.msghdr*, %struct.msghdr** %9, align 8
  %68 = load i64, i64* %10, align 8
  %69 = load i32, i32* %12, align 4
  %70 = call i32 @__tcp_bpf_recvmsg(%struct.sock* %65, %struct.sk_psock* %66, %struct.msghdr* %67, i64 %68, i32 %69)
  store i32 %70, i32* %15, align 4
  %71 = load i32, i32* %15, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %111, label %73

73:                                               ; preds = %64
  store i32 0, i32* %18, align 4
  %74 = load %struct.sock*, %struct.sock** %8, align 8
  %75 = load i32, i32* %11, align 4
  %76 = call i64 @sock_rcvtimeo(%struct.sock* %74, i32 %75)
  store i64 %76, i64* %19, align 8
  %77 = load %struct.sock*, %struct.sock** %8, align 8
  %78 = load %struct.sk_psock*, %struct.sk_psock** %14, align 8
  %79 = load i32, i32* %12, align 4
  %80 = load i64, i64* %19, align 8
  %81 = call i32 @tcp_bpf_wait_data(%struct.sock* %77, %struct.sk_psock* %78, i32 %79, i64 %80, i32* %18)
  store i32 %81, i32* %17, align 4
  %82 = load i32, i32* %17, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %103

84:                                               ; preds = %73
  %85 = load %struct.sock*, %struct.sock** %8, align 8
  %86 = getelementptr inbounds %struct.sock, %struct.sock* %85, i32 0, i32 0
  %87 = call i64 @skb_queue_empty(i32* %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %84
  br label %64

90:                                               ; preds = %84
  %91 = load %struct.sock*, %struct.sock** %8, align 8
  %92 = call i32 @release_sock(%struct.sock* %91)
  %93 = load %struct.sock*, %struct.sock** %8, align 8
  %94 = load %struct.sk_psock*, %struct.sk_psock** %14, align 8
  %95 = call i32 @sk_psock_put(%struct.sock* %93, %struct.sk_psock* %94)
  %96 = load %struct.sock*, %struct.sock** %8, align 8
  %97 = load %struct.msghdr*, %struct.msghdr** %9, align 8
  %98 = load i64, i64* %10, align 8
  %99 = load i32, i32* %11, align 4
  %100 = load i32, i32* %12, align 4
  %101 = load i32*, i32** %13, align 8
  %102 = call i32 @tcp_recvmsg(%struct.sock* %96, %struct.msghdr* %97, i64 %98, i32 %99, i32 %100, i32* %101)
  store i32 %102, i32* %7, align 4
  br label %120

103:                                              ; preds = %73
  %104 = load i32, i32* %18, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %108

106:                                              ; preds = %103
  %107 = load i32, i32* %18, align 4
  store i32 %107, i32* %16, align 4
  br label %113

108:                                              ; preds = %103
  %109 = load i32, i32* @EAGAIN, align 4
  %110 = sub nsw i32 0, %109
  store i32 %110, i32* %15, align 4
  br label %111

111:                                              ; preds = %108, %64
  %112 = load i32, i32* %15, align 4
  store i32 %112, i32* %16, align 4
  br label %113

113:                                              ; preds = %111, %106
  %114 = load %struct.sock*, %struct.sock** %8, align 8
  %115 = call i32 @release_sock(%struct.sock* %114)
  %116 = load %struct.sock*, %struct.sock** %8, align 8
  %117 = load %struct.sk_psock*, %struct.sk_psock** %14, align 8
  %118 = call i32 @sk_psock_put(%struct.sock* %116, %struct.sk_psock* %117)
  %119 = load i32, i32* %16, align 4
  store i32 %119, i32* %7, align 4
  br label %120

120:                                              ; preds = %113, %90, %53, %36, %25
  %121 = load i32, i32* %7, align 4
  ret i32 %121
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @inet_recv_error(%struct.sock*, %struct.msghdr*, i64, i32*) #1

declare dso_local i64 @skb_queue_empty(i32*) #1

declare dso_local i32 @tcp_recvmsg(%struct.sock*, %struct.msghdr*, i64, i32, i32, i32*) #1

declare dso_local %struct.sk_psock* @sk_psock_get(%struct.sock*) #1

declare dso_local i32 @lock_sock(%struct.sock*) #1

declare dso_local i32 @__tcp_bpf_recvmsg(%struct.sock*, %struct.sk_psock*, %struct.msghdr*, i64, i32) #1

declare dso_local i64 @sock_rcvtimeo(%struct.sock*, i32) #1

declare dso_local i32 @tcp_bpf_wait_data(%struct.sock*, %struct.sk_psock*, i32, i64, i32*) #1

declare dso_local i32 @release_sock(%struct.sock*) #1

declare dso_local i32 @sk_psock_put(%struct.sock*, %struct.sk_psock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
