; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_inet_connection_sock.c_inet_csk_clone_lock.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_inet_connection_sock.c_inet_csk_clone_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32, i32 }
%struct.request_sock = type { i32 }
%struct.inet_connection_sock = type { i32, i64, i64, i64, i32* }
%struct.TYPE_4__ = type { i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i32*, i32, i32, i32 }

@TCP_SYN_RECV = common dso_local global i32 0, align 4
@SOCK_RCU_FREE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.sock* @inet_csk_clone_lock(%struct.sock* %0, %struct.request_sock* %1, i32 %2) #0 {
  %4 = alloca %struct.sock*, align 8
  %5 = alloca %struct.request_sock*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.sock*, align 8
  %8 = alloca %struct.inet_connection_sock*, align 8
  store %struct.sock* %0, %struct.sock** %4, align 8
  store %struct.request_sock* %1, %struct.request_sock** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.sock*, %struct.sock** %4, align 8
  %10 = load i32, i32* %6, align 4
  %11 = call %struct.sock* @sk_clone_lock(%struct.sock* %9, i32 %10)
  store %struct.sock* %11, %struct.sock** %7, align 8
  %12 = load %struct.sock*, %struct.sock** %7, align 8
  %13 = icmp ne %struct.sock* %12, null
  br i1 %13, label %14, label %75

14:                                               ; preds = %3
  %15 = load %struct.sock*, %struct.sock** %7, align 8
  %16 = call %struct.inet_connection_sock* @inet_csk(%struct.sock* %15)
  store %struct.inet_connection_sock* %16, %struct.inet_connection_sock** %8, align 8
  %17 = load %struct.sock*, %struct.sock** %7, align 8
  %18 = load i32, i32* @TCP_SYN_RECV, align 4
  %19 = call i32 @inet_sk_set_state(%struct.sock* %17, i32 %18)
  %20 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %8, align 8
  %21 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %20, i32 0, i32 4
  store i32* null, i32** %21, align 8
  %22 = load %struct.request_sock*, %struct.request_sock** %5, align 8
  %23 = call %struct.TYPE_4__* @inet_rsk(%struct.request_sock* %22)
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.sock*, %struct.sock** %7, align 8
  %27 = call %struct.TYPE_3__* @inet_sk(%struct.sock* %26)
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 3
  store i32 %25, i32* %28, align 8
  %29 = load %struct.request_sock*, %struct.request_sock** %5, align 8
  %30 = call %struct.TYPE_4__* @inet_rsk(%struct.request_sock* %29)
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.sock*, %struct.sock** %7, align 8
  %34 = call %struct.TYPE_3__* @inet_sk(%struct.sock* %33)
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 2
  store i32 %32, i32* %35, align 4
  %36 = load %struct.request_sock*, %struct.request_sock** %5, align 8
  %37 = call %struct.TYPE_4__* @inet_rsk(%struct.request_sock* %36)
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @htons(i32 %39)
  %41 = load %struct.sock*, %struct.sock** %7, align 8
  %42 = call %struct.TYPE_3__* @inet_sk(%struct.sock* %41)
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 1
  store i32 %40, i32* %43, align 8
  %44 = load %struct.sock*, %struct.sock** %7, align 8
  %45 = load i32, i32* @SOCK_RCU_FREE, align 4
  %46 = call i32 @sock_reset_flag(%struct.sock* %44, i32 %45)
  %47 = load %struct.sock*, %struct.sock** %7, align 8
  %48 = call %struct.TYPE_3__* @inet_sk(%struct.sock* %47)
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  store i32* null, i32** %49, align 8
  %50 = load %struct.request_sock*, %struct.request_sock** %5, align 8
  %51 = call %struct.TYPE_4__* @inet_rsk(%struct.request_sock* %50)
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.sock*, %struct.sock** %7, align 8
  %55 = getelementptr inbounds %struct.sock, %struct.sock* %54, i32 0, i32 1
  store i32 %53, i32* %55, align 4
  %56 = load %struct.sock*, %struct.sock** %7, align 8
  %57 = getelementptr inbounds %struct.sock, %struct.sock* %56, i32 0, i32 0
  %58 = load %struct.request_sock*, %struct.request_sock** %5, align 8
  %59 = call %struct.TYPE_4__* @inet_rsk(%struct.request_sock* %58)
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = call i32 @atomic64_read(i32* %60)
  %62 = call i32 @atomic64_set(i32* %57, i32 %61)
  %63 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %8, align 8
  %64 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %63, i32 0, i32 3
  store i64 0, i64* %64, align 8
  %65 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %8, align 8
  %66 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %65, i32 0, i32 2
  store i64 0, i64* %66, align 8
  %67 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %8, align 8
  %68 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %67, i32 0, i32 1
  store i64 0, i64* %68, align 8
  %69 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %8, align 8
  %70 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %69, i32 0, i32 0
  %71 = call i32 @memset(i32* %70, i32 0, i32 4)
  %72 = load %struct.sock*, %struct.sock** %7, align 8
  %73 = load %struct.request_sock*, %struct.request_sock** %5, align 8
  %74 = call i32 @security_inet_csk_clone(%struct.sock* %72, %struct.request_sock* %73)
  br label %75

75:                                               ; preds = %14, %3
  %76 = load %struct.sock*, %struct.sock** %7, align 8
  ret %struct.sock* %76
}

declare dso_local %struct.sock* @sk_clone_lock(%struct.sock*, i32) #1

declare dso_local %struct.inet_connection_sock* @inet_csk(%struct.sock*) #1

declare dso_local i32 @inet_sk_set_state(%struct.sock*, i32) #1

declare dso_local %struct.TYPE_4__* @inet_rsk(%struct.request_sock*) #1

declare dso_local %struct.TYPE_3__* @inet_sk(%struct.sock*) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @sock_reset_flag(%struct.sock*, i32) #1

declare dso_local i32 @atomic64_set(i32*, i32) #1

declare dso_local i32 @atomic64_read(i32*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @security_inet_csk_clone(%struct.sock*, %struct.request_sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
