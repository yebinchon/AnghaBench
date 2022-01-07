; ModuleID = '/home/carl/AnghaBench/linux/security/tomoyo/extr_network.c_tomoyo_socket_sendmsg_permission.c'
source_filename = "/home/carl/AnghaBench/linux/security/tomoyo/extr_network.c_tomoyo_socket_sendmsg_permission.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.msghdr = type { i32, i64 }
%struct.tomoyo_addr_info = type { i32, i32 }
%struct.sockaddr = type { i32 }

@SOCK_DGRAM = common dso_local global i32 0, align 4
@SOCK_RAW = common dso_local global i32 0, align 4
@TOMOYO_NETWORK_SEND = common dso_local global i32 0, align 4
@PF_UNIX = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tomoyo_socket_sendmsg_permission(%struct.socket* %0, %struct.msghdr* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.socket*, align 8
  %6 = alloca %struct.msghdr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.tomoyo_addr_info, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.socket* %0, %struct.socket** %5, align 8
  store %struct.msghdr* %1, %struct.msghdr** %6, align 8
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
  %18 = load %struct.msghdr*, %struct.msghdr** %6, align 8
  %19 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %33

22:                                               ; preds = %3
  %23 = load i64, i64* %9, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %33

25:                                               ; preds = %22
  %26 = load i32, i32* %10, align 4
  %27 = load i32, i32* @SOCK_DGRAM, align 4
  %28 = icmp ne i32 %26, %27
  br i1 %28, label %29, label %34

29:                                               ; preds = %25
  %30 = load i32, i32* %10, align 4
  %31 = load i32, i32* @SOCK_RAW, align 4
  %32 = icmp ne i32 %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %29, %22, %3
  store i32 0, i32* %4, align 4
  br label %65

34:                                               ; preds = %29, %25
  %35 = load i32, i32* %10, align 4
  %36 = getelementptr inbounds %struct.tomoyo_addr_info, %struct.tomoyo_addr_info* %8, i32 0, i32 0
  store i32 %35, i32* %36, align 4
  %37 = load i32, i32* @TOMOYO_NETWORK_SEND, align 4
  %38 = getelementptr inbounds %struct.tomoyo_addr_info, %struct.tomoyo_addr_info* %8, i32 0, i32 1
  store i32 %37, i32* %38, align 4
  %39 = load i64, i64* %9, align 8
  %40 = load i64, i64* @PF_UNIX, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %51

42:                                               ; preds = %34
  %43 = load %struct.msghdr*, %struct.msghdr** %6, align 8
  %44 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = inttoptr i64 %45 to %struct.sockaddr*
  %47 = load %struct.msghdr*, %struct.msghdr** %6, align 8
  %48 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @tomoyo_check_unix_address(%struct.sockaddr* %46, i32 %49, %struct.tomoyo_addr_info* %8)
  store i32 %50, i32* %4, align 4
  br label %65

51:                                               ; preds = %34
  %52 = load %struct.msghdr*, %struct.msghdr** %6, align 8
  %53 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = inttoptr i64 %54 to %struct.sockaddr*
  %56 = load %struct.msghdr*, %struct.msghdr** %6, align 8
  %57 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.socket*, %struct.socket** %5, align 8
  %60 = getelementptr inbounds %struct.socket, %struct.socket* %59, i32 0, i32 1
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @tomoyo_check_inet_address(%struct.sockaddr* %55, i32 %58, i32 %63, %struct.tomoyo_addr_info* %8)
  store i32 %64, i32* %4, align 4
  br label %65

65:                                               ; preds = %51, %42, %33
  %66 = load i32, i32* %4, align 4
  ret i32 %66
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
