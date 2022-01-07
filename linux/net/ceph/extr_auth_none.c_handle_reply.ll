; ModuleID = '/home/carl/AnghaBench/linux/net/ceph/extr_auth_none.c_handle_reply.c'
source_filename = "/home/carl/AnghaBench/linux/net/ceph/extr_auth_none.c_handle_reply.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ceph_auth_client = type { %struct.ceph_auth_none_info* }
%struct.ceph_auth_none_info = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ceph_auth_client*, i32, i8*, i8*)* @handle_reply to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @handle_reply(%struct.ceph_auth_client* %0, i32 %1, i8* %2, i8* %3) #0 {
  %5 = alloca %struct.ceph_auth_client*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.ceph_auth_none_info*, align 8
  store %struct.ceph_auth_client* %0, %struct.ceph_auth_client** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i8* %3, i8** %8, align 8
  %10 = load %struct.ceph_auth_client*, %struct.ceph_auth_client** %5, align 8
  %11 = getelementptr inbounds %struct.ceph_auth_client, %struct.ceph_auth_client* %10, i32 0, i32 0
  %12 = load %struct.ceph_auth_none_info*, %struct.ceph_auth_none_info** %11, align 8
  store %struct.ceph_auth_none_info* %12, %struct.ceph_auth_none_info** %9, align 8
  %13 = load %struct.ceph_auth_none_info*, %struct.ceph_auth_none_info** %9, align 8
  %14 = getelementptr inbounds %struct.ceph_auth_none_info, %struct.ceph_auth_none_info* %13, i32 0, i32 0
  store i32 0, i32* %14, align 4
  %15 = load i32, i32* %6, align 4
  ret i32 %15
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
