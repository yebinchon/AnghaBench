; ModuleID = '/home/carl/AnghaBench/linux/net/vmw_vsock/extr_vmci_transport.c_vmci_transport_packet_init.c'
source_filename = "/home/carl/AnghaBench/linux/net/vmw_vsock/extr_vmci_transport.c_vmci_transport_packet_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmci_transport_packet = type { i32, i32, %struct.TYPE_4__, i32, i32, i32, i32, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i8*, i32, i8*, %struct.vmci_handle }
%struct.vmci_handle = type { i32 }
%struct.TYPE_3__ = type { i32, i8*, i8* }
%struct.sockaddr_vm = type { i32, i32 }
%struct.vmci_transport_waiting_info = type { i32 }

@VMADDR_CID_ANY = common dso_local global i32 0, align 4
@VMCI_TRANSPORT_PACKET_RID = common dso_local global i32 0, align 4
@VMCI_TRANSPORT_PACKET_VERSION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vmci_transport_packet*, %struct.sockaddr_vm*, %struct.sockaddr_vm*, i32, i8*, i8*, %struct.vmci_transport_waiting_info*, i32, i32)* @vmci_transport_packet_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vmci_transport_packet_init(%struct.vmci_transport_packet* %0, %struct.sockaddr_vm* %1, %struct.sockaddr_vm* %2, i32 %3, i8* %4, i8* %5, %struct.vmci_transport_waiting_info* %6, i32 %7, i32 %8) #0 {
  %10 = alloca %struct.vmci_handle, align 4
  %11 = alloca %struct.vmci_transport_packet*, align 8
  %12 = alloca %struct.sockaddr_vm*, align 8
  %13 = alloca %struct.sockaddr_vm*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca %struct.vmci_transport_waiting_info*, align 8
  %18 = alloca i32, align 4
  %19 = getelementptr inbounds %struct.vmci_handle, %struct.vmci_handle* %10, i32 0, i32 0
  store i32 %8, i32* %19, align 4
  store %struct.vmci_transport_packet* %0, %struct.vmci_transport_packet** %11, align 8
  store %struct.sockaddr_vm* %1, %struct.sockaddr_vm** %12, align 8
  store %struct.sockaddr_vm* %2, %struct.sockaddr_vm** %13, align 8
  store i32 %3, i32* %14, align 4
  store i8* %4, i8** %15, align 8
  store i8* %5, i8** %16, align 8
  store %struct.vmci_transport_waiting_info* %6, %struct.vmci_transport_waiting_info** %17, align 8
  store i32 %7, i32* %18, align 4
  %20 = load i32, i32* @VMADDR_CID_ANY, align 4
  %21 = load i32, i32* @VMCI_TRANSPORT_PACKET_RID, align 4
  %22 = call i8* @vmci_make_handle(i32 %20, i32 %21)
  %23 = load %struct.vmci_transport_packet*, %struct.vmci_transport_packet** %11, align 8
  %24 = getelementptr inbounds %struct.vmci_transport_packet, %struct.vmci_transport_packet* %23, i32 0, i32 7
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 2
  store i8* %22, i8** %25, align 8
  %26 = load %struct.sockaddr_vm*, %struct.sockaddr_vm** %13, align 8
  %27 = getelementptr inbounds %struct.sockaddr_vm, %struct.sockaddr_vm* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.sockaddr_vm*, %struct.sockaddr_vm** %13, align 8
  %30 = getelementptr inbounds %struct.sockaddr_vm, %struct.sockaddr_vm* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @vmci_transport_peer_rid(i32 %31)
  %33 = call i8* @vmci_make_handle(i32 %28, i32 %32)
  %34 = load %struct.vmci_transport_packet*, %struct.vmci_transport_packet** %11, align 8
  %35 = getelementptr inbounds %struct.vmci_transport_packet, %struct.vmci_transport_packet* %34, i32 0, i32 7
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 1
  store i8* %33, i8** %36, align 8
  %37 = load %struct.vmci_transport_packet*, %struct.vmci_transport_packet** %11, align 8
  %38 = getelementptr inbounds %struct.vmci_transport_packet, %struct.vmci_transport_packet* %37, i32 0, i32 7
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  store i32 56, i32* %39, align 8
  %40 = load i32, i32* @VMCI_TRANSPORT_PACKET_VERSION, align 4
  %41 = load %struct.vmci_transport_packet*, %struct.vmci_transport_packet** %11, align 8
  %42 = getelementptr inbounds %struct.vmci_transport_packet, %struct.vmci_transport_packet* %41, i32 0, i32 6
  store i32 %40, i32* %42, align 4
  %43 = load i32, i32* %14, align 4
  %44 = load %struct.vmci_transport_packet*, %struct.vmci_transport_packet** %11, align 8
  %45 = getelementptr inbounds %struct.vmci_transport_packet, %struct.vmci_transport_packet* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 8
  %46 = load %struct.sockaddr_vm*, %struct.sockaddr_vm** %12, align 8
  %47 = getelementptr inbounds %struct.sockaddr_vm, %struct.sockaddr_vm* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.vmci_transport_packet*, %struct.vmci_transport_packet** %11, align 8
  %50 = getelementptr inbounds %struct.vmci_transport_packet, %struct.vmci_transport_packet* %49, i32 0, i32 5
  store i32 %48, i32* %50, align 8
  %51 = load %struct.sockaddr_vm*, %struct.sockaddr_vm** %13, align 8
  %52 = getelementptr inbounds %struct.sockaddr_vm, %struct.sockaddr_vm* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.vmci_transport_packet*, %struct.vmci_transport_packet** %11, align 8
  %55 = getelementptr inbounds %struct.vmci_transport_packet, %struct.vmci_transport_packet* %54, i32 0, i32 4
  store i32 %53, i32* %55, align 4
  %56 = load %struct.vmci_transport_packet*, %struct.vmci_transport_packet** %11, align 8
  %57 = getelementptr inbounds %struct.vmci_transport_packet, %struct.vmci_transport_packet* %56, i32 0, i32 1
  %58 = call i32 @memset(i32* %57, i32 0, i32 4)
  %59 = load %struct.vmci_transport_packet*, %struct.vmci_transport_packet** %11, align 8
  %60 = getelementptr inbounds %struct.vmci_transport_packet, %struct.vmci_transport_packet* %59, i32 0, i32 3
  %61 = call i32 @memset(i32* %60, i32 0, i32 4)
  %62 = load %struct.vmci_transport_packet*, %struct.vmci_transport_packet** %11, align 8
  %63 = getelementptr inbounds %struct.vmci_transport_packet, %struct.vmci_transport_packet* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  switch i32 %64, label %103 [
    i32 139, label %65
    i32 134, label %69
    i32 138, label %69
    i32 136, label %74
    i32 140, label %74
    i32 128, label %80
    i32 135, label %80
    i32 132, label %80
    i32 131, label %84
    i32 130, label %89
    i32 129, label %89
    i32 133, label %95
    i32 137, label %95
  ]

