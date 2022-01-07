; ModuleID = '/home/carl/AnghaBench/linux/net/llc/extr_af_llc.c_llc_ui_autobind.c'
source_filename = "/home/carl/AnghaBench/linux/net/llc/extr_af_llc.c_llc_ui_autobind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { %struct.sock* }
%struct.sock = type { i64 }
%struct.sockaddr_llc = type { i64 }
%struct.llc_sock = type { i32, %struct.TYPE_6__*, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i64, %struct.sockaddr_llc* }
%struct.TYPE_5__ = type { i32*, i32 }
%struct.llc_sap = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@SOCK_ZAPPED = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@init_net = common dso_local global i32 0, align 4
@EUSERS = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@IFHWADDRLEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.socket*, %struct.sockaddr_llc*)* @llc_ui_autobind to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @llc_ui_autobind(%struct.socket* %0, %struct.sockaddr_llc* %1) #0 {
  %3 = alloca %struct.socket*, align 8
  %4 = alloca %struct.sockaddr_llc*, align 8
  %5 = alloca %struct.sock*, align 8
  %6 = alloca %struct.llc_sock*, align 8
  %7 = alloca %struct.llc_sap*, align 8
  %8 = alloca i32, align 4
  store %struct.socket* %0, %struct.socket** %3, align 8
  store %struct.sockaddr_llc* %1, %struct.sockaddr_llc** %4, align 8
  %9 = load %struct.socket*, %struct.socket** %3, align 8
  %10 = getelementptr inbounds %struct.socket, %struct.socket* %9, i32 0, i32 0
  %11 = load %struct.sock*, %struct.sock** %10, align 8
  store %struct.sock* %11, %struct.sock** %5, align 8
  %12 = load %struct.sock*, %struct.sock** %5, align 8
  %13 = call %struct.llc_sock* @llc_sk(%struct.sock* %12)
  store %struct.llc_sock* %13, %struct.llc_sock** %6, align 8
  %14 = load i32, i32* @EINVAL, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %8, align 4
  %16 = load %struct.sock*, %struct.sock** %5, align 8
  %17 = load i32, i32* @SOCK_ZAPPED, align 4
  %18 = call i32 @sock_flag(%struct.sock* %16, i32 %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %2
  br label %116

21:                                               ; preds = %2
  %22 = load i32, i32* @ENODEV, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %8, align 4
  %24 = load %struct.sock*, %struct.sock** %5, align 8
  %25 = getelementptr inbounds %struct.sock, %struct.sock* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %57

28:                                               ; preds = %21
  %29 = load %struct.sock*, %struct.sock** %5, align 8
  %30 = getelementptr inbounds %struct.sock, %struct.sock* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = call %struct.TYPE_6__* @dev_get_by_index(i32* @init_net, i64 %31)
  %33 = load %struct.llc_sock*, %struct.llc_sock** %6, align 8
  %34 = getelementptr inbounds %struct.llc_sock, %struct.llc_sock* %33, i32 0, i32 1
  store %struct.TYPE_6__* %32, %struct.TYPE_6__** %34, align 8
  %35 = load %struct.llc_sock*, %struct.llc_sock** %6, align 8
  %36 = getelementptr inbounds %struct.llc_sock, %struct.llc_sock* %35, i32 0, i32 1
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %36, align 8
  %38 = icmp ne %struct.TYPE_6__* %37, null
  br i1 %38, label %39, label %56

39:                                               ; preds = %28
  %40 = load %struct.sockaddr_llc*, %struct.sockaddr_llc** %4, align 8
  %41 = getelementptr inbounds %struct.sockaddr_llc, %struct.sockaddr_llc* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.llc_sock*, %struct.llc_sock** %6, align 8
  %44 = getelementptr inbounds %struct.llc_sock, %struct.llc_sock* %43, i32 0, i32 1
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %42, %47
  br i1 %48, label %49, label %56

49:                                               ; preds = %39
  %50 = load %struct.llc_sock*, %struct.llc_sock** %6, align 8
  %51 = getelementptr inbounds %struct.llc_sock, %struct.llc_sock* %50, i32 0, i32 1
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %51, align 8
  %53 = call i32 @dev_put(%struct.TYPE_6__* %52)
  %54 = load %struct.llc_sock*, %struct.llc_sock** %6, align 8
  %55 = getelementptr inbounds %struct.llc_sock, %struct.llc_sock* %54, i32 0, i32 1
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %55, align 8
  br label %56

56:                                               ; preds = %49, %39, %28
  br label %64

57:                                               ; preds = %21
  %58 = load %struct.sockaddr_llc*, %struct.sockaddr_llc** %4, align 8
  %59 = getelementptr inbounds %struct.sockaddr_llc, %struct.sockaddr_llc* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = call %struct.TYPE_6__* @dev_getfirstbyhwtype(i32* @init_net, i64 %60)
  %62 = load %struct.llc_sock*, %struct.llc_sock** %6, align 8
  %63 = getelementptr inbounds %struct.llc_sock, %struct.llc_sock* %62, i32 0, i32 1
  store %struct.TYPE_6__* %61, %struct.TYPE_6__** %63, align 8
  br label %64

64:                                               ; preds = %57, %56
  %65 = load %struct.llc_sock*, %struct.llc_sock** %6, align 8
  %66 = getelementptr inbounds %struct.llc_sock, %struct.llc_sock* %65, i32 0, i32 1
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %66, align 8
  %68 = icmp ne %struct.TYPE_6__* %67, null
  br i1 %68, label %70, label %69

69:                                               ; preds = %64
  br label %116

70:                                               ; preds = %64
  %71 = load i32, i32* @EUSERS, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %8, align 4
  %73 = call i32 (...) @llc_ui_autoport()
  %74 = load %struct.llc_sock*, %struct.llc_sock** %6, align 8
  %75 = getelementptr inbounds %struct.llc_sock, %struct.llc_sock* %74, i32 0, i32 2
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 1
  store i32 %73, i32* %76, align 8
  %77 = load %struct.llc_sock*, %struct.llc_sock** %6, align 8
  %78 = getelementptr inbounds %struct.llc_sock, %struct.llc_sock* %77, i32 0, i32 2
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 8
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %83, label %82

82:                                               ; preds = %70
  br label %116

83:                                               ; preds = %70
  %84 = load i32, i32* @EBUSY, align 4
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %8, align 4
  %86 = load %struct.llc_sock*, %struct.llc_sock** %6, align 8
  %87 = getelementptr inbounds %struct.llc_sock, %struct.llc_sock* %86, i32 0, i32 2
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 8
  %90 = call %struct.llc_sap* @llc_sap_open(i32 %89, i32* null)
  store %struct.llc_sap* %90, %struct.llc_sap** %7, align 8
  %91 = load %struct.llc_sap*, %struct.llc_sap** %7, align 8
  %92 = icmp ne %struct.llc_sap* %91, null
  br i1 %92, label %94, label %93

93:                                               ; preds = %83
  br label %116

94:                                               ; preds = %83
  %95 = load %struct.llc_sock*, %struct.llc_sock** %6, align 8
  %96 = getelementptr inbounds %struct.llc_sock, %struct.llc_sock* %95, i32 0, i32 2
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %96, i32 0, i32 0
  %98 = load i32*, i32** %97, align 8
  %99 = load %struct.llc_sock*, %struct.llc_sock** %6, align 8
  %100 = getelementptr inbounds %struct.llc_sock, %struct.llc_sock* %99, i32 0, i32 1
  %101 = load %struct.TYPE_6__*, %struct.TYPE_6__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 1
  %103 = load %struct.sockaddr_llc*, %struct.sockaddr_llc** %102, align 8
  %104 = load i32, i32* @IFHWADDRLEN, align 4
  %105 = call i32 @memcpy(i32* %98, %struct.sockaddr_llc* %103, i32 %104)
  %106 = load %struct.llc_sock*, %struct.llc_sock** %6, align 8
  %107 = getelementptr inbounds %struct.llc_sock, %struct.llc_sock* %106, i32 0, i32 0
  %108 = load %struct.sockaddr_llc*, %struct.sockaddr_llc** %4, align 8
  %109 = call i32 @memcpy(i32* %107, %struct.sockaddr_llc* %108, i32 4)
  %110 = load %struct.llc_sap*, %struct.llc_sap** %7, align 8
  %111 = load %struct.sock*, %struct.sock** %5, align 8
  %112 = call i32 @llc_sap_add_socket(%struct.llc_sap* %110, %struct.sock* %111)
  %113 = load %struct.sock*, %struct.sock** %5, align 8
  %114 = load i32, i32* @SOCK_ZAPPED, align 4
  %115 = call i32 @sock_reset_flag(%struct.sock* %113, i32 %114)
  store i32 0, i32* %8, align 4
  br label %116

116:                                              ; preds = %94, %93, %82, %69, %20
  %117 = load i32, i32* %8, align 4
  ret i32 %117
}

declare dso_local %struct.llc_sock* @llc_sk(%struct.sock*) #1

declare dso_local i32 @sock_flag(%struct.sock*, i32) #1

declare dso_local %struct.TYPE_6__* @dev_get_by_index(i32*, i64) #1

declare dso_local i32 @dev_put(%struct.TYPE_6__*) #1

declare dso_local %struct.TYPE_6__* @dev_getfirstbyhwtype(i32*, i64) #1

declare dso_local i32 @llc_ui_autoport(...) #1

declare dso_local %struct.llc_sap* @llc_sap_open(i32, i32*) #1

declare dso_local i32 @memcpy(i32*, %struct.sockaddr_llc*, i32) #1

declare dso_local i32 @llc_sap_add_socket(%struct.llc_sap*, %struct.sock*) #1

declare dso_local i32 @sock_reset_flag(%struct.sock*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
