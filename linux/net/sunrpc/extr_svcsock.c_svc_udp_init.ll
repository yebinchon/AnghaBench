; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/extr_svcsock.c_svc_udp_init.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/extr_svcsock.c_svc_udp_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_sock = type { %struct.TYPE_6__*, %struct.TYPE_4__*, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.svc_serv = type { i32 }

@svc_udp_class = common dso_local global i32 0, align 4
@XPT_CACHE_AUTH = common dso_local global i32 0, align 4
@svc_data_ready = common dso_local global i32 0, align 4
@svc_write_space = common dso_local global i32 0, align 4
@XPT_DATA = common dso_local global i32 0, align 4
@XPT_CHNGBUF = common dso_local global i32 0, align 4
@SOL_IP = common dso_local global i32 0, align 4
@IP_PKTINFO = common dso_local global i32 0, align 4
@SOL_IPV6 = common dso_local global i32 0, align 4
@IPV6_RECVPKTINFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"svc: kernel_setsockopt returned %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.svc_sock*, %struct.svc_serv*)* @svc_udp_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @svc_udp_init(%struct.svc_sock* %0, %struct.svc_serv* %1) #0 {
  %3 = alloca %struct.svc_sock*, align 8
  %4 = alloca %struct.svc_serv*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.svc_sock* %0, %struct.svc_sock** %3, align 8
  store %struct.svc_serv* %1, %struct.svc_serv** %4, align 8
  store i32 1, i32* %8, align 4
  %9 = load %struct.svc_sock*, %struct.svc_sock** %3, align 8
  %10 = getelementptr inbounds %struct.svc_sock, %struct.svc_sock* %9, i32 0, i32 0
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @sock_net(i32 %13)
  %15 = load %struct.svc_sock*, %struct.svc_sock** %3, align 8
  %16 = getelementptr inbounds %struct.svc_sock, %struct.svc_sock* %15, i32 0, i32 2
  %17 = load %struct.svc_serv*, %struct.svc_serv** %4, align 8
  %18 = call i32 @svc_xprt_init(i32 %14, i32* @svc_udp_class, %struct.TYPE_5__* %16, %struct.svc_serv* %17)
  %19 = load i32, i32* @XPT_CACHE_AUTH, align 4
  %20 = load %struct.svc_sock*, %struct.svc_sock** %3, align 8
  %21 = getelementptr inbounds %struct.svc_sock, %struct.svc_sock* %20, i32 0, i32 2
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = call i32 @clear_bit(i32 %19, i32* %22)
  %24 = load i32, i32* @svc_data_ready, align 4
  %25 = load %struct.svc_sock*, %struct.svc_sock** %3, align 8
  %26 = getelementptr inbounds %struct.svc_sock, %struct.svc_sock* %25, i32 0, i32 1
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 2
  store i32 %24, i32* %28, align 4
  %29 = load i32, i32* @svc_write_space, align 4
  %30 = load %struct.svc_sock*, %struct.svc_sock** %3, align 8
  %31 = getelementptr inbounds %struct.svc_sock, %struct.svc_sock* %30, i32 0, i32 1
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 1
  store i32 %29, i32* %33, align 4
  %34 = load %struct.svc_sock*, %struct.svc_sock** %3, align 8
  %35 = call i32 @svc_sock_setbufsize(%struct.svc_sock* %34, i32 3)
  %36 = load i32, i32* @XPT_DATA, align 4
  %37 = load %struct.svc_sock*, %struct.svc_sock** %3, align 8
  %38 = getelementptr inbounds %struct.svc_sock, %struct.svc_sock* %37, i32 0, i32 2
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = call i32 @set_bit(i32 %36, i32* %39)
  %41 = load i32, i32* @XPT_CHNGBUF, align 4
  %42 = load %struct.svc_sock*, %struct.svc_sock** %3, align 8
  %43 = getelementptr inbounds %struct.svc_sock, %struct.svc_sock* %42, i32 0, i32 2
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  %45 = call i32 @set_bit(i32 %41, i32* %44)
  %46 = load %struct.svc_sock*, %struct.svc_sock** %3, align 8
  %47 = getelementptr inbounds %struct.svc_sock, %struct.svc_sock* %46, i32 0, i32 1
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  switch i32 %50, label %57 [
    i32 129, label %51
    i32 128, label %54
  ]

51:                                               ; preds = %2
  %52 = load i32, i32* @SOL_IP, align 4
  store i32 %52, i32* %6, align 4
  %53 = load i32, i32* @IP_PKTINFO, align 4
  store i32 %53, i32* %7, align 4
  br label %59

54:                                               ; preds = %2
  %55 = load i32, i32* @SOL_IPV6, align 4
  store i32 %55, i32* %6, align 4
  %56 = load i32, i32* @IPV6_RECVPKTINFO, align 4
  store i32 %56, i32* %7, align 4
  br label %59

57:                                               ; preds = %2
  %58 = call i32 (...) @BUG()
  br label %59

59:                                               ; preds = %57, %54, %51
  %60 = load %struct.svc_sock*, %struct.svc_sock** %3, align 8
  %61 = getelementptr inbounds %struct.svc_sock, %struct.svc_sock* %60, i32 0, i32 0
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %61, align 8
  %63 = load i32, i32* %6, align 4
  %64 = load i32, i32* %7, align 4
  %65 = bitcast i32* %8 to i8*
  %66 = call i32 @kernel_setsockopt(%struct.TYPE_6__* %62, i32 %63, i32 %64, i8* %65, i32 4)
  store i32 %66, i32* %5, align 4
  %67 = load i32, i32* %5, align 4
  %68 = call i32 @dprintk(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %67)
  ret void
}

declare dso_local i32 @svc_xprt_init(i32, i32*, %struct.TYPE_5__*, %struct.svc_serv*) #1

declare dso_local i32 @sock_net(i32) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @svc_sock_setbufsize(%struct.svc_sock*, i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @kernel_setsockopt(%struct.TYPE_6__*, i32, i32, i8*, i32) #1

declare dso_local i32 @dprintk(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
