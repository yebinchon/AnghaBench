; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/extr_svcsock.c_svc_tcp_init.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/extr_svcsock.c_svc_tcp_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_sock = type { %struct.TYPE_6__, i32*, i64, i64, i64, %struct.TYPE_4__*, %struct.sock* }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.sock = type { i32, i32, i32, i32 }
%struct.svc_serv = type { i32 }
%struct.TYPE_5__ = type { i32 }

@svc_tcp_class = common dso_local global i32 0, align 4
@XPT_CACHE_AUTH = common dso_local global i32 0, align 4
@XPT_CONG_CTRL = common dso_local global i32 0, align 4
@TCP_LISTEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"setting up TCP socket for listening\0A\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"listener\00", align 1
@XPT_LISTENER = common dso_local global i32 0, align 4
@svc_tcp_listen_data_ready = common dso_local global i32 0, align 4
@XPT_CONN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [35 x i8] c"setting up TCP socket for reading\0A\00", align 1
@svc_tcp_state_change = common dso_local global i32 0, align 4
@svc_data_ready = common dso_local global i32 0, align 4
@svc_write_space = common dso_local global i32 0, align 4
@TCP_NAGLE_OFF = common dso_local global i32 0, align 4
@XPT_DATA = common dso_local global i32 0, align 4
@XPT_CLOSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.svc_sock*, %struct.svc_serv*)* @svc_tcp_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @svc_tcp_init(%struct.svc_sock* %0, %struct.svc_serv* %1) #0 {
  %3 = alloca %struct.svc_sock*, align 8
  %4 = alloca %struct.svc_serv*, align 8
  %5 = alloca %struct.sock*, align 8
  store %struct.svc_sock* %0, %struct.svc_sock** %3, align 8
  store %struct.svc_serv* %1, %struct.svc_serv** %4, align 8
  %6 = load %struct.svc_sock*, %struct.svc_sock** %3, align 8
  %7 = getelementptr inbounds %struct.svc_sock, %struct.svc_sock* %6, i32 0, i32 6
  %8 = load %struct.sock*, %struct.sock** %7, align 8
  store %struct.sock* %8, %struct.sock** %5, align 8
  %9 = load %struct.svc_sock*, %struct.svc_sock** %3, align 8
  %10 = getelementptr inbounds %struct.svc_sock, %struct.svc_sock* %9, i32 0, i32 5
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @sock_net(i32 %13)
  %15 = load %struct.svc_sock*, %struct.svc_sock** %3, align 8
  %16 = getelementptr inbounds %struct.svc_sock, %struct.svc_sock* %15, i32 0, i32 0
  %17 = load %struct.svc_serv*, %struct.svc_serv** %4, align 8
  %18 = call i32 @svc_xprt_init(i32 %14, i32* @svc_tcp_class, %struct.TYPE_6__* %16, %struct.svc_serv* %17)
  %19 = load i32, i32* @XPT_CACHE_AUTH, align 4
  %20 = load %struct.svc_sock*, %struct.svc_sock** %3, align 8
  %21 = getelementptr inbounds %struct.svc_sock, %struct.svc_sock* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = call i32 @set_bit(i32 %19, i32* %22)
  %24 = load i32, i32* @XPT_CONG_CTRL, align 4
  %25 = load %struct.svc_sock*, %struct.svc_sock** %3, align 8
  %26 = getelementptr inbounds %struct.svc_sock, %struct.svc_sock* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = call i32 @set_bit(i32 %24, i32* %27)
  %29 = load %struct.sock*, %struct.sock** %5, align 8
  %30 = getelementptr inbounds %struct.sock, %struct.sock* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @TCP_LISTEN, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %54

