; ModuleID = '/home/carl/AnghaBench/linux/net/netlink/extr_af_netlink.c_netlink_connect.c'
source_filename = "/home/carl/AnghaBench/linux/net/netlink/extr_af_netlink.c_netlink_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { %struct.sock* }
%struct.sock = type { i32 }
%struct.sockaddr = type { i64 }
%struct.netlink_sock = type { i64, i64, i32 }
%struct.sockaddr_nl = type { i64, i64 }

@EINVAL = common dso_local global i32 0, align 4
@AF_UNSPEC = common dso_local global i64 0, align 8
@NETLINK_UNCONNECTED = common dso_local global i32 0, align 4
@AF_NETLINK = common dso_local global i64 0, align 8
@NL_CFG_F_NONROOT_SEND = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@NETLINK_CONNECTED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.socket*, %struct.sockaddr*, i32, i32)* @netlink_connect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @netlink_connect(%struct.socket* %0, %struct.sockaddr* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.socket*, align 8
  %7 = alloca %struct.sockaddr*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.sock*, align 8
  %12 = alloca %struct.netlink_sock*, align 8
  %13 = alloca %struct.sockaddr_nl*, align 8
  store %struct.socket* %0, %struct.socket** %6, align 8
  store %struct.sockaddr* %1, %struct.sockaddr** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %14 = load %struct.socket*, %struct.socket** %6, align 8
  %15 = getelementptr inbounds %struct.socket, %struct.socket* %14, i32 0, i32 0
  %16 = load %struct.sock*, %struct.sock** %15, align 8
  store %struct.sock* %16, %struct.sock** %11, align 8
  %17 = load %struct.sock*, %struct.sock** %11, align 8
  %18 = call %struct.netlink_sock* @nlk_sk(%struct.sock* %17)
  store %struct.netlink_sock* %18, %struct.netlink_sock** %12, align 8
  %19 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %20 = bitcast %struct.sockaddr* %19 to %struct.sockaddr_nl*
  store %struct.sockaddr_nl* %20, %struct.sockaddr_nl** %13, align 8
  %21 = load i32, i32* %8, align 4
  %22 = sext i32 %21 to i64
  %23 = icmp ult i64 %22, 8
  br i1 %23, label %24, label %27

24:                                               ; preds = %4
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %5, align 4
  br label %103

27:                                               ; preds = %4
  %28 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %29 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @AF_UNSPEC, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %41

33:                                               ; preds = %27
  %34 = load i32, i32* @NETLINK_UNCONNECTED, align 4
  %35 = load %struct.sock*, %struct.sock** %11, align 8
  %36 = getelementptr inbounds %struct.sock, %struct.sock* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 4
  %37 = load %struct.netlink_sock*, %struct.netlink_sock** %12, align 8
  %38 = getelementptr inbounds %struct.netlink_sock, %struct.netlink_sock* %37, i32 0, i32 1
  store i64 0, i64* %38, align 8
  %39 = load %struct.netlink_sock*, %struct.netlink_sock** %12, align 8
  %40 = getelementptr inbounds %struct.netlink_sock, %struct.netlink_sock* %39, i32 0, i32 0
  store i64 0, i64* %40, align 8
  store i32 0, i32* %5, align 4
  br label %103

41:                                               ; preds = %27
  %42 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %43 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @AF_NETLINK, align 8
  %46 = icmp ne i64 %44, %45
  br i1 %46, label %47, label %50

47:                                               ; preds = %41
  %48 = load i32, i32* @EINVAL, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %5, align 4
  br label %103

50:                                               ; preds = %41
  %51 = load i32, i32* %8, align 4
  %52 = sext i32 %51 to i64
  %53 = icmp ult i64 %52, 16
  br i1 %53, label %54, label %57

54:                                               ; preds = %50
  %55 = load i32, i32* @EINVAL, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %5, align 4
  br label %103

57:                                               ; preds = %50
  %58 = load %struct.sockaddr_nl*, %struct.sockaddr_nl** %13, align 8
  %59 = getelementptr inbounds %struct.sockaddr_nl, %struct.sockaddr_nl* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %67, label %62

62:                                               ; preds = %57
  %63 = load %struct.sockaddr_nl*, %struct.sockaddr_nl** %13, align 8
  %64 = getelementptr inbounds %struct.sockaddr_nl, %struct.sockaddr_nl* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %75

67:                                               ; preds = %62, %57
  %68 = load %struct.socket*, %struct.socket** %6, align 8
  %69 = load i32, i32* @NL_CFG_F_NONROOT_SEND, align 4
  %70 = call i32 @netlink_allowed(%struct.socket* %68, i32 %69)
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %75, label %72

72:                                               ; preds = %67
  %73 = load i32, i32* @EPERM, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %5, align 4
  br label %103

75:                                               ; preds = %67, %62
  %76 = load %struct.netlink_sock*, %struct.netlink_sock** %12, align 8
  %77 = getelementptr inbounds %struct.netlink_sock, %struct.netlink_sock* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 8
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %83, label %80

80:                                               ; preds = %75
  %81 = load %struct.socket*, %struct.socket** %6, align 8
  %82 = call i32 @netlink_autobind(%struct.socket* %81)
  store i32 %82, i32* %10, align 4
  br label %83

83:                                               ; preds = %80, %75
  %84 = load i32, i32* %10, align 4
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %86, label %101

86:                                               ; preds = %83
  %87 = load i32, i32* @NETLINK_CONNECTED, align 4
  %88 = load %struct.sock*, %struct.sock** %11, align 8
  %89 = getelementptr inbounds %struct.sock, %struct.sock* %88, i32 0, i32 0
  store i32 %87, i32* %89, align 4
  %90 = load %struct.sockaddr_nl*, %struct.sockaddr_nl** %13, align 8
  %91 = getelementptr inbounds %struct.sockaddr_nl, %struct.sockaddr_nl* %90, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = load %struct.netlink_sock*, %struct.netlink_sock** %12, align 8
  %94 = getelementptr inbounds %struct.netlink_sock, %struct.netlink_sock* %93, i32 0, i32 1
  store i64 %92, i64* %94, align 8
  %95 = load %struct.sockaddr_nl*, %struct.sockaddr_nl** %13, align 8
  %96 = getelementptr inbounds %struct.sockaddr_nl, %struct.sockaddr_nl* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = call i64 @ffs(i64 %97)
  %99 = load %struct.netlink_sock*, %struct.netlink_sock** %12, align 8
  %100 = getelementptr inbounds %struct.netlink_sock, %struct.netlink_sock* %99, i32 0, i32 0
  store i64 %98, i64* %100, align 8
  br label %101

101:                                              ; preds = %86, %83
  %102 = load i32, i32* %10, align 4
  store i32 %102, i32* %5, align 4
  br label %103

103:                                              ; preds = %101, %72, %54, %47, %33, %24
  %104 = load i32, i32* %5, align 4
  ret i32 %104
}

declare dso_local %struct.netlink_sock* @nlk_sk(%struct.sock*) #1

declare dso_local i32 @netlink_allowed(%struct.socket*, i32) #1

declare dso_local i32 @netlink_autobind(%struct.socket*) #1

declare dso_local i64 @ffs(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
