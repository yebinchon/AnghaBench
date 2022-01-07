; ModuleID = '/home/carl/AnghaBench/linux/net/vmw_vsock/extr_virtio_transport_common.c_virtio_transport_recv_pkt.c'
source_filename = "/home/carl/AnghaBench/linux/net/vmw_vsock/extr_virtio_transport_common.c_virtio_transport_recv_pkt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.virtio_vsock_pkt = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.sockaddr_vm = type { i32, i32 }
%struct.vsock_sock = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.sock = type { i32, i32 (%struct.sock*)* }

@VIRTIO_VSOCK_TYPE_STREAM = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @virtio_transport_recv_pkt(%struct.virtio_vsock_pkt* %0) #0 {
  %2 = alloca %struct.virtio_vsock_pkt*, align 8
  %3 = alloca %struct.sockaddr_vm, align 4
  %4 = alloca %struct.sockaddr_vm, align 4
  %5 = alloca %struct.vsock_sock*, align 8
  %6 = alloca %struct.sock*, align 8
  %7 = alloca i32, align 4
  store %struct.virtio_vsock_pkt* %0, %struct.virtio_vsock_pkt** %2, align 8
  %8 = load %struct.virtio_vsock_pkt*, %struct.virtio_vsock_pkt** %2, align 8
  %9 = getelementptr inbounds %struct.virtio_vsock_pkt, %struct.virtio_vsock_pkt* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 9
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @le64_to_cpu(i32 %11)
  %13 = load %struct.virtio_vsock_pkt*, %struct.virtio_vsock_pkt** %2, align 8
  %14 = getelementptr inbounds %struct.virtio_vsock_pkt, %struct.virtio_vsock_pkt* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 8
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @le32_to_cpu(i32 %16)
  %18 = call i32 @vsock_addr_init(%struct.sockaddr_vm* %3, i32 %12, i32 %17)
  %19 = load %struct.virtio_vsock_pkt*, %struct.virtio_vsock_pkt** %2, align 8
  %20 = getelementptr inbounds %struct.virtio_vsock_pkt, %struct.virtio_vsock_pkt* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 7
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @le64_to_cpu(i32 %22)
  %24 = load %struct.virtio_vsock_pkt*, %struct.virtio_vsock_pkt** %2, align 8
  %25 = getelementptr inbounds %struct.virtio_vsock_pkt, %struct.virtio_vsock_pkt* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 6
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @le32_to_cpu(i32 %27)
  %29 = call i32 @vsock_addr_init(%struct.sockaddr_vm* %4, i32 %23, i32 %28)
  %30 = getelementptr inbounds %struct.sockaddr_vm, %struct.sockaddr_vm* %3, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = getelementptr inbounds %struct.sockaddr_vm, %struct.sockaddr_vm* %3, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = getelementptr inbounds %struct.sockaddr_vm, %struct.sockaddr_vm* %4, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = getelementptr inbounds %struct.sockaddr_vm, %struct.sockaddr_vm* %4, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.virtio_vsock_pkt*, %struct.virtio_vsock_pkt** %2, align 8
  %39 = getelementptr inbounds %struct.virtio_vsock_pkt, %struct.virtio_vsock_pkt* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 5
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @le32_to_cpu(i32 %41)
  %43 = load %struct.virtio_vsock_pkt*, %struct.virtio_vsock_pkt** %2, align 8
  %44 = getelementptr inbounds %struct.virtio_vsock_pkt, %struct.virtio_vsock_pkt* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i64 @le16_to_cpu(i32 %46)
  %48 = load %struct.virtio_vsock_pkt*, %struct.virtio_vsock_pkt** %2, align 8
  %49 = getelementptr inbounds %struct.virtio_vsock_pkt, %struct.virtio_vsock_pkt* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 4
  %51 = load i32, i32* %50, align 4
  %52 = call i64 @le16_to_cpu(i32 %51)
  %53 = load %struct.virtio_vsock_pkt*, %struct.virtio_vsock_pkt** %2, align 8
  %54 = getelementptr inbounds %struct.virtio_vsock_pkt, %struct.virtio_vsock_pkt* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @le32_to_cpu(i32 %56)
  %58 = load %struct.virtio_vsock_pkt*, %struct.virtio_vsock_pkt** %2, align 8
  %59 = getelementptr inbounds %struct.virtio_vsock_pkt, %struct.virtio_vsock_pkt* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @le32_to_cpu(i32 %61)
  %63 = load %struct.virtio_vsock_pkt*, %struct.virtio_vsock_pkt** %2, align 8
  %64 = getelementptr inbounds %struct.virtio_vsock_pkt, %struct.virtio_vsock_pkt* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @le32_to_cpu(i32 %66)
  %68 = call i32 @trace_virtio_transport_recv_pkt(i32 %31, i32 %33, i32 %35, i32 %37, i32 %42, i64 %47, i64 %52, i32 %57, i32 %62, i32 %67)
  %69 = load %struct.virtio_vsock_pkt*, %struct.virtio_vsock_pkt** %2, align 8
  %70 = getelementptr inbounds %struct.virtio_vsock_pkt, %struct.virtio_vsock_pkt* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call i64 @le16_to_cpu(i32 %72)
  %74 = load i64, i64* @VIRTIO_VSOCK_TYPE_STREAM, align 8
  %75 = icmp ne i64 %73, %74
  br i1 %75, label %76, label %79

