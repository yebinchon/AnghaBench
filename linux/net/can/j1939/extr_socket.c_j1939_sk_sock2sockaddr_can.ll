; ModuleID = '/home/carl/AnghaBench/linux/net/can/j1939/extr_socket.c_j1939_sk_sock2sockaddr_can.c'
source_filename = "/home/carl/AnghaBench/linux/net/can/j1939/extr_socket.c_j1939_sk_sock2sockaddr_can.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_can = type { %struct.TYPE_5__, i32, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.j1939_sock = type { %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32 }

@AF_CAN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sockaddr_can*, %struct.j1939_sock*, i32)* @j1939_sk_sock2sockaddr_can to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @j1939_sk_sock2sockaddr_can(%struct.sockaddr_can* %0, %struct.j1939_sock* %1, i32 %2) #0 {
  %4 = alloca %struct.sockaddr_can*, align 8
  %5 = alloca %struct.j1939_sock*, align 8
  %6 = alloca i32, align 4
  store %struct.sockaddr_can* %0, %struct.sockaddr_can** %4, align 8
  store %struct.j1939_sock* %1, %struct.j1939_sock** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* @AF_CAN, align 4
  %8 = load %struct.sockaddr_can*, %struct.sockaddr_can** %4, align 8
  %9 = getelementptr inbounds %struct.sockaddr_can, %struct.sockaddr_can* %8, i32 0, i32 2
  store i32 %7, i32* %9, align 4
  %10 = load %struct.j1939_sock*, %struct.j1939_sock** %5, align 8
  %11 = getelementptr inbounds %struct.j1939_sock, %struct.j1939_sock* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.sockaddr_can*, %struct.sockaddr_can** %4, align 8
  %14 = getelementptr inbounds %struct.sockaddr_can, %struct.sockaddr_can* %13, i32 0, i32 1
  store i32 %12, i32* %14, align 4
  %15 = load %struct.j1939_sock*, %struct.j1939_sock** %5, align 8
  %16 = getelementptr inbounds %struct.j1939_sock, %struct.j1939_sock* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 4
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.sockaddr_can*, %struct.sockaddr_can** %4, align 8
  %20 = getelementptr inbounds %struct.sockaddr_can, %struct.sockaddr_can* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 2
  store i32 %18, i32* %22, align 4
  %23 = load i32, i32* %6, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %42

25:                                               ; preds = %3
  %26 = load %struct.j1939_sock*, %struct.j1939_sock** %5, align 8
  %27 = getelementptr inbounds %struct.j1939_sock, %struct.j1939_sock* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.sockaddr_can*, %struct.sockaddr_can** %4, align 8
  %31 = getelementptr inbounds %struct.sockaddr_can, %struct.sockaddr_can* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 1
  store i32 %29, i32* %33, align 4
  %34 = load %struct.j1939_sock*, %struct.j1939_sock** %5, align 8
  %35 = getelementptr inbounds %struct.j1939_sock, %struct.j1939_sock* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.sockaddr_can*, %struct.sockaddr_can** %4, align 8
  %39 = getelementptr inbounds %struct.sockaddr_can, %struct.sockaddr_can* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  store i32 %37, i32* %41, align 4
  br label %59

42:                                               ; preds = %3
  %43 = load %struct.j1939_sock*, %struct.j1939_sock** %5, align 8
  %44 = getelementptr inbounds %struct.j1939_sock, %struct.j1939_sock* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.sockaddr_can*, %struct.sockaddr_can** %4, align 8
  %48 = getelementptr inbounds %struct.sockaddr_can, %struct.sockaddr_can* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 1
  store i32 %46, i32* %50, align 4
  %51 = load %struct.j1939_sock*, %struct.j1939_sock** %5, align 8
  %52 = getelementptr inbounds %struct.j1939_sock, %struct.j1939_sock* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.sockaddr_can*, %struct.sockaddr_can** %4, align 8
  %56 = getelementptr inbounds %struct.sockaddr_can, %struct.sockaddr_can* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  store i32 %54, i32* %58, align 4
  br label %59

59:                                               ; preds = %42, %25
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
