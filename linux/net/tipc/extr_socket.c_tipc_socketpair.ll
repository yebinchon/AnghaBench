; ModuleID = '/home/carl/AnghaBench/linux/net/tipc/extr_socket.c_tipc_socketpair.c'
source_filename = "/home/carl/AnghaBench/linux/net/tipc/extr_socket.c_tipc_socketpair.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { i32 }
%struct.tipc_sock = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__, i8*, i8*, i8* }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i8*, i32 }

@AF_TIPC = common dso_local global i8* null, align 8
@TIPC_ADDR_ID = common dso_local global i8* null, align 8
@TIPC_NODE_SCOPE = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.socket*, %struct.socket*)* @tipc_socketpair to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tipc_socketpair(%struct.socket* %0, %struct.socket* %1) #0 {
  %3 = alloca %struct.socket*, align 8
  %4 = alloca %struct.socket*, align 8
  %5 = alloca %struct.tipc_sock*, align 8
  %6 = alloca %struct.tipc_sock*, align 8
  %7 = alloca i8*, align 8
  store %struct.socket* %0, %struct.socket** %3, align 8
  store %struct.socket* %1, %struct.socket** %4, align 8
  %8 = load %struct.socket*, %struct.socket** %4, align 8
  %9 = getelementptr inbounds %struct.socket, %struct.socket* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.tipc_sock* @tipc_sk(i32 %10)
  store %struct.tipc_sock* %11, %struct.tipc_sock** %5, align 8
  %12 = load %struct.socket*, %struct.socket** %3, align 8
  %13 = getelementptr inbounds %struct.socket, %struct.socket* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.tipc_sock* @tipc_sk(i32 %14)
  store %struct.tipc_sock* %15, %struct.tipc_sock** %6, align 8
  %16 = load %struct.socket*, %struct.socket** %3, align 8
  %17 = getelementptr inbounds %struct.socket, %struct.socket* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @sock_net(i32 %18)
  %20 = call i8* @tipc_own_addr(i32 %19)
  store i8* %20, i8** %7, align 8
  %21 = load i8*, i8** @AF_TIPC, align 8
  %22 = load %struct.tipc_sock*, %struct.tipc_sock** %6, align 8
  %23 = getelementptr inbounds %struct.tipc_sock, %struct.tipc_sock* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 3
  store i8* %21, i8** %24, align 8
  %25 = load i8*, i8** @TIPC_ADDR_ID, align 8
  %26 = load %struct.tipc_sock*, %struct.tipc_sock** %6, align 8
  %27 = getelementptr inbounds %struct.tipc_sock, %struct.tipc_sock* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 2
  store i8* %25, i8** %28, align 8
  %29 = load i8*, i8** @TIPC_NODE_SCOPE, align 8
  %30 = load %struct.tipc_sock*, %struct.tipc_sock** %6, align 8
  %31 = getelementptr inbounds %struct.tipc_sock, %struct.tipc_sock* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 1
  store i8* %29, i8** %32, align 8
  %33 = load %struct.tipc_sock*, %struct.tipc_sock** %5, align 8
  %34 = getelementptr inbounds %struct.tipc_sock, %struct.tipc_sock* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.tipc_sock*, %struct.tipc_sock** %6, align 8
  %37 = getelementptr inbounds %struct.tipc_sock, %struct.tipc_sock* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 1
  store i32 %35, i32* %40, align 8
  %41 = load i8*, i8** %7, align 8
  %42 = load %struct.tipc_sock*, %struct.tipc_sock** %6, align 8
  %43 = getelementptr inbounds %struct.tipc_sock, %struct.tipc_sock* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  store i8* %41, i8** %46, align 8
  %47 = load i8*, i8** @AF_TIPC, align 8
  %48 = load %struct.tipc_sock*, %struct.tipc_sock** %5, align 8
  %49 = getelementptr inbounds %struct.tipc_sock, %struct.tipc_sock* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 3
  store i8* %47, i8** %50, align 8
  %51 = load i8*, i8** @TIPC_ADDR_ID, align 8
  %52 = load %struct.tipc_sock*, %struct.tipc_sock** %5, align 8
  %53 = getelementptr inbounds %struct.tipc_sock, %struct.tipc_sock* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 2
  store i8* %51, i8** %54, align 8
  %55 = load i8*, i8** @TIPC_NODE_SCOPE, align 8
  %56 = load %struct.tipc_sock*, %struct.tipc_sock** %5, align 8
  %57 = getelementptr inbounds %struct.tipc_sock, %struct.tipc_sock* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 1
  store i8* %55, i8** %58, align 8
  %59 = load %struct.tipc_sock*, %struct.tipc_sock** %6, align 8
  %60 = getelementptr inbounds %struct.tipc_sock, %struct.tipc_sock* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.tipc_sock*, %struct.tipc_sock** %5, align 8
  %63 = getelementptr inbounds %struct.tipc_sock, %struct.tipc_sock* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 1
  store i32 %61, i32* %66, align 8
  %67 = load i8*, i8** %7, align 8
  %68 = load %struct.tipc_sock*, %struct.tipc_sock** %5, align 8
  %69 = getelementptr inbounds %struct.tipc_sock, %struct.tipc_sock* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  store i8* %67, i8** %72, align 8
  %73 = load %struct.tipc_sock*, %struct.tipc_sock** %6, align 8
  %74 = load %struct.tipc_sock*, %struct.tipc_sock** %5, align 8
  %75 = getelementptr inbounds %struct.tipc_sock, %struct.tipc_sock* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = load i8*, i8** %7, align 8
  %78 = call i32 @tipc_sk_finish_conn(%struct.tipc_sock* %73, i32 %76, i8* %77)
  %79 = load %struct.tipc_sock*, %struct.tipc_sock** %5, align 8
  %80 = load %struct.tipc_sock*, %struct.tipc_sock** %6, align 8
  %81 = getelementptr inbounds %struct.tipc_sock, %struct.tipc_sock* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = load i8*, i8** %7, align 8
  %84 = call i32 @tipc_sk_finish_conn(%struct.tipc_sock* %79, i32 %82, i8* %83)
  ret i32 0
}

declare dso_local %struct.tipc_sock* @tipc_sk(i32) #1

declare dso_local i8* @tipc_own_addr(i32) #1

declare dso_local i32 @sock_net(i32) #1

declare dso_local i32 @tipc_sk_finish_conn(%struct.tipc_sock*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
