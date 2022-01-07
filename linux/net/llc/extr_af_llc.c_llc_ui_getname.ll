; ModuleID = '/home/carl/AnghaBench/linux/net/llc/extr_af_llc.c_llc_ui_getname.c'
source_filename = "/home/carl/AnghaBench/linux/net/llc/extr_af_llc.c_llc_ui_getname.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { %struct.sock* }
%struct.sock = type { i64 }
%struct.sockaddr = type { i32 }
%struct.sockaddr_llc = type { i32, %struct.sockaddr, i32, i32 }
%struct.llc_sock = type { %struct.TYPE_8__*, %struct.TYPE_7__*, %struct.TYPE_5__ }
%struct.TYPE_8__ = type { %struct.sockaddr_llc*, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { %struct.sockaddr_llc, i32 }

@EBADF = common dso_local global i32 0, align 4
@SOCK_ZAPPED = common dso_local global i32 0, align 4
@ENOTCONN = common dso_local global i32 0, align 4
@TCP_ESTABLISHED = common dso_local global i64 0, align 8
@IFHWADDRLEN = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@AF_LLC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.socket*, %struct.sockaddr*, i32)* @llc_ui_getname to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @llc_ui_getname(%struct.socket* %0, %struct.sockaddr* %1, i32 %2) #0 {
  %4 = alloca %struct.socket*, align 8
  %5 = alloca %struct.sockaddr*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.sockaddr_llc, align 4
  %8 = alloca %struct.sock*, align 8
  %9 = alloca %struct.llc_sock*, align 8
  %10 = alloca i32, align 4
  store %struct.socket* %0, %struct.socket** %4, align 8
  store %struct.sockaddr* %1, %struct.sockaddr** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load %struct.socket*, %struct.socket** %4, align 8
  %12 = getelementptr inbounds %struct.socket, %struct.socket* %11, i32 0, i32 0
  %13 = load %struct.sock*, %struct.sock** %12, align 8
  store %struct.sock* %13, %struct.sock** %8, align 8
  %14 = load %struct.sock*, %struct.sock** %8, align 8
  %15 = call %struct.llc_sock* @llc_sk(%struct.sock* %14)
  store %struct.llc_sock* %15, %struct.llc_sock** %9, align 8
  %16 = load i32, i32* @EBADF, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %10, align 4
  %18 = call i32 @memset(%struct.sockaddr_llc* %7, i32 0, i32 16)
  %19 = load %struct.sock*, %struct.sock** %8, align 8
  %20 = call i32 @lock_sock(%struct.sock* %19)
  %21 = load %struct.sock*, %struct.sock** %8, align 8
  %22 = load i32, i32* @SOCK_ZAPPED, align 4
  %23 = call i64 @sock_flag(%struct.sock* %21, i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %3
  br label %103

26:                                               ; preds = %3
  %27 = load i32, i32* %6, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %62

29:                                               ; preds = %26
  %30 = load i32, i32* @ENOTCONN, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %10, align 4
  %32 = load %struct.sock*, %struct.sock** %8, align 8
  %33 = getelementptr inbounds %struct.sock, %struct.sock* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @TCP_ESTABLISHED, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %29
  br label %103

38:                                               ; preds = %29
  %39 = load %struct.llc_sock*, %struct.llc_sock** %9, align 8
  %40 = getelementptr inbounds %struct.llc_sock, %struct.llc_sock* %39, i32 0, i32 0
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %40, align 8
  %42 = icmp ne %struct.TYPE_8__* %41, null
  br i1 %42, label %43, label %50

43:                                               ; preds = %38
  %44 = load %struct.llc_sock*, %struct.llc_sock** %9, align 8
  %45 = getelementptr inbounds %struct.llc_sock, %struct.llc_sock* %44, i32 0, i32 0
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = getelementptr inbounds %struct.sockaddr_llc, %struct.sockaddr_llc* %7, i32 0, i32 2
  store i32 %48, i32* %49, align 4
  br label %50

50:                                               ; preds = %43, %38
  %51 = load %struct.llc_sock*, %struct.llc_sock** %9, align 8
  %52 = getelementptr inbounds %struct.llc_sock, %struct.llc_sock* %51, i32 0, i32 2
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = getelementptr inbounds %struct.sockaddr_llc, %struct.sockaddr_llc* %7, i32 0, i32 3
  store i32 %54, i32* %55, align 4
  %56 = getelementptr inbounds %struct.sockaddr_llc, %struct.sockaddr_llc* %7, i32 0, i32 1
  %57 = load %struct.llc_sock*, %struct.llc_sock** %9, align 8
  %58 = getelementptr inbounds %struct.llc_sock, %struct.llc_sock* %57, i32 0, i32 2
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 0
  %60 = load i32, i32* @IFHWADDRLEN, align 4
  %61 = call i32 @memcpy(%struct.sockaddr* %56, %struct.sockaddr_llc* %59, i32 %60)
  br label %98

62:                                               ; preds = %26
  %63 = load i32, i32* @EINVAL, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %10, align 4
  %65 = load %struct.llc_sock*, %struct.llc_sock** %9, align 8
  %66 = getelementptr inbounds %struct.llc_sock, %struct.llc_sock* %65, i32 0, i32 1
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %66, align 8
  %68 = icmp ne %struct.TYPE_7__* %67, null
  br i1 %68, label %70, label %69

69:                                               ; preds = %62
  br label %103

70:                                               ; preds = %62
  %71 = load %struct.llc_sock*, %struct.llc_sock** %9, align 8
  %72 = getelementptr inbounds %struct.llc_sock, %struct.llc_sock* %71, i32 0, i32 1
  %73 = load %struct.TYPE_7__*, %struct.TYPE_7__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = getelementptr inbounds %struct.sockaddr_llc, %struct.sockaddr_llc* %7, i32 0, i32 3
  store i32 %76, i32* %77, align 4
  %78 = load %struct.llc_sock*, %struct.llc_sock** %9, align 8
  %79 = getelementptr inbounds %struct.llc_sock, %struct.llc_sock* %78, i32 0, i32 0
  %80 = load %struct.TYPE_8__*, %struct.TYPE_8__** %79, align 8
  %81 = icmp ne %struct.TYPE_8__* %80, null
  br i1 %81, label %82, label %97

82:                                               ; preds = %70
  %83 = load %struct.llc_sock*, %struct.llc_sock** %9, align 8
  %84 = getelementptr inbounds %struct.llc_sock, %struct.llc_sock* %83, i32 0, i32 0
  %85 = load %struct.TYPE_8__*, %struct.TYPE_8__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 8
  %88 = getelementptr inbounds %struct.sockaddr_llc, %struct.sockaddr_llc* %7, i32 0, i32 2
  store i32 %87, i32* %88, align 4
  %89 = getelementptr inbounds %struct.sockaddr_llc, %struct.sockaddr_llc* %7, i32 0, i32 1
  %90 = load %struct.llc_sock*, %struct.llc_sock** %9, align 8
  %91 = getelementptr inbounds %struct.llc_sock, %struct.llc_sock* %90, i32 0, i32 0
  %92 = load %struct.TYPE_8__*, %struct.TYPE_8__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %92, i32 0, i32 0
  %94 = load %struct.sockaddr_llc*, %struct.sockaddr_llc** %93, align 8
  %95 = load i32, i32* @IFHWADDRLEN, align 4
  %96 = call i32 @memcpy(%struct.sockaddr* %89, %struct.sockaddr_llc* %94, i32 %95)
  br label %97

97:                                               ; preds = %82, %70
  br label %98

98:                                               ; preds = %97, %50
  %99 = load i32, i32* @AF_LLC, align 4
  %100 = getelementptr inbounds %struct.sockaddr_llc, %struct.sockaddr_llc* %7, i32 0, i32 0
  store i32 %99, i32* %100, align 4
  %101 = load %struct.sockaddr*, %struct.sockaddr** %5, align 8
  %102 = call i32 @memcpy(%struct.sockaddr* %101, %struct.sockaddr_llc* %7, i32 16)
  store i32 16, i32* %10, align 4
  br label %103

103:                                              ; preds = %98, %69, %37, %25
  %104 = load %struct.sock*, %struct.sock** %8, align 8
  %105 = call i32 @release_sock(%struct.sock* %104)
  %106 = load i32, i32* %10, align 4
  ret i32 %106
}

declare dso_local %struct.llc_sock* @llc_sk(%struct.sock*) #1

declare dso_local i32 @memset(%struct.sockaddr_llc*, i32, i32) #1

declare dso_local i32 @lock_sock(%struct.sock*) #1

declare dso_local i64 @sock_flag(%struct.sock*, i32) #1

declare dso_local i32 @memcpy(%struct.sockaddr*, %struct.sockaddr_llc*, i32) #1

declare dso_local i32 @release_sock(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
