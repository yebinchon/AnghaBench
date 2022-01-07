; ModuleID = '/home/carl/AnghaBench/linux/net/phonet/extr_socket.c_pn_socket_accept.c'
source_filename = "/home/carl/AnghaBench/linux/net/phonet/extr_socket.c_pn_socket_accept.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { i32, %struct.sock* }
%struct.sock = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.sock* (%struct.sock*, i32, i32*, i32)* }

@TCP_LISTEN = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@SS_CONNECTED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.socket*, %struct.socket*, i32, i32)* @pn_socket_accept to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pn_socket_accept(%struct.socket* %0, %struct.socket* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.socket*, align 8
  %7 = alloca %struct.socket*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.sock*, align 8
  %11 = alloca %struct.sock*, align 8
  %12 = alloca i32, align 4
  store %struct.socket* %0, %struct.socket** %6, align 8
  store %struct.socket* %1, %struct.socket** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = load %struct.socket*, %struct.socket** %6, align 8
  %14 = getelementptr inbounds %struct.socket, %struct.socket* %13, i32 0, i32 1
  %15 = load %struct.sock*, %struct.sock** %14, align 8
  store %struct.sock* %15, %struct.sock** %10, align 8
  %16 = load %struct.sock*, %struct.sock** %10, align 8
  %17 = getelementptr inbounds %struct.sock, %struct.sock* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @TCP_LISTEN, align 8
  %20 = icmp ne i64 %18, %19
  %21 = zext i1 %20 to i32
  %22 = call i64 @unlikely(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %4
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %5, align 4
  br label %52

27:                                               ; preds = %4
  %28 = load %struct.sock*, %struct.sock** %10, align 8
  %29 = getelementptr inbounds %struct.sock, %struct.sock* %28, i32 0, i32 1
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load %struct.sock* (%struct.sock*, i32, i32*, i32)*, %struct.sock* (%struct.sock*, i32, i32*, i32)** %31, align 8
  %33 = load %struct.sock*, %struct.sock** %10, align 8
  %34 = load i32, i32* %8, align 4
  %35 = load i32, i32* %9, align 4
  %36 = call %struct.sock* %32(%struct.sock* %33, i32 %34, i32* %12, i32 %35)
  store %struct.sock* %36, %struct.sock** %11, align 8
  %37 = load %struct.sock*, %struct.sock** %11, align 8
  %38 = icmp ne %struct.sock* %37, null
  br i1 %38, label %41, label %39

39:                                               ; preds = %27
  %40 = load i32, i32* %12, align 4
  store i32 %40, i32* %5, align 4
  br label %52

41:                                               ; preds = %27
  %42 = load %struct.sock*, %struct.sock** %11, align 8
  %43 = call i32 @lock_sock(%struct.sock* %42)
  %44 = load %struct.sock*, %struct.sock** %11, align 8
  %45 = load %struct.socket*, %struct.socket** %7, align 8
  %46 = call i32 @sock_graft(%struct.sock* %44, %struct.socket* %45)
  %47 = load i32, i32* @SS_CONNECTED, align 4
  %48 = load %struct.socket*, %struct.socket** %7, align 8
  %49 = getelementptr inbounds %struct.socket, %struct.socket* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 8
  %50 = load %struct.sock*, %struct.sock** %11, align 8
  %51 = call i32 @release_sock(%struct.sock* %50)
  store i32 0, i32* %5, align 4
  br label %52

52:                                               ; preds = %41, %39, %24
  %53 = load i32, i32* %5, align 4
  ret i32 %53
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @lock_sock(%struct.sock*) #1

declare dso_local i32 @sock_graft(%struct.sock*, %struct.socket*) #1

declare dso_local i32 @release_sock(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
