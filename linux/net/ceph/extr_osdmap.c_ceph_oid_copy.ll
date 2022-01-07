; ModuleID = '/home/carl/AnghaBench/linux/net/ceph/extr_osdmap.c_ceph_oid_copy.c'
source_filename = "/home/carl/AnghaBench/linux/net/ceph/extr_osdmap.c_ceph_oid_copy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ceph_object_id = type { i64, i32, i32 }

@GFP_NOIO = common dso_local global i32 0, align 4
@__GFP_NOFAIL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ceph_oid_copy(%struct.ceph_object_id* %0, %struct.ceph_object_id* %1) #0 {
  %3 = alloca %struct.ceph_object_id*, align 8
  %4 = alloca %struct.ceph_object_id*, align 8
  store %struct.ceph_object_id* %0, %struct.ceph_object_id** %3, align 8
  store %struct.ceph_object_id* %1, %struct.ceph_object_id** %4, align 8
  %5 = load %struct.ceph_object_id*, %struct.ceph_object_id** %3, align 8
  %6 = call i32 @ceph_oid_destroy(%struct.ceph_object_id* %5)
  %7 = load %struct.ceph_object_id*, %struct.ceph_object_id** %4, align 8
  %8 = getelementptr inbounds %struct.ceph_object_id, %struct.ceph_object_id* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 8
  %10 = load %struct.ceph_object_id*, %struct.ceph_object_id** %4, align 8
  %11 = getelementptr inbounds %struct.ceph_object_id, %struct.ceph_object_id* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %9, %12
  br i1 %13, label %14, label %25

14:                                               ; preds = %2
  %15 = load %struct.ceph_object_id*, %struct.ceph_object_id** %4, align 8
  %16 = getelementptr inbounds %struct.ceph_object_id, %struct.ceph_object_id* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = add nsw i64 %17, 1
  %19 = load i32, i32* @GFP_NOIO, align 4
  %20 = load i32, i32* @__GFP_NOFAIL, align 4
  %21 = or i32 %19, %20
  %22 = call i32 @kmalloc(i64 %18, i32 %21)
  %23 = load %struct.ceph_object_id*, %struct.ceph_object_id** %3, align 8
  %24 = getelementptr inbounds %struct.ceph_object_id, %struct.ceph_object_id* %23, i32 0, i32 1
  store i32 %22, i32* %24, align 8
  br label %31

25:                                               ; preds = %2
  %26 = load %struct.ceph_object_id*, %struct.ceph_object_id** %3, align 8
  %27 = getelementptr inbounds %struct.ceph_object_id, %struct.ceph_object_id* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.ceph_object_id*, %struct.ceph_object_id** %3, align 8
  %30 = getelementptr inbounds %struct.ceph_object_id, %struct.ceph_object_id* %29, i32 0, i32 1
  store i32 %28, i32* %30, align 8
  br label %31

31:                                               ; preds = %25, %14
  %32 = load %struct.ceph_object_id*, %struct.ceph_object_id** %3, align 8
  %33 = getelementptr inbounds %struct.ceph_object_id, %struct.ceph_object_id* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.ceph_object_id*, %struct.ceph_object_id** %4, align 8
  %36 = getelementptr inbounds %struct.ceph_object_id, %struct.ceph_object_id* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.ceph_object_id*, %struct.ceph_object_id** %4, align 8
  %39 = getelementptr inbounds %struct.ceph_object_id, %struct.ceph_object_id* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = add nsw i64 %40, 1
  %42 = call i32 @memcpy(i32 %34, i32 %37, i64 %41)
  %43 = load %struct.ceph_object_id*, %struct.ceph_object_id** %4, align 8
  %44 = getelementptr inbounds %struct.ceph_object_id, %struct.ceph_object_id* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.ceph_object_id*, %struct.ceph_object_id** %3, align 8
  %47 = getelementptr inbounds %struct.ceph_object_id, %struct.ceph_object_id* %46, i32 0, i32 0
  store i64 %45, i64* %47, align 8
  ret void
}

declare dso_local i32 @ceph_oid_destroy(%struct.ceph_object_id*) #1

declare dso_local i32 @kmalloc(i64, i32) #1

declare dso_local i32 @memcpy(i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
