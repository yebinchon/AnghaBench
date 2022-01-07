; ModuleID = '/home/carl/AnghaBench/linux/net/ceph/extr_osd_client.c_linger_submit.c'
source_filename = "/home/carl/AnghaBench/linux/net/ceph/extr_osd_client.c_linger_submit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ceph_osd_linger_request = type { %struct.TYPE_16__, i32, %struct.TYPE_15__*, %struct.TYPE_12__*, i64, %struct.ceph_osd_client* }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_15__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { %struct.TYPE_13__, %struct.TYPE_9__ }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_12__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }
%struct.ceph_osd_client = type { i32 }
%struct.ceph_osd = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ceph_osd_linger_request*)* @linger_submit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @linger_submit(%struct.ceph_osd_linger_request* %0) #0 {
  %2 = alloca %struct.ceph_osd_linger_request*, align 8
  %3 = alloca %struct.ceph_osd_client*, align 8
  %4 = alloca %struct.ceph_osd*, align 8
  store %struct.ceph_osd_linger_request* %0, %struct.ceph_osd_linger_request** %2, align 8
  %5 = load %struct.ceph_osd_linger_request*, %struct.ceph_osd_linger_request** %2, align 8
  %6 = getelementptr inbounds %struct.ceph_osd_linger_request, %struct.ceph_osd_linger_request* %5, i32 0, i32 5
  %7 = load %struct.ceph_osd_client*, %struct.ceph_osd_client** %6, align 8
  store %struct.ceph_osd_client* %7, %struct.ceph_osd_client** %3, align 8
  %8 = load %struct.ceph_osd_client*, %struct.ceph_osd_client** %3, align 8
  %9 = getelementptr inbounds %struct.ceph_osd_client, %struct.ceph_osd_client* %8, i32 0, i32 0
  %10 = call i32 @down_write(i32* %9)
  %11 = load %struct.ceph_osd_linger_request*, %struct.ceph_osd_linger_request** %2, align 8
  %12 = call i32 @linger_register(%struct.ceph_osd_linger_request* %11)
  %13 = load %struct.ceph_osd_linger_request*, %struct.ceph_osd_linger_request** %2, align 8
  %14 = getelementptr inbounds %struct.ceph_osd_linger_request, %struct.ceph_osd_linger_request* %13, i32 0, i32 4
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %40

17:                                               ; preds = %1
  %18 = load %struct.ceph_osd_linger_request*, %struct.ceph_osd_linger_request** %2, align 8
  %19 = getelementptr inbounds %struct.ceph_osd_linger_request, %struct.ceph_osd_linger_request* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.ceph_osd_linger_request*, %struct.ceph_osd_linger_request** %2, align 8
  %22 = getelementptr inbounds %struct.ceph_osd_linger_request, %struct.ceph_osd_linger_request* %21, i32 0, i32 2
  %23 = load %struct.TYPE_15__*, %struct.TYPE_15__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_14__*, %struct.TYPE_14__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %25, i64 0
  %27 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 0
  store i32 %20, i32* %28, align 4
  %29 = load %struct.ceph_osd_linger_request*, %struct.ceph_osd_linger_request** %2, align 8
  %30 = getelementptr inbounds %struct.ceph_osd_linger_request, %struct.ceph_osd_linger_request* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.ceph_osd_linger_request*, %struct.ceph_osd_linger_request** %2, align 8
  %33 = getelementptr inbounds %struct.ceph_osd_linger_request, %struct.ceph_osd_linger_request* %32, i32 0, i32 3
  %34 = load %struct.TYPE_12__*, %struct.TYPE_12__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %34, i32 0, i32 0
  %36 = load %struct.TYPE_11__*, %struct.TYPE_11__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %36, i64 0
  %38 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 0
  store i32 %31, i32* %39, align 4
  br label %52

40:                                               ; preds = %1
  %41 = load %struct.ceph_osd_linger_request*, %struct.ceph_osd_linger_request** %2, align 8
  %42 = getelementptr inbounds %struct.ceph_osd_linger_request, %struct.ceph_osd_linger_request* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.ceph_osd_linger_request*, %struct.ceph_osd_linger_request** %2, align 8
  %45 = getelementptr inbounds %struct.ceph_osd_linger_request, %struct.ceph_osd_linger_request* %44, i32 0, i32 2
  %46 = load %struct.TYPE_15__*, %struct.TYPE_15__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %46, i32 0, i32 0
  %48 = load %struct.TYPE_14__*, %struct.TYPE_14__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %48, i64 0
  %50 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %50, i32 0, i32 0
  store i32 %43, i32* %51, align 4
  br label %52

52:                                               ; preds = %40, %17
  %53 = load %struct.ceph_osd_client*, %struct.ceph_osd_client** %3, align 8
  %54 = load %struct.ceph_osd_linger_request*, %struct.ceph_osd_linger_request** %2, align 8
  %55 = getelementptr inbounds %struct.ceph_osd_linger_request, %struct.ceph_osd_linger_request* %54, i32 0, i32 0
  %56 = call i32 @calc_target(%struct.ceph_osd_client* %53, %struct.TYPE_16__* %55, i32 0)
  %57 = load %struct.ceph_osd_client*, %struct.ceph_osd_client** %3, align 8
  %58 = load %struct.ceph_osd_linger_request*, %struct.ceph_osd_linger_request** %2, align 8
  %59 = getelementptr inbounds %struct.ceph_osd_linger_request, %struct.ceph_osd_linger_request* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = call %struct.ceph_osd* @lookup_create_osd(%struct.ceph_osd_client* %57, i32 %61, i32 1)
  store %struct.ceph_osd* %62, %struct.ceph_osd** %4, align 8
  %63 = load %struct.ceph_osd*, %struct.ceph_osd** %4, align 8
  %64 = load %struct.ceph_osd_linger_request*, %struct.ceph_osd_linger_request** %2, align 8
  %65 = call i32 @link_linger(%struct.ceph_osd* %63, %struct.ceph_osd_linger_request* %64)
  %66 = load %struct.ceph_osd_linger_request*, %struct.ceph_osd_linger_request** %2, align 8
  %67 = call i32 @send_linger(%struct.ceph_osd_linger_request* %66)
  %68 = load %struct.ceph_osd_client*, %struct.ceph_osd_client** %3, align 8
  %69 = getelementptr inbounds %struct.ceph_osd_client, %struct.ceph_osd_client* %68, i32 0, i32 0
  %70 = call i32 @up_write(i32* %69)
  ret void
}

declare dso_local i32 @down_write(i32*) #1

declare dso_local i32 @linger_register(%struct.ceph_osd_linger_request*) #1

declare dso_local i32 @calc_target(%struct.ceph_osd_client*, %struct.TYPE_16__*, i32) #1

declare dso_local %struct.ceph_osd* @lookup_create_osd(%struct.ceph_osd_client*, i32, i32) #1

declare dso_local i32 @link_linger(%struct.ceph_osd*, %struct.ceph_osd_linger_request*) #1

declare dso_local i32 @send_linger(%struct.ceph_osd_linger_request*) #1

declare dso_local i32 @up_write(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
