; ModuleID = '/home/carl/AnghaBench/linux/net/packet/extr_af_packet.c_packet_snd_vnet_parse.c'
source_filename = "/home/carl/AnghaBench/linux/net/packet/extr_af_packet.c_packet_snd_vnet_parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msghdr = type { i32 }
%struct.virtio_net_hdr = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.msghdr*, i64*, %struct.virtio_net_hdr*)* @packet_snd_vnet_parse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @packet_snd_vnet_parse(%struct.msghdr* %0, i64* %1, %struct.virtio_net_hdr* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.msghdr*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca %struct.virtio_net_hdr*, align 8
  store %struct.msghdr* %0, %struct.msghdr** %5, align 8
  store i64* %1, i64** %6, align 8
  store %struct.virtio_net_hdr* %2, %struct.virtio_net_hdr** %7, align 8
  %8 = load i64*, i64** %6, align 8
  %9 = load i64, i64* %8, align 8
  %10 = icmp ult i64 %9, 4
  br i1 %10, label %11, label %14

11:                                               ; preds = %3
  %12 = load i32, i32* @EINVAL, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %4, align 4
  br label %31

14:                                               ; preds = %3
  %15 = load i64*, i64** %6, align 8
  %16 = load i64, i64* %15, align 8
  %17 = sub i64 %16, 4
  store i64 %17, i64* %15, align 8
  %18 = load %struct.virtio_net_hdr*, %struct.virtio_net_hdr** %7, align 8
  %19 = load %struct.msghdr*, %struct.msghdr** %5, align 8
  %20 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %19, i32 0, i32 0
  %21 = call i32 @copy_from_iter_full(%struct.virtio_net_hdr* %18, i32 4, i32* %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %14
  %24 = load i32, i32* @EFAULT, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %4, align 4
  br label %31

26:                                               ; preds = %14
  %27 = load %struct.virtio_net_hdr*, %struct.virtio_net_hdr** %7, align 8
  %28 = load i64*, i64** %6, align 8
  %29 = load i64, i64* %28, align 8
  %30 = call i32 @__packet_snd_vnet_parse(%struct.virtio_net_hdr* %27, i64 %29)
  store i32 %30, i32* %4, align 4
  br label %31

31:                                               ; preds = %26, %23, %11
  %32 = load i32, i32* %4, align 4
  ret i32 %32
}

declare dso_local i32 @copy_from_iter_full(%struct.virtio_net_hdr*, i32, i32*) #1

declare dso_local i32 @__packet_snd_vnet_parse(%struct.virtio_net_hdr*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
