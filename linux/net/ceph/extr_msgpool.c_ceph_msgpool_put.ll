; ModuleID = '/home/carl/AnghaBench/linux/net/ceph/extr_msgpool.c_ceph_msgpool_put.c'
source_filename = "/home/carl/AnghaBench/linux/net/ceph/extr_msgpool.c_ceph_msgpool_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ceph_msgpool = type { i32, i32, i32 }
%struct.ceph_msg = type { i32, i64, i64, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [19 x i8] c"msgpool_put %s %p\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ceph_msgpool_put(%struct.ceph_msgpool* %0, %struct.ceph_msg* %1) #0 {
  %3 = alloca %struct.ceph_msgpool*, align 8
  %4 = alloca %struct.ceph_msg*, align 8
  store %struct.ceph_msgpool* %0, %struct.ceph_msgpool** %3, align 8
  store %struct.ceph_msg* %1, %struct.ceph_msg** %4, align 8
  %5 = load %struct.ceph_msgpool*, %struct.ceph_msgpool** %3, align 8
  %6 = getelementptr inbounds %struct.ceph_msgpool, %struct.ceph_msgpool* %5, i32 0, i32 2
  %7 = load i32, i32* %6, align 4
  %8 = load %struct.ceph_msg*, %struct.ceph_msg** %4, align 8
  %9 = call i32 @dout(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %7, %struct.ceph_msg* %8)
  %10 = load %struct.ceph_msgpool*, %struct.ceph_msgpool** %3, align 8
  %11 = getelementptr inbounds %struct.ceph_msgpool, %struct.ceph_msgpool* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.ceph_msg*, %struct.ceph_msg** %4, align 8
  %14 = getelementptr inbounds %struct.ceph_msg, %struct.ceph_msg* %13, i32 0, i32 4
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  store i32 %12, i32* %15, align 4
  %16 = load %struct.ceph_msgpool*, %struct.ceph_msgpool** %3, align 8
  %17 = getelementptr inbounds %struct.ceph_msgpool, %struct.ceph_msgpool* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @cpu_to_le32(i32 %18)
  %20 = load %struct.ceph_msg*, %struct.ceph_msg** %4, align 8
  %21 = getelementptr inbounds %struct.ceph_msg, %struct.ceph_msg* %20, i32 0, i32 3
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  store i32 %19, i32* %22, align 8
  %23 = load %struct.ceph_msg*, %struct.ceph_msg** %4, align 8
  %24 = getelementptr inbounds %struct.ceph_msg, %struct.ceph_msg* %23, i32 0, i32 2
  store i64 0, i64* %24, align 8
  %25 = load %struct.ceph_msg*, %struct.ceph_msg** %4, align 8
  %26 = getelementptr inbounds %struct.ceph_msg, %struct.ceph_msg* %25, i32 0, i32 1
  store i64 0, i64* %26, align 8
  %27 = load %struct.ceph_msg*, %struct.ceph_msg** %4, align 8
  %28 = getelementptr inbounds %struct.ceph_msg, %struct.ceph_msg* %27, i32 0, i32 0
  %29 = call i32 @kref_init(i32* %28)
  %30 = load %struct.ceph_msg*, %struct.ceph_msg** %4, align 8
  %31 = load %struct.ceph_msgpool*, %struct.ceph_msgpool** %3, align 8
  %32 = getelementptr inbounds %struct.ceph_msgpool, %struct.ceph_msgpool* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @mempool_free(%struct.ceph_msg* %30, i32 %33)
  ret void
}

declare dso_local i32 @dout(i8*, i32, %struct.ceph_msg*) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @kref_init(i32*) #1

declare dso_local i32 @mempool_free(%struct.ceph_msg*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
