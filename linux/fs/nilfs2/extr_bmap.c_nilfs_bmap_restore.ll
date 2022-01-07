; ModuleID = '/home/carl/AnghaBench/linux/fs/nilfs2/extr_bmap.c_nilfs_bmap_restore.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nilfs2/extr_bmap.c_nilfs_bmap_restore.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nilfs_bmap = type { i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.nilfs_bmap_store = type { i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nilfs_bmap_restore(%struct.nilfs_bmap* %0, %struct.nilfs_bmap_store* %1) #0 {
  %3 = alloca %struct.nilfs_bmap*, align 8
  %4 = alloca %struct.nilfs_bmap_store*, align 8
  store %struct.nilfs_bmap* %0, %struct.nilfs_bmap** %3, align 8
  store %struct.nilfs_bmap_store* %1, %struct.nilfs_bmap_store** %4, align 8
  %5 = load %struct.nilfs_bmap*, %struct.nilfs_bmap** %3, align 8
  %6 = getelementptr inbounds %struct.nilfs_bmap, %struct.nilfs_bmap* %5, i32 0, i32 3
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load %struct.nilfs_bmap_store*, %struct.nilfs_bmap_store** %4, align 8
  %10 = getelementptr inbounds %struct.nilfs_bmap_store, %struct.nilfs_bmap_store* %9, i32 0, i32 3
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @memcpy(i32 %8, i32 %11, i32 4)
  %13 = load %struct.nilfs_bmap_store*, %struct.nilfs_bmap_store** %4, align 8
  %14 = getelementptr inbounds %struct.nilfs_bmap_store, %struct.nilfs_bmap_store* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.nilfs_bmap*, %struct.nilfs_bmap** %3, align 8
  %17 = getelementptr inbounds %struct.nilfs_bmap, %struct.nilfs_bmap* %16, i32 0, i32 2
  store i32 %15, i32* %17, align 4
  %18 = load %struct.nilfs_bmap_store*, %struct.nilfs_bmap_store** %4, align 8
  %19 = getelementptr inbounds %struct.nilfs_bmap_store, %struct.nilfs_bmap_store* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.nilfs_bmap*, %struct.nilfs_bmap** %3, align 8
  %22 = getelementptr inbounds %struct.nilfs_bmap, %struct.nilfs_bmap* %21, i32 0, i32 1
  store i32 %20, i32* %22, align 4
  %23 = load %struct.nilfs_bmap_store*, %struct.nilfs_bmap_store** %4, align 8
  %24 = getelementptr inbounds %struct.nilfs_bmap_store, %struct.nilfs_bmap_store* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.nilfs_bmap*, %struct.nilfs_bmap** %3, align 8
  %27 = getelementptr inbounds %struct.nilfs_bmap, %struct.nilfs_bmap* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 4
  ret void
}

declare dso_local i32 @memcpy(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
