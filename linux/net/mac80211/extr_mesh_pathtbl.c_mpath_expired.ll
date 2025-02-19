; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_mesh_pathtbl.c_mpath_expired.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_mesh_pathtbl.c_mpath_expired.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mesh_path = type { i32, i32 }

@MESH_PATH_ACTIVE = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@MESH_PATH_FIXED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mesh_path*)* @mpath_expired to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mpath_expired(%struct.mesh_path* %0) #0 {
  %2 = alloca %struct.mesh_path*, align 8
  store %struct.mesh_path* %0, %struct.mesh_path** %2, align 8
  %3 = load %struct.mesh_path*, %struct.mesh_path** %2, align 8
  %4 = getelementptr inbounds %struct.mesh_path, %struct.mesh_path* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  %6 = load i32, i32* @MESH_PATH_ACTIVE, align 4
  %7 = and i32 %5, %6
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %24

9:                                                ; preds = %1
  %10 = load i32, i32* @jiffies, align 4
  %11 = load %struct.mesh_path*, %struct.mesh_path** %2, align 8
  %12 = getelementptr inbounds %struct.mesh_path, %struct.mesh_path* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = call i64 @time_after(i32 %10, i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %24

16:                                               ; preds = %9
  %17 = load %struct.mesh_path*, %struct.mesh_path** %2, align 8
  %18 = getelementptr inbounds %struct.mesh_path, %struct.mesh_path* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @MESH_PATH_FIXED, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  %23 = xor i1 %22, true
  br label %24

24:                                               ; preds = %16, %9, %1
  %25 = phi i1 [ false, %9 ], [ false, %1 ], [ %23, %16 ]
  %26 = zext i1 %25 to i32
  ret i32 %26
}

declare dso_local i64 @time_after(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
