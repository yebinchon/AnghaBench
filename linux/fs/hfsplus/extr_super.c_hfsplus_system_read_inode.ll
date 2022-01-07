; ModuleID = '/home/carl/AnghaBench/linux/fs/hfsplus/extr_super.c_hfsplus_system_read_inode.c'
source_filename = "/home/carl/AnghaBench/linux/fs/hfsplus/extr_super.c_hfsplus_system_read_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32* }
%struct.hfsplus_vh = type { i32, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { %struct.hfsplus_vh* }

@hfsplus_btree_aops = common dso_local global i32 0, align 4
@hfsplus_aops = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*)* @hfsplus_system_read_inode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hfsplus_system_read_inode(%struct.inode* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.hfsplus_vh*, align 8
  store %struct.inode* %0, %struct.inode** %3, align 8
  %5 = load %struct.inode*, %struct.inode** %3, align 8
  %6 = getelementptr inbounds %struct.inode, %struct.inode* %5, i32 0, i32 2
  %7 = load i32, i32* %6, align 8
  %8 = call %struct.TYPE_4__* @HFSPLUS_SB(i32 %7)
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load %struct.hfsplus_vh*, %struct.hfsplus_vh** %9, align 8
  store %struct.hfsplus_vh* %10, %struct.hfsplus_vh** %4, align 8
  %11 = load %struct.inode*, %struct.inode** %3, align 8
  %12 = getelementptr inbounds %struct.inode, %struct.inode* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  switch i32 %13, label %55 [
    i32 129, label %14
    i32 130, label %23
    i32 132, label %32
    i32 128, label %41
    i32 131, label %46
  ]

14:                                               ; preds = %1
  %15 = load %struct.inode*, %struct.inode** %3, align 8
  %16 = load %struct.hfsplus_vh*, %struct.hfsplus_vh** %4, align 8
  %17 = getelementptr inbounds %struct.hfsplus_vh, %struct.hfsplus_vh* %16, i32 0, i32 4
  %18 = call i32 @hfsplus_inode_read_fork(%struct.inode* %15, i32* %17)
  %19 = load %struct.inode*, %struct.inode** %3, align 8
  %20 = getelementptr inbounds %struct.inode, %struct.inode* %19, i32 0, i32 1
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  store i32* @hfsplus_btree_aops, i32** %22, align 8
  br label %58

23:                                               ; preds = %1
  %24 = load %struct.inode*, %struct.inode** %3, align 8
  %25 = load %struct.hfsplus_vh*, %struct.hfsplus_vh** %4, align 8
  %26 = getelementptr inbounds %struct.hfsplus_vh, %struct.hfsplus_vh* %25, i32 0, i32 3
  %27 = call i32 @hfsplus_inode_read_fork(%struct.inode* %24, i32* %26)
  %28 = load %struct.inode*, %struct.inode** %3, align 8
  %29 = getelementptr inbounds %struct.inode, %struct.inode* %28, i32 0, i32 1
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  store i32* @hfsplus_btree_aops, i32** %31, align 8
  br label %58

32:                                               ; preds = %1
  %33 = load %struct.inode*, %struct.inode** %3, align 8
  %34 = load %struct.hfsplus_vh*, %struct.hfsplus_vh** %4, align 8
  %35 = getelementptr inbounds %struct.hfsplus_vh, %struct.hfsplus_vh* %34, i32 0, i32 2
  %36 = call i32 @hfsplus_inode_read_fork(%struct.inode* %33, i32* %35)
  %37 = load %struct.inode*, %struct.inode** %3, align 8
  %38 = getelementptr inbounds %struct.inode, %struct.inode* %37, i32 0, i32 1
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  store i32* @hfsplus_aops, i32** %40, align 8
  br label %58

41:                                               ; preds = %1
  %42 = load %struct.inode*, %struct.inode** %3, align 8
  %43 = load %struct.hfsplus_vh*, %struct.hfsplus_vh** %4, align 8
  %44 = getelementptr inbounds %struct.hfsplus_vh, %struct.hfsplus_vh* %43, i32 0, i32 1
  %45 = call i32 @hfsplus_inode_read_fork(%struct.inode* %42, i32* %44)
  br label %58

46:                                               ; preds = %1
  %47 = load %struct.inode*, %struct.inode** %3, align 8
  %48 = load %struct.hfsplus_vh*, %struct.hfsplus_vh** %4, align 8
  %49 = getelementptr inbounds %struct.hfsplus_vh, %struct.hfsplus_vh* %48, i32 0, i32 0
  %50 = call i32 @hfsplus_inode_read_fork(%struct.inode* %47, i32* %49)
  %51 = load %struct.inode*, %struct.inode** %3, align 8
  %52 = getelementptr inbounds %struct.inode, %struct.inode* %51, i32 0, i32 1
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 0
  store i32* @hfsplus_btree_aops, i32** %54, align 8
  br label %58

55:                                               ; preds = %1
  %56 = load i32, i32* @EIO, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %2, align 4
  br label %59

58:                                               ; preds = %46, %41, %32, %23, %14
  store i32 0, i32* %2, align 4
  br label %59

59:                                               ; preds = %58, %55
  %60 = load i32, i32* %2, align 4
  ret i32 %60
}

declare dso_local %struct.TYPE_4__* @HFSPLUS_SB(i32) #1

declare dso_local i32 @hfsplus_inode_read_fork(%struct.inode*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
