; ModuleID = '/home/carl/AnghaBench/linux/fs/gfs2/extr_inode.h_gfs2_add_inode_blocks.c'
source_filename = "/home/carl/AnghaBench/linux/fs/gfs2/extr_inode.h_gfs2_add_inode_blocks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i64, i64 }

@GFS2_BASIC_BLOCK_SHIFT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.inode*, i64)* @gfs2_add_inode_blocks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gfs2_add_inode_blocks(%struct.inode* %0, i64 %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca i64, align 8
  store %struct.inode* %0, %struct.inode** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load %struct.inode*, %struct.inode** %3, align 8
  %6 = getelementptr inbounds %struct.inode, %struct.inode* %5, i32 0, i32 1
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @GFS2_BASIC_BLOCK_SHIFT, align 8
  %9 = sub nsw i64 %7, %8
  %10 = load i64, i64* %4, align 8
  %11 = shl i64 %10, %9
  store i64 %11, i64* %4, align 8
  %12 = load %struct.inode*, %struct.inode** %3, align 8
  %13 = call i32 @GFS2_SB(%struct.inode* %12)
  %14 = load i64, i64* %4, align 8
  %15 = icmp sge i64 %14, 0
  br i1 %15, label %23, label %16

16:                                               ; preds = %2
  %17 = load %struct.inode*, %struct.inode** %3, align 8
  %18 = getelementptr inbounds %struct.inode, %struct.inode* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* %4, align 8
  %21 = sub nsw i64 0, %20
  %22 = icmp sge i64 %19, %21
  br label %23

23:                                               ; preds = %16, %2
  %24 = phi i1 [ true, %2 ], [ %22, %16 ]
  %25 = zext i1 %24 to i32
  %26 = call i32 @gfs2_assert(i32 %13, i32 %25)
  %27 = load i64, i64* %4, align 8
  %28 = load %struct.inode*, %struct.inode** %3, align 8
  %29 = getelementptr inbounds %struct.inode, %struct.inode* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = add nsw i64 %30, %27
  store i64 %31, i64* %29, align 8
  ret void
}

declare dso_local i32 @gfs2_assert(i32, i32) #1

declare dso_local i32 @GFS2_SB(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
