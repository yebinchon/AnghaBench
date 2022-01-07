; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/flexfilelayout/extr_flexfilelayout.c_ff_layout_alloc_layout_hdr.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/flexfilelayout/extr_flexfilelayout.c_ff_layout_alloc_layout_hdr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pnfs_layout_hdr = type { i32 }
%struct.inode = type { i32 }
%struct.nfs4_flexfile_layout = type { %struct.pnfs_layout_hdr, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.pnfs_layout_hdr* (%struct.inode*, i32)* @ff_layout_alloc_layout_hdr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.pnfs_layout_hdr* @ff_layout_alloc_layout_hdr(%struct.inode* %0, i32 %1) #0 {
  %3 = alloca %struct.pnfs_layout_hdr*, align 8
  %4 = alloca %struct.inode*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.nfs4_flexfile_layout*, align 8
  store %struct.inode* %0, %struct.inode** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = call %struct.nfs4_flexfile_layout* @kzalloc(i32 16, i32 %7)
  store %struct.nfs4_flexfile_layout* %8, %struct.nfs4_flexfile_layout** %6, align 8
  %9 = load %struct.nfs4_flexfile_layout*, %struct.nfs4_flexfile_layout** %6, align 8
  %10 = icmp ne %struct.nfs4_flexfile_layout* %9, null
  br i1 %10, label %11, label %23

11:                                               ; preds = %2
  %12 = load %struct.nfs4_flexfile_layout*, %struct.nfs4_flexfile_layout** %6, align 8
  %13 = getelementptr inbounds %struct.nfs4_flexfile_layout, %struct.nfs4_flexfile_layout* %12, i32 0, i32 3
  %14 = call i32 @INIT_LIST_HEAD(i32* %13)
  %15 = load %struct.nfs4_flexfile_layout*, %struct.nfs4_flexfile_layout** %6, align 8
  %16 = getelementptr inbounds %struct.nfs4_flexfile_layout, %struct.nfs4_flexfile_layout* %15, i32 0, i32 2
  %17 = call i32 @INIT_LIST_HEAD(i32* %16)
  %18 = call i32 (...) @ktime_get()
  %19 = load %struct.nfs4_flexfile_layout*, %struct.nfs4_flexfile_layout** %6, align 8
  %20 = getelementptr inbounds %struct.nfs4_flexfile_layout, %struct.nfs4_flexfile_layout* %19, i32 0, i32 1
  store i32 %18, i32* %20, align 4
  %21 = load %struct.nfs4_flexfile_layout*, %struct.nfs4_flexfile_layout** %6, align 8
  %22 = getelementptr inbounds %struct.nfs4_flexfile_layout, %struct.nfs4_flexfile_layout* %21, i32 0, i32 0
  store %struct.pnfs_layout_hdr* %22, %struct.pnfs_layout_hdr** %3, align 8
  br label %24

23:                                               ; preds = %2
  store %struct.pnfs_layout_hdr* null, %struct.pnfs_layout_hdr** %3, align 8
  br label %24

24:                                               ; preds = %23, %11
  %25 = load %struct.pnfs_layout_hdr*, %struct.pnfs_layout_hdr** %3, align 8
  ret %struct.pnfs_layout_hdr* %25
}

declare dso_local %struct.nfs4_flexfile_layout* @kzalloc(i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @ktime_get(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
