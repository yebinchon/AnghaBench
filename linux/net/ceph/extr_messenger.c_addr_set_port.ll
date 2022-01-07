; ModuleID = '/home/carl/AnghaBench/linux/net/ceph/extr_messenger.c_addr_set_port.c'
source_filename = "/home/carl/AnghaBench/linux/net/ceph/extr_messenger.c_addr_set_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ceph_entity_addr = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.sockaddr_in = type { i32 }
%struct.sockaddr_in6 = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ceph_entity_addr*, i32)* @addr_set_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @addr_set_port(%struct.ceph_entity_addr* %0, i32 %1) #0 {
  %3 = alloca %struct.ceph_entity_addr*, align 8
  %4 = alloca i32, align 4
  store %struct.ceph_entity_addr* %0, %struct.ceph_entity_addr** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.ceph_entity_addr*, %struct.ceph_entity_addr** %3, align 8
  %6 = getelementptr inbounds %struct.ceph_entity_addr, %struct.ceph_entity_addr* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = call i32 @get_unaligned(i32* %7)
  switch i32 %8, label %25 [
    i32 129, label %9
    i32 128, label %17
  ]

9:                                                ; preds = %2
  %10 = load i32, i32* %4, align 4
  %11 = call i32 @htons(i32 %10)
  %12 = load %struct.ceph_entity_addr*, %struct.ceph_entity_addr** %3, align 8
  %13 = getelementptr inbounds %struct.ceph_entity_addr, %struct.ceph_entity_addr* %12, i32 0, i32 0
  %14 = bitcast %struct.TYPE_2__* %13 to %struct.sockaddr_in*
  %15 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %14, i32 0, i32 0
  %16 = call i32 @put_unaligned(i32 %11, i32* %15)
  br label %25

17:                                               ; preds = %2
  %18 = load i32, i32* %4, align 4
  %19 = call i32 @htons(i32 %18)
  %20 = load %struct.ceph_entity_addr*, %struct.ceph_entity_addr** %3, align 8
  %21 = getelementptr inbounds %struct.ceph_entity_addr, %struct.ceph_entity_addr* %20, i32 0, i32 0
  %22 = bitcast %struct.TYPE_2__* %21 to %struct.sockaddr_in6*
  %23 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %22, i32 0, i32 0
  %24 = call i32 @put_unaligned(i32 %19, i32* %23)
  br label %25

25:                                               ; preds = %2, %17, %9
  ret void
}

declare dso_local i32 @get_unaligned(i32*) #1

declare dso_local i32 @put_unaligned(i32, i32*) #1

declare dso_local i32 @htons(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