76:                                               ; preds = %1
  %77 = load %struct.virtio_vsock_pkt*, %struct.virtio_vsock_pkt** %2, align 8
  %78 = call i32 @virtio_transport_reset_no_sock(%struct.virtio_vsock_pkt* %77)
  br label %146

79:                                               ; preds = %1
  %80 = call %struct.sock* @vsock_find_connected_socket(%struct.sockaddr_vm* %3, %struct.sockaddr_vm* %4)
  store %struct.sock* %80, %struct.sock** %6, align 8
  %81 = load %struct.sock*, %struct.sock** %6, align 8
  %82 = icmp ne %struct.sock* %81, null
  br i1 %82, label %91, label %83

83:                                               ; preds = %79
  %84 = call %struct.sock* @vsock_find_bound_socket(%struct.sockaddr_vm* %4)
  store %struct.sock* %84, %struct.sock** %6, align 8
  %85 = load %struct.sock*, %struct.sock** %6, align 8
  %86 = icmp ne %struct.sock* %85, null
  br i1 %86, label %90, label %87

87:                                               ; preds = %83
  %88 = load %struct.virtio_vsock_pkt*, %struct.virtio_vsock_pkt** %2, align 8
  %89 = call i32 @virtio_transport_reset_no_sock(%struct.virtio_vsock_pkt* %88)
  br label %146

90:                                               ; preds = %83
  br label %91

91:                                               ; preds = %90, %79
  %92 = load %struct.sock*, %struct.sock** %6, align 8
  %93 = call %struct.vsock_sock* @vsock_sk(%struct.sock* %92)
  store %struct.vsock_sock* %93, %struct.vsock_sock** %5, align 8
  %94 = load %struct.sock*, %struct.sock** %6, align 8
  %95 = load %struct.virtio_vsock_pkt*, %struct.virtio_vsock_pkt** %2, align 8
  %96 = call i32 @virtio_transport_space_update(%struct.sock* %94, %struct.virtio_vsock_pkt* %95)
  store i32 %96, i32* %7, align 4
  %97 = load %struct.sock*, %struct.sock** %6, align 8
  %98 = call i32 @lock_sock(%struct.sock* %97)
  %99 = getelementptr inbounds %struct.sockaddr_vm, %struct.sockaddr_vm* %4, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.vsock_sock*, %struct.vsock_sock** %5, align 8
  %102 = getelementptr inbounds %struct.vsock_sock, %struct.vsock_sock* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 0
  store i32 %100, i32* %103, align 4
  %104 = load i32, i32* %7, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %112

106:                                              ; preds = %91
  %107 = load %struct.sock*, %struct.sock** %6, align 8
  %108 = getelementptr inbounds %struct.sock, %struct.sock* %107, i32 0, i32 1
  %109 = load i32 (%struct.sock*)*, i32 (%struct.sock*)** %108, align 8
  %110 = load %struct.sock*, %struct.sock** %6, align 8
  %111 = call i32 %109(%struct.sock* %110)
  br label %112

112:                                              ; preds = %106, %91
  %113 = load %struct.sock*, %struct.sock** %6, align 8
  %114 = getelementptr inbounds %struct.sock, %struct.sock* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  switch i32 %115, label %138 [
    i32 129, label %116
    i32 128, label %122
    i32 130, label %128
    i32 131, label %132
  ]

116:                                              ; preds = %112
  %117 = load %struct.sock*, %struct.sock** %6, align 8
  %118 = load %struct.virtio_vsock_pkt*, %struct.virtio_vsock_pkt** %2, align 8
  %119 = call i32 @virtio_transport_recv_listen(%struct.sock* %117, %struct.virtio_vsock_pkt* %118)
  %120 = load %struct.virtio_vsock_pkt*, %struct.virtio_vsock_pkt** %2, align 8
  %121 = call i32 @virtio_transport_free_pkt(%struct.virtio_vsock_pkt* %120)
  br label %141

