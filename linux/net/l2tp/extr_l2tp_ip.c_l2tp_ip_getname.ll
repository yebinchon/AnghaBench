; ModuleID = '/home/carl/AnghaBench/linux/net/l2tp/extr_l2tp_ip.c_l2tp_ip_getname.c'
source_filename = "/home/carl/AnghaBench/linux/net/l2tp/extr_l2tp_ip.c_l2tp_ip_getname.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { %struct.sock* }
%struct.sock = type { i32 }
%struct.sockaddr = type { i32 }
%struct.inet_sock = type { i64, i64, i64, i32 }
%struct.l2tp_ip_sock = type { i32, i32 }
%struct.sockaddr_l2tpip = type { %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i64 }

@AF_INET = common dso_local global i32 0, align 4
@ENOTCONN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.socket*, %struct.sockaddr*, i32)* @l2tp_ip_getname to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @l2tp_ip_getname(%struct.socket* %0, %struct.sockaddr* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.socket*, align 8
  %6 = alloca %struct.sockaddr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.sock*, align 8
  %9 = alloca %struct.inet_sock*, align 8
  %10 = alloca %struct.l2tp_ip_sock*, align 8
  %11 = alloca %struct.sockaddr_l2tpip*, align 8
  %12 = alloca i64, align 8
  store %struct.socket* %0, %struct.socket** %5, align 8
  store %struct.sockaddr* %1, %struct.sockaddr** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load %struct.socket*, %struct.socket** %5, align 8
  %14 = getelementptr inbounds %struct.socket, %struct.socket* %13, i32 0, i32 0
  %15 = load %struct.sock*, %struct.sock** %14, align 8
  store %struct.sock* %15, %struct.sock** %8, align 8
  %16 = load %struct.sock*, %struct.sock** %8, align 8
  %17 = call %struct.inet_sock* @inet_sk(%struct.sock* %16)
  store %struct.inet_sock* %17, %struct.inet_sock** %9, align 8
  %18 = load %struct.sock*, %struct.sock** %8, align 8
  %19 = call %struct.l2tp_ip_sock* @l2tp_ip_sk(%struct.sock* %18)
  store %struct.l2tp_ip_sock* %19, %struct.l2tp_ip_sock** %10, align 8
  %20 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %21 = bitcast %struct.sockaddr* %20 to %struct.sockaddr_l2tpip*
  store %struct.sockaddr_l2tpip* %21, %struct.sockaddr_l2tpip** %11, align 8
  %22 = load %struct.sockaddr_l2tpip*, %struct.sockaddr_l2tpip** %11, align 8
  %23 = call i32 @memset(%struct.sockaddr_l2tpip* %22, i32 0, i32 16)
  %24 = load i32, i32* @AF_INET, align 4
  %25 = load %struct.sockaddr_l2tpip*, %struct.sockaddr_l2tpip** %11, align 8
  %26 = getelementptr inbounds %struct.sockaddr_l2tpip, %struct.sockaddr_l2tpip* %25, i32 0, i32 2
  store i32 %24, i32* %26, align 4
  %27 = load i32, i32* %7, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %49

29:                                               ; preds = %3
  %30 = load %struct.inet_sock*, %struct.inet_sock** %9, align 8
  %31 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 8
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %29
  %35 = load i32, i32* @ENOTCONN, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %4, align 4
  br label %70

37:                                               ; preds = %29
  %38 = load %struct.l2tp_ip_sock*, %struct.l2tp_ip_sock** %10, align 8
  %39 = getelementptr inbounds %struct.l2tp_ip_sock, %struct.l2tp_ip_sock* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.sockaddr_l2tpip*, %struct.sockaddr_l2tpip** %11, align 8
  %42 = getelementptr inbounds %struct.sockaddr_l2tpip, %struct.sockaddr_l2tpip* %41, i32 0, i32 1
  store i32 %40, i32* %42, align 8
  %43 = load %struct.inet_sock*, %struct.inet_sock** %9, align 8
  %44 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %43, i32 0, i32 2
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.sockaddr_l2tpip*, %struct.sockaddr_l2tpip** %11, align 8
  %47 = getelementptr inbounds %struct.sockaddr_l2tpip, %struct.sockaddr_l2tpip* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  store i64 %45, i64* %48, align 8
  br label %69

49:                                               ; preds = %3
  %50 = load %struct.inet_sock*, %struct.inet_sock** %9, align 8
  %51 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  store i64 %52, i64* %12, align 8
  %53 = load i64, i64* %12, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %59, label %55

55:                                               ; preds = %49
  %56 = load %struct.inet_sock*, %struct.inet_sock** %9, align 8
  %57 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  store i64 %58, i64* %12, align 8
  br label %59

59:                                               ; preds = %55, %49
  %60 = load %struct.l2tp_ip_sock*, %struct.l2tp_ip_sock** %10, align 8
  %61 = getelementptr inbounds %struct.l2tp_ip_sock, %struct.l2tp_ip_sock* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.sockaddr_l2tpip*, %struct.sockaddr_l2tpip** %11, align 8
  %64 = getelementptr inbounds %struct.sockaddr_l2tpip, %struct.sockaddr_l2tpip* %63, i32 0, i32 1
  store i32 %62, i32* %64, align 8
  %65 = load i64, i64* %12, align 8
  %66 = load %struct.sockaddr_l2tpip*, %struct.sockaddr_l2tpip** %11, align 8
  %67 = getelementptr inbounds %struct.sockaddr_l2tpip, %struct.sockaddr_l2tpip* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 0
  store i64 %65, i64* %68, align 8
  br label %69

69:                                               ; preds = %59, %37
  store i32 16, i32* %4, align 4
  br label %70

70:                                               ; preds = %69, %34
  %71 = load i32, i32* %4, align 4
  ret i32 %71
}

declare dso_local %struct.inet_sock* @inet_sk(%struct.sock*) #1

declare dso_local %struct.l2tp_ip_sock* @l2tp_ip_sk(%struct.sock*) #1

declare dso_local i32 @memset(%struct.sockaddr_l2tpip*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
