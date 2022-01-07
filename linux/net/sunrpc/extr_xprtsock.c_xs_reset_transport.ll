; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/extr_xprtsock.c_xs_reset_transport.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/extr_xprtsock.c_xs_reset_transport.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock_xprt = type { i32, %struct.file*, %struct.socket*, %struct.sock*, %struct.rpc_xprt }
%struct.file = type { i32 }
%struct.socket = type { i32 }
%struct.sock = type { i32, i32* }
%struct.rpc_xprt = type { i32 }

@SHUT_RDWR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sock_xprt*)* @xs_reset_transport to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xs_reset_transport(%struct.sock_xprt* %0) #0 {
  %2 = alloca %struct.sock_xprt*, align 8
  %3 = alloca %struct.socket*, align 8
  %4 = alloca %struct.sock*, align 8
  %5 = alloca %struct.rpc_xprt*, align 8
  %6 = alloca %struct.file*, align 8
  store %struct.sock_xprt* %0, %struct.sock_xprt** %2, align 8
  %7 = load %struct.sock_xprt*, %struct.sock_xprt** %2, align 8
  %8 = getelementptr inbounds %struct.sock_xprt, %struct.sock_xprt* %7, i32 0, i32 2
  %9 = load %struct.socket*, %struct.socket** %8, align 8
  store %struct.socket* %9, %struct.socket** %3, align 8
  %10 = load %struct.sock_xprt*, %struct.sock_xprt** %2, align 8
  %11 = getelementptr inbounds %struct.sock_xprt, %struct.sock_xprt* %10, i32 0, i32 3
  %12 = load %struct.sock*, %struct.sock** %11, align 8
  store %struct.sock* %12, %struct.sock** %4, align 8
  %13 = load %struct.sock_xprt*, %struct.sock_xprt** %2, align 8
  %14 = getelementptr inbounds %struct.sock_xprt, %struct.sock_xprt* %13, i32 0, i32 4
  store %struct.rpc_xprt* %14, %struct.rpc_xprt** %5, align 8
  %15 = load %struct.sock_xprt*, %struct.sock_xprt** %2, align 8
  %16 = getelementptr inbounds %struct.sock_xprt, %struct.sock_xprt* %15, i32 0, i32 1
  %17 = load %struct.file*, %struct.file** %16, align 8
  store %struct.file* %17, %struct.file** %6, align 8
  %18 = load %struct.sock*, %struct.sock** %4, align 8
  %19 = icmp eq %struct.sock* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %1
  br label %70

