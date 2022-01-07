; ModuleID = '/home/carl/AnghaBench/linux/net/vmw_vsock/extr_vmci_transport.c_vmci_transport_proto_to_notify_struct.c'
source_filename = "/home/carl/AnghaBench/linux/net/vmw_vsock/extr_vmci_transport.c_vmci_transport_proto_to_notify_struct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 (%struct.sock*)* }
%struct.sock = type { i32 }
%struct.vsock_sock = type { i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }

@VSOCK_PROTO_INVALID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"Can't set both an old and new protocol\0A\00", align 1
@vmci_transport_notify_pkt_ops = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@vmci_transport_notify_pkt_q_state_ops = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@.str.1 = private unnamed_addr constant [33 x i8] c"Unknown notify protocol version\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*, i32*, i32)* @vmci_transport_proto_to_notify_struct to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vmci_transport_proto_to_notify_struct(%struct.sock* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sock*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.vsock_sock*, align 8
  store %struct.sock* %0, %struct.sock** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.sock*, %struct.sock** %5, align 8
  %10 = call %struct.vsock_sock* @vsock_sk(%struct.sock* %9)
  store %struct.vsock_sock* %10, %struct.vsock_sock** %8, align 8
  %11 = load i32, i32* %7, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %24

13:                                               ; preds = %3
  %14 = load i32*, i32** %6, align 8
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @VSOCK_PROTO_INVALID, align 4
  %17 = icmp ne i32 %15, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %13
  %19 = call i32 @pr_err(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %43

20:                                               ; preds = %13
  %21 = load %struct.vsock_sock*, %struct.vsock_sock** %8, align 8
  %22 = call %struct.TYPE_5__* @vmci_trans(%struct.vsock_sock* %21)
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  store %struct.TYPE_4__* @vmci_transport_notify_pkt_ops, %struct.TYPE_4__** %23, align 8
  br label %34

24:                                               ; preds = %3
  %25 = load i32*, i32** %6, align 8
  %26 = load i32, i32* %25, align 4
  switch i32 %26, label %31 [
    i32 128, label %27
  ]

27:                                               ; preds = %24
  %28 = load %struct.vsock_sock*, %struct.vsock_sock** %8, align 8
  %29 = call %struct.TYPE_5__* @vmci_trans(%struct.vsock_sock* %28)
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  store %struct.TYPE_4__* @vmci_transport_notify_pkt_q_state_ops, %struct.TYPE_4__** %30, align 8
  br label %33

31:                                               ; preds = %24
  %32 = call i32 @pr_err(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %43

33:                                               ; preds = %27
  br label %34

34:                                               ; preds = %33, %20
  %35 = load %struct.vsock_sock*, %struct.vsock_sock** %8, align 8
  %36 = call %struct.TYPE_5__* @vmci_trans(%struct.vsock_sock* %35)
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i32 (%struct.sock*)*, i32 (%struct.sock*)** %39, align 8
  %41 = load %struct.sock*, %struct.sock** %5, align 8
  %42 = call i32 %40(%struct.sock* %41)
  store i32 1, i32* %4, align 4
  br label %43

43:                                               ; preds = %34, %31, %18
  %44 = load i32, i32* %4, align 4
  ret i32 %44
}

declare dso_local %struct.vsock_sock* @vsock_sk(%struct.sock*) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local %struct.TYPE_5__* @vmci_trans(%struct.vsock_sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
