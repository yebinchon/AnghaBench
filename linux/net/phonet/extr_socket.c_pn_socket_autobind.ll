; ModuleID = '/home/carl/AnghaBench/linux/net/phonet/extr_socket.c_pn_socket_autobind.c'
source_filename = "/home/carl/AnghaBench/linux/net/phonet/extr_socket.c_pn_socket_autobind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { i32 }
%struct.sockaddr_pn = type { i32 }
%struct.sockaddr = type { i32 }
%struct.TYPE_2__ = type { i32 }

@AF_PHONET = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.socket*)* @pn_socket_autobind to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pn_socket_autobind(%struct.socket* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.socket*, align 8
  %4 = alloca %struct.sockaddr_pn, align 4
  %5 = alloca i32, align 4
  store %struct.socket* %0, %struct.socket** %3, align 8
  %6 = call i32 @memset(%struct.sockaddr_pn* %4, i32 0, i32 4)
  %7 = load i32, i32* @AF_PHONET, align 4
  %8 = getelementptr inbounds %struct.sockaddr_pn, %struct.sockaddr_pn* %4, i32 0, i32 0
  store i32 %7, i32* %8, align 4
  %9 = load %struct.socket*, %struct.socket** %3, align 8
  %10 = bitcast %struct.sockaddr_pn* %4 to %struct.sockaddr*
  %11 = call i32 @pn_socket_bind(%struct.socket* %9, %struct.sockaddr* %10, i32 4)
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* @EINVAL, align 4
  %14 = sub nsw i32 0, %13
  %15 = icmp ne i32 %12, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %1
  %17 = load i32, i32* %5, align 4
  store i32 %17, i32* %2, align 4
  br label %30

18:                                               ; preds = %1
  %19 = load %struct.socket*, %struct.socket** %3, align 8
  %20 = getelementptr inbounds %struct.socket, %struct.socket* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call %struct.TYPE_2__* @pn_sk(i32 %21)
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @pn_port(i32 %24)
  %26 = icmp ne i32 %25, 0
  %27 = xor i1 %26, true
  %28 = zext i1 %27 to i32
  %29 = call i32 @BUG_ON(i32 %28)
  store i32 0, i32* %2, align 4
  br label %30

30:                                               ; preds = %18, %16
  %31 = load i32, i32* %2, align 4
  ret i32 %31
}

declare dso_local i32 @memset(%struct.sockaddr_pn*, i32, i32) #1

declare dso_local i32 @pn_socket_bind(%struct.socket*, %struct.sockaddr*, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @pn_port(i32) #1

declare dso_local %struct.TYPE_2__* @pn_sk(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
