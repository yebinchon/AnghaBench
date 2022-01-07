; ModuleID = '/home/carl/AnghaBench/linux/net/packet/extr_af_packet.c___packet_snd_vnet_parse.c'
source_filename = "/home/carl/AnghaBench/linux/net/packet/extr_af_packet.c___packet_snd_vnet_parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.virtio_net_hdr = type { i32, i32, i32, i32 }

@VIRTIO_NET_HDR_F_NEEDS_CSUM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.virtio_net_hdr*, i64)* @__packet_snd_vnet_parse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__packet_snd_vnet_parse(%struct.virtio_net_hdr* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.virtio_net_hdr*, align 8
  %5 = alloca i64, align 8
  store %struct.virtio_net_hdr* %0, %struct.virtio_net_hdr** %4, align 8
  store i64 %1, i64* %5, align 8
  %6 = load %struct.virtio_net_hdr*, %struct.virtio_net_hdr** %4, align 8
  %7 = getelementptr inbounds %struct.virtio_net_hdr, %struct.virtio_net_hdr* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @VIRTIO_NET_HDR_F_NEEDS_CSUM, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %48

12:                                               ; preds = %2
  %13 = call i32 (...) @vio_le()
  %14 = load %struct.virtio_net_hdr*, %struct.virtio_net_hdr** %4, align 8
  %15 = getelementptr inbounds %struct.virtio_net_hdr, %struct.virtio_net_hdr* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 4
  %17 = call i64 @__virtio16_to_cpu(i32 %13, i32 %16)
  %18 = call i32 (...) @vio_le()
  %19 = load %struct.virtio_net_hdr*, %struct.virtio_net_hdr** %4, align 8
  %20 = getelementptr inbounds %struct.virtio_net_hdr, %struct.virtio_net_hdr* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = call i64 @__virtio16_to_cpu(i32 %18, i32 %21)
  %23 = add i64 %17, %22
  %24 = add i64 %23, 2
  %25 = call i32 (...) @vio_le()
  %26 = load %struct.virtio_net_hdr*, %struct.virtio_net_hdr** %4, align 8
  %27 = getelementptr inbounds %struct.virtio_net_hdr, %struct.virtio_net_hdr* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i64 @__virtio16_to_cpu(i32 %25, i32 %28)
  %30 = icmp ugt i64 %24, %29
  br i1 %30, label %31, label %48

31:                                               ; preds = %12
  %32 = call i32 (...) @vio_le()
  %33 = call i32 (...) @vio_le()
  %34 = load %struct.virtio_net_hdr*, %struct.virtio_net_hdr** %4, align 8
  %35 = getelementptr inbounds %struct.virtio_net_hdr, %struct.virtio_net_hdr* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 4
  %37 = call i64 @__virtio16_to_cpu(i32 %33, i32 %36)
  %38 = call i32 (...) @vio_le()
  %39 = load %struct.virtio_net_hdr*, %struct.virtio_net_hdr** %4, align 8
  %40 = getelementptr inbounds %struct.virtio_net_hdr, %struct.virtio_net_hdr* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = call i64 @__virtio16_to_cpu(i32 %38, i32 %41)
  %43 = add i64 %37, %42
  %44 = add i64 %43, 2
  %45 = call i32 @__cpu_to_virtio16(i32 %32, i64 %44)
  %46 = load %struct.virtio_net_hdr*, %struct.virtio_net_hdr** %4, align 8
  %47 = getelementptr inbounds %struct.virtio_net_hdr, %struct.virtio_net_hdr* %46, i32 0, i32 1
  store i32 %45, i32* %47, align 4
  br label %48

48:                                               ; preds = %31, %12, %2
  %49 = call i32 (...) @vio_le()
  %50 = load %struct.virtio_net_hdr*, %struct.virtio_net_hdr** %4, align 8
  %51 = getelementptr inbounds %struct.virtio_net_hdr, %struct.virtio_net_hdr* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = call i64 @__virtio16_to_cpu(i32 %49, i32 %52)
  %54 = load i64, i64* %5, align 8
  %55 = icmp ugt i64 %53, %54
  br i1 %55, label %56, label %59

56:                                               ; preds = %48
  %57 = load i32, i32* @EINVAL, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %3, align 4
  br label %60

59:                                               ; preds = %48
  store i32 0, i32* %3, align 4
  br label %60

60:                                               ; preds = %59, %56
  %61 = load i32, i32* %3, align 4
  ret i32 %61
}

declare dso_local i64 @__virtio16_to_cpu(i32, i32) #1

declare dso_local i32 @vio_le(...) #1

declare dso_local i32 @__cpu_to_virtio16(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
