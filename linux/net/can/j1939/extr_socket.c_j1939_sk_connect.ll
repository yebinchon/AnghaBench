; ModuleID = '/home/carl/AnghaBench/linux/net/can/j1939/extr_socket.c_j1939_sk_connect.c'
source_filename = "/home/carl/AnghaBench/linux/net/can/j1939/extr_socket.c_j1939_sk_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { i32 }
%struct.sockaddr = type { i32 }
%struct.sockaddr_can = type { i64, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32, i64 }
%struct.j1939_sock = type { i32, i64, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32, i32, i64 }

@J1939_SOCK_BOUND = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@J1939_NO_ADDR = common dso_local global i32 0, align 4
@SOCK_BROADCAST = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4
@J1939_SOCK_CONNECTED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.socket*, %struct.sockaddr*, i32, i32)* @j1939_sk_connect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @j1939_sk_connect(%struct.socket* %0, %struct.sockaddr* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.socket*, align 8
  %7 = alloca %struct.sockaddr*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.sockaddr_can*, align 8
  %11 = alloca %struct.j1939_sock*, align 8
  %12 = alloca i32, align 4
  store %struct.socket* %0, %struct.socket** %6, align 8
  store %struct.sockaddr* %1, %struct.sockaddr** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %14 = bitcast %struct.sockaddr* %13 to %struct.sockaddr_can*
  store %struct.sockaddr_can* %14, %struct.sockaddr_can** %10, align 8
  %15 = load %struct.socket*, %struct.socket** %6, align 8
  %16 = getelementptr inbounds %struct.socket, %struct.socket* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call %struct.j1939_sock* @j1939_sk(i32 %17)
  store %struct.j1939_sock* %18, %struct.j1939_sock** %11, align 8
  store i32 0, i32* %12, align 4
  %19 = load %struct.sockaddr_can*, %struct.sockaddr_can** %10, align 8
  %20 = load i32, i32* %8, align 4
  %21 = call i32 @j1939_sk_sanity_check(%struct.sockaddr_can* %19, i32 %20)
  store i32 %21, i32* %12, align 4
  %22 = load i32, i32* %12, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %4
  %25 = load i32, i32* %12, align 4
  store i32 %25, i32* %5, align 4
  br label %120

26:                                               ; preds = %4
  %27 = load %struct.socket*, %struct.socket** %6, align 8
  %28 = getelementptr inbounds %struct.socket, %struct.socket* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @lock_sock(i32 %29)
  %31 = load %struct.j1939_sock*, %struct.j1939_sock** %11, align 8
  %32 = getelementptr inbounds %struct.j1939_sock, %struct.j1939_sock* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @J1939_SOCK_BOUND, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %40, label %37

37:                                               ; preds = %26
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %12, align 4
  br label %114

40:                                               ; preds = %26
  %41 = load %struct.j1939_sock*, %struct.j1939_sock** %11, align 8
  %42 = getelementptr inbounds %struct.j1939_sock, %struct.j1939_sock* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.sockaddr_can*, %struct.sockaddr_can** %10, align 8
  %45 = getelementptr inbounds %struct.sockaddr_can, %struct.sockaddr_can* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %43, %46
  br i1 %47, label %48, label %51

48:                                               ; preds = %40
  %49 = load i32, i32* @EINVAL, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %12, align 4
  br label %114

51:                                               ; preds = %40
  %52 = load %struct.sockaddr_can*, %struct.sockaddr_can** %10, align 8
  %53 = getelementptr inbounds %struct.sockaddr_can, %struct.sockaddr_can* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 2
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %75, label %58

58:                                               ; preds = %51
  %59 = load %struct.sockaddr_can*, %struct.sockaddr_can** %10, align 8
  %60 = getelementptr inbounds %struct.sockaddr_can, %struct.sockaddr_can* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @J1939_NO_ADDR, align 4
  %65 = icmp eq i32 %63, %64
  br i1 %65, label %66, label %75

66:                                               ; preds = %58
  %67 = load %struct.j1939_sock*, %struct.j1939_sock** %11, align 8
  %68 = getelementptr inbounds %struct.j1939_sock, %struct.j1939_sock* %67, i32 0, i32 3
  %69 = load i32, i32* @SOCK_BROADCAST, align 4
  %70 = call i32 @sock_flag(i32* %68, i32 %69)
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %75, label %72

72:                                               ; preds = %66
  %73 = load i32, i32* @EACCES, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %12, align 4
  br label %114

75:                                               ; preds = %66, %58, %51
  %76 = load %struct.sockaddr_can*, %struct.sockaddr_can** %10, align 8
  %77 = getelementptr inbounds %struct.sockaddr_can, %struct.sockaddr_can* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 2
  %80 = load i64, i64* %79, align 8
  %81 = load %struct.j1939_sock*, %struct.j1939_sock** %11, align 8
  %82 = getelementptr inbounds %struct.j1939_sock, %struct.j1939_sock* %81, i32 0, i32 2
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 2
  store i64 %80, i64* %83, align 8
  %84 = load %struct.sockaddr_can*, %struct.sockaddr_can** %10, align 8
  %85 = getelementptr inbounds %struct.sockaddr_can, %struct.sockaddr_can* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.j1939_sock*, %struct.j1939_sock** %11, align 8
  %90 = getelementptr inbounds %struct.j1939_sock, %struct.j1939_sock* %89, i32 0, i32 2
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 1
  store i32 %88, i32* %91, align 4
  %92 = load %struct.sockaddr_can*, %struct.sockaddr_can** %10, align 8
  %93 = getelementptr inbounds %struct.sockaddr_can, %struct.sockaddr_can* %92, i32 0, i32 1
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = call i64 @j1939_pgn_is_valid(i32 %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %108

99:                                               ; preds = %75
  %100 = load %struct.sockaddr_can*, %struct.sockaddr_can** %10, align 8
  %101 = getelementptr inbounds %struct.sockaddr_can, %struct.sockaddr_can* %100, i32 0, i32 1
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = load %struct.j1939_sock*, %struct.j1939_sock** %11, align 8
  %106 = getelementptr inbounds %struct.j1939_sock, %struct.j1939_sock* %105, i32 0, i32 2
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i32 0, i32 0
  store i32 %104, i32* %107, align 8
  br label %108

108:                                              ; preds = %99, %75
  %109 = load i32, i32* @J1939_SOCK_CONNECTED, align 4
  %110 = load %struct.j1939_sock*, %struct.j1939_sock** %11, align 8
  %111 = getelementptr inbounds %struct.j1939_sock, %struct.j1939_sock* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = or i32 %112, %109
  store i32 %113, i32* %111, align 8
  br label %114

114:                                              ; preds = %108, %72, %48, %37
  %115 = load %struct.socket*, %struct.socket** %6, align 8
  %116 = getelementptr inbounds %struct.socket, %struct.socket* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = call i32 @release_sock(i32 %117)
  %119 = load i32, i32* %12, align 4
  store i32 %119, i32* %5, align 4
  br label %120

120:                                              ; preds = %114, %24
  %121 = load i32, i32* %5, align 4
  ret i32 %121
}

declare dso_local %struct.j1939_sock* @j1939_sk(i32) #1

declare dso_local i32 @j1939_sk_sanity_check(%struct.sockaddr_can*, i32) #1

declare dso_local i32 @lock_sock(i32) #1

declare dso_local i32 @sock_flag(i32*, i32) #1

declare dso_local i64 @j1939_pgn_is_valid(i32) #1

declare dso_local i32 @release_sock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
