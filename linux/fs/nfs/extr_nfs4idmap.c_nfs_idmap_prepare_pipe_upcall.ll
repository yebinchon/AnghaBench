; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4idmap.c_nfs_idmap_prepare_pipe_upcall.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4idmap.c_nfs_idmap_prepare_pipe_upcall.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.idmap = type { %struct.idmap_legacy_upcalldata* }
%struct.idmap_legacy_upcalldata = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.idmap*, %struct.idmap_legacy_upcalldata*)* @nfs_idmap_prepare_pipe_upcall to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfs_idmap_prepare_pipe_upcall(%struct.idmap* %0, %struct.idmap_legacy_upcalldata* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.idmap*, align 8
  %5 = alloca %struct.idmap_legacy_upcalldata*, align 8
  store %struct.idmap* %0, %struct.idmap** %4, align 8
  store %struct.idmap_legacy_upcalldata* %1, %struct.idmap_legacy_upcalldata** %5, align 8
  %6 = load %struct.idmap*, %struct.idmap** %4, align 8
  %7 = getelementptr inbounds %struct.idmap, %struct.idmap* %6, i32 0, i32 0
  %8 = load %struct.idmap_legacy_upcalldata*, %struct.idmap_legacy_upcalldata** %7, align 8
  %9 = icmp ne %struct.idmap_legacy_upcalldata* %8, null
  br i1 %9, label %10, label %12

10:                                               ; preds = %2
  %11 = call i32 @WARN_ON_ONCE(i32 1)
  store i32 0, i32* %3, align 4
  br label %16

12:                                               ; preds = %2
  %13 = load %struct.idmap_legacy_upcalldata*, %struct.idmap_legacy_upcalldata** %5, align 8
  %14 = load %struct.idmap*, %struct.idmap** %4, align 8
  %15 = getelementptr inbounds %struct.idmap, %struct.idmap* %14, i32 0, i32 0
  store %struct.idmap_legacy_upcalldata* %13, %struct.idmap_legacy_upcalldata** %15, align 8
  store i32 1, i32* %3, align 4
  br label %16

16:                                               ; preds = %12, %10
  %17 = load i32, i32* %3, align 4
  ret i32 %17
}

declare dso_local i32 @WARN_ON_ONCE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
