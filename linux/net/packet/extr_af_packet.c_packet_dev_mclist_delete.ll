; ModuleID = '/home/carl/AnghaBench/linux/net/packet/extr_af_packet.c_packet_dev_mclist_delete.c'
source_filename = "/home/carl/AnghaBench/linux/net/packet/extr_af_packet.c_packet_dev_mclist_delete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i64 }
%struct.packet_mclist = type { i64, %struct.packet_mclist* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.packet_mclist**)* @packet_dev_mclist_delete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @packet_dev_mclist_delete(%struct.net_device* %0, %struct.packet_mclist** %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.packet_mclist**, align 8
  %5 = alloca %struct.packet_mclist*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.packet_mclist** %1, %struct.packet_mclist*** %4, align 8
  br label %6

6:                                                ; preds = %31, %2
  %7 = load %struct.packet_mclist**, %struct.packet_mclist*** %4, align 8
  %8 = load %struct.packet_mclist*, %struct.packet_mclist** %7, align 8
  store %struct.packet_mclist* %8, %struct.packet_mclist** %5, align 8
  %9 = icmp ne %struct.packet_mclist* %8, null
  br i1 %9, label %10, label %32

10:                                               ; preds = %6
  %11 = load %struct.packet_mclist*, %struct.packet_mclist** %5, align 8
  %12 = getelementptr inbounds %struct.packet_mclist, %struct.packet_mclist* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load %struct.net_device*, %struct.net_device** %3, align 8
  %15 = getelementptr inbounds %struct.net_device, %struct.net_device* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp eq i64 %13, %16
  br i1 %17, label %18, label %28

18:                                               ; preds = %10
  %19 = load %struct.net_device*, %struct.net_device** %3, align 8
  %20 = load %struct.packet_mclist*, %struct.packet_mclist** %5, align 8
  %21 = call i32 @packet_dev_mc(%struct.net_device* %19, %struct.packet_mclist* %20, i32 -1)
  %22 = load %struct.packet_mclist*, %struct.packet_mclist** %5, align 8
  %23 = getelementptr inbounds %struct.packet_mclist, %struct.packet_mclist* %22, i32 0, i32 1
  %24 = load %struct.packet_mclist*, %struct.packet_mclist** %23, align 8
  %25 = load %struct.packet_mclist**, %struct.packet_mclist*** %4, align 8
  store %struct.packet_mclist* %24, %struct.packet_mclist** %25, align 8
  %26 = load %struct.packet_mclist*, %struct.packet_mclist** %5, align 8
  %27 = call i32 @kfree(%struct.packet_mclist* %26)
  br label %31

28:                                               ; preds = %10
  %29 = load %struct.packet_mclist*, %struct.packet_mclist** %5, align 8
  %30 = getelementptr inbounds %struct.packet_mclist, %struct.packet_mclist* %29, i32 0, i32 1
  store %struct.packet_mclist** %30, %struct.packet_mclist*** %4, align 8
  br label %31

31:                                               ; preds = %28, %18
  br label %6

32:                                               ; preds = %6
  ret void
}

declare dso_local i32 @packet_dev_mc(%struct.net_device*, %struct.packet_mclist*, i32) #1

declare dso_local i32 @kfree(%struct.packet_mclist*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
