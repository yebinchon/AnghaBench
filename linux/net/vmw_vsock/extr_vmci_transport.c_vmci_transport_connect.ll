; ModuleID = '/home/carl/AnghaBench/linux/net/vmw_vsock/extr_vmci_transport.c_vmci_transport_connect.c'
source_filename = "/home/carl/AnghaBench/linux/net/vmw_vsock/extr_vmci_transport.c_vmci_transport_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vsock_sock = type { i32, %struct.sock }
%struct.sock = type { i8* }
%struct.TYPE_2__ = type { i32 }

@TCP_CLOSE = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vsock_sock*)* @vmci_transport_connect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vmci_transport_connect(%struct.vsock_sock* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vsock_sock*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.sock*, align 8
  %7 = alloca i32, align 4
  store %struct.vsock_sock* %0, %struct.vsock_sock** %3, align 8
  store i32 0, i32* %5, align 4
  %8 = load %struct.vsock_sock*, %struct.vsock_sock** %3, align 8
  %9 = getelementptr inbounds %struct.vsock_sock, %struct.vsock_sock* %8, i32 0, i32 1
  store %struct.sock* %9, %struct.sock** %6, align 8
  %10 = call i64 @vmci_transport_old_proto_override(i32* %5)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %30

12:                                               ; preds = %1
  %13 = load i32, i32* %5, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %30

15:                                               ; preds = %12
  %16 = load %struct.sock*, %struct.sock** %6, align 8
  %17 = load %struct.vsock_sock*, %struct.vsock_sock** %3, align 8
  %18 = call %struct.TYPE_2__* @vmci_trans(%struct.vsock_sock* %17)
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @vmci_transport_send_conn_request(%struct.sock* %16, i32 %20)
  store i32 %21, i32* %4, align 4
  %22 = load i32, i32* %4, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %15
  %25 = load i8*, i8** @TCP_CLOSE, align 8
  %26 = load %struct.sock*, %struct.sock** %6, align 8
  %27 = getelementptr inbounds %struct.sock, %struct.sock* %26, i32 0, i32 0
  store i8* %25, i8** %27, align 8
  %28 = load i32, i32* %4, align 4
  store i32 %28, i32* %2, align 4
  br label %51

29:                                               ; preds = %15
  br label %49

30:                                               ; preds = %12, %1
  %31 = call i32 (...) @vmci_transport_new_proto_supported_versions()
  store i32 %31, i32* %7, align 4
  %32 = load %struct.sock*, %struct.sock** %6, align 8
  %33 = load %struct.vsock_sock*, %struct.vsock_sock** %3, align 8
  %34 = call %struct.TYPE_2__* @vmci_trans(%struct.vsock_sock* %33)
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %7, align 4
  %38 = call i32 @vmci_transport_send_conn_request2(%struct.sock* %32, i32 %36, i32 %37)
  store i32 %38, i32* %4, align 4
  %39 = load i32, i32* %4, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %30
  %42 = load i8*, i8** @TCP_CLOSE, align 8
  %43 = load %struct.sock*, %struct.sock** %6, align 8
  %44 = getelementptr inbounds %struct.sock, %struct.sock* %43, i32 0, i32 0
  store i8* %42, i8** %44, align 8
  %45 = load i32, i32* %4, align 4
  store i32 %45, i32* %2, align 4
  br label %51

46:                                               ; preds = %30
  %47 = load %struct.vsock_sock*, %struct.vsock_sock** %3, align 8
  %48 = getelementptr inbounds %struct.vsock_sock, %struct.vsock_sock* %47, i32 0, i32 0
  store i32 1, i32* %48, align 8
  br label %49

49:                                               ; preds = %46, %29
  %50 = load i32, i32* %4, align 4
  store i32 %50, i32* %2, align 4
  br label %51

51:                                               ; preds = %49, %41, %24
  %52 = load i32, i32* %2, align 4
  ret i32 %52
}

declare dso_local i64 @vmci_transport_old_proto_override(i32*) #1

declare dso_local i32 @vmci_transport_send_conn_request(%struct.sock*, i32) #1

declare dso_local %struct.TYPE_2__* @vmci_trans(%struct.vsock_sock*) #1

declare dso_local i32 @vmci_transport_new_proto_supported_versions(...) #1

declare dso_local i32 @vmci_transport_send_conn_request2(%struct.sock*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