122:                                              ; preds = %112
  %123 = load %struct.sock*, %struct.sock** %6, align 8
  %124 = load %struct.virtio_vsock_pkt*, %struct.virtio_vsock_pkt** %2, align 8
  %125 = call i32 @virtio_transport_recv_connecting(%struct.sock* %123, %struct.virtio_vsock_pkt* %124)
  %126 = load %struct.virtio_vsock_pkt*, %struct.virtio_vsock_pkt** %2, align 8
  %127 = call i32 @virtio_transport_free_pkt(%struct.virtio_vsock_pkt* %126)
  br label %141

128:                                              ; preds = %112
  %129 = load %struct.sock*, %struct.sock** %6, align 8
  %130 = load %struct.virtio_vsock_pkt*, %struct.virtio_vsock_pkt** %2, align 8
  %131 = call i32 @virtio_transport_recv_connected(%struct.sock* %129, %struct.virtio_vsock_pkt* %130)
  br label %141

132:                                              ; preds = %112
  %133 = load %struct.sock*, %struct.sock** %6, align 8
  %134 = load %struct.virtio_vsock_pkt*, %struct.virtio_vsock_pkt** %2, align 8
  %135 = call i32 @virtio_transport_recv_disconnecting(%struct.sock* %133, %struct.virtio_vsock_pkt* %134)
  %136 = load %struct.virtio_vsock_pkt*, %struct.virtio_vsock_pkt** %2, align 8
  %137 = call i32 @virtio_transport_free_pkt(%struct.virtio_vsock_pkt* %136)
  br label %141

138:                                              ; preds = %112
  %139 = load %struct.virtio_vsock_pkt*, %struct.virtio_vsock_pkt** %2, align 8
  %140 = call i32 @virtio_transport_free_pkt(%struct.virtio_vsock_pkt* %139)
  br label %141

141:                                              ; preds = %138, %132, %128, %122, %116
  %142 = load %struct.sock*, %struct.sock** %6, align 8
  %143 = call i32 @release_sock(%struct.sock* %142)
  %144 = load %struct.sock*, %struct.sock** %6, align 8
  %145 = call i32 @sock_put(%struct.sock* %144)
  br label %149

146:                                              ; preds = %87, %76
  %147 = load %struct.virtio_vsock_pkt*, %struct.virtio_vsock_pkt** %2, align 8
  %148 = call i32 @virtio_transport_free_pkt(%struct.virtio_vsock_pkt* %147)
  br label %149

149:                                              ; preds = %146, %141
  ret void
}

declare dso_local i32 @vsock_addr_init(%struct.sockaddr_vm*, i32, i32) #1

declare dso_local i32 @le64_to_cpu(i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @trace_virtio_transport_recv_pkt(i32, i32, i32, i32, i32, i64, i64, i32, i32, i32) #1

declare dso_local i64 @le16_to_cpu(i32) #1

declare dso_local i32 @virtio_transport_reset_no_sock(%struct.virtio_vsock_pkt*) #1

declare dso_local %struct.sock* @vsock_find_connected_socket(%struct.sockaddr_vm*, %struct.sockaddr_vm*) #1

declare dso_local %struct.sock* @vsock_find_bound_socket(%struct.sockaddr_vm*) #1

declare dso_local %struct.vsock_sock* @vsock_sk(%struct.sock*) #1

declare dso_local i32 @virtio_transport_space_update(%struct.sock*, %struct.virtio_vsock_pkt*) #1

declare dso_local i32 @lock_sock(%struct.sock*) #1

declare dso_local i32 @virtio_transport_recv_listen(%struct.sock*, %struct.virtio_vsock_pkt*) #1

declare dso_local i32 @virtio_transport_free_pkt(%struct.virtio_vsock_pkt*) #1

declare dso_local i32 @virtio_transport_recv_connecting(%struct.sock*, %struct.virtio_vsock_pkt*) #1

declare dso_local i32 @virtio_transport_recv_connected(%struct.sock*, %struct.virtio_vsock_pkt*) #1

declare dso_local i32 @virtio_transport_recv_disconnecting(%struct.sock*, %struct.virtio_vsock_pkt*) #1

declare dso_local i32 @release_sock(%struct.sock*) #1

declare dso_local i32 @sock_put(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
