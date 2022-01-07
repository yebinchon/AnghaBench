; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_af_inet.c_inet_shutdown.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_af_inet.c_inet_shutdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { i64, %struct.sock* }
%struct.sock = type { i32, i32, i32 (%struct.sock*)*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.sock*, i32)*, i32 (%struct.sock*, i32)* }

@SHUTDOWN_MASK = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@SS_CONNECTING = common dso_local global i64 0, align 8
@TCPF_SYN_SENT = common dso_local global i32 0, align 4
@TCPF_SYN_RECV = common dso_local global i32 0, align 4
@TCPF_CLOSE = common dso_local global i32 0, align 4
@SS_DISCONNECTING = common dso_local global i8* null, align 8
@SS_CONNECTED = common dso_local global i64 0, align 8
@ENOTCONN = common dso_local global i32 0, align 4
@RCV_SHUTDOWN = common dso_local global i32 0, align 4
@O_NONBLOCK = common dso_local global i32 0, align 4
@SS_UNCONNECTED = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @inet_shutdown(%struct.socket* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.socket*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.sock*, align 8
  %7 = alloca i32, align 4
  store %struct.socket* %0, %struct.socket** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.socket*, %struct.socket** %4, align 8
  %9 = getelementptr inbounds %struct.socket, %struct.socket* %8, i32 0, i32 1
  %10 = load %struct.sock*, %struct.sock** %9, align 8
  store %struct.sock* %10, %struct.sock** %6, align 8
  store i32 0, i32* %7, align 4
  %11 = load i32, i32* %5, align 4
  %12 = add nsw i32 %11, 1
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* @SHUTDOWN_MASK, align 4
  %15 = xor i32 %14, -1
  %16 = and i32 %13, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %2
  %19 = load i32, i32* %5, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %18, %2
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %119

24:                                               ; preds = %18
  %25 = load %struct.sock*, %struct.sock** %6, align 8
  %26 = call i32 @lock_sock(%struct.sock* %25)
  %27 = load %struct.socket*, %struct.socket** %4, align 8
  %28 = getelementptr inbounds %struct.socket, %struct.socket* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @SS_CONNECTING, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %54

32:                                               ; preds = %24
  %33 = load %struct.sock*, %struct.sock** %6, align 8
  %34 = getelementptr inbounds %struct.sock, %struct.sock* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = shl i32 1, %35
  %37 = load i32, i32* @TCPF_SYN_SENT, align 4
  %38 = load i32, i32* @TCPF_SYN_RECV, align 4
  %39 = or i32 %37, %38
  %40 = load i32, i32* @TCPF_CLOSE, align 4
  %41 = or i32 %39, %40
  %42 = and i32 %36, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %32
  %45 = load i8*, i8** @SS_DISCONNECTING, align 8
  %46 = ptrtoint i8* %45 to i64
  %47 = load %struct.socket*, %struct.socket** %4, align 8
  %48 = getelementptr inbounds %struct.socket, %struct.socket* %47, i32 0, i32 0
  store i64 %46, i64* %48, align 8
  br label %53

49:                                               ; preds = %32
  %50 = load i64, i64* @SS_CONNECTED, align 8
  %51 = load %struct.socket*, %struct.socket** %4, align 8
  %52 = getelementptr inbounds %struct.socket, %struct.socket* %51, i32 0, i32 0
  store i64 %50, i64* %52, align 8
  br label %53

53:                                               ; preds = %49, %44
  br label %54

54:                                               ; preds = %53, %24
  %55 = load %struct.sock*, %struct.sock** %6, align 8
  %56 = getelementptr inbounds %struct.sock, %struct.sock* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  switch i32 %57, label %61 [
    i32 130, label %58
    i32 129, label %83
    i32 128, label %90
  ]

58:                                               ; preds = %54
  %59 = load i32, i32* @ENOTCONN, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %7, align 4
  br label %61

61:                                               ; preds = %54, %58
  %62 = load i32, i32* %5, align 4
  %63 = load %struct.sock*, %struct.sock** %6, align 8
  %64 = getelementptr inbounds %struct.sock, %struct.sock* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = or i32 %65, %62
  store i32 %66, i32* %64, align 4
  %67 = load %struct.sock*, %struct.sock** %6, align 8
  %68 = getelementptr inbounds %struct.sock, %struct.sock* %67, i32 0, i32 3
  %69 = load %struct.TYPE_2__*, %struct.TYPE_2__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 1
  %71 = load i32 (%struct.sock*, i32)*, i32 (%struct.sock*, i32)** %70, align 8
  %72 = icmp ne i32 (%struct.sock*, i32)* %71, null
  br i1 %72, label %73, label %82

73:                                               ; preds = %61
  %74 = load %struct.sock*, %struct.sock** %6, align 8
  %75 = getelementptr inbounds %struct.sock, %struct.sock* %74, i32 0, i32 3
  %76 = load %struct.TYPE_2__*, %struct.TYPE_2__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 1
  %78 = load i32 (%struct.sock*, i32)*, i32 (%struct.sock*, i32)** %77, align 8
  %79 = load %struct.sock*, %struct.sock** %6, align 8
  %80 = load i32, i32* %5, align 4
  %81 = call i32 %78(%struct.sock* %79, i32 %80)
  br label %82

82:                                               ; preds = %73, %61
  br label %110

83:                                               ; preds = %54
  %84 = load i32, i32* %5, align 4
  %85 = load i32, i32* @RCV_SHUTDOWN, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %89, label %88

88:                                               ; preds = %83
  br label %110

89:                                               ; preds = %83
  br label %90

90:                                               ; preds = %54, %89
  %91 = load %struct.sock*, %struct.sock** %6, align 8
  %92 = getelementptr inbounds %struct.sock, %struct.sock* %91, i32 0, i32 3
  %93 = load %struct.TYPE_2__*, %struct.TYPE_2__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 0
  %95 = load i32 (%struct.sock*, i32)*, i32 (%struct.sock*, i32)** %94, align 8
  %96 = load %struct.sock*, %struct.sock** %6, align 8
  %97 = load i32, i32* @O_NONBLOCK, align 4
  %98 = call i32 %95(%struct.sock* %96, i32 %97)
  store i32 %98, i32* %7, align 4
  %99 = load i32, i32* %7, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %103

101:                                              ; preds = %90
  %102 = load i8*, i8** @SS_DISCONNECTING, align 8
  br label %105

103:                                              ; preds = %90
  %104 = load i8*, i8** @SS_UNCONNECTED, align 8
  br label %105

105:                                              ; preds = %103, %101
  %106 = phi i8* [ %102, %101 ], [ %104, %103 ]
  %107 = ptrtoint i8* %106 to i64
  %108 = load %struct.socket*, %struct.socket** %4, align 8
  %109 = getelementptr inbounds %struct.socket, %struct.socket* %108, i32 0, i32 0
  store i64 %107, i64* %109, align 8
  br label %110

110:                                              ; preds = %105, %88, %82
  %111 = load %struct.sock*, %struct.sock** %6, align 8
  %112 = getelementptr inbounds %struct.sock, %struct.sock* %111, i32 0, i32 2
  %113 = load i32 (%struct.sock*)*, i32 (%struct.sock*)** %112, align 8
  %114 = load %struct.sock*, %struct.sock** %6, align 8
  %115 = call i32 %113(%struct.sock* %114)
  %116 = load %struct.sock*, %struct.sock** %6, align 8
  %117 = call i32 @release_sock(%struct.sock* %116)
  %118 = load i32, i32* %7, align 4
  store i32 %118, i32* %3, align 4
  br label %119

119:                                              ; preds = %110, %21
  %120 = load i32, i32* %3, align 4
  ret i32 %120
}

declare dso_local i32 @lock_sock(%struct.sock*) #1

declare dso_local i32 @release_sock(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
