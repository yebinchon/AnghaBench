; ModuleID = '/home/carl/AnghaBench/linux/security/tomoyo/extr_network.c_tomoyo_socket_listen_permission.c'
source_filename = "/home/carl/AnghaBench/linux/security/tomoyo/extr_network.c_tomoyo_socket_listen_permission.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 (%struct.socket*, %struct.sockaddr*, i32)* }
%struct.sockaddr = type { i32 }
%struct.tomoyo_addr_info = type { i32, i32 }
%struct.sockaddr_storage = type { i32 }

@SOCK_STREAM = common dso_local global i32 0, align 4
@SOCK_SEQPACKET = common dso_local global i32 0, align 4
@TOMOYO_NETWORK_LISTEN = common dso_local global i32 0, align 4
@PF_UNIX = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tomoyo_socket_listen_permission(%struct.socket* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.socket*, align 8
  %4 = alloca %struct.tomoyo_addr_info, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.sockaddr_storage, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.socket* %0, %struct.socket** %3, align 8
  %10 = load %struct.socket*, %struct.socket** %3, align 8
  %11 = getelementptr inbounds %struct.socket, %struct.socket* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 8
  %13 = call i64 @tomoyo_sock_family(i32 %12)
  store i64 %13, i64* %5, align 8
  %14 = load %struct.socket*, %struct.socket** %3, align 8
  %15 = getelementptr inbounds %struct.socket, %struct.socket* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  store i32 %16, i32* %6, align 4
  %17 = load i64, i64* %5, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %27

19:                                               ; preds = %1
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* @SOCK_STREAM, align 4
  %22 = icmp ne i32 %20, %21
  br i1 %22, label %23, label %28

23:                                               ; preds = %19
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* @SOCK_SEQPACKET, align 4
  %26 = icmp ne i32 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %23, %1
  store i32 0, i32* %2, align 4
  br label %58

28:                                               ; preds = %23, %19
  %29 = load %struct.socket*, %struct.socket** %3, align 8
  %30 = getelementptr inbounds %struct.socket, %struct.socket* %29, i32 0, i32 1
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32 (%struct.socket*, %struct.sockaddr*, i32)*, i32 (%struct.socket*, %struct.sockaddr*, i32)** %32, align 8
  %34 = load %struct.socket*, %struct.socket** %3, align 8
  %35 = bitcast %struct.sockaddr_storage* %7 to %struct.sockaddr*
  %36 = call i32 %33(%struct.socket* %34, %struct.sockaddr* %35, i32 0)
  store i32 %36, i32* %9, align 4
  %37 = load i32, i32* %9, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %28
  %40 = load i32, i32* %9, align 4
  store i32 %40, i32* %2, align 4
  br label %58

41:                                               ; preds = %28
  %42 = load i32, i32* %9, align 4
  store i32 %42, i32* %8, align 4
  %43 = load i32, i32* %6, align 4
  %44 = getelementptr inbounds %struct.tomoyo_addr_info, %struct.tomoyo_addr_info* %4, i32 0, i32 0
  store i32 %43, i32* %44, align 4
  %45 = load i32, i32* @TOMOYO_NETWORK_LISTEN, align 4
  %46 = getelementptr inbounds %struct.tomoyo_addr_info, %struct.tomoyo_addr_info* %4, i32 0, i32 1
  store i32 %45, i32* %46, align 4
  %47 = load i64, i64* %5, align 8
  %48 = load i64, i64* @PF_UNIX, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %54

50:                                               ; preds = %41
  %51 = bitcast %struct.sockaddr_storage* %7 to %struct.sockaddr*
  %52 = load i32, i32* %8, align 4
  %53 = call i32 @tomoyo_check_unix_address(%struct.sockaddr* %51, i32 %52, %struct.tomoyo_addr_info* %4)
  store i32 %53, i32* %2, align 4
  br label %58

54:                                               ; preds = %41
  %55 = bitcast %struct.sockaddr_storage* %7 to %struct.sockaddr*
  %56 = load i32, i32* %8, align 4
  %57 = call i32 @tomoyo_check_inet_address(%struct.sockaddr* %55, i32 %56, i32 0, %struct.tomoyo_addr_info* %4)
  store i32 %57, i32* %2, align 4
  br label %58

58:                                               ; preds = %54, %50, %39, %27
  %59 = load i32, i32* %2, align 4
  ret i32 %59
}

declare dso_local i64 @tomoyo_sock_family(i32) #1

declare dso_local i32 @tomoyo_check_unix_address(%struct.sockaddr*, i32, %struct.tomoyo_addr_info*) #1

declare dso_local i32 @tomoyo_check_inet_address(%struct.sockaddr*, i32, i32, %struct.tomoyo_addr_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
