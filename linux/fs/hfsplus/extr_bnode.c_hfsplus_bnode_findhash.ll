; ModuleID = '/home/carl/AnghaBench/linux/fs/hfsplus/extr_bnode.c_hfsplus_bnode_findhash.c'
source_filename = "/home/carl/AnghaBench/linux/fs/hfsplus/extr_bnode.c_hfsplus_bnode_findhash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hfs_bnode = type { i64, %struct.hfs_bnode* }
%struct.hfs_btree = type { i64, %struct.hfs_bnode** }

@.str = private unnamed_addr constant [44 x i8] c"request for non-existent node %d in B*Tree\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.hfs_bnode* @hfs_bnode_findhash(%struct.hfs_btree* %0, i64 %1) #0 {
  %3 = alloca %struct.hfs_bnode*, align 8
  %4 = alloca %struct.hfs_btree*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.hfs_bnode*, align 8
  store %struct.hfs_btree* %0, %struct.hfs_btree** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load i64, i64* %5, align 8
  %8 = load %struct.hfs_btree*, %struct.hfs_btree** %4, align 8
  %9 = getelementptr inbounds %struct.hfs_btree, %struct.hfs_btree* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp sge i64 %7, %10
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = load i64, i64* %5, align 8
  %14 = call i32 @pr_err(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i64 %13)
  store %struct.hfs_bnode* null, %struct.hfs_bnode** %3, align 8
  br label %40

15:                                               ; preds = %2
  %16 = load %struct.hfs_btree*, %struct.hfs_btree** %4, align 8
  %17 = getelementptr inbounds %struct.hfs_btree, %struct.hfs_btree* %16, i32 0, i32 1
  %18 = load %struct.hfs_bnode**, %struct.hfs_bnode*** %17, align 8
  %19 = load i64, i64* %5, align 8
  %20 = call i64 @hfs_bnode_hash(i64 %19)
  %21 = getelementptr inbounds %struct.hfs_bnode*, %struct.hfs_bnode** %18, i64 %20
  %22 = load %struct.hfs_bnode*, %struct.hfs_bnode** %21, align 8
  store %struct.hfs_bnode* %22, %struct.hfs_bnode** %6, align 8
  br label %23

23:                                               ; preds = %35, %15
  %24 = load %struct.hfs_bnode*, %struct.hfs_bnode** %6, align 8
  %25 = icmp ne %struct.hfs_bnode* %24, null
  br i1 %25, label %26, label %39

26:                                               ; preds = %23
  %27 = load %struct.hfs_bnode*, %struct.hfs_bnode** %6, align 8
  %28 = getelementptr inbounds %struct.hfs_bnode, %struct.hfs_bnode* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* %5, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %26
  %33 = load %struct.hfs_bnode*, %struct.hfs_bnode** %6, align 8
  store %struct.hfs_bnode* %33, %struct.hfs_bnode** %3, align 8
  br label %40

34:                                               ; preds = %26
  br label %35

35:                                               ; preds = %34
  %36 = load %struct.hfs_bnode*, %struct.hfs_bnode** %6, align 8
  %37 = getelementptr inbounds %struct.hfs_bnode, %struct.hfs_bnode* %36, i32 0, i32 1
  %38 = load %struct.hfs_bnode*, %struct.hfs_bnode** %37, align 8
  store %struct.hfs_bnode* %38, %struct.hfs_bnode** %6, align 8
  br label %23

39:                                               ; preds = %23
  store %struct.hfs_bnode* null, %struct.hfs_bnode** %3, align 8
  br label %40

40:                                               ; preds = %39, %32, %12
  %41 = load %struct.hfs_bnode*, %struct.hfs_bnode** %3, align 8
  ret %struct.hfs_bnode* %41
}

declare dso_local i32 @pr_err(i8*, i64) #1

declare dso_local i64 @hfs_bnode_hash(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
