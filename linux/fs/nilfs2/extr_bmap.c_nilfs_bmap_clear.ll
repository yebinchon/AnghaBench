; ModuleID = '/home/carl/AnghaBench/linux/fs/nilfs2/extr_bmap.c_nilfs_bmap_clear.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nilfs2/extr_bmap.c_nilfs_bmap_clear.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nilfs_bmap = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.nilfs_bmap*)* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nilfs_bmap_clear(%struct.nilfs_bmap* %0) #0 {
  %2 = alloca %struct.nilfs_bmap*, align 8
  store %struct.nilfs_bmap* %0, %struct.nilfs_bmap** %2, align 8
  %3 = load %struct.nilfs_bmap*, %struct.nilfs_bmap** %2, align 8
  %4 = getelementptr inbounds %struct.nilfs_bmap, %struct.nilfs_bmap* %3, i32 0, i32 0
  %5 = call i32 @down_write(i32* %4)
  %6 = load %struct.nilfs_bmap*, %struct.nilfs_bmap** %2, align 8
  %7 = getelementptr inbounds %struct.nilfs_bmap, %struct.nilfs_bmap* %6, i32 0, i32 1
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32 (%struct.nilfs_bmap*)*, i32 (%struct.nilfs_bmap*)** %9, align 8
  %11 = icmp ne i32 (%struct.nilfs_bmap*)* %10, null
  br i1 %11, label %12, label %20

12:                                               ; preds = %1
  %13 = load %struct.nilfs_bmap*, %struct.nilfs_bmap** %2, align 8
  %14 = getelementptr inbounds %struct.nilfs_bmap, %struct.nilfs_bmap* %13, i32 0, i32 1
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32 (%struct.nilfs_bmap*)*, i32 (%struct.nilfs_bmap*)** %16, align 8
  %18 = load %struct.nilfs_bmap*, %struct.nilfs_bmap** %2, align 8
  %19 = call i32 %17(%struct.nilfs_bmap* %18)
  br label %20

20:                                               ; preds = %12, %1
  %21 = load %struct.nilfs_bmap*, %struct.nilfs_bmap** %2, align 8
  %22 = getelementptr inbounds %struct.nilfs_bmap, %struct.nilfs_bmap* %21, i32 0, i32 0
  %23 = call i32 @up_write(i32* %22)
  ret void
}

declare dso_local i32 @down_write(i32*) #1

declare dso_local i32 @up_write(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
