; ModuleID = '/home/carl/AnghaBench/linux/fs/hfs/extr_mdb.c_hfs_mdb_put.c'
source_filename = "/home/carl/AnghaBench/linux/fs/hfs/extr_mdb.c_hfs_mdb_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32* }
%struct.TYPE_3__ = type { %struct.TYPE_3__*, i32, i32, i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hfs_mdb_put(%struct.super_block* %0) #0 {
  %2 = alloca %struct.super_block*, align 8
  store %struct.super_block* %0, %struct.super_block** %2, align 8
  %3 = load %struct.super_block*, %struct.super_block** %2, align 8
  %4 = call %struct.TYPE_3__* @HFS_SB(%struct.super_block* %3)
  %5 = icmp ne %struct.TYPE_3__* %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  br label %48

7:                                                ; preds = %1
  %8 = load %struct.super_block*, %struct.super_block** %2, align 8
  %9 = call %struct.TYPE_3__* @HFS_SB(%struct.super_block* %8)
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 6
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @hfs_btree_close(i32 %11)
  %13 = load %struct.super_block*, %struct.super_block** %2, align 8
  %14 = call %struct.TYPE_3__* @HFS_SB(%struct.super_block* %13)
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 5
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @hfs_btree_close(i32 %16)
  %18 = load %struct.super_block*, %struct.super_block** %2, align 8
  %19 = call %struct.TYPE_3__* @HFS_SB(%struct.super_block* %18)
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 4
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @brelse(i32 %21)
  %23 = load %struct.super_block*, %struct.super_block** %2, align 8
  %24 = call %struct.TYPE_3__* @HFS_SB(%struct.super_block* %23)
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @brelse(i32 %26)
  %28 = load %struct.super_block*, %struct.super_block** %2, align 8
  %29 = call %struct.TYPE_3__* @HFS_SB(%struct.super_block* %28)
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @unload_nls(i32 %31)
  %33 = load %struct.super_block*, %struct.super_block** %2, align 8
  %34 = call %struct.TYPE_3__* @HFS_SB(%struct.super_block* %33)
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @unload_nls(i32 %36)
  %38 = load %struct.super_block*, %struct.super_block** %2, align 8
  %39 = call %struct.TYPE_3__* @HFS_SB(%struct.super_block* %38)
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %40, align 8
  %42 = call i32 @kfree(%struct.TYPE_3__* %41)
  %43 = load %struct.super_block*, %struct.super_block** %2, align 8
  %44 = call %struct.TYPE_3__* @HFS_SB(%struct.super_block* %43)
  %45 = call i32 @kfree(%struct.TYPE_3__* %44)
  %46 = load %struct.super_block*, %struct.super_block** %2, align 8
  %47 = getelementptr inbounds %struct.super_block, %struct.super_block* %46, i32 0, i32 0
  store i32* null, i32** %47, align 8
  br label %48

48:                                               ; preds = %7, %6
  ret void
}

declare dso_local %struct.TYPE_3__* @HFS_SB(%struct.super_block*) #1

declare dso_local i32 @hfs_btree_close(i32) #1

declare dso_local i32 @brelse(i32) #1

declare dso_local i32 @unload_nls(i32) #1

declare dso_local i32 @kfree(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
