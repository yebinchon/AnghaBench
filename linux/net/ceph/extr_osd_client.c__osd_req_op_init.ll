; ModuleID = '/home/carl/AnghaBench/linux/net/ceph/extr_osd_client.c__osd_req_op_init.c'
source_filename = "/home/carl/AnghaBench/linux/net/ceph/extr_osd_client.c__osd_req_op_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ceph_osd_req_op = type { i32, i32 }
%struct.ceph_osd_request = type { i32, %struct.ceph_osd_req_op* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ceph_osd_req_op* (%struct.ceph_osd_request*, i32, i32, i32)* @_osd_req_op_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ceph_osd_req_op* @_osd_req_op_init(%struct.ceph_osd_request* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.ceph_osd_request*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.ceph_osd_req_op*, align 8
  store %struct.ceph_osd_request* %0, %struct.ceph_osd_request** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load i32, i32* %6, align 4
  %11 = load %struct.ceph_osd_request*, %struct.ceph_osd_request** %5, align 8
  %12 = getelementptr inbounds %struct.ceph_osd_request, %struct.ceph_osd_request* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp uge i32 %10, %13
  %15 = zext i1 %14 to i32
  %16 = call i32 @BUG_ON(i32 %15)
  %17 = load i32, i32* %7, align 4
  %18 = call i32 @osd_req_opcode_valid(i32 %17)
  %19 = icmp ne i32 %18, 0
  %20 = xor i1 %19, true
  %21 = zext i1 %20 to i32
  %22 = call i32 @BUG_ON(i32 %21)
  %23 = load %struct.ceph_osd_request*, %struct.ceph_osd_request** %5, align 8
  %24 = getelementptr inbounds %struct.ceph_osd_request, %struct.ceph_osd_request* %23, i32 0, i32 1
  %25 = load %struct.ceph_osd_req_op*, %struct.ceph_osd_req_op** %24, align 8
  %26 = load i32, i32* %6, align 4
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds %struct.ceph_osd_req_op, %struct.ceph_osd_req_op* %25, i64 %27
  store %struct.ceph_osd_req_op* %28, %struct.ceph_osd_req_op** %9, align 8
  %29 = load %struct.ceph_osd_req_op*, %struct.ceph_osd_req_op** %9, align 8
  %30 = call i32 @memset(%struct.ceph_osd_req_op* %29, i32 0, i32 8)
  %31 = load i32, i32* %7, align 4
  %32 = load %struct.ceph_osd_req_op*, %struct.ceph_osd_req_op** %9, align 8
  %33 = getelementptr inbounds %struct.ceph_osd_req_op, %struct.ceph_osd_req_op* %32, i32 0, i32 1
  store i32 %31, i32* %33, align 4
  %34 = load i32, i32* %8, align 4
  %35 = load %struct.ceph_osd_req_op*, %struct.ceph_osd_req_op** %9, align 8
  %36 = getelementptr inbounds %struct.ceph_osd_req_op, %struct.ceph_osd_req_op* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 4
  %37 = load %struct.ceph_osd_req_op*, %struct.ceph_osd_req_op** %9, align 8
  ret %struct.ceph_osd_req_op* %37
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @osd_req_opcode_valid(i32) #1

declare dso_local i32 @memset(%struct.ceph_osd_req_op*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
