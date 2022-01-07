; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_inet_connection_sock.c_inet_csk_accept.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_inet_connection_sock.c_inet_csk_accept.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i64, i64 }
%struct.inet_connection_sock = type { %struct.request_sock_queue }
%struct.request_sock_queue = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.request_sock = type { %struct.sock* }
%struct.TYPE_4__ = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@TCP_LISTEN = common dso_local global i64 0, align 8
@O_NONBLOCK = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@IPPROTO_TCP = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.sock* @inet_csk_accept(%struct.sock* %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.sock*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.inet_connection_sock*, align 8
  %10 = alloca %struct.request_sock_queue*, align 8
  %11 = alloca %struct.request_sock*, align 8
  %12 = alloca %struct.sock*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  store %struct.sock* %0, %struct.sock** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %15 = load %struct.sock*, %struct.sock** %5, align 8
  %16 = call %struct.inet_connection_sock* @inet_csk(%struct.sock* %15)
  store %struct.inet_connection_sock* %16, %struct.inet_connection_sock** %9, align 8
  %17 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %9, align 8
  %18 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %17, i32 0, i32 0
  store %struct.request_sock_queue* %18, %struct.request_sock_queue** %10, align 8
  %19 = load %struct.sock*, %struct.sock** %5, align 8
  %20 = call i32 @lock_sock(%struct.sock* %19)
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %13, align 4
  %23 = load %struct.sock*, %struct.sock** %5, align 8
  %24 = getelementptr inbounds %struct.sock, %struct.sock* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @TCP_LISTEN, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %4
  br label %99

29:                                               ; preds = %4
  %30 = load %struct.request_sock_queue*, %struct.request_sock_queue** %10, align 8
  %31 = call i64 @reqsk_queue_empty(%struct.request_sock_queue* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %52

33:                                               ; preds = %29
  %34 = load %struct.sock*, %struct.sock** %5, align 8
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* @O_NONBLOCK, align 4
  %37 = and i32 %35, %36
  %38 = call i64 @sock_rcvtimeo(%struct.sock* %34, i32 %37)
  store i64 %38, i64* %14, align 8
  %39 = load i32, i32* @EAGAIN, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %13, align 4
  %41 = load i64, i64* %14, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %33
  br label %99

44:                                               ; preds = %33
  %45 = load %struct.sock*, %struct.sock** %5, align 8
  %46 = load i64, i64* %14, align 8
  %47 = call i32 @inet_csk_wait_for_connect(%struct.sock* %45, i64 %46)
  store i32 %47, i32* %13, align 4
  %48 = load i32, i32* %13, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %44
  br label %99

51:                                               ; preds = %44
  br label %52

52:                                               ; preds = %51, %29
  %53 = load %struct.request_sock_queue*, %struct.request_sock_queue** %10, align 8
  %54 = load %struct.sock*, %struct.sock** %5, align 8
  %55 = call %struct.request_sock* @reqsk_queue_remove(%struct.request_sock_queue* %53, %struct.sock* %54)
  store %struct.request_sock* %55, %struct.request_sock** %11, align 8
  %56 = load %struct.request_sock*, %struct.request_sock** %11, align 8
  %57 = getelementptr inbounds %struct.request_sock, %struct.request_sock* %56, i32 0, i32 0
  %58 = load %struct.sock*, %struct.sock** %57, align 8
  store %struct.sock* %58, %struct.sock** %12, align 8
  %59 = load %struct.sock*, %struct.sock** %5, align 8
  %60 = getelementptr inbounds %struct.sock, %struct.sock* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @IPPROTO_TCP, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %88

64:                                               ; preds = %52
  %65 = load %struct.request_sock*, %struct.request_sock** %11, align 8
  %66 = call %struct.TYPE_4__* @tcp_rsk(%struct.request_sock* %65)
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %88

70:                                               ; preds = %64
  %71 = load %struct.request_sock_queue*, %struct.request_sock_queue** %10, align 8
  %72 = getelementptr inbounds %struct.request_sock_queue, %struct.request_sock_queue* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 0
  %74 = call i32 @spin_lock_bh(i32* %73)
  %75 = load %struct.request_sock*, %struct.request_sock** %11, align 8
  %76 = call %struct.TYPE_4__* @tcp_rsk(%struct.request_sock* %75)
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %70
  %81 = load %struct.request_sock*, %struct.request_sock** %11, align 8
  %82 = getelementptr inbounds %struct.request_sock, %struct.request_sock* %81, i32 0, i32 0
  store %struct.sock* null, %struct.sock** %82, align 8
  store %struct.request_sock* null, %struct.request_sock** %11, align 8
  br label %83

83:                                               ; preds = %80, %70
  %84 = load %struct.request_sock_queue*, %struct.request_sock_queue** %10, align 8
  %85 = getelementptr inbounds %struct.request_sock_queue, %struct.request_sock_queue* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 0
  %87 = call i32 @spin_unlock_bh(i32* %86)
  br label %88

88:                                               ; preds = %83, %64, %52
  br label %89

89:                                               ; preds = %99, %88
  %90 = load %struct.sock*, %struct.sock** %5, align 8
  %91 = call i32 @release_sock(%struct.sock* %90)
  %92 = load %struct.request_sock*, %struct.request_sock** %11, align 8
  %93 = icmp ne %struct.request_sock* %92, null
  br i1 %93, label %94, label %97

94:                                               ; preds = %89
  %95 = load %struct.request_sock*, %struct.request_sock** %11, align 8
  %96 = call i32 @reqsk_put(%struct.request_sock* %95)
  br label %97

97:                                               ; preds = %94, %89
  %98 = load %struct.sock*, %struct.sock** %12, align 8
  ret %struct.sock* %98

99:                                               ; preds = %50, %43, %28
  store %struct.sock* null, %struct.sock** %12, align 8
  store %struct.request_sock* null, %struct.request_sock** %11, align 8
  %100 = load i32, i32* %13, align 4
  %101 = load i32*, i32** %7, align 8
  store i32 %100, i32* %101, align 4
  br label %89
}

declare dso_local %struct.inet_connection_sock* @inet_csk(%struct.sock*) #1

declare dso_local i32 @lock_sock(%struct.sock*) #1

declare dso_local i64 @reqsk_queue_empty(%struct.request_sock_queue*) #1

declare dso_local i64 @sock_rcvtimeo(%struct.sock*, i32) #1

declare dso_local i32 @inet_csk_wait_for_connect(%struct.sock*, i64) #1

declare dso_local %struct.request_sock* @reqsk_queue_remove(%struct.request_sock_queue*, %struct.sock*) #1

declare dso_local %struct.TYPE_4__* @tcp_rsk(%struct.request_sock*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @release_sock(%struct.sock*) #1

declare dso_local i32 @reqsk_put(%struct.request_sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
