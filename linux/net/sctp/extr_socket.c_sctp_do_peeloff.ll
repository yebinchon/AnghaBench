; ModuleID = '/home/carl/AnghaBench/linux/net/sctp/extr_socket.c_sctp_do_peeloff.c'
source_filename = "/home/carl/AnghaBench/linux/net/sctp/extr_socket.c_sctp_do_peeloff.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.sock = type { i32 }
%struct.socket = type { i32 }
%struct.sctp_association = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.sctp_sock = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 (%struct.sock*, i32)*, i32 (i32*, %struct.sock*)* }

@current = common dso_local global %struct.TYPE_8__* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@UDP = common dso_local global i32 0, align 4
@SOCK_SEQPACKET = common dso_local global i32 0, align 4
@IPPROTO_SCTP = common dso_local global i32 0, align 4
@SCTP_SOCKET_UDP_HIGH_BANDWIDTH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sctp_do_peeloff(%struct.sock* %0, i32 %1, %struct.socket** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sock*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.socket**, align 8
  %8 = alloca %struct.sctp_association*, align 8
  %9 = alloca %struct.sctp_sock*, align 8
  %10 = alloca %struct.socket*, align 8
  %11 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.socket** %2, %struct.socket*** %7, align 8
  %12 = load %struct.sock*, %struct.sock** %5, align 8
  %13 = load i32, i32* %6, align 4
  %14 = call %struct.sctp_association* @sctp_id2assoc(%struct.sock* %12, i32 %13)
  store %struct.sctp_association* %14, %struct.sctp_association** %8, align 8
  %15 = load %struct.sock*, %struct.sock** %5, align 8
  %16 = call %struct.sctp_sock* @sctp_sk(%struct.sock* %15)
  store %struct.sctp_sock* %16, %struct.sctp_sock** %9, align 8
  store i32 0, i32* %11, align 4
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** @current, align 8
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.sock*, %struct.sock** %5, align 8
  %23 = call i32 @sock_net(%struct.sock* %22)
  %24 = call i32 @net_eq(i32 %21, i32 %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %3
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %4, align 4
  br label %97

29:                                               ; preds = %3
  %30 = load %struct.sctp_association*, %struct.sctp_association** %8, align 8
  %31 = icmp ne %struct.sctp_association* %30, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %29
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %4, align 4
  br label %97

35:                                               ; preds = %29
  %36 = load %struct.sock*, %struct.sock** %5, align 8
  %37 = load i32, i32* @UDP, align 4
  %38 = call i32 @sctp_style(%struct.sock* %36, i32 %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %43, label %40

40:                                               ; preds = %35
  %41 = load i32, i32* @EINVAL, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %4, align 4
  br label %97

43:                                               ; preds = %35
  %44 = load %struct.sock*, %struct.sock** %5, align 8
  %45 = getelementptr inbounds %struct.sock, %struct.sock* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @SOCK_SEQPACKET, align 4
  %48 = load i32, i32* @IPPROTO_SCTP, align 4
  %49 = call i32 @sock_create(i32 %46, i32 %47, i32 %48, %struct.socket** %10)
  store i32 %49, i32* %11, align 4
  %50 = load i32, i32* %11, align 4
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %43
  %53 = load i32, i32* %11, align 4
  store i32 %53, i32* %4, align 4
  br label %97

54:                                               ; preds = %43
  %55 = load %struct.socket*, %struct.socket** %10, align 8
  %56 = getelementptr inbounds %struct.socket, %struct.socket* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.sock*, %struct.sock** %5, align 8
  %59 = load %struct.sctp_association*, %struct.sctp_association** %8, align 8
  %60 = call i32 @sctp_copy_sock(i32 %57, %struct.sock* %58, %struct.sctp_association* %59)
  %61 = load %struct.sctp_sock*, %struct.sctp_sock** %9, align 8
  %62 = getelementptr inbounds %struct.sctp_sock, %struct.sctp_sock* %61, i32 0, i32 0
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 1
  %65 = load i32 (i32*, %struct.sock*)*, i32 (i32*, %struct.sock*)** %64, align 8
  %66 = load %struct.sctp_association*, %struct.sctp_association** %8, align 8
  %67 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 0
  %69 = load %struct.sock*, %struct.sock** %5, align 8
  %70 = call i32 %65(i32* %68, %struct.sock* %69)
  %71 = load %struct.sctp_sock*, %struct.sctp_sock** %9, align 8
  %72 = getelementptr inbounds %struct.sctp_sock, %struct.sctp_sock* %71, i32 0, i32 0
  %73 = load %struct.TYPE_7__*, %struct.TYPE_7__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 0
  %75 = load i32 (%struct.sock*, i32)*, i32 (%struct.sock*, i32)** %74, align 8
  %76 = load %struct.sock*, %struct.sock** %5, align 8
  %77 = load %struct.socket*, %struct.socket** %10, align 8
  %78 = getelementptr inbounds %struct.socket, %struct.socket* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = call i32 %75(%struct.sock* %76, i32 %79)
  %81 = load %struct.sock*, %struct.sock** %5, align 8
  %82 = load %struct.socket*, %struct.socket** %10, align 8
  %83 = getelementptr inbounds %struct.socket, %struct.socket* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.sctp_association*, %struct.sctp_association** %8, align 8
  %86 = load i32, i32* @SCTP_SOCKET_UDP_HIGH_BANDWIDTH, align 4
  %87 = call i32 @sctp_sock_migrate(%struct.sock* %81, i32 %84, %struct.sctp_association* %85, i32 %86)
  store i32 %87, i32* %11, align 4
  %88 = load i32, i32* %11, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %93

90:                                               ; preds = %54
  %91 = load %struct.socket*, %struct.socket** %10, align 8
  %92 = call i32 @sock_release(%struct.socket* %91)
  store %struct.socket* null, %struct.socket** %10, align 8
  br label %93

93:                                               ; preds = %90, %54
  %94 = load %struct.socket*, %struct.socket** %10, align 8
  %95 = load %struct.socket**, %struct.socket*** %7, align 8
  store %struct.socket* %94, %struct.socket** %95, align 8
  %96 = load i32, i32* %11, align 4
  store i32 %96, i32* %4, align 4
  br label %97

97:                                               ; preds = %93, %52, %40, %32, %26
  %98 = load i32, i32* %4, align 4
  ret i32 %98
}

declare dso_local %struct.sctp_association* @sctp_id2assoc(%struct.sock*, i32) #1

declare dso_local %struct.sctp_sock* @sctp_sk(%struct.sock*) #1

declare dso_local i32 @net_eq(i32, i32) #1

declare dso_local i32 @sock_net(%struct.sock*) #1

declare dso_local i32 @sctp_style(%struct.sock*, i32) #1

declare dso_local i32 @sock_create(i32, i32, i32, %struct.socket**) #1

declare dso_local i32 @sctp_copy_sock(i32, %struct.sock*, %struct.sctp_association*) #1

declare dso_local i32 @sctp_sock_migrate(%struct.sock*, i32, %struct.sctp_association*, i32) #1

declare dso_local i32 @sock_release(%struct.socket*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
