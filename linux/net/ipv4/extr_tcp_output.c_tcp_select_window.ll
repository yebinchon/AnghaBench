; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_output.c_tcp_select_window.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_output.c_tcp_select_window.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.tcp_sock = type { i64, i64, %struct.TYPE_6__, i32, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_7__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }

@LINUX_MIB_TCPWANTZEROWINDOWADV = common dso_local global i32 0, align 4
@MAX_TCP_WINDOW = common dso_local global i32 0, align 4
@LINUX_MIB_TCPTOZEROWINDOWADV = common dso_local global i32 0, align 4
@LINUX_MIB_TCPFROMZEROWINDOWADV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.sock*)* @tcp_select_window to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @tcp_select_window(%struct.sock* %0) #0 {
  %2 = alloca %struct.sock*, align 8
  %3 = alloca %struct.tcp_sock*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.sock* %0, %struct.sock** %2, align 8
  %7 = load %struct.sock*, %struct.sock** %2, align 8
  %8 = call %struct.tcp_sock* @tcp_sk(%struct.sock* %7)
  store %struct.tcp_sock* %8, %struct.tcp_sock** %3, align 8
  %9 = load %struct.tcp_sock*, %struct.tcp_sock** %3, align 8
  %10 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  store i64 %11, i64* %4, align 8
  %12 = load %struct.tcp_sock*, %struct.tcp_sock** %3, align 8
  %13 = call i64 @tcp_receive_window(%struct.tcp_sock* %12)
  store i64 %13, i64* %5, align 8
  %14 = load %struct.sock*, %struct.sock** %2, align 8
  %15 = call i64 @__tcp_select_window(%struct.sock* %14)
  store i64 %15, i64* %6, align 8
  %16 = load i64, i64* %6, align 8
  %17 = load i64, i64* %5, align 8
  %18 = icmp slt i64 %16, %17
  br i1 %18, label %19, label %35

19:                                               ; preds = %1
  %20 = load i64, i64* %6, align 8
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %19
  %23 = load %struct.sock*, %struct.sock** %2, align 8
  %24 = call %struct.TYPE_7__* @sock_net(%struct.sock* %23)
  %25 = load i32, i32* @LINUX_MIB_TCPWANTZEROWINDOWADV, align 4
  %26 = call i32 @NET_INC_STATS(%struct.TYPE_7__* %24, i32 %25)
  br label %27

27:                                               ; preds = %22, %19
  %28 = load i64, i64* %5, align 8
  %29 = load %struct.tcp_sock*, %struct.tcp_sock** %3, align 8
  %30 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %29, i32 0, i32 2
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = shl i32 1, %32
  %34 = call i64 @ALIGN(i64 %28, i32 %33)
  store i64 %34, i64* %6, align 8
  br label %35

35:                                               ; preds = %27, %1
  %36 = load i64, i64* %6, align 8
  %37 = load %struct.tcp_sock*, %struct.tcp_sock** %3, align 8
  %38 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %37, i32 0, i32 0
  store i64 %36, i64* %38, align 8
  %39 = load %struct.tcp_sock*, %struct.tcp_sock** %3, align 8
  %40 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.tcp_sock*, %struct.tcp_sock** %3, align 8
  %43 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %42, i32 0, i32 4
  store i32 %41, i32* %43, align 8
  %44 = load %struct.tcp_sock*, %struct.tcp_sock** %3, align 8
  %45 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %44, i32 0, i32 2
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %60, label %49

49:                                               ; preds = %35
  %50 = load %struct.sock*, %struct.sock** %2, align 8
  %51 = call %struct.TYPE_7__* @sock_net(%struct.sock* %50)
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %49
  %57 = load i64, i64* %6, align 8
  %58 = load i32, i32* @MAX_TCP_WINDOW, align 4
  %59 = call i64 @min(i64 %57, i32 %58)
  store i64 %59, i64* %6, align 8
  br label %68

60:                                               ; preds = %49, %35
  %61 = load i64, i64* %6, align 8
  %62 = load %struct.tcp_sock*, %struct.tcp_sock** %3, align 8
  %63 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %62, i32 0, i32 2
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = shl i32 65535, %65
  %67 = call i64 @min(i64 %61, i32 %66)
  store i64 %67, i64* %6, align 8
  br label %68

68:                                               ; preds = %60, %56
  %69 = load %struct.tcp_sock*, %struct.tcp_sock** %3, align 8
  %70 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %69, i32 0, i32 2
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = load i64, i64* %6, align 8
  %74 = zext i32 %72 to i64
  %75 = ashr i64 %73, %74
  store i64 %75, i64* %6, align 8
  %76 = load i64, i64* %6, align 8
  %77 = icmp eq i64 %76, 0
  br i1 %77, label %78, label %89

78:                                               ; preds = %68
  %79 = load %struct.tcp_sock*, %struct.tcp_sock** %3, align 8
  %80 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %79, i32 0, i32 1
  store i64 0, i64* %80, align 8
  %81 = load i64, i64* %4, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %88

83:                                               ; preds = %78
  %84 = load %struct.sock*, %struct.sock** %2, align 8
  %85 = call %struct.TYPE_7__* @sock_net(%struct.sock* %84)
  %86 = load i32, i32* @LINUX_MIB_TCPTOZEROWINDOWADV, align 4
  %87 = call i32 @NET_INC_STATS(%struct.TYPE_7__* %85, i32 %86)
  br label %88

88:                                               ; preds = %83, %78
  br label %98

89:                                               ; preds = %68
  %90 = load i64, i64* %4, align 8
  %91 = icmp eq i64 %90, 0
  br i1 %91, label %92, label %97

92:                                               ; preds = %89
  %93 = load %struct.sock*, %struct.sock** %2, align 8
  %94 = call %struct.TYPE_7__* @sock_net(%struct.sock* %93)
  %95 = load i32, i32* @LINUX_MIB_TCPFROMZEROWINDOWADV, align 4
  %96 = call i32 @NET_INC_STATS(%struct.TYPE_7__* %94, i32 %95)
  br label %97

97:                                               ; preds = %92, %89
  br label %98

98:                                               ; preds = %97, %88
  %99 = load i64, i64* %6, align 8
  ret i64 %99
}

declare dso_local %struct.tcp_sock* @tcp_sk(%struct.sock*) #1

declare dso_local i64 @tcp_receive_window(%struct.tcp_sock*) #1

declare dso_local i64 @__tcp_select_window(%struct.sock*) #1

declare dso_local i32 @NET_INC_STATS(%struct.TYPE_7__*, i32) #1

declare dso_local %struct.TYPE_7__* @sock_net(%struct.sock*) #1

declare dso_local i64 @ALIGN(i64, i32) #1

declare dso_local i64 @min(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