65:                                               ; preds = %9
  %66 = load %struct.vmci_transport_packet*, %struct.vmci_transport_packet** %11, align 8
  %67 = getelementptr inbounds %struct.vmci_transport_packet, %struct.vmci_transport_packet* %66, i32 0, i32 2
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  store i8* null, i8** %68, align 8
  br label %103

69:                                               ; preds = %9, %9
  %70 = load i8*, i8** %15, align 8
  %71 = load %struct.vmci_transport_packet*, %struct.vmci_transport_packet** %11, align 8
  %72 = getelementptr inbounds %struct.vmci_transport_packet, %struct.vmci_transport_packet* %71, i32 0, i32 2
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 0
  store i8* %70, i8** %73, align 8
  br label %103

74:                                               ; preds = %9, %9
  %75 = load %struct.vmci_transport_packet*, %struct.vmci_transport_packet** %11, align 8
  %76 = getelementptr inbounds %struct.vmci_transport_packet, %struct.vmci_transport_packet* %75, i32 0, i32 2
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 3
  %78 = bitcast %struct.vmci_handle* %77 to i8*
  %79 = bitcast %struct.vmci_handle* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %78, i8* align 4 %79, i64 4, i1 false)
  br label %103

80:                                               ; preds = %9, %9, %9
  %81 = load %struct.vmci_transport_packet*, %struct.vmci_transport_packet** %11, align 8
  %82 = getelementptr inbounds %struct.vmci_transport_packet, %struct.vmci_transport_packet* %81, i32 0, i32 2
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 0
  store i8* null, i8** %83, align 8
  br label %103

84:                                               ; preds = %9
  %85 = load i8*, i8** %16, align 8
  %86 = load %struct.vmci_transport_packet*, %struct.vmci_transport_packet** %11, align 8
  %87 = getelementptr inbounds %struct.vmci_transport_packet, %struct.vmci_transport_packet* %86, i32 0, i32 2
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 2
  store i8* %85, i8** %88, align 8
  br label %103

89:                                               ; preds = %9, %9
  %90 = load %struct.vmci_transport_packet*, %struct.vmci_transport_packet** %11, align 8
  %91 = getelementptr inbounds %struct.vmci_transport_packet, %struct.vmci_transport_packet* %90, i32 0, i32 2
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 1
  %93 = load %struct.vmci_transport_waiting_info*, %struct.vmci_transport_waiting_info** %17, align 8
  %94 = call i32 @memcpy(i32* %92, %struct.vmci_transport_waiting_info* %93, i32 4)
  br label %103

95:                                               ; preds = %9, %9
  %96 = load i8*, i8** %15, align 8
  %97 = load %struct.vmci_transport_packet*, %struct.vmci_transport_packet** %11, align 8
  %98 = getelementptr inbounds %struct.vmci_transport_packet, %struct.vmci_transport_packet* %97, i32 0, i32 2
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 0
  store i8* %96, i8** %99, align 8
  %100 = load i32, i32* %18, align 4
  %101 = load %struct.vmci_transport_packet*, %struct.vmci_transport_packet** %11, align 8
  %102 = getelementptr inbounds %struct.vmci_transport_packet, %struct.vmci_transport_packet* %101, i32 0, i32 1
  store i32 %100, i32* %102, align 4
  br label %103

103:                                              ; preds = %9, %95, %89, %84, %80, %74, %69, %65
  ret void
}

declare dso_local i8* @vmci_make_handle(i32, i32) #1

declare dso_local i32 @vmci_transport_peer_rid(i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @memcpy(i32*, %struct.vmci_transport_waiting_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
