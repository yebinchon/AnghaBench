; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_hci_sock.c_hci_sock_getname.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_hci_sock.c_hci_sock_getname.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { %struct.sock* }
%struct.sock = type { i32 }
%struct.sockaddr = type { i32 }
%struct.sockaddr_hci = type { i32, i32, i32 }
%struct.hci_dev = type { i32 }
%struct.TYPE_2__ = type { i32, %struct.hci_dev* }

@.str = private unnamed_addr constant [14 x i8] c"sock %p sk %p\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@EBADFD = common dso_local global i32 0, align 4
@AF_BLUETOOTH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.socket*, %struct.sockaddr*, i32)* @hci_sock_getname to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hci_sock_getname(%struct.socket* %0, %struct.sockaddr* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.socket*, align 8
  %6 = alloca %struct.sockaddr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.sockaddr_hci*, align 8
  %9 = alloca %struct.sock*, align 8
  %10 = alloca %struct.hci_dev*, align 8
  %11 = alloca i32, align 4
  store %struct.socket* %0, %struct.socket** %5, align 8
  store %struct.sockaddr* %1, %struct.sockaddr** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %13 = bitcast %struct.sockaddr* %12 to %struct.sockaddr_hci*
  store %struct.sockaddr_hci* %13, %struct.sockaddr_hci** %8, align 8
  %14 = load %struct.socket*, %struct.socket** %5, align 8
  %15 = getelementptr inbounds %struct.socket, %struct.socket* %14, i32 0, i32 0
  %16 = load %struct.sock*, %struct.sock** %15, align 8
  store %struct.sock* %16, %struct.sock** %9, align 8
  store i32 0, i32* %11, align 4
  %17 = load %struct.socket*, %struct.socket** %5, align 8
  %18 = load %struct.sock*, %struct.sock** %9, align 8
  %19 = call i32 @BT_DBG(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), %struct.socket* %17, %struct.sock* %18)
  %20 = load i32, i32* %7, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %3
  %23 = load i32, i32* @EOPNOTSUPP, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %4, align 4
  br label %56

25:                                               ; preds = %3
  %26 = load %struct.sock*, %struct.sock** %9, align 8
  %27 = call i32 @lock_sock(%struct.sock* %26)
  %28 = load %struct.sock*, %struct.sock** %9, align 8
  %29 = call %struct.TYPE_2__* @hci_pi(%struct.sock* %28)
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 1
  %31 = load %struct.hci_dev*, %struct.hci_dev** %30, align 8
  store %struct.hci_dev* %31, %struct.hci_dev** %10, align 8
  %32 = load %struct.hci_dev*, %struct.hci_dev** %10, align 8
  %33 = icmp ne %struct.hci_dev* %32, null
  br i1 %33, label %37, label %34

34:                                               ; preds = %25
  %35 = load i32, i32* @EBADFD, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %11, align 4
  br label %52

37:                                               ; preds = %25
  %38 = load i32, i32* @AF_BLUETOOTH, align 4
  %39 = load %struct.sockaddr_hci*, %struct.sockaddr_hci** %8, align 8
  %40 = getelementptr inbounds %struct.sockaddr_hci, %struct.sockaddr_hci* %39, i32 0, i32 2
  store i32 %38, i32* %40, align 4
  %41 = load %struct.hci_dev*, %struct.hci_dev** %10, align 8
  %42 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.sockaddr_hci*, %struct.sockaddr_hci** %8, align 8
  %45 = getelementptr inbounds %struct.sockaddr_hci, %struct.sockaddr_hci* %44, i32 0, i32 1
  store i32 %43, i32* %45, align 4
  %46 = load %struct.sock*, %struct.sock** %9, align 8
  %47 = call %struct.TYPE_2__* @hci_pi(%struct.sock* %46)
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.sockaddr_hci*, %struct.sockaddr_hci** %8, align 8
  %51 = getelementptr inbounds %struct.sockaddr_hci, %struct.sockaddr_hci* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 4
  store i32 12, i32* %11, align 4
  br label %52

52:                                               ; preds = %37, %34
  %53 = load %struct.sock*, %struct.sock** %9, align 8
  %54 = call i32 @release_sock(%struct.sock* %53)
  %55 = load i32, i32* %11, align 4
  store i32 %55, i32* %4, align 4
  br label %56

56:                                               ; preds = %52, %22
  %57 = load i32, i32* %4, align 4
  ret i32 %57
}

declare dso_local i32 @BT_DBG(i8*, %struct.socket*, %struct.sock*) #1

declare dso_local i32 @lock_sock(%struct.sock*) #1

declare dso_local %struct.TYPE_2__* @hci_pi(%struct.sock*) #1

declare dso_local i32 @release_sock(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