21:                                               ; preds = %1
  %22 = load %struct.sock_xprt*, %struct.sock_xprt** %2, align 8
  %23 = getelementptr inbounds %struct.sock_xprt, %struct.sock_xprt* %22, i32 0, i32 4
  %24 = getelementptr inbounds %struct.rpc_xprt, %struct.rpc_xprt* %23, i32 0, i32 0
  %25 = call i64 @atomic_read(i32* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %21
  %28 = load %struct.sock*, %struct.sock** %4, align 8
  %29 = call i32 @sk_clear_memalloc(%struct.sock* %28)
  br label %30

30:                                               ; preds = %27, %21
  %31 = load %struct.socket*, %struct.socket** %3, align 8
  %32 = load i32, i32* @SHUT_RDWR, align 4
  %33 = call i32 @kernel_sock_shutdown(%struct.socket* %31, i32 %32)
  %34 = load %struct.sock_xprt*, %struct.sock_xprt** %2, align 8
  %35 = getelementptr inbounds %struct.sock_xprt, %struct.sock_xprt* %34, i32 0, i32 0
  %36 = call i32 @mutex_lock(i32* %35)
  %37 = load %struct.sock*, %struct.sock** %4, align 8
  %38 = getelementptr inbounds %struct.sock, %struct.sock* %37, i32 0, i32 0
  %39 = call i32 @write_lock_bh(i32* %38)
  %40 = load %struct.sock_xprt*, %struct.sock_xprt** %2, align 8
  %41 = getelementptr inbounds %struct.sock_xprt, %struct.sock_xprt* %40, i32 0, i32 3
  store %struct.sock* null, %struct.sock** %41, align 8
  %42 = load %struct.sock_xprt*, %struct.sock_xprt** %2, align 8
  %43 = getelementptr inbounds %struct.sock_xprt, %struct.sock_xprt* %42, i32 0, i32 2
  store %struct.socket* null, %struct.socket** %43, align 8
  %44 = load %struct.sock_xprt*, %struct.sock_xprt** %2, align 8
  %45 = getelementptr inbounds %struct.sock_xprt, %struct.sock_xprt* %44, i32 0, i32 1
  store %struct.file* null, %struct.file** %45, align 8
  %46 = load %struct.sock*, %struct.sock** %4, align 8
  %47 = getelementptr inbounds %struct.sock, %struct.sock* %46, i32 0, i32 1
  store i32* null, i32** %47, align 8
  %48 = load %struct.sock_xprt*, %struct.sock_xprt** %2, align 8
  %49 = load %struct.sock*, %struct.sock** %4, align 8
  %50 = call i32 @xs_restore_old_callbacks(%struct.sock_xprt* %48, %struct.sock* %49)
  %51 = load %struct.rpc_xprt*, %struct.rpc_xprt** %5, align 8
  %52 = call i32 @xprt_clear_connected(%struct.rpc_xprt* %51)
  %53 = load %struct.sock*, %struct.sock** %4, align 8
  %54 = getelementptr inbounds %struct.sock, %struct.sock* %53, i32 0, i32 0
  %55 = call i32 @write_unlock_bh(i32* %54)
  %56 = load %struct.rpc_xprt*, %struct.rpc_xprt** %5, align 8
  %57 = call i32 @xs_sock_reset_connection_flags(%struct.rpc_xprt* %56)
  %58 = load %struct.sock_xprt*, %struct.sock_xprt** %2, align 8
  %59 = call i32 @xs_stream_reset_connect(%struct.sock_xprt* %58)
  %60 = load %struct.sock_xprt*, %struct.sock_xprt** %2, align 8
  %61 = getelementptr inbounds %struct.sock_xprt, %struct.sock_xprt* %60, i32 0, i32 0
  %62 = call i32 @mutex_unlock(i32* %61)
  %63 = load %struct.rpc_xprt*, %struct.rpc_xprt** %5, align 8
  %64 = load %struct.socket*, %struct.socket** %3, align 8
  %65 = call i32 @trace_rpc_socket_close(%struct.rpc_xprt* %63, %struct.socket* %64)
  %66 = load %struct.file*, %struct.file** %6, align 8
  %67 = call i32 @fput(%struct.file* %66)
  %68 = load %struct.rpc_xprt*, %struct.rpc_xprt** %5, align 8
  %69 = call i32 @xprt_disconnect_done(%struct.rpc_xprt* %68)
  br label %70

70:                                               ; preds = %30, %20
  ret void
}

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @sk_clear_memalloc(%struct.sock*) #1

declare dso_local i32 @kernel_sock_shutdown(%struct.socket*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @write_lock_bh(i32*) #1

declare dso_local i32 @xs_restore_old_callbacks(%struct.sock_xprt*, %struct.sock*) #1

declare dso_local i32 @xprt_clear_connected(%struct.rpc_xprt*) #1

declare dso_local i32 @write_unlock_bh(i32*) #1

declare dso_local i32 @xs_sock_reset_connection_flags(%struct.rpc_xprt*) #1

declare dso_local i32 @xs_stream_reset_connect(%struct.sock_xprt*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @trace_rpc_socket_close(%struct.rpc_xprt*, %struct.socket*) #1

declare dso_local i32 @fput(%struct.file*) #1

declare dso_local i32 @xprt_disconnect_done(%struct.rpc_xprt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
