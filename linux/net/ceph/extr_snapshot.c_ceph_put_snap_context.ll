; ModuleID = '/home/carl/AnghaBench/linux/net/ceph/extr_snapshot.c_ceph_put_snap_context.c'
source_filename = "/home/carl/AnghaBench/linux/net/ceph/extr_snapshot.c_ceph_put_snap_context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ceph_snap_context = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ceph_put_snap_context(%struct.ceph_snap_context* %0) #0 {
  %2 = alloca %struct.ceph_snap_context*, align 8
  store %struct.ceph_snap_context* %0, %struct.ceph_snap_context** %2, align 8
  %3 = load %struct.ceph_snap_context*, %struct.ceph_snap_context** %2, align 8
  %4 = icmp ne %struct.ceph_snap_context* %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  br label %14

6:                                                ; preds = %1
  %7 = load %struct.ceph_snap_context*, %struct.ceph_snap_context** %2, align 8
  %8 = getelementptr inbounds %struct.ceph_snap_context, %struct.ceph_snap_context* %7, i32 0, i32 0
  %9 = call i64 @refcount_dec_and_test(i32* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %6
  %12 = load %struct.ceph_snap_context*, %struct.ceph_snap_context** %2, align 8
  %13 = call i32 @kfree(%struct.ceph_snap_context* %12)
  br label %14

14:                                               ; preds = %5, %11, %6
  ret void
}

declare dso_local i64 @refcount_dec_and_test(i32*) #1

declare dso_local i32 @kfree(%struct.ceph_snap_context*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
