; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_dlmglue.c_ocfs2_get_lockres_osb.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_dlmglue.c_ocfs2_get_lockres_osb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_super = type { i32 }
%struct.ocfs2_lock_res = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { {}* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ocfs2_super* (%struct.ocfs2_lock_res*)* @ocfs2_get_lockres_osb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ocfs2_super* @ocfs2_get_lockres_osb(%struct.ocfs2_lock_res* %0) #0 {
  %2 = alloca %struct.ocfs2_super*, align 8
  %3 = alloca %struct.ocfs2_lock_res*, align 8
  store %struct.ocfs2_lock_res* %0, %struct.ocfs2_lock_res** %3, align 8
  %4 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %3, align 8
  %5 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %4, i32 0, i32 1
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = bitcast {}** %7 to %struct.ocfs2_super* (%struct.ocfs2_lock_res*)**
  %9 = load %struct.ocfs2_super* (%struct.ocfs2_lock_res*)*, %struct.ocfs2_super* (%struct.ocfs2_lock_res*)** %8, align 8
  %10 = icmp ne %struct.ocfs2_super* (%struct.ocfs2_lock_res*)* %9, null
  br i1 %10, label %11, label %20

11:                                               ; preds = %1
  %12 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %3, align 8
  %13 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %12, i32 0, i32 1
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = bitcast {}** %15 to %struct.ocfs2_super* (%struct.ocfs2_lock_res*)**
  %17 = load %struct.ocfs2_super* (%struct.ocfs2_lock_res*)*, %struct.ocfs2_super* (%struct.ocfs2_lock_res*)** %16, align 8
  %18 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %3, align 8
  %19 = call %struct.ocfs2_super* %17(%struct.ocfs2_lock_res* %18)
  store %struct.ocfs2_super* %19, %struct.ocfs2_super** %2, align 8
  br label %25

20:                                               ; preds = %1
  %21 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %3, align 8
  %22 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = inttoptr i64 %23 to %struct.ocfs2_super*
  store %struct.ocfs2_super* %24, %struct.ocfs2_super** %2, align 8
  br label %25

25:                                               ; preds = %20, %11
  %26 = load %struct.ocfs2_super*, %struct.ocfs2_super** %2, align 8
  ret %struct.ocfs2_super* %26
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
