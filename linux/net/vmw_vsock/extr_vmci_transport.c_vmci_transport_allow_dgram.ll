; ModuleID = '/home/carl/AnghaBench/linux/net/vmw_vsock/extr_vmci_transport.c_vmci_transport_allow_dgram.c'
source_filename = "/home/carl/AnghaBench/linux/net/vmw_vsock/extr_vmci_transport.c_vmci_transport_allow_dgram.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vsock_sock = type { i64, i32 }

@VMADDR_CID_HYPERVISOR = common dso_local global i64 0, align 8
@VMCI_PRIVILEGE_FLAG_RESTRICTED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vsock_sock*, i64)* @vmci_transport_allow_dgram to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vmci_transport_allow_dgram(%struct.vsock_sock* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vsock_sock*, align 8
  %5 = alloca i64, align 8
  store %struct.vsock_sock* %0, %struct.vsock_sock** %4, align 8
  store i64 %1, i64* %5, align 8
  %6 = load i64, i64* @VMADDR_CID_HYPERVISOR, align 8
  %7 = load i64, i64* %5, align 8
  %8 = icmp eq i64 %6, %7
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  store i32 1, i32* %3, align 4
  br label %41

10:                                               ; preds = %2
  %11 = load %struct.vsock_sock*, %struct.vsock_sock** %4, align 8
  %12 = getelementptr inbounds %struct.vsock_sock, %struct.vsock_sock* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* %5, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %16, label %37

16:                                               ; preds = %10
  %17 = load i64, i64* %5, align 8
  %18 = load %struct.vsock_sock*, %struct.vsock_sock** %4, align 8
  %19 = getelementptr inbounds %struct.vsock_sock, %struct.vsock_sock* %18, i32 0, i32 0
  store i64 %17, i64* %19, align 8
  %20 = load %struct.vsock_sock*, %struct.vsock_sock** %4, align 8
  %21 = load i64, i64* %5, align 8
  %22 = call i32 @vmci_transport_is_trusted(%struct.vsock_sock* %20, i64 %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %33, label %24

24:                                               ; preds = %16
  %25 = load i64, i64* %5, align 8
  %26 = call i32 @vmci_context_get_priv_flags(i64 %25)
  %27 = load i32, i32* @VMCI_PRIVILEGE_FLAG_RESTRICTED, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %24
  %31 = load %struct.vsock_sock*, %struct.vsock_sock** %4, align 8
  %32 = getelementptr inbounds %struct.vsock_sock, %struct.vsock_sock* %31, i32 0, i32 1
  store i32 0, i32* %32, align 8
  br label %36

33:                                               ; preds = %24, %16
  %34 = load %struct.vsock_sock*, %struct.vsock_sock** %4, align 8
  %35 = getelementptr inbounds %struct.vsock_sock, %struct.vsock_sock* %34, i32 0, i32 1
  store i32 1, i32* %35, align 8
  br label %36

36:                                               ; preds = %33, %30
  br label %37

37:                                               ; preds = %36, %10
  %38 = load %struct.vsock_sock*, %struct.vsock_sock** %4, align 8
  %39 = getelementptr inbounds %struct.vsock_sock, %struct.vsock_sock* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  store i32 %40, i32* %3, align 4
  br label %41

41:                                               ; preds = %37, %9
  %42 = load i32, i32* %3, align 4
  ret i32 %42
}

declare dso_local i32 @vmci_transport_is_trusted(%struct.vsock_sock*, i64) #1

declare dso_local i32 @vmci_context_get_priv_flags(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
