; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/extr_svcsock.c_svc_tcp_listen_data_ready.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/extr_svcsock.c_svc_tcp_listen_data_ready.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i64, i64 }
%struct.svc_sock = type { %struct.TYPE_2__, i32 (%struct.sock.0*)* }
%struct.TYPE_2__ = type { i32 }
%struct.sock.0 = type opaque

@.str = private unnamed_addr constant [45 x i8] c"svc: socket %p TCP (listen) state change %d\0A\00", align 1
@TCP_LISTEN = common dso_local global i64 0, align 8
@XPT_CONN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"svc: socket %p: no user data\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sock*)* @svc_tcp_listen_data_ready to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @svc_tcp_listen_data_ready(%struct.sock* %0) #0 {
  %2 = alloca %struct.sock*, align 8
  %3 = alloca %struct.svc_sock*, align 8
  store %struct.sock* %0, %struct.sock** %2, align 8
  %4 = load %struct.sock*, %struct.sock** %2, align 8
  %5 = getelementptr inbounds %struct.sock, %struct.sock* %4, i32 0, i32 1
  %6 = load i64, i64* %5, align 8
  %7 = inttoptr i64 %6 to %struct.svc_sock*
  store %struct.svc_sock* %7, %struct.svc_sock** %3, align 8
  %8 = load %struct.sock*, %struct.sock** %2, align 8
  %9 = load %struct.sock*, %struct.sock** %2, align 8
  %10 = getelementptr inbounds %struct.sock, %struct.sock* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = call i32 @dprintk(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), %struct.sock* %8, i64 %11)
  %13 = load %struct.svc_sock*, %struct.svc_sock** %3, align 8
  %14 = icmp ne %struct.svc_sock* %13, null
  br i1 %14, label %15, label %23

15:                                               ; preds = %1
  %16 = call i32 (...) @rmb()
  %17 = load %struct.svc_sock*, %struct.svc_sock** %3, align 8
  %18 = getelementptr inbounds %struct.svc_sock, %struct.svc_sock* %17, i32 0, i32 1
  %19 = load i32 (%struct.sock.0*)*, i32 (%struct.sock.0*)** %18, align 8
  %20 = load %struct.sock*, %struct.sock** %2, align 8
  %21 = bitcast %struct.sock* %20 to %struct.sock.0*
  %22 = call i32 %19(%struct.sock.0* %21)
  br label %23

23:                                               ; preds = %15, %1
  %24 = load %struct.sock*, %struct.sock** %2, align 8
  %25 = getelementptr inbounds %struct.sock, %struct.sock* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @TCP_LISTEN, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %45

29:                                               ; preds = %23
  %30 = load %struct.svc_sock*, %struct.svc_sock** %3, align 8
  %31 = icmp ne %struct.svc_sock* %30, null
  br i1 %31, label %32, label %41

32:                                               ; preds = %29
  %33 = load i32, i32* @XPT_CONN, align 4
  %34 = load %struct.svc_sock*, %struct.svc_sock** %3, align 8
  %35 = getelementptr inbounds %struct.svc_sock, %struct.svc_sock* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = call i32 @set_bit(i32 %33, i32* %36)
  %38 = load %struct.svc_sock*, %struct.svc_sock** %3, align 8
  %39 = getelementptr inbounds %struct.svc_sock, %struct.svc_sock* %38, i32 0, i32 0
  %40 = call i32 @svc_xprt_enqueue(%struct.TYPE_2__* %39)
  br label %44

41:                                               ; preds = %29
  %42 = load %struct.sock*, %struct.sock** %2, align 8
  %43 = call i32 @printk(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), %struct.sock* %42)
  br label %44

44:                                               ; preds = %41, %32
  br label %45

45:                                               ; preds = %44, %23
  ret void
}

declare dso_local i32 @dprintk(i8*, %struct.sock*, i64) #1

declare dso_local i32 @rmb(...) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @svc_xprt_enqueue(%struct.TYPE_2__*) #1

declare dso_local i32 @printk(i8*, %struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
