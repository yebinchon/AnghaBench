; ModuleID = '/home/carl/AnghaBench/linux/net/ceph/extr_messenger.c_addr_port.c'
source_filename = "/home/carl/AnghaBench/linux/net/ceph/extr_messenger.c_addr_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ceph_entity_addr = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.sockaddr_in = type { i32 }
%struct.sockaddr_in6 = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ceph_entity_addr*)* @addr_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @addr_port(%struct.ceph_entity_addr* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ceph_entity_addr*, align 8
  store %struct.ceph_entity_addr* %0, %struct.ceph_entity_addr** %3, align 8
  %4 = load %struct.ceph_entity_addr*, %struct.ceph_entity_addr** %3, align 8
  %5 = getelementptr inbounds %struct.ceph_entity_addr, %struct.ceph_entity_addr* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = call i32 @get_unaligned(i32* %6)
  switch i32 %7, label %22 [
    i32 129, label %8
    i32 128, label %15
  ]

8:                                                ; preds = %1
  %9 = load %struct.ceph_entity_addr*, %struct.ceph_entity_addr** %3, align 8
  %10 = getelementptr inbounds %struct.ceph_entity_addr, %struct.ceph_entity_addr* %9, i32 0, i32 0
  %11 = bitcast %struct.TYPE_2__* %10 to %struct.sockaddr_in*
  %12 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %11, i32 0, i32 0
  %13 = call i32 @get_unaligned(i32* %12)
  %14 = call i32 @ntohs(i32 %13)
  store i32 %14, i32* %2, align 4
  br label %23

15:                                               ; preds = %1
  %16 = load %struct.ceph_entity_addr*, %struct.ceph_entity_addr** %3, align 8
  %17 = getelementptr inbounds %struct.ceph_entity_addr, %struct.ceph_entity_addr* %16, i32 0, i32 0
  %18 = bitcast %struct.TYPE_2__* %17 to %struct.sockaddr_in6*
  %19 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %18, i32 0, i32 0
  %20 = call i32 @get_unaligned(i32* %19)
  %21 = call i32 @ntohs(i32 %20)
  store i32 %21, i32* %2, align 4
  br label %23

22:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %23

23:                                               ; preds = %22, %15, %8
  %24 = load i32, i32* %2, align 4
  ret i32 %24
}

declare dso_local i32 @get_unaligned(i32*) #1

declare dso_local i32 @ntohs(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
