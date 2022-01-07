; ModuleID = '/home/carl/AnghaBench/linux/net/phonet/extr_socket.c_pn_socket_getname.c'
source_filename = "/home/carl/AnghaBench/linux/net/phonet/extr_socket.c_pn_socket_getname.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { %struct.sock* }
%struct.sock = type { i32 }
%struct.sockaddr = type { i32 }
%struct.pn_sock = type { i32 }
%struct.sockaddr_pn = type { i32 }

@AF_PHONET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.socket*, %struct.sockaddr*, i32)* @pn_socket_getname to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pn_socket_getname(%struct.socket* %0, %struct.sockaddr* %1, i32 %2) #0 {
  %4 = alloca %struct.socket*, align 8
  %5 = alloca %struct.sockaddr*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.sock*, align 8
  %8 = alloca %struct.pn_sock*, align 8
  store %struct.socket* %0, %struct.socket** %4, align 8
  store %struct.sockaddr* %1, %struct.sockaddr** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.socket*, %struct.socket** %4, align 8
  %10 = getelementptr inbounds %struct.socket, %struct.socket* %9, i32 0, i32 0
  %11 = load %struct.sock*, %struct.sock** %10, align 8
  store %struct.sock* %11, %struct.sock** %7, align 8
  %12 = load %struct.sock*, %struct.sock** %7, align 8
  %13 = call %struct.pn_sock* @pn_sk(%struct.sock* %12)
  store %struct.pn_sock* %13, %struct.pn_sock** %8, align 8
  %14 = load %struct.sockaddr*, %struct.sockaddr** %5, align 8
  %15 = call i32 @memset(%struct.sockaddr* %14, i32 0, i32 4)
  %16 = load i32, i32* @AF_PHONET, align 4
  %17 = load %struct.sockaddr*, %struct.sockaddr** %5, align 8
  %18 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 4
  %19 = load i32, i32* %6, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %28, label %21

21:                                               ; preds = %3
  %22 = load %struct.sockaddr*, %struct.sockaddr** %5, align 8
  %23 = bitcast %struct.sockaddr* %22 to %struct.sockaddr_pn*
  %24 = load %struct.pn_sock*, %struct.pn_sock** %8, align 8
  %25 = getelementptr inbounds %struct.pn_sock, %struct.pn_sock* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @pn_sockaddr_set_object(%struct.sockaddr_pn* %23, i32 %26)
  br label %28

28:                                               ; preds = %21, %3
  ret i32 4
}

declare dso_local %struct.pn_sock* @pn_sk(%struct.sock*) #1

declare dso_local i32 @memset(%struct.sockaddr*, i32, i32) #1

declare dso_local i32 @pn_sockaddr_set_object(%struct.sockaddr_pn*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