34:                                               ; preds = %2
  %35 = call i32 @dprintk(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %36 = load %struct.svc_sock*, %struct.svc_sock** %3, align 8
  %37 = getelementptr inbounds %struct.svc_sock, %struct.svc_sock* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @strcpy(i32 %39, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %41 = load i32, i32* @XPT_LISTENER, align 4
  %42 = load %struct.svc_sock*, %struct.svc_sock** %3, align 8
  %43 = getelementptr inbounds %struct.svc_sock, %struct.svc_sock* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = call i32 @set_bit(i32 %41, i32* %44)
  %46 = load i32, i32* @svc_tcp_listen_data_ready, align 4
  %47 = load %struct.sock*, %struct.sock** %5, align 8
  %48 = getelementptr inbounds %struct.sock, %struct.sock* %47, i32 0, i32 2
  store i32 %46, i32* %48, align 4
  %49 = load i32, i32* @XPT_CONN, align 4
  %50 = load %struct.svc_sock*, %struct.svc_sock** %3, align 8
  %51 = getelementptr inbounds %struct.svc_sock, %struct.svc_sock* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  %53 = call i32 @set_bit(i32 %49, i32* %52)
  br label %98

54:                                               ; preds = %2
  %55 = call i32 @dprintk(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  %56 = load i32, i32* @svc_tcp_state_change, align 4
  %57 = load %struct.sock*, %struct.sock** %5, align 8
  %58 = getelementptr inbounds %struct.sock, %struct.sock* %57, i32 0, i32 3
  store i32 %56, i32* %58, align 4
  %59 = load i32, i32* @svc_data_ready, align 4
  %60 = load %struct.sock*, %struct.sock** %5, align 8
  %61 = getelementptr inbounds %struct.sock, %struct.sock* %60, i32 0, i32 2
  store i32 %59, i32* %61, align 4
  %62 = load i32, i32* @svc_write_space, align 4
  %63 = load %struct.sock*, %struct.sock** %5, align 8
  %64 = getelementptr inbounds %struct.sock, %struct.sock* %63, i32 0, i32 1
  store i32 %62, i32* %64, align 4
  %65 = load %struct.svc_sock*, %struct.svc_sock** %3, align 8
  %66 = getelementptr inbounds %struct.svc_sock, %struct.svc_sock* %65, i32 0, i32 4
  store i64 0, i64* %66, align 8
  %67 = load %struct.svc_sock*, %struct.svc_sock** %3, align 8
  %68 = getelementptr inbounds %struct.svc_sock, %struct.svc_sock* %67, i32 0, i32 3
  store i64 0, i64* %68, align 8
  %69 = load %struct.svc_sock*, %struct.svc_sock** %3, align 8
  %70 = getelementptr inbounds %struct.svc_sock, %struct.svc_sock* %69, i32 0, i32 2
  store i64 0, i64* %70, align 8
  %71 = load %struct.svc_sock*, %struct.svc_sock** %3, align 8
  %72 = getelementptr inbounds %struct.svc_sock, %struct.svc_sock* %71, i32 0, i32 1
  %73 = load i32*, i32** %72, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 0
  %75 = call i32 @memset(i32* %74, i32 0, i32 8)
  %76 = load i32, i32* @TCP_NAGLE_OFF, align 4
  %77 = load %struct.sock*, %struct.sock** %5, align 8
  %78 = call %struct.TYPE_5__* @tcp_sk(%struct.sock* %77)
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = or i32 %80, %76
  store i32 %81, i32* %79, align 4
  %82 = load i32, i32* @XPT_DATA, align 4
  %83 = load %struct.svc_sock*, %struct.svc_sock** %3, align 8
  %84 = getelementptr inbounds %struct.svc_sock, %struct.svc_sock* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 0
  %86 = call i32 @set_bit(i32 %82, i32* %85)
  %87 = load %struct.sock*, %struct.sock** %5, align 8
  %88 = getelementptr inbounds %struct.sock, %struct.sock* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  switch i32 %89, label %91 [
    i32 128, label %90
    i32 129, label %90
  ]

90:                                               ; preds = %54, %54
  br label %97

91:                                               ; preds = %54
  %92 = load i32, i32* @XPT_CLOSE, align 4
  %93 = load %struct.svc_sock*, %struct.svc_sock** %3, align 8
  %94 = getelementptr inbounds %struct.svc_sock, %struct.svc_sock* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 0
  %96 = call i32 @set_bit(i32 %92, i32* %95)
  br label %97

97:                                               ; preds = %91, %90
  br label %98

98:                                               ; preds = %97, %34
  ret void
}

declare dso_local i32 @svc_xprt_init(i32, i32*, %struct.TYPE_6__*, %struct.svc_serv*) #1

declare dso_local i32 @sock_net(i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @dprintk(i8*) #1

declare dso_local i32 @strcpy(i32, i8*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local %struct.TYPE_5__* @tcp_sk(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
