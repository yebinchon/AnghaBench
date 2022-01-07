; ModuleID = '/home/carl/AnghaBench/linux/net/ceph/extr_osd_client.c_osd_req_op_data_release.c'
source_filename = "/home/carl/AnghaBench/linux/net/ceph/extr_osd_client.c_osd_req_op_data_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ceph_osd_request = type { i32, %struct.ceph_osd_req_op* }
%struct.ceph_osd_req_op = type { i32, %struct.TYPE_14__, %struct.TYPE_13__, %struct.TYPE_12__, %struct.TYPE_11__, i32, %struct.TYPE_10__, %struct.TYPE_9__, %struct.TYPE_8__ }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32, i32, i32 }
%struct.TYPE_8__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ceph_osd_request*, i32)* @osd_req_op_data_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @osd_req_op_data_release(%struct.ceph_osd_request* %0, i32 %1) #0 {
  %3 = alloca %struct.ceph_osd_request*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ceph_osd_req_op*, align 8
  store %struct.ceph_osd_request* %0, %struct.ceph_osd_request** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = load %struct.ceph_osd_request*, %struct.ceph_osd_request** %3, align 8
  %8 = getelementptr inbounds %struct.ceph_osd_request, %struct.ceph_osd_request* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = icmp uge i32 %6, %9
  %11 = zext i1 %10 to i32
  %12 = call i32 @BUG_ON(i32 %11)
  %13 = load %struct.ceph_osd_request*, %struct.ceph_osd_request** %3, align 8
  %14 = getelementptr inbounds %struct.ceph_osd_request, %struct.ceph_osd_request* %13, i32 0, i32 1
  %15 = load %struct.ceph_osd_req_op*, %struct.ceph_osd_req_op** %14, align 8
  %16 = load i32, i32* %4, align 4
  %17 = zext i32 %16 to i64
  %18 = getelementptr inbounds %struct.ceph_osd_req_op, %struct.ceph_osd_req_op* %15, i64 %17
  store %struct.ceph_osd_req_op* %18, %struct.ceph_osd_req_op** %5, align 8
  %19 = load %struct.ceph_osd_req_op*, %struct.ceph_osd_req_op** %5, align 8
  %20 = getelementptr inbounds %struct.ceph_osd_req_op, %struct.ceph_osd_req_op* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  switch i32 %21, label %73 [
    i32 132, label %22
    i32 129, label %22
    i32 128, label %22
    i32 138, label %27
    i32 131, label %40
    i32 137, label %40
    i32 130, label %45
    i32 133, label %49
    i32 134, label %54
    i32 135, label %63
    i32 136, label %68
  ]

22:                                               ; preds = %2, %2, %2
  %23 = load %struct.ceph_osd_req_op*, %struct.ceph_osd_req_op** %5, align 8
  %24 = getelementptr inbounds %struct.ceph_osd_req_op, %struct.ceph_osd_req_op* %23, i32 0, i32 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 0
  %26 = call i32 @ceph_osd_data_release(i32* %25)
  br label %74

27:                                               ; preds = %2
  %28 = load %struct.ceph_osd_req_op*, %struct.ceph_osd_req_op** %5, align 8
  %29 = getelementptr inbounds %struct.ceph_osd_req_op, %struct.ceph_osd_req_op* %28, i32 0, i32 7
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 2
  %31 = call i32 @ceph_osd_data_release(i32* %30)
  %32 = load %struct.ceph_osd_req_op*, %struct.ceph_osd_req_op** %5, align 8
  %33 = getelementptr inbounds %struct.ceph_osd_req_op, %struct.ceph_osd_req_op* %32, i32 0, i32 7
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 1
  %35 = call i32 @ceph_osd_data_release(i32* %34)
  %36 = load %struct.ceph_osd_req_op*, %struct.ceph_osd_req_op** %5, align 8
  %37 = getelementptr inbounds %struct.ceph_osd_req_op, %struct.ceph_osd_req_op* %36, i32 0, i32 7
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 0
  %39 = call i32 @ceph_osd_data_release(i32* %38)
  br label %74

40:                                               ; preds = %2, %2
  %41 = load %struct.ceph_osd_req_op*, %struct.ceph_osd_req_op** %5, align 8
  %42 = getelementptr inbounds %struct.ceph_osd_req_op, %struct.ceph_osd_req_op* %41, i32 0, i32 6
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %42, i32 0, i32 0
  %44 = call i32 @ceph_osd_data_release(i32* %43)
  br label %74

45:                                               ; preds = %2
  %46 = load %struct.ceph_osd_req_op*, %struct.ceph_osd_req_op** %5, align 8
  %47 = getelementptr inbounds %struct.ceph_osd_req_op, %struct.ceph_osd_req_op* %46, i32 0, i32 5
  %48 = call i32 @ceph_osd_data_release(i32* %47)
  br label %74

49:                                               ; preds = %2
  %50 = load %struct.ceph_osd_req_op*, %struct.ceph_osd_req_op** %5, align 8
  %51 = getelementptr inbounds %struct.ceph_osd_req_op, %struct.ceph_osd_req_op* %50, i32 0, i32 4
  %52 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %51, i32 0, i32 0
  %53 = call i32 @ceph_osd_data_release(i32* %52)
  br label %74

54:                                               ; preds = %2
  %55 = load %struct.ceph_osd_req_op*, %struct.ceph_osd_req_op** %5, align 8
  %56 = getelementptr inbounds %struct.ceph_osd_req_op, %struct.ceph_osd_req_op* %55, i32 0, i32 3
  %57 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %56, i32 0, i32 1
  %58 = call i32 @ceph_osd_data_release(i32* %57)
  %59 = load %struct.ceph_osd_req_op*, %struct.ceph_osd_req_op** %5, align 8
  %60 = getelementptr inbounds %struct.ceph_osd_req_op, %struct.ceph_osd_req_op* %59, i32 0, i32 3
  %61 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %60, i32 0, i32 0
  %62 = call i32 @ceph_osd_data_release(i32* %61)
  br label %74

63:                                               ; preds = %2
  %64 = load %struct.ceph_osd_req_op*, %struct.ceph_osd_req_op** %5, align 8
  %65 = getelementptr inbounds %struct.ceph_osd_req_op, %struct.ceph_osd_req_op* %64, i32 0, i32 2
  %66 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %65, i32 0, i32 0
  %67 = call i32 @ceph_osd_data_release(i32* %66)
  br label %74

68:                                               ; preds = %2
  %69 = load %struct.ceph_osd_req_op*, %struct.ceph_osd_req_op** %5, align 8
  %70 = getelementptr inbounds %struct.ceph_osd_req_op, %struct.ceph_osd_req_op* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %70, i32 0, i32 0
  %72 = call i32 @ceph_osd_data_release(i32* %71)
  br label %74

73:                                               ; preds = %2
  br label %74

74:                                               ; preds = %73, %68, %63, %54, %49, %45, %40, %27, %22
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @ceph_osd_data_release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
