; ModuleID = '/home/carl/AnghaBench/linux/security/tomoyo/extr_network.c_tomoyo_socket_connect_permission.c'
source_filename = "/home/carl/AnghaBench/linux/security/tomoyo/extr_network.c_tomoyo_socket_connect_permission.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.sockaddr = type { i32 }
%struct.tomoyo_addr_info = type { i32, i32 }

@TOMOYO_NETWORK_SEND = common dso_local global i32 0, align 4
@TOMOYO_NETWORK_CONNECT = common dso_local global i32 0, align 4
@PF_UNIX = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tomoyo_socket_connect_permission(%struct.socket* %0, %struct.sockaddr* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.socket*, align 8
  %6 = alloca %struct.sockaddr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.tomoyo_addr_info, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.socket* %0, %struct.socket** %5, align 8
  store %struct.sockaddr* %1, %struct.sockaddr** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.socket*, %struct.socket** %5, align 8
  %12 = getelementptr inbounds %struct.socket, %struct.socket* %11, i32 0, i32 1
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = call i64 @tomoyo_sock_family(%struct.TYPE_2__* %13)
  store i64 %14, i64* %9, align 8
  %15 = load %struct.socket*, %struct.socket** %5, align 8
  %16 = getelementptr inbounds %struct.socket, %struct.socket* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  store i32 %17, i32* %10, align 4
  %18 = load i64, i64* %9, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %49

21:                                               ; preds = %3
  %22 = load i32, i32* %10, align 4
  %23 = getelementptr inbounds %struct.tomoyo_addr_info, %struct.tomoyo_addr_info* %8, i32 0, i32 0
  store i32 %22, i32* %23, align 4
  %24 = load i32, i32* %10, align 4
  switch i32 %24, label %31 [
    i32 131, label %25
    i32 130, label %25
    i32 128, label %28
    i32 129, label %28
  ]

25:                                               ; preds = %21, %21
  %26 = load i32, i32* @TOMOYO_NETWORK_SEND, align 4
  %27 = getelementptr inbounds %struct.tomoyo_addr_info, %struct.tomoyo_addr_info* %8, i32 0, i32 1
  store i32 %26, i32* %27, align 4
  br label %32

28:                                               ; preds = %21, %21
  %29 = load i32, i32* @TOMOYO_NETWORK_CONNECT, align 4
  %30 = getelementptr inbounds %struct.tomoyo_addr_info, %struct.tomoyo_addr_info* %8, i32 0, i32 1
  store i32 %29, i32* %30, align 4
  br label %32

31:                                               ; preds = %21
  store i32 0, i32* %4, align 4
  br label %49

32:                                               ; preds = %28, %25
  %33 = load i64, i64* %9, align 8
  %34 = load i64, i64* @PF_UNIX, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %40

36:                                               ; preds = %32
  %37 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %38 = load i32, i32* %7, align 4
  %39 = call i32 @tomoyo_check_unix_address(%struct.sockaddr* %37, i32 %38, %struct.tomoyo_addr_info* %8)
  store i32 %39, i32* %4, align 4
  br label %49

40:                                               ; preds = %32
  %41 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %42 = load i32, i32* %7, align 4
  %43 = load %struct.socket*, %struct.socket** %5, align 8
  %44 = getelementptr inbounds %struct.socket, %struct.socket* %43, i32 0, i32 1
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @tomoyo_check_inet_address(%struct.sockaddr* %41, i32 %42, i32 %47, %struct.tomoyo_addr_info* %8)
  store i32 %48, i32* %4, align 4
  br label %49

49:                                               ; preds = %40, %36, %31, %20
  %50 = load i32, i32* %4, align 4
  ret i32 %50
}

declare dso_local i64 @tomoyo_sock_family(%struct.TYPE_2__*) #1

declare dso_local i32 @tomoyo_check_unix_address(%struct.sockaddr*, i32, %struct.tomoyo_addr_info*) #1

declare dso_local i32 @tomoyo_check_inet_address(%struct.sockaddr*, i32, i32, %struct.tomoyo_addr_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
