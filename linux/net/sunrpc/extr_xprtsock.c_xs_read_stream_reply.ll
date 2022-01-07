; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/extr_xprtsock.c_xs_read_stream_reply.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/extr_xprtsock.c_xs_read_stream_reply.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock_xprt = type { %struct.TYPE_4__, %struct.rpc_xprt }
%struct.TYPE_4__ = type { i64, i32 }
%struct.rpc_xprt = type { i32 }
%struct.msghdr = type { i32 }
%struct.rpc_rqst = type { %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i64 }

@MSG_TRUNC = common dso_local global i32 0, align 4
@MSG_EOR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock_xprt*, %struct.msghdr*, i32)* @xs_read_stream_reply to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xs_read_stream_reply(%struct.sock_xprt* %0, %struct.msghdr* %1, i32 %2) #0 {
  %4 = alloca %struct.sock_xprt*, align 8
  %5 = alloca %struct.msghdr*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.rpc_xprt*, align 8
  %8 = alloca %struct.rpc_rqst*, align 8
  %9 = alloca i32, align 4
  store %struct.sock_xprt* %0, %struct.sock_xprt** %4, align 8
  store %struct.msghdr* %1, %struct.msghdr** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.sock_xprt*, %struct.sock_xprt** %4, align 8
  %11 = getelementptr inbounds %struct.sock_xprt, %struct.sock_xprt* %10, i32 0, i32 1
  store %struct.rpc_xprt* %11, %struct.rpc_xprt** %7, align 8
  store i32 0, i32* %9, align 4
  %12 = load %struct.rpc_xprt*, %struct.rpc_xprt** %7, align 8
  %13 = getelementptr inbounds %struct.rpc_xprt, %struct.rpc_xprt* %12, i32 0, i32 0
  %14 = call i32 @spin_lock(i32* %13)
  %15 = load %struct.rpc_xprt*, %struct.rpc_xprt** %7, align 8
  %16 = load %struct.sock_xprt*, %struct.sock_xprt** %4, align 8
  %17 = getelementptr inbounds %struct.sock_xprt, %struct.sock_xprt* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = call %struct.rpc_rqst* @xprt_lookup_rqst(%struct.rpc_xprt* %15, i32 %19)
  store %struct.rpc_rqst* %20, %struct.rpc_rqst** %8, align 8
  %21 = load %struct.rpc_rqst*, %struct.rpc_rqst** %8, align 8
  %22 = icmp ne %struct.rpc_rqst* %21, null
  br i1 %22, label %23, label %35

23:                                               ; preds = %3
  %24 = load %struct.sock_xprt*, %struct.sock_xprt** %4, align 8
  %25 = getelementptr inbounds %struct.sock_xprt, %struct.sock_xprt* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %41

29:                                               ; preds = %23
  %30 = load %struct.rpc_rqst*, %struct.rpc_rqst** %8, align 8
  %31 = getelementptr inbounds %struct.rpc_rqst, %struct.rpc_rqst* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %41, label %35

35:                                               ; preds = %29, %3
  %36 = load i32, i32* @MSG_TRUNC, align 4
  %37 = load %struct.msghdr*, %struct.msghdr** %5, align 8
  %38 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = or i32 %39, %36
  store i32 %40, i32* %38, align 4
  br label %83

41:                                               ; preds = %29, %23
  %42 = load %struct.rpc_rqst*, %struct.rpc_rqst** %8, align 8
  %43 = call i32 @xprt_pin_rqst(%struct.rpc_rqst* %42)
  %44 = load %struct.rpc_xprt*, %struct.rpc_xprt** %7, align 8
  %45 = getelementptr inbounds %struct.rpc_xprt, %struct.rpc_xprt* %44, i32 0, i32 0
  %46 = call i32 @spin_unlock(i32* %45)
  %47 = load %struct.sock_xprt*, %struct.sock_xprt** %4, align 8
  %48 = load %struct.msghdr*, %struct.msghdr** %5, align 8
  %49 = load i32, i32* %6, align 4
  %50 = load %struct.rpc_rqst*, %struct.rpc_rqst** %8, align 8
  %51 = call i32 @xs_read_stream_request(%struct.sock_xprt* %47, %struct.msghdr* %48, i32 %49, %struct.rpc_rqst* %50)
  store i32 %51, i32* %9, align 4
  %52 = load %struct.rpc_xprt*, %struct.rpc_xprt** %7, align 8
  %53 = getelementptr inbounds %struct.rpc_xprt, %struct.rpc_xprt* %52, i32 0, i32 0
  %54 = call i32 @spin_lock(i32* %53)
  %55 = load %struct.msghdr*, %struct.msghdr** %5, align 8
  %56 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @MSG_EOR, align 4
  %59 = load i32, i32* @MSG_TRUNC, align 4
  %60 = or i32 %58, %59
  %61 = and i32 %57, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %72

63:                                               ; preds = %41
  %64 = load %struct.rpc_rqst*, %struct.rpc_rqst** %8, align 8
  %65 = getelementptr inbounds %struct.rpc_rqst, %struct.rpc_rqst* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.sock_xprt*, %struct.sock_xprt** %4, align 8
  %68 = getelementptr inbounds %struct.sock_xprt, %struct.sock_xprt* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = call i32 @xprt_complete_rqst(i32 %66, i64 %70)
  br label %80

72:                                               ; preds = %41
  %73 = load %struct.sock_xprt*, %struct.sock_xprt** %4, align 8
  %74 = getelementptr inbounds %struct.sock_xprt, %struct.sock_xprt* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load %struct.rpc_rqst*, %struct.rpc_rqst** %8, align 8
  %78 = getelementptr inbounds %struct.rpc_rqst, %struct.rpc_rqst* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 0
  store i64 %76, i64* %79, align 8
  br label %80

80:                                               ; preds = %72, %63
  %81 = load %struct.rpc_rqst*, %struct.rpc_rqst** %8, align 8
  %82 = call i32 @xprt_unpin_rqst(%struct.rpc_rqst* %81)
  br label %83

83:                                               ; preds = %80, %35
  %84 = load %struct.rpc_xprt*, %struct.rpc_xprt** %7, align 8
  %85 = getelementptr inbounds %struct.rpc_xprt, %struct.rpc_xprt* %84, i32 0, i32 0
  %86 = call i32 @spin_unlock(i32* %85)
  %87 = load i32, i32* %9, align 4
  ret i32 %87
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local %struct.rpc_rqst* @xprt_lookup_rqst(%struct.rpc_xprt*, i32) #1

declare dso_local i32 @xprt_pin_rqst(%struct.rpc_rqst*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @xs_read_stream_request(%struct.sock_xprt*, %struct.msghdr*, i32, %struct.rpc_rqst*) #1

declare dso_local i32 @xprt_complete_rqst(i32, i64) #1

declare dso_local i32 @xprt_unpin_rqst(%struct.rpc_rqst*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
