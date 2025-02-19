; ModuleID = '/home/carl/AnghaBench/linux/net/l2tp/extr_l2tp_ppp.c_pppol2tp_create.c'
source_filename = "/home/carl/AnghaBench/linux/net/l2tp/extr_l2tp_ppp.c_pppol2tp_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.socket = type { i32*, i32 }
%struct.sock = type { i32, i32, i32, i32, i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@PF_PPPOX = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@pppol2tp_sk_proto = common dso_local global i32 0, align 4
@SS_UNCONNECTED = common dso_local global i32 0, align 4
@pppol2tp_ops = common dso_local global i32 0, align 4
@pppol2tp_backlog_recv = common dso_local global i32 0, align 4
@PX_PROTO_OL2TP = common dso_local global i32 0, align 4
@PPPOX_NONE = common dso_local global i32 0, align 4
@SOCK_STREAM = common dso_local global i32 0, align 4
@pppol2tp_session_destruct = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net*, %struct.socket*, i32)* @pppol2tp_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pppol2tp_create(%struct.net* %0, %struct.socket* %1, i32 %2) #0 {
  %4 = alloca %struct.net*, align 8
  %5 = alloca %struct.socket*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.sock*, align 8
  store %struct.net* %0, %struct.net** %4, align 8
  store %struct.socket* %1, %struct.socket** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* @ENOMEM, align 4
  %10 = sub nsw i32 0, %9
  store i32 %10, i32* %7, align 4
  %11 = load %struct.net*, %struct.net** %4, align 8
  %12 = load i32, i32* @PF_PPPOX, align 4
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = load i32, i32* %6, align 4
  %15 = call %struct.sock* @sk_alloc(%struct.net* %11, i32 %12, i32 %13, i32* @pppol2tp_sk_proto, i32 %14)
  store %struct.sock* %15, %struct.sock** %8, align 8
  %16 = load %struct.sock*, %struct.sock** %8, align 8
  %17 = icmp ne %struct.sock* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %3
  br label %46

19:                                               ; preds = %3
  %20 = load %struct.socket*, %struct.socket** %5, align 8
  %21 = load %struct.sock*, %struct.sock** %8, align 8
  %22 = call i32 @sock_init_data(%struct.socket* %20, %struct.sock* %21)
  %23 = load i32, i32* @SS_UNCONNECTED, align 4
  %24 = load %struct.socket*, %struct.socket** %5, align 8
  %25 = getelementptr inbounds %struct.socket, %struct.socket* %24, i32 0, i32 1
  store i32 %23, i32* %25, align 8
  %26 = load %struct.socket*, %struct.socket** %5, align 8
  %27 = getelementptr inbounds %struct.socket, %struct.socket* %26, i32 0, i32 0
  store i32* @pppol2tp_ops, i32** %27, align 8
  %28 = load i32, i32* @pppol2tp_backlog_recv, align 4
  %29 = load %struct.sock*, %struct.sock** %8, align 8
  %30 = getelementptr inbounds %struct.sock, %struct.sock* %29, i32 0, i32 5
  store i32 %28, i32* %30, align 4
  %31 = load i32, i32* @PX_PROTO_OL2TP, align 4
  %32 = load %struct.sock*, %struct.sock** %8, align 8
  %33 = getelementptr inbounds %struct.sock, %struct.sock* %32, i32 0, i32 4
  store i32 %31, i32* %33, align 4
  %34 = load i32, i32* @PF_PPPOX, align 4
  %35 = load %struct.sock*, %struct.sock** %8, align 8
  %36 = getelementptr inbounds %struct.sock, %struct.sock* %35, i32 0, i32 3
  store i32 %34, i32* %36, align 4
  %37 = load i32, i32* @PPPOX_NONE, align 4
  %38 = load %struct.sock*, %struct.sock** %8, align 8
  %39 = getelementptr inbounds %struct.sock, %struct.sock* %38, i32 0, i32 2
  store i32 %37, i32* %39, align 4
  %40 = load i32, i32* @SOCK_STREAM, align 4
  %41 = load %struct.sock*, %struct.sock** %8, align 8
  %42 = getelementptr inbounds %struct.sock, %struct.sock* %41, i32 0, i32 1
  store i32 %40, i32* %42, align 4
  %43 = load i32, i32* @pppol2tp_session_destruct, align 4
  %44 = load %struct.sock*, %struct.sock** %8, align 8
  %45 = getelementptr inbounds %struct.sock, %struct.sock* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 4
  store i32 0, i32* %7, align 4
  br label %46

46:                                               ; preds = %19, %18
  %47 = load i32, i32* %7, align 4
  ret i32 %47
}

declare dso_local %struct.sock* @sk_alloc(%struct.net*, i32, i32, i32*, i32) #1

declare dso_local i32 @sock_init_data(%struct.socket*, %struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
