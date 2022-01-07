; ModuleID = '/home/carl/AnghaBench/linux/fs/jfs/extr_jfs_dtree.c_modify_index.c'
source_filename = "/home/carl/AnghaBench/linux/fs/jfs/extr_jfs_dtree.c_modify_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.metapage = type { i32 }
%struct.dir_table_slot = type { i32 }

@COMMIT_Dirtable = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.inode*, i32, i32, i32, %struct.metapage**, i32*)* @modify_index to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @modify_index(i32 %0, %struct.inode* %1, i32 %2, i32 %3, i32 %4, %struct.metapage** %5, i32* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.inode*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.metapage**, align 8
  %14 = alloca i32*, align 8
  %15 = alloca %struct.dir_table_slot*, align 8
  store i32 %0, i32* %8, align 4
  store %struct.inode* %1, %struct.inode** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store %struct.metapage** %5, %struct.metapage*** %13, align 8
  store i32* %6, i32** %14, align 8
  %16 = load %struct.inode*, %struct.inode** %9, align 8
  %17 = load i32, i32* %10, align 4
  %18 = load %struct.metapage**, %struct.metapage*** %13, align 8
  %19 = load i32*, i32** %14, align 8
  %20 = call %struct.dir_table_slot* @find_index(%struct.inode* %16, i32 %17, %struct.metapage** %18, i32* %19)
  store %struct.dir_table_slot* %20, %struct.dir_table_slot** %15, align 8
  %21 = load %struct.dir_table_slot*, %struct.dir_table_slot** %15, align 8
  %22 = icmp ne %struct.dir_table_slot* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %7
  br label %48

24:                                               ; preds = %7
  %25 = load %struct.dir_table_slot*, %struct.dir_table_slot** %15, align 8
  %26 = load i32, i32* %11, align 4
  %27 = call i32 @DTSaddress(%struct.dir_table_slot* %25, i32 %26)
  %28 = load i32, i32* %12, align 4
  %29 = load %struct.dir_table_slot*, %struct.dir_table_slot** %15, align 8
  %30 = getelementptr inbounds %struct.dir_table_slot, %struct.dir_table_slot* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 4
  %31 = load %struct.metapage**, %struct.metapage*** %13, align 8
  %32 = load %struct.metapage*, %struct.metapage** %31, align 8
  %33 = icmp ne %struct.metapage* %32, null
  br i1 %33, label %34, label %44

34:                                               ; preds = %24
  %35 = load i32, i32* %8, align 4
  %36 = load %struct.inode*, %struct.inode** %9, align 8
  %37 = load %struct.metapage**, %struct.metapage*** %13, align 8
  %38 = load %struct.metapage*, %struct.metapage** %37, align 8
  %39 = load i32, i32* %10, align 4
  %40 = call i32 @lock_index(i32 %35, %struct.inode* %36, %struct.metapage* %38, i32 %39)
  %41 = load %struct.metapage**, %struct.metapage*** %13, align 8
  %42 = load %struct.metapage*, %struct.metapage** %41, align 8
  %43 = call i32 @mark_metapage_dirty(%struct.metapage* %42)
  br label %48

44:                                               ; preds = %24
  %45 = load i32, i32* @COMMIT_Dirtable, align 4
  %46 = load %struct.inode*, %struct.inode** %9, align 8
  %47 = call i32 @set_cflag(i32 %45, %struct.inode* %46)
  br label %48

48:                                               ; preds = %23, %44, %34
  ret void
}

declare dso_local %struct.dir_table_slot* @find_index(%struct.inode*, i32, %struct.metapage**, i32*) #1

declare dso_local i32 @DTSaddress(%struct.dir_table_slot*, i32) #1

declare dso_local i32 @lock_index(i32, %struct.inode*, %struct.metapage*, i32) #1

declare dso_local i32 @mark_metapage_dirty(%struct.metapage*) #1

declare dso_local i32 @set_cflag(i32, %struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
