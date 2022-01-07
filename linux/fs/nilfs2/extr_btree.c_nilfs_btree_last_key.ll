; ModuleID = '/home/carl/AnghaBench/linux/fs/nilfs2/extr_btree.c_nilfs_btree_last_key.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nilfs2/extr_btree.c_nilfs_btree_last_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nilfs_bmap = type { i32 }
%struct.nilfs_btree_path = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nilfs_bmap*, i32*)* @nilfs_btree_last_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nilfs_btree_last_key(%struct.nilfs_bmap* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nilfs_bmap*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.nilfs_btree_path*, align 8
  %7 = alloca i32, align 4
  store %struct.nilfs_bmap* %0, %struct.nilfs_bmap** %4, align 8
  store i32* %1, i32** %5, align 8
  %8 = call %struct.nilfs_btree_path* (...) @nilfs_btree_alloc_path()
  store %struct.nilfs_btree_path* %8, %struct.nilfs_btree_path** %6, align 8
  %9 = load %struct.nilfs_btree_path*, %struct.nilfs_btree_path** %6, align 8
  %10 = icmp eq %struct.nilfs_btree_path* %9, null
  br i1 %10, label %11, label %14

11:                                               ; preds = %2
  %12 = load i32, i32* @ENOMEM, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %3, align 4
  br label %22

14:                                               ; preds = %2
  %15 = load %struct.nilfs_bmap*, %struct.nilfs_bmap** %4, align 8
  %16 = load %struct.nilfs_btree_path*, %struct.nilfs_btree_path** %6, align 8
  %17 = load i32*, i32** %5, align 8
  %18 = call i32 @nilfs_btree_do_lookup_last(%struct.nilfs_bmap* %15, %struct.nilfs_btree_path* %16, i32* %17, i32* null)
  store i32 %18, i32* %7, align 4
  %19 = load %struct.nilfs_btree_path*, %struct.nilfs_btree_path** %6, align 8
  %20 = call i32 @nilfs_btree_free_path(%struct.nilfs_btree_path* %19)
  %21 = load i32, i32* %7, align 4
  store i32 %21, i32* %3, align 4
  br label %22

22:                                               ; preds = %14, %11
  %23 = load i32, i32* %3, align 4
  ret i32 %23
}

declare dso_local %struct.nilfs_btree_path* @nilfs_btree_alloc_path(...) #1

declare dso_local i32 @nilfs_btree_do_lookup_last(%struct.nilfs_bmap*, %struct.nilfs_btree_path*, i32*, i32*) #1

declare dso_local i32 @nilfs_btree_free_path(%struct.nilfs_btree_path*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
