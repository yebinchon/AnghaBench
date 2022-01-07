; ModuleID = '/home/carl/AnghaBench/linux/net/vmw_vsock/extr_vmci_transport.c_vmci_transport_socket_init.c'
source_filename = "/home/carl/AnghaBench/linux/net/vmw_vsock/extr_vmci_transport.c_vmci_transport_socket_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vsock_sock = type { i32, i32 }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32*, i32, i32*, i32, i64, i64, i32*, i8*, i8* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@VMCI_INVALID_HANDLE = common dso_local global i8* null, align 8
@VMCI_INVALID_ID = common dso_local global i32 0, align 4
@VMCI_TRANSPORT_DEFAULT_QP_SIZE = common dso_local global i32 0, align 4
@VMCI_TRANSPORT_DEFAULT_QP_SIZE_MIN = common dso_local global i32 0, align 4
@VMCI_TRANSPORT_DEFAULT_QP_SIZE_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vsock_sock*, %struct.vsock_sock*)* @vmci_transport_socket_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vmci_transport_socket_init(%struct.vsock_sock* %0, %struct.vsock_sock* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vsock_sock*, align 8
  %5 = alloca %struct.vsock_sock*, align 8
  store %struct.vsock_sock* %0, %struct.vsock_sock** %4, align 8
  store %struct.vsock_sock* %1, %struct.vsock_sock** %5, align 8
  %6 = load i32, i32* @GFP_KERNEL, align 4
  %7 = call i32 @kmalloc(i32 4, i32 %6)
  %8 = load %struct.vsock_sock*, %struct.vsock_sock** %4, align 8
  %9 = getelementptr inbounds %struct.vsock_sock, %struct.vsock_sock* %8, i32 0, i32 1
  store i32 %7, i32* %9, align 4
  %10 = load %struct.vsock_sock*, %struct.vsock_sock** %4, align 8
  %11 = getelementptr inbounds %struct.vsock_sock, %struct.vsock_sock* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %2
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %93

17:                                               ; preds = %2
  %18 = load i8*, i8** @VMCI_INVALID_HANDLE, align 8
  %19 = load %struct.vsock_sock*, %struct.vsock_sock** %4, align 8
  %20 = call %struct.TYPE_2__* @vmci_trans(%struct.vsock_sock* %19)
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 12
  store i8* %18, i8** %21, align 8
  %22 = load i8*, i8** @VMCI_INVALID_HANDLE, align 8
  %23 = load %struct.vsock_sock*, %struct.vsock_sock** %4, align 8
  %24 = call %struct.TYPE_2__* @vmci_trans(%struct.vsock_sock* %23)
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 11
  store i8* %22, i8** %25, align 8
  %26 = load %struct.vsock_sock*, %struct.vsock_sock** %4, align 8
  %27 = call %struct.TYPE_2__* @vmci_trans(%struct.vsock_sock* %26)
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 10
  store i32* null, i32** %28, align 8
  %29 = load %struct.vsock_sock*, %struct.vsock_sock** %4, align 8
  %30 = call %struct.TYPE_2__* @vmci_trans(%struct.vsock_sock* %29)
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 8
  store i64 0, i64* %31, align 8
  %32 = load %struct.vsock_sock*, %struct.vsock_sock** %4, align 8
  %33 = call %struct.TYPE_2__* @vmci_trans(%struct.vsock_sock* %32)
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 9
  store i64 0, i64* %34, align 8
  %35 = load i32, i32* @VMCI_INVALID_ID, align 4
  %36 = load %struct.vsock_sock*, %struct.vsock_sock** %4, align 8
  %37 = call %struct.TYPE_2__* @vmci_trans(%struct.vsock_sock* %36)
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 7
  store i32 %35, i32* %38, align 8
  %39 = load %struct.vsock_sock*, %struct.vsock_sock** %4, align 8
  %40 = call %struct.TYPE_2__* @vmci_trans(%struct.vsock_sock* %39)
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 6
  store i32* null, i32** %41, align 8
  %42 = load %struct.vsock_sock*, %struct.vsock_sock** %4, align 8
  %43 = call %struct.TYPE_2__* @vmci_trans(%struct.vsock_sock* %42)
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 5
  %45 = call i32 @INIT_LIST_HEAD(i32* %44)
  %46 = load %struct.vsock_sock*, %struct.vsock_sock** %4, align 8
  %47 = getelementptr inbounds %struct.vsock_sock, %struct.vsock_sock* %46, i32 0, i32 0
  %48 = load %struct.vsock_sock*, %struct.vsock_sock** %4, align 8
  %49 = call %struct.TYPE_2__* @vmci_trans(%struct.vsock_sock* %48)
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 4
  store i32* %47, i32** %50, align 8
  %51 = load %struct.vsock_sock*, %struct.vsock_sock** %4, align 8
  %52 = call %struct.TYPE_2__* @vmci_trans(%struct.vsock_sock* %51)
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 3
  %54 = call i32 @spin_lock_init(i32* %53)
  %55 = load %struct.vsock_sock*, %struct.vsock_sock** %5, align 8
  %56 = icmp ne %struct.vsock_sock* %55, null
  br i1 %56, label %57, label %79

57:                                               ; preds = %17
  %58 = load %struct.vsock_sock*, %struct.vsock_sock** %5, align 8
  %59 = call %struct.TYPE_2__* @vmci_trans(%struct.vsock_sock* %58)
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.vsock_sock*, %struct.vsock_sock** %4, align 8
  %63 = call %struct.TYPE_2__* @vmci_trans(%struct.vsock_sock* %62)
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 2
  store i32 %61, i32* %64, align 8
  %65 = load %struct.vsock_sock*, %struct.vsock_sock** %5, align 8
  %66 = call %struct.TYPE_2__* @vmci_trans(%struct.vsock_sock* %65)
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.vsock_sock*, %struct.vsock_sock** %4, align 8
  %70 = call %struct.TYPE_2__* @vmci_trans(%struct.vsock_sock* %69)
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 1
  store i32 %68, i32* %71, align 4
  %72 = load %struct.vsock_sock*, %struct.vsock_sock** %5, align 8
  %73 = call %struct.TYPE_2__* @vmci_trans(%struct.vsock_sock* %72)
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load %struct.vsock_sock*, %struct.vsock_sock** %4, align 8
  %77 = call %struct.TYPE_2__* @vmci_trans(%struct.vsock_sock* %76)
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 0
  store i32 %75, i32* %78, align 8
  br label %92

79:                                               ; preds = %17
  %80 = load i32, i32* @VMCI_TRANSPORT_DEFAULT_QP_SIZE, align 4
  %81 = load %struct.vsock_sock*, %struct.vsock_sock** %4, align 8
  %82 = call %struct.TYPE_2__* @vmci_trans(%struct.vsock_sock* %81)
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 2
  store i32 %80, i32* %83, align 8
  %84 = load i32, i32* @VMCI_TRANSPORT_DEFAULT_QP_SIZE_MIN, align 4
  %85 = load %struct.vsock_sock*, %struct.vsock_sock** %4, align 8
  %86 = call %struct.TYPE_2__* @vmci_trans(%struct.vsock_sock* %85)
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 1
  store i32 %84, i32* %87, align 4
  %88 = load i32, i32* @VMCI_TRANSPORT_DEFAULT_QP_SIZE_MAX, align 4
  %89 = load %struct.vsock_sock*, %struct.vsock_sock** %4, align 8
  %90 = call %struct.TYPE_2__* @vmci_trans(%struct.vsock_sock* %89)
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 0
  store i32 %88, i32* %91, align 8
  br label %92

92:                                               ; preds = %79, %57
  store i32 0, i32* %3, align 4
  br label %93

93:                                               ; preds = %92, %14
  %94 = load i32, i32* %3, align 4
  ret i32 %94
}

declare dso_local i32 @kmalloc(i32, i32) #1

declare dso_local %struct.TYPE_2__* @vmci_trans(%struct.vsock_sock*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
