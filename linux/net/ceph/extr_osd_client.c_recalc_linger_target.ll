; ModuleID = '/home/carl/AnghaBench/linux/net/ceph/extr_osd_client.c_recalc_linger_target.c'
source_filename = "/home/carl/AnghaBench/linux/net/ceph/extr_osd_client.c_recalc_linger_target.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ceph_osd_linger_request = type { %struct.ceph_osd*, %struct.TYPE_2__, %struct.ceph_osd_client* }
%struct.ceph_osd = type { i32 }
%struct.TYPE_2__ = type { i32 }
%struct.ceph_osd_client = type { i32 }

@CALC_TARGET_NEED_RESEND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ceph_osd_linger_request*)* @recalc_linger_target to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @recalc_linger_target(%struct.ceph_osd_linger_request* %0) #0 {
  %2 = alloca %struct.ceph_osd_linger_request*, align 8
  %3 = alloca %struct.ceph_osd_client*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ceph_osd*, align 8
  store %struct.ceph_osd_linger_request* %0, %struct.ceph_osd_linger_request** %2, align 8
  %6 = load %struct.ceph_osd_linger_request*, %struct.ceph_osd_linger_request** %2, align 8
  %7 = getelementptr inbounds %struct.ceph_osd_linger_request, %struct.ceph_osd_linger_request* %6, i32 0, i32 2
  %8 = load %struct.ceph_osd_client*, %struct.ceph_osd_client** %7, align 8
  store %struct.ceph_osd_client* %8, %struct.ceph_osd_client** %3, align 8
  %9 = load %struct.ceph_osd_client*, %struct.ceph_osd_client** %3, align 8
  %10 = load %struct.ceph_osd_linger_request*, %struct.ceph_osd_linger_request** %2, align 8
  %11 = getelementptr inbounds %struct.ceph_osd_linger_request, %struct.ceph_osd_linger_request* %10, i32 0, i32 1
  %12 = call i32 @calc_target(%struct.ceph_osd_client* %9, %struct.TYPE_2__* %11, i32 1)
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* @CALC_TARGET_NEED_RESEND, align 4
  %15 = icmp eq i32 %13, %14
  br i1 %15, label %16, label %38

16:                                               ; preds = %1
  %17 = load %struct.ceph_osd_client*, %struct.ceph_osd_client** %3, align 8
  %18 = load %struct.ceph_osd_linger_request*, %struct.ceph_osd_linger_request** %2, align 8
  %19 = getelementptr inbounds %struct.ceph_osd_linger_request, %struct.ceph_osd_linger_request* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = call %struct.ceph_osd* @lookup_create_osd(%struct.ceph_osd_client* %17, i32 %21, i32 1)
  store %struct.ceph_osd* %22, %struct.ceph_osd** %5, align 8
  %23 = load %struct.ceph_osd*, %struct.ceph_osd** %5, align 8
  %24 = load %struct.ceph_osd_linger_request*, %struct.ceph_osd_linger_request** %2, align 8
  %25 = getelementptr inbounds %struct.ceph_osd_linger_request, %struct.ceph_osd_linger_request* %24, i32 0, i32 0
  %26 = load %struct.ceph_osd*, %struct.ceph_osd** %25, align 8
  %27 = icmp ne %struct.ceph_osd* %23, %26
  br i1 %27, label %28, label %37

28:                                               ; preds = %16
  %29 = load %struct.ceph_osd_linger_request*, %struct.ceph_osd_linger_request** %2, align 8
  %30 = getelementptr inbounds %struct.ceph_osd_linger_request, %struct.ceph_osd_linger_request* %29, i32 0, i32 0
  %31 = load %struct.ceph_osd*, %struct.ceph_osd** %30, align 8
  %32 = load %struct.ceph_osd_linger_request*, %struct.ceph_osd_linger_request** %2, align 8
  %33 = call i32 @unlink_linger(%struct.ceph_osd* %31, %struct.ceph_osd_linger_request* %32)
  %34 = load %struct.ceph_osd*, %struct.ceph_osd** %5, align 8
  %35 = load %struct.ceph_osd_linger_request*, %struct.ceph_osd_linger_request** %2, align 8
  %36 = call i32 @link_linger(%struct.ceph_osd* %34, %struct.ceph_osd_linger_request* %35)
  br label %37

37:                                               ; preds = %28, %16
  br label %38

38:                                               ; preds = %37, %1
  %39 = load i32, i32* %4, align 4
  ret i32 %39
}

declare dso_local i32 @calc_target(%struct.ceph_osd_client*, %struct.TYPE_2__*, i32) #1

declare dso_local %struct.ceph_osd* @lookup_create_osd(%struct.ceph_osd_client*, i32, i32) #1

declare dso_local i32 @unlink_linger(%struct.ceph_osd*, %struct.ceph_osd_linger_request*) #1

declare dso_local i32 @link_linger(%struct.ceph_osd*, %struct.ceph_osd_linger_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
