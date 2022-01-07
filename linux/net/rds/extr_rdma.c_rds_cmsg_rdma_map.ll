; ModuleID = '/home/carl/AnghaBench/linux/net/rds/extr_rdma.c_rds_cmsg_rdma_map.c'
source_filename = "/home/carl/AnghaBench/linux/net/rds/extr_rdma.c_rds_cmsg_rdma_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rds_sock = type { i32 }
%struct.rds_message = type { i64, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.cmsghdr = type { i64 }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rds_cmsg_rdma_map(%struct.rds_sock* %0, %struct.rds_message* %1, %struct.cmsghdr* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.rds_sock*, align 8
  %6 = alloca %struct.rds_message*, align 8
  %7 = alloca %struct.cmsghdr*, align 8
  store %struct.rds_sock* %0, %struct.rds_sock** %5, align 8
  store %struct.rds_message* %1, %struct.rds_message** %6, align 8
  store %struct.cmsghdr* %2, %struct.cmsghdr** %7, align 8
  %8 = load %struct.cmsghdr*, %struct.cmsghdr** %7, align 8
  %9 = getelementptr inbounds %struct.cmsghdr, %struct.cmsghdr* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = call i64 @CMSG_LEN(i32 4)
  %12 = icmp slt i64 %10, %11
  br i1 %12, label %18, label %13

13:                                               ; preds = %3
  %14 = load %struct.rds_message*, %struct.rds_message** %6, align 8
  %15 = getelementptr inbounds %struct.rds_message, %struct.rds_message* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %13, %3
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %4, align 4
  br label %34

21:                                               ; preds = %13
  %22 = load %struct.rds_sock*, %struct.rds_sock** %5, align 8
  %23 = load %struct.cmsghdr*, %struct.cmsghdr** %7, align 8
  %24 = call i32 @CMSG_DATA(%struct.cmsghdr* %23)
  %25 = load %struct.rds_message*, %struct.rds_message** %6, align 8
  %26 = getelementptr inbounds %struct.rds_message, %struct.rds_message* %25, i32 0, i32 0
  %27 = load %struct.rds_message*, %struct.rds_message** %6, align 8
  %28 = getelementptr inbounds %struct.rds_message, %struct.rds_message* %27, i32 0, i32 2
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load %struct.rds_message*, %struct.rds_message** %6, align 8
  %31 = getelementptr inbounds %struct.rds_message, %struct.rds_message* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @__rds_rdma_map(%struct.rds_sock* %22, i32 %24, i64* %26, i32* %29, i32 %32)
  store i32 %33, i32* %4, align 4
  br label %34

34:                                               ; preds = %21, %18
  %35 = load i32, i32* %4, align 4
  ret i32 %35
}

declare dso_local i64 @CMSG_LEN(i32) #1

declare dso_local i32 @__rds_rdma_map(%struct.rds_sock*, i32, i64*, i32*, i32) #1

declare dso_local i32 @CMSG_DATA(%struct.cmsghdr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
