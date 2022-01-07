; ModuleID = '/home/carl/AnghaBench/linux/net/sctp/extr_socket.c_sctp_asconf_mgmt.c'
source_filename = "/home/carl/AnghaBench/linux/net/sctp/extr_socket.c_sctp_asconf_mgmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_sock = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.sctp_sockaddr_entry = type { i64, %union.sctp_addr }
%union.sctp_addr = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.sock = type { i32 }
%struct.sctp_af = type { i32 }
%struct.TYPE_10__ = type { i32 }
%struct.sockaddr = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@SCTP_ADDR_NEW = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sctp_asconf_mgmt(%struct.sctp_sock* %0, %struct.sctp_sockaddr_entry* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sctp_sock*, align 8
  %5 = alloca %struct.sctp_sockaddr_entry*, align 8
  %6 = alloca %struct.sock*, align 8
  %7 = alloca %union.sctp_addr*, align 8
  %8 = alloca %struct.sctp_af*, align 8
  store %struct.sctp_sock* %0, %struct.sctp_sock** %4, align 8
  store %struct.sctp_sockaddr_entry* %1, %struct.sctp_sockaddr_entry** %5, align 8
  %9 = load %struct.sctp_sock*, %struct.sctp_sock** %4, align 8
  %10 = call %struct.sock* @sctp_opt2sk(%struct.sctp_sock* %9)
  store %struct.sock* %10, %struct.sock** %6, align 8
  %11 = load %struct.sctp_sockaddr_entry*, %struct.sctp_sockaddr_entry** %5, align 8
  %12 = getelementptr inbounds %struct.sctp_sockaddr_entry, %struct.sctp_sockaddr_entry* %11, i32 0, i32 1
  store %union.sctp_addr* %12, %union.sctp_addr** %7, align 8
  %13 = load %struct.sctp_sock*, %struct.sctp_sock** %4, align 8
  %14 = getelementptr inbounds %struct.sctp_sock, %struct.sctp_sock* %13, i32 0, i32 0
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @htons(i32 %19)
  %21 = load %union.sctp_addr*, %union.sctp_addr** %7, align 8
  %22 = bitcast %union.sctp_addr* %21 to %struct.TYPE_10__*
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 0
  store i32 %20, i32* %23, align 4
  %24 = load %union.sctp_addr*, %union.sctp_addr** %7, align 8
  %25 = bitcast %union.sctp_addr* %24 to %struct.TYPE_9__*
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call %struct.sctp_af* @sctp_get_af_specific(i32 %27)
  store %struct.sctp_af* %28, %struct.sctp_af** %8, align 8
  %29 = load %struct.sctp_af*, %struct.sctp_af** %8, align 8
  %30 = icmp ne %struct.sctp_af* %29, null
  br i1 %30, label %34, label %31

31:                                               ; preds = %2
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %3, align 4
  br label %61

34:                                               ; preds = %2
  %35 = load %struct.sock*, %struct.sock** %6, align 8
  %36 = load %union.sctp_addr*, %union.sctp_addr** %7, align 8
  %37 = load %struct.sctp_af*, %struct.sctp_af** %8, align 8
  %38 = getelementptr inbounds %struct.sctp_af, %struct.sctp_af* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i64 @sctp_verify_addr(%struct.sock* %35, %union.sctp_addr* %36, i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %34
  %43 = load i32, i32* @EINVAL, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %3, align 4
  br label %61

45:                                               ; preds = %34
  %46 = load %struct.sctp_sockaddr_entry*, %struct.sctp_sockaddr_entry** %5, align 8
  %47 = getelementptr inbounds %struct.sctp_sockaddr_entry, %struct.sctp_sockaddr_entry* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @SCTP_ADDR_NEW, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %56

51:                                               ; preds = %45
  %52 = load %struct.sock*, %struct.sock** %6, align 8
  %53 = load %union.sctp_addr*, %union.sctp_addr** %7, align 8
  %54 = bitcast %union.sctp_addr* %53 to %struct.sockaddr*
  %55 = call i32 @sctp_send_asconf_add_ip(%struct.sock* %52, %struct.sockaddr* %54, i32 1)
  store i32 %55, i32* %3, align 4
  br label %61

56:                                               ; preds = %45
  %57 = load %struct.sock*, %struct.sock** %6, align 8
  %58 = load %union.sctp_addr*, %union.sctp_addr** %7, align 8
  %59 = bitcast %union.sctp_addr* %58 to %struct.sockaddr*
  %60 = call i32 @sctp_send_asconf_del_ip(%struct.sock* %57, %struct.sockaddr* %59, i32 1)
  store i32 %60, i32* %3, align 4
  br label %61

61:                                               ; preds = %56, %51, %42, %31
  %62 = load i32, i32* %3, align 4
  ret i32 %62
}

declare dso_local %struct.sock* @sctp_opt2sk(%struct.sctp_sock*) #1

declare dso_local i32 @htons(i32) #1

declare dso_local %struct.sctp_af* @sctp_get_af_specific(i32) #1

declare dso_local i64 @sctp_verify_addr(%struct.sock*, %union.sctp_addr*, i32) #1

declare dso_local i32 @sctp_send_asconf_add_ip(%struct.sock*, %struct.sockaddr*, i32) #1

declare dso_local i32 @sctp_send_asconf_del_ip(%struct.sock*, %struct.sockaddr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
