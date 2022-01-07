; ModuleID = '/home/carl/AnghaBench/linux/net/vmw_vsock/extr_virtio_transport_common.c_virtio_transport_alloc_pkt.c'
source_filename = "/home/carl/AnghaBench/linux/net/vmw_vsock/extr_virtio_transport_common.c_virtio_transport_alloc_pkt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.virtio_vsock_pkt = type { i64, i64, %struct.virtio_vsock_pkt*, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }
%struct.virtio_vsock_pkt_info = type { i64, i32, i32, i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.virtio_vsock_pkt* (%struct.virtio_vsock_pkt_info*, i64, i64, i64, i64, i64)* @virtio_transport_alloc_pkt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.virtio_vsock_pkt* @virtio_transport_alloc_pkt(%struct.virtio_vsock_pkt_info* %0, i64 %1, i64 %2, i64 %3, i64 %4, i64 %5) #0 {
  %7 = alloca %struct.virtio_vsock_pkt*, align 8
  %8 = alloca %struct.virtio_vsock_pkt_info*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.virtio_vsock_pkt*, align 8
  %15 = alloca i32, align 4
  store %struct.virtio_vsock_pkt_info* %0, %struct.virtio_vsock_pkt_info** %8, align 8
  store i64 %1, i64* %9, align 8
  store i64 %2, i64* %10, align 8
  store i64 %3, i64* %11, align 8
  store i64 %4, i64* %12, align 8
  store i64 %5, i64* %13, align 8
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = call %struct.virtio_vsock_pkt* @kzalloc(i32 96, i32 %16)
  store %struct.virtio_vsock_pkt* %17, %struct.virtio_vsock_pkt** %14, align 8
  %18 = load %struct.virtio_vsock_pkt*, %struct.virtio_vsock_pkt** %14, align 8
  %19 = icmp ne %struct.virtio_vsock_pkt* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %6
  store %struct.virtio_vsock_pkt* null, %struct.virtio_vsock_pkt** %7, align 8
  br label %140

21:                                               ; preds = %6
  %22 = load %struct.virtio_vsock_pkt_info*, %struct.virtio_vsock_pkt_info** %8, align 8
  %23 = getelementptr inbounds %struct.virtio_vsock_pkt_info, %struct.virtio_vsock_pkt_info* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = call i8* @cpu_to_le16(i32 %24)
  %26 = load %struct.virtio_vsock_pkt*, %struct.virtio_vsock_pkt** %14, align 8
  %27 = getelementptr inbounds %struct.virtio_vsock_pkt, %struct.virtio_vsock_pkt* %26, i32 0, i32 5
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 7
  store i8* %25, i8** %28, align 8
  %29 = load %struct.virtio_vsock_pkt_info*, %struct.virtio_vsock_pkt_info** %8, align 8
  %30 = getelementptr inbounds %struct.virtio_vsock_pkt_info, %struct.virtio_vsock_pkt_info* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = call i8* @cpu_to_le16(i32 %31)
  %33 = load %struct.virtio_vsock_pkt*, %struct.virtio_vsock_pkt** %14, align 8
  %34 = getelementptr inbounds %struct.virtio_vsock_pkt, %struct.virtio_vsock_pkt* %33, i32 0, i32 5
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 6
  store i8* %32, i8** %35, align 8
  %36 = load i64, i64* %10, align 8
  %37 = call i8* @cpu_to_le64(i64 %36)
  %38 = load %struct.virtio_vsock_pkt*, %struct.virtio_vsock_pkt** %14, align 8
  %39 = getelementptr inbounds %struct.virtio_vsock_pkt, %struct.virtio_vsock_pkt* %38, i32 0, i32 5
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 5
  store i8* %37, i8** %40, align 8
  %41 = load i64, i64* %12, align 8
  %42 = call i8* @cpu_to_le64(i64 %41)
  %43 = load %struct.virtio_vsock_pkt*, %struct.virtio_vsock_pkt** %14, align 8
  %44 = getelementptr inbounds %struct.virtio_vsock_pkt, %struct.virtio_vsock_pkt* %43, i32 0, i32 5
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 4
  store i8* %42, i8** %45, align 8
  %46 = load i64, i64* %11, align 8
  %47 = call i8* @cpu_to_le32(i64 %46)
  %48 = load %struct.virtio_vsock_pkt*, %struct.virtio_vsock_pkt** %14, align 8
  %49 = getelementptr inbounds %struct.virtio_vsock_pkt, %struct.virtio_vsock_pkt* %48, i32 0, i32 5
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 3
  store i8* %47, i8** %50, align 8
  %51 = load i64, i64* %13, align 8
  %52 = call i8* @cpu_to_le32(i64 %51)
  %53 = load %struct.virtio_vsock_pkt*, %struct.virtio_vsock_pkt** %14, align 8
  %54 = getelementptr inbounds %struct.virtio_vsock_pkt, %struct.virtio_vsock_pkt* %53, i32 0, i32 5
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 2
  store i8* %52, i8** %55, align 8
  %56 = load %struct.virtio_vsock_pkt_info*, %struct.virtio_vsock_pkt_info** %8, align 8
  %57 = getelementptr inbounds %struct.virtio_vsock_pkt_info, %struct.virtio_vsock_pkt_info* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = call i8* @cpu_to_le32(i64 %58)
  %60 = load %struct.virtio_vsock_pkt*, %struct.virtio_vsock_pkt** %14, align 8
  %61 = getelementptr inbounds %struct.virtio_vsock_pkt, %struct.virtio_vsock_pkt* %60, i32 0, i32 5
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 1
  store i8* %59, i8** %62, align 8
  %63 = load i64, i64* %9, align 8
  %64 = load %struct.virtio_vsock_pkt*, %struct.virtio_vsock_pkt** %14, align 8
  %65 = getelementptr inbounds %struct.virtio_vsock_pkt, %struct.virtio_vsock_pkt* %64, i32 0, i32 0
  store i64 %63, i64* %65, align 8
  %66 = load i64, i64* %9, align 8
  %67 = call i8* @cpu_to_le32(i64 %66)
  %68 = load %struct.virtio_vsock_pkt*, %struct.virtio_vsock_pkt** %14, align 8
  %69 = getelementptr inbounds %struct.virtio_vsock_pkt, %struct.virtio_vsock_pkt* %68, i32 0, i32 5
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 0
  store i8* %67, i8** %70, align 8
  %71 = load %struct.virtio_vsock_pkt_info*, %struct.virtio_vsock_pkt_info** %8, align 8
  %72 = getelementptr inbounds %struct.virtio_vsock_pkt_info, %struct.virtio_vsock_pkt_info* %71, i32 0, i32 5
  %73 = load i32, i32* %72, align 8
  %74 = load %struct.virtio_vsock_pkt*, %struct.virtio_vsock_pkt** %14, align 8
  %75 = getelementptr inbounds %struct.virtio_vsock_pkt, %struct.virtio_vsock_pkt* %74, i32 0, i32 4
  store i32 %73, i32* %75, align 4
  %76 = load %struct.virtio_vsock_pkt_info*, %struct.virtio_vsock_pkt_info** %8, align 8
  %77 = getelementptr inbounds %struct.virtio_vsock_pkt_info, %struct.virtio_vsock_pkt_info* %76, i32 0, i32 4
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.virtio_vsock_pkt*, %struct.virtio_vsock_pkt** %14, align 8
  %80 = getelementptr inbounds %struct.virtio_vsock_pkt, %struct.virtio_vsock_pkt* %79, i32 0, i32 3
  store i32 %78, i32* %80, align 8
  %81 = load %struct.virtio_vsock_pkt_info*, %struct.virtio_vsock_pkt_info** %8, align 8
  %82 = getelementptr inbounds %struct.virtio_vsock_pkt_info, %struct.virtio_vsock_pkt_info* %81, i32 0, i32 3
  %83 = load i32, i32* %82, align 8
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %115

85:                                               ; preds = %21
  %86 = load i64, i64* %9, align 8
  %87 = icmp ugt i64 %86, 0
  br i1 %87, label %88, label %115

88:                                               ; preds = %85
  %89 = load i64, i64* %9, align 8
  %90 = load i32, i32* @GFP_KERNEL, align 4
  %91 = call %struct.virtio_vsock_pkt* @kmalloc(i64 %89, i32 %90)
  %92 = load %struct.virtio_vsock_pkt*, %struct.virtio_vsock_pkt** %14, align 8
  %93 = getelementptr inbounds %struct.virtio_vsock_pkt, %struct.virtio_vsock_pkt* %92, i32 0, i32 2
  store %struct.virtio_vsock_pkt* %91, %struct.virtio_vsock_pkt** %93, align 8
  %94 = load %struct.virtio_vsock_pkt*, %struct.virtio_vsock_pkt** %14, align 8
  %95 = getelementptr inbounds %struct.virtio_vsock_pkt, %struct.virtio_vsock_pkt* %94, i32 0, i32 2
  %96 = load %struct.virtio_vsock_pkt*, %struct.virtio_vsock_pkt** %95, align 8
  %97 = icmp ne %struct.virtio_vsock_pkt* %96, null
  br i1 %97, label %99, label %98

98:                                               ; preds = %88
  br label %137

99:                                               ; preds = %88
  %100 = load i64, i64* %9, align 8
  %101 = load %struct.virtio_vsock_pkt*, %struct.virtio_vsock_pkt** %14, align 8
  %102 = getelementptr inbounds %struct.virtio_vsock_pkt, %struct.virtio_vsock_pkt* %101, i32 0, i32 1
  store i64 %100, i64* %102, align 8
  %103 = load %struct.virtio_vsock_pkt*, %struct.virtio_vsock_pkt** %14, align 8
  %104 = getelementptr inbounds %struct.virtio_vsock_pkt, %struct.virtio_vsock_pkt* %103, i32 0, i32 2
  %105 = load %struct.virtio_vsock_pkt*, %struct.virtio_vsock_pkt** %104, align 8
  %106 = load %struct.virtio_vsock_pkt_info*, %struct.virtio_vsock_pkt_info** %8, align 8
  %107 = getelementptr inbounds %struct.virtio_vsock_pkt_info, %struct.virtio_vsock_pkt_info* %106, i32 0, i32 3
  %108 = load i32, i32* %107, align 8
  %109 = load i64, i64* %9, align 8
  %110 = call i32 @memcpy_from_msg(%struct.virtio_vsock_pkt* %105, i32 %108, i64 %109)
  store i32 %110, i32* %15, align 4
  %111 = load i32, i32* %15, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %114

113:                                              ; preds = %99
  br label %132

114:                                              ; preds = %99
  br label %115

115:                                              ; preds = %114, %85, %21
  %116 = load i64, i64* %10, align 8
  %117 = load i64, i64* %11, align 8
  %118 = load i64, i64* %12, align 8
  %119 = load i64, i64* %13, align 8
  %120 = load i64, i64* %9, align 8
  %121 = load %struct.virtio_vsock_pkt_info*, %struct.virtio_vsock_pkt_info** %8, align 8
  %122 = getelementptr inbounds %struct.virtio_vsock_pkt_info, %struct.virtio_vsock_pkt_info* %121, i32 0, i32 2
  %123 = load i32, i32* %122, align 4
  %124 = load %struct.virtio_vsock_pkt_info*, %struct.virtio_vsock_pkt_info** %8, align 8
  %125 = getelementptr inbounds %struct.virtio_vsock_pkt_info, %struct.virtio_vsock_pkt_info* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 8
  %127 = load %struct.virtio_vsock_pkt_info*, %struct.virtio_vsock_pkt_info** %8, align 8
  %128 = getelementptr inbounds %struct.virtio_vsock_pkt_info, %struct.virtio_vsock_pkt_info* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = call i32 @trace_virtio_transport_alloc_pkt(i64 %116, i64 %117, i64 %118, i64 %119, i64 %120, i32 %123, i32 %126, i64 %129)
  %131 = load %struct.virtio_vsock_pkt*, %struct.virtio_vsock_pkt** %14, align 8
  store %struct.virtio_vsock_pkt* %131, %struct.virtio_vsock_pkt** %7, align 8
  br label %140

132:                                              ; preds = %113
  %133 = load %struct.virtio_vsock_pkt*, %struct.virtio_vsock_pkt** %14, align 8
  %134 = getelementptr inbounds %struct.virtio_vsock_pkt, %struct.virtio_vsock_pkt* %133, i32 0, i32 2
  %135 = load %struct.virtio_vsock_pkt*, %struct.virtio_vsock_pkt** %134, align 8
  %136 = call i32 @kfree(%struct.virtio_vsock_pkt* %135)
  br label %137

137:                                              ; preds = %132, %98
  %138 = load %struct.virtio_vsock_pkt*, %struct.virtio_vsock_pkt** %14, align 8
  %139 = call i32 @kfree(%struct.virtio_vsock_pkt* %138)
  store %struct.virtio_vsock_pkt* null, %struct.virtio_vsock_pkt** %7, align 8
  br label %140

140:                                              ; preds = %137, %115, %20
  %141 = load %struct.virtio_vsock_pkt*, %struct.virtio_vsock_pkt** %7, align 8
  ret %struct.virtio_vsock_pkt* %141
}

declare dso_local %struct.virtio_vsock_pkt* @kzalloc(i32, i32) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i8* @cpu_to_le64(i64) #1

declare dso_local i8* @cpu_to_le32(i64) #1

declare dso_local %struct.virtio_vsock_pkt* @kmalloc(i64, i32) #1

declare dso_local i32 @memcpy_from_msg(%struct.virtio_vsock_pkt*, i32, i64) #1

declare dso_local i32 @trace_virtio_transport_alloc_pkt(i64, i64, i64, i64, i64, i32, i32, i64) #1

declare dso_local i32 @kfree(%struct.virtio_vsock_pkt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
