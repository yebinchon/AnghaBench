; ModuleID = '/home/carl/AnghaBench/linux/net/ceph/extr_osd_client.c_alloc_spg_mapping.c'
source_filename = "/home/carl/AnghaBench/linux/net/ceph/extr_osd_client.c_alloc_spg_mapping.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ceph_spg_mapping = type { i32, i32 }

@GFP_NOIO = common dso_local global i32 0, align 4
@RB_ROOT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ceph_spg_mapping* ()* @alloc_spg_mapping to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ceph_spg_mapping* @alloc_spg_mapping() #0 {
  %1 = alloca %struct.ceph_spg_mapping*, align 8
  %2 = alloca %struct.ceph_spg_mapping*, align 8
  %3 = load i32, i32* @GFP_NOIO, align 4
  %4 = call %struct.ceph_spg_mapping* @kmalloc(i32 8, i32 %3)
  store %struct.ceph_spg_mapping* %4, %struct.ceph_spg_mapping** %2, align 8
  %5 = load %struct.ceph_spg_mapping*, %struct.ceph_spg_mapping** %2, align 8
  %6 = icmp ne %struct.ceph_spg_mapping* %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %0
  store %struct.ceph_spg_mapping* null, %struct.ceph_spg_mapping** %1, align 8
  br label %16

8:                                                ; preds = %0
  %9 = load %struct.ceph_spg_mapping*, %struct.ceph_spg_mapping** %2, align 8
  %10 = getelementptr inbounds %struct.ceph_spg_mapping, %struct.ceph_spg_mapping* %9, i32 0, i32 1
  %11 = call i32 @RB_CLEAR_NODE(i32* %10)
  %12 = load i32, i32* @RB_ROOT, align 4
  %13 = load %struct.ceph_spg_mapping*, %struct.ceph_spg_mapping** %2, align 8
  %14 = getelementptr inbounds %struct.ceph_spg_mapping, %struct.ceph_spg_mapping* %13, i32 0, i32 0
  store i32 %12, i32* %14, align 4
  %15 = load %struct.ceph_spg_mapping*, %struct.ceph_spg_mapping** %2, align 8
  store %struct.ceph_spg_mapping* %15, %struct.ceph_spg_mapping** %1, align 8
  br label %16

16:                                               ; preds = %8, %7
  %17 = load %struct.ceph_spg_mapping*, %struct.ceph_spg_mapping** %1, align 8
  ret %struct.ceph_spg_mapping* %17
}

declare dso_local %struct.ceph_spg_mapping* @kmalloc(i32, i32) #1

declare dso_local i32 @RB_CLEAR_NODE(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
