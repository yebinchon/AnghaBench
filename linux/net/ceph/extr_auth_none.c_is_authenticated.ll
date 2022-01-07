; ModuleID = '/home/carl/AnghaBench/linux/net/ceph/extr_auth_none.c_is_authenticated.c'
source_filename = "/home/carl/AnghaBench/linux/net/ceph/extr_auth_none.c_is_authenticated.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ceph_auth_client = type { %struct.ceph_auth_none_info* }
%struct.ceph_auth_none_info = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ceph_auth_client*)* @is_authenticated to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_authenticated(%struct.ceph_auth_client* %0) #0 {
  %2 = alloca %struct.ceph_auth_client*, align 8
  %3 = alloca %struct.ceph_auth_none_info*, align 8
  store %struct.ceph_auth_client* %0, %struct.ceph_auth_client** %2, align 8
  %4 = load %struct.ceph_auth_client*, %struct.ceph_auth_client** %2, align 8
  %5 = getelementptr inbounds %struct.ceph_auth_client, %struct.ceph_auth_client* %4, i32 0, i32 0
  %6 = load %struct.ceph_auth_none_info*, %struct.ceph_auth_none_info** %5, align 8
  store %struct.ceph_auth_none_info* %6, %struct.ceph_auth_none_info** %3, align 8
  %7 = load %struct.ceph_auth_none_info*, %struct.ceph_auth_none_info** %3, align 8
  %8 = getelementptr inbounds %struct.ceph_auth_none_info, %struct.ceph_auth_none_info* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = icmp ne i32 %9, 0
  %11 = xor i1 %10, true
  %12 = zext i1 %11 to i32
  ret i32 %12
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
