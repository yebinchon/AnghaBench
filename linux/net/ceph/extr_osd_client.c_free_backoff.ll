; ModuleID = '/home/carl/AnghaBench/linux/net/ceph/extr_osd_client.c_free_backoff.c'
source_filename = "/home/carl/AnghaBench/linux/net/ceph/extr_osd_client.c_free_backoff.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ceph_osd_backoff = type { i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ceph_osd_backoff*)* @free_backoff to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @free_backoff(%struct.ceph_osd_backoff* %0) #0 {
  %2 = alloca %struct.ceph_osd_backoff*, align 8
  store %struct.ceph_osd_backoff* %0, %struct.ceph_osd_backoff** %2, align 8
  %3 = load %struct.ceph_osd_backoff*, %struct.ceph_osd_backoff** %2, align 8
  %4 = getelementptr inbounds %struct.ceph_osd_backoff, %struct.ceph_osd_backoff* %3, i32 0, i32 3
  %5 = call i32 @RB_EMPTY_NODE(i32* %4)
  %6 = icmp ne i32 %5, 0
  %7 = xor i1 %6, true
  %8 = zext i1 %7 to i32
  %9 = call i32 @WARN_ON(i32 %8)
  %10 = load %struct.ceph_osd_backoff*, %struct.ceph_osd_backoff** %2, align 8
  %11 = getelementptr inbounds %struct.ceph_osd_backoff, %struct.ceph_osd_backoff* %10, i32 0, i32 2
  %12 = call i32 @RB_EMPTY_NODE(i32* %11)
  %13 = icmp ne i32 %12, 0
  %14 = xor i1 %13, true
  %15 = zext i1 %14 to i32
  %16 = call i32 @WARN_ON(i32 %15)
  %17 = load %struct.ceph_osd_backoff*, %struct.ceph_osd_backoff** %2, align 8
  %18 = getelementptr inbounds %struct.ceph_osd_backoff, %struct.ceph_osd_backoff* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @free_hoid(i32 %19)
  %21 = load %struct.ceph_osd_backoff*, %struct.ceph_osd_backoff** %2, align 8
  %22 = getelementptr inbounds %struct.ceph_osd_backoff, %struct.ceph_osd_backoff* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @free_hoid(i32 %23)
  %25 = load %struct.ceph_osd_backoff*, %struct.ceph_osd_backoff** %2, align 8
  %26 = call i32 @kfree(%struct.ceph_osd_backoff* %25)
  ret void
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @RB_EMPTY_NODE(i32*) #1

declare dso_local i32 @free_hoid(i32) #1

declare dso_local i32 @kfree(%struct.ceph_osd_backoff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
