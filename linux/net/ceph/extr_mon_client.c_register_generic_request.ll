; ModuleID = '/home/carl/AnghaBench/linux/net/ceph/extr_mon_client.c_register_generic_request.c'
source_filename = "/home/carl/AnghaBench/linux/net/ceph/extr_mon_client.c_register_generic_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ceph_mon_generic_request = type { i64, %struct.ceph_mon_client* }
%struct.ceph_mon_client = type { i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ceph_mon_generic_request*)* @register_generic_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @register_generic_request(%struct.ceph_mon_generic_request* %0) #0 {
  %2 = alloca %struct.ceph_mon_generic_request*, align 8
  %3 = alloca %struct.ceph_mon_client*, align 8
  store %struct.ceph_mon_generic_request* %0, %struct.ceph_mon_generic_request** %2, align 8
  %4 = load %struct.ceph_mon_generic_request*, %struct.ceph_mon_generic_request** %2, align 8
  %5 = getelementptr inbounds %struct.ceph_mon_generic_request, %struct.ceph_mon_generic_request* %4, i32 0, i32 1
  %6 = load %struct.ceph_mon_client*, %struct.ceph_mon_client** %5, align 8
  store %struct.ceph_mon_client* %6, %struct.ceph_mon_client** %3, align 8
  %7 = load %struct.ceph_mon_generic_request*, %struct.ceph_mon_generic_request** %2, align 8
  %8 = getelementptr inbounds %struct.ceph_mon_generic_request, %struct.ceph_mon_generic_request* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = call i32 @WARN_ON(i64 %9)
  %11 = load %struct.ceph_mon_generic_request*, %struct.ceph_mon_generic_request** %2, align 8
  %12 = call i32 @get_generic_request(%struct.ceph_mon_generic_request* %11)
  %13 = load %struct.ceph_mon_client*, %struct.ceph_mon_client** %3, align 8
  %14 = getelementptr inbounds %struct.ceph_mon_client, %struct.ceph_mon_client* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = add nsw i64 %15, 1
  store i64 %16, i64* %14, align 8
  %17 = load %struct.ceph_mon_generic_request*, %struct.ceph_mon_generic_request** %2, align 8
  %18 = getelementptr inbounds %struct.ceph_mon_generic_request, %struct.ceph_mon_generic_request* %17, i32 0, i32 0
  store i64 %16, i64* %18, align 8
  %19 = load %struct.ceph_mon_client*, %struct.ceph_mon_client** %3, align 8
  %20 = getelementptr inbounds %struct.ceph_mon_client, %struct.ceph_mon_client* %19, i32 0, i32 0
  %21 = load %struct.ceph_mon_generic_request*, %struct.ceph_mon_generic_request** %2, align 8
  %22 = call i32 @insert_generic_request(i32* %20, %struct.ceph_mon_generic_request* %21)
  ret void
}

declare dso_local i32 @WARN_ON(i64) #1

declare dso_local i32 @get_generic_request(%struct.ceph_mon_generic_request*) #1

declare dso_local i32 @insert_generic_request(i32*, %struct.ceph_mon_generic_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
