; ModuleID = '/home/carl/AnghaBench/linux/net/vmw_vsock/extr_af_vsock.c_vsock_shutdown.c'
source_filename = "/home/carl/AnghaBench/linux/net/vmw_vsock/extr_af_vsock.c_vsock_shutdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { i64, %struct.sock* }
%struct.sock = type { i64, i32, i32 (%struct.sock*)* }

@SHUTDOWN_MASK = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@SS_UNCONNECTED = common dso_local global i64 0, align 8
@ENOTCONN = common dso_local global i32 0, align 4
@SOCK_STREAM = common dso_local global i64 0, align 8
@SS_DISCONNECTING = common dso_local global i64 0, align 8
@RCV_SHUTDOWN = common dso_local global i32 0, align 4
@SEND_SHUTDOWN = common dso_local global i32 0, align 4
@SOCK_DONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.socket*, i32)* @vsock_shutdown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vsock_shutdown(%struct.socket* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.socket*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.sock*, align 8
  store %struct.socket* %0, %struct.socket** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = add nsw i32 %8, 1
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* @SHUTDOWN_MASK, align 4
  %12 = xor i32 %11, -1
  %13 = and i32 %10, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* %5, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %15, %2
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %83

21:                                               ; preds = %15
  %22 = load %struct.socket*, %struct.socket** %4, align 8
  %23 = getelementptr inbounds %struct.socket, %struct.socket* %22, i32 0, i32 1
  %24 = load %struct.sock*, %struct.sock** %23, align 8
  store %struct.sock* %24, %struct.sock** %7, align 8
  %25 = load %struct.socket*, %struct.socket** %4, align 8
  %26 = getelementptr inbounds %struct.socket, %struct.socket* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @SS_UNCONNECTED, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %41

30:                                               ; preds = %21
  %31 = load i32, i32* @ENOTCONN, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %6, align 4
  %33 = load %struct.sock*, %struct.sock** %7, align 8
  %34 = getelementptr inbounds %struct.sock, %struct.sock* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @SOCK_STREAM, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %40

38:                                               ; preds = %30
  %39 = load i32, i32* %6, align 4
  store i32 %39, i32* %3, align 4
  br label %83

40:                                               ; preds = %30
  br label %45

41:                                               ; preds = %21
  %42 = load i64, i64* @SS_DISCONNECTING, align 8
  %43 = load %struct.socket*, %struct.socket** %4, align 8
  %44 = getelementptr inbounds %struct.socket, %struct.socket* %43, i32 0, i32 0
  store i64 %42, i64* %44, align 8
  store i32 0, i32* %6, align 4
  br label %45

45:                                               ; preds = %41, %40
  %46 = load i32, i32* %5, align 4
  %47 = load i32, i32* @RCV_SHUTDOWN, align 4
  %48 = load i32, i32* @SEND_SHUTDOWN, align 4
  %49 = or i32 %47, %48
  %50 = and i32 %46, %49
  store i32 %50, i32* %5, align 4
  %51 = load i32, i32* %5, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %81

53:                                               ; preds = %45
  %54 = load %struct.sock*, %struct.sock** %7, align 8
  %55 = call i32 @lock_sock(%struct.sock* %54)
  %56 = load i32, i32* %5, align 4
  %57 = load %struct.sock*, %struct.sock** %7, align 8
  %58 = getelementptr inbounds %struct.sock, %struct.sock* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = or i32 %59, %56
  store i32 %60, i32* %58, align 8
  %61 = load %struct.sock*, %struct.sock** %7, align 8
  %62 = getelementptr inbounds %struct.sock, %struct.sock* %61, i32 0, i32 2
  %63 = load i32 (%struct.sock*)*, i32 (%struct.sock*)** %62, align 8
  %64 = load %struct.sock*, %struct.sock** %7, align 8
  %65 = call i32 %63(%struct.sock* %64)
  %66 = load %struct.sock*, %struct.sock** %7, align 8
  %67 = call i32 @release_sock(%struct.sock* %66)
  %68 = load %struct.sock*, %struct.sock** %7, align 8
  %69 = getelementptr inbounds %struct.sock, %struct.sock* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @SOCK_STREAM, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %73, label %80

73:                                               ; preds = %53
  %74 = load %struct.sock*, %struct.sock** %7, align 8
  %75 = load i32, i32* @SOCK_DONE, align 4
  %76 = call i32 @sock_reset_flag(%struct.sock* %74, i32 %75)
  %77 = load %struct.sock*, %struct.sock** %7, align 8
  %78 = load i32, i32* %5, align 4
  %79 = call i32 @vsock_send_shutdown(%struct.sock* %77, i32 %78)
  br label %80

80:                                               ; preds = %73, %53
  br label %81

81:                                               ; preds = %80, %45
  %82 = load i32, i32* %6, align 4
  store i32 %82, i32* %3, align 4
  br label %83

83:                                               ; preds = %81, %38, %18
  %84 = load i32, i32* %3, align 4
  ret i32 %84
}

declare dso_local i32 @lock_sock(%struct.sock*) #1

declare dso_local i32 @release_sock(%struct.sock*) #1

declare dso_local i32 @sock_reset_flag(%struct.sock*, i32) #1

declare dso_local i32 @vsock_send_shutdown(%struct.sock*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
