; ModuleID = '/home/carl/AnghaBench/linux/net/vmw_vsock/extr_vmci_transport.c_vmci_transport_handle_detach.c'
source_filename = "/home/carl/AnghaBench/linux/net/vmw_vsock/extr_vmci_transport.c_vmci_transport_handle_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i64, i32 (%struct.sock*)*, i32 (%struct.sock*)*, i32 }
%struct.vsock_sock = type { %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i64 }
%struct.TYPE_4__ = type { i32 }

@SOCK_DONE = common dso_local global i32 0, align 4
@SHUTDOWN_MASK = common dso_local global i32 0, align 4
@VMADDR_CID_HOST = common dso_local global i64 0, align 8
@TCP_SYN_SENT = common dso_local global i64 0, align 8
@TCP_CLOSE = common dso_local global i8* null, align 8
@ECONNRESET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sock*)* @vmci_transport_handle_detach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vmci_transport_handle_detach(%struct.sock* %0) #0 {
  %2 = alloca %struct.sock*, align 8
  %3 = alloca %struct.vsock_sock*, align 8
  store %struct.sock* %0, %struct.sock** %2, align 8
  %4 = load %struct.sock*, %struct.sock** %2, align 8
  %5 = call %struct.vsock_sock* @vsock_sk(%struct.sock* %4)
  store %struct.vsock_sock* %5, %struct.vsock_sock** %3, align 8
  %6 = load %struct.vsock_sock*, %struct.vsock_sock** %3, align 8
  %7 = call %struct.TYPE_4__* @vmci_trans(%struct.vsock_sock* %6)
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @vmci_handle_is_invalid(i32 %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %59, label %12

12:                                               ; preds = %1
  %13 = load %struct.sock*, %struct.sock** %2, align 8
  %14 = load i32, i32* @SOCK_DONE, align 4
  %15 = call i32 @sock_set_flag(%struct.sock* %13, i32 %14)
  %16 = load i32, i32* @SHUTDOWN_MASK, align 4
  %17 = load %struct.vsock_sock*, %struct.vsock_sock** %3, align 8
  %18 = getelementptr inbounds %struct.vsock_sock, %struct.vsock_sock* %17, i32 0, i32 1
  store i32 %16, i32* %18, align 8
  %19 = load %struct.vsock_sock*, %struct.vsock_sock** %3, align 8
  %20 = getelementptr inbounds %struct.vsock_sock, %struct.vsock_sock* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @VMADDR_CID_HOST, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %29, label %25

25:                                               ; preds = %12
  %26 = load %struct.vsock_sock*, %struct.vsock_sock** %3, align 8
  %27 = call i64 @vsock_stream_has_data(%struct.vsock_sock* %26)
  %28 = icmp sle i64 %27, 0
  br i1 %28, label %29, label %53

29:                                               ; preds = %25, %12
  %30 = load %struct.sock*, %struct.sock** %2, align 8
  %31 = getelementptr inbounds %struct.sock, %struct.sock* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @TCP_SYN_SENT, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %48

35:                                               ; preds = %29
  %36 = load i8*, i8** @TCP_CLOSE, align 8
  %37 = ptrtoint i8* %36 to i64
  %38 = load %struct.sock*, %struct.sock** %2, align 8
  %39 = getelementptr inbounds %struct.sock, %struct.sock* %38, i32 0, i32 0
  store i64 %37, i64* %39, align 8
  %40 = load i32, i32* @ECONNRESET, align 4
  %41 = load %struct.sock*, %struct.sock** %2, align 8
  %42 = getelementptr inbounds %struct.sock, %struct.sock* %41, i32 0, i32 3
  store i32 %40, i32* %42, align 8
  %43 = load %struct.sock*, %struct.sock** %2, align 8
  %44 = getelementptr inbounds %struct.sock, %struct.sock* %43, i32 0, i32 2
  %45 = load i32 (%struct.sock*)*, i32 (%struct.sock*)** %44, align 8
  %46 = load %struct.sock*, %struct.sock** %2, align 8
  %47 = call i32 %45(%struct.sock* %46)
  br label %59

48:                                               ; preds = %29
  %49 = load i8*, i8** @TCP_CLOSE, align 8
  %50 = ptrtoint i8* %49 to i64
  %51 = load %struct.sock*, %struct.sock** %2, align 8
  %52 = getelementptr inbounds %struct.sock, %struct.sock* %51, i32 0, i32 0
  store i64 %50, i64* %52, align 8
  br label %53

53:                                               ; preds = %48, %25
  %54 = load %struct.sock*, %struct.sock** %2, align 8
  %55 = getelementptr inbounds %struct.sock, %struct.sock* %54, i32 0, i32 1
  %56 = load i32 (%struct.sock*)*, i32 (%struct.sock*)** %55, align 8
  %57 = load %struct.sock*, %struct.sock** %2, align 8
  %58 = call i32 %56(%struct.sock* %57)
  br label %59

59:                                               ; preds = %35, %53, %1
  ret void
}

declare dso_local %struct.vsock_sock* @vsock_sk(%struct.sock*) #1

declare dso_local i32 @vmci_handle_is_invalid(i32) #1

declare dso_local %struct.TYPE_4__* @vmci_trans(%struct.vsock_sock*) #1

declare dso_local i32 @sock_set_flag(%struct.sock*, i32) #1

declare dso_local i64 @vsock_stream_has_data(%struct.vsock_sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
