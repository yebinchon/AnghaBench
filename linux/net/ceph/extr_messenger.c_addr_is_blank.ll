; ModuleID = '/home/carl/AnghaBench/linux/net/ceph/extr_messenger.c_addr_is_blank.c'
source_filename = "/home/carl/AnghaBench/linux/net/ceph/extr_messenger.c_addr_is_blank.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ceph_entity_addr = type { %struct.sockaddr_storage }
%struct.sockaddr_storage = type { i32 }
%struct.in_addr = type { i32 }
%struct.in6_addr = type { i32 }
%struct.sockaddr_in = type { %struct.in_addr }
%struct.sockaddr_in6 = type { %struct.in6_addr }

@INADDR_ANY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ceph_entity_addr*)* @addr_is_blank to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @addr_is_blank(%struct.ceph_entity_addr* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ceph_entity_addr*, align 8
  %4 = alloca %struct.sockaddr_storage, align 4
  %5 = alloca %struct.in_addr*, align 8
  %6 = alloca %struct.in6_addr*, align 8
  store %struct.ceph_entity_addr* %0, %struct.ceph_entity_addr** %3, align 8
  %7 = load %struct.ceph_entity_addr*, %struct.ceph_entity_addr** %3, align 8
  %8 = getelementptr inbounds %struct.ceph_entity_addr, %struct.ceph_entity_addr* %7, i32 0, i32 0
  %9 = bitcast %struct.sockaddr_storage* %4 to i8*
  %10 = bitcast %struct.sockaddr_storage* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %9, i8* align 4 %10, i64 4, i1 false)
  %11 = bitcast %struct.sockaddr_storage* %4 to %struct.sockaddr_in*
  %12 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %11, i32 0, i32 0
  store %struct.in_addr* %12, %struct.in_addr** %5, align 8
  %13 = bitcast %struct.sockaddr_storage* %4 to %struct.sockaddr_in6*
  %14 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %13, i32 0, i32 0
  store %struct.in6_addr* %14, %struct.in6_addr** %6, align 8
  %15 = getelementptr inbounds %struct.sockaddr_storage, %struct.sockaddr_storage* %4, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  switch i32 %16, label %28 [
    i32 129, label %17
    i32 128, label %25
  ]

17:                                               ; preds = %1
  %18 = load %struct.in_addr*, %struct.in_addr** %5, align 8
  %19 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @INADDR_ANY, align 4
  %22 = call i32 @htonl(i32 %21)
  %23 = icmp eq i32 %20, %22
  %24 = zext i1 %23 to i32
  store i32 %24, i32* %2, align 4
  br label %29

25:                                               ; preds = %1
  %26 = load %struct.in6_addr*, %struct.in6_addr** %6, align 8
  %27 = call i32 @ipv6_addr_any(%struct.in6_addr* %26)
  store i32 %27, i32* %2, align 4
  br label %29

28:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  br label %29

29:                                               ; preds = %28, %25, %17
  %30 = load i32, i32* %2, align 4
  ret i32 %30
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @htonl(i32) #2

declare dso_local i32 @ipv6_addr_any(%struct.in6_addr*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
