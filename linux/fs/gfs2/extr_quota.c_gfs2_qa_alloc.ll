; ModuleID = '/home/carl/AnghaBench/linux/fs/gfs2/extr_quota.c_gfs2_qa_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/fs/gfs2/extr_quota.c_gfs2_qa_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gfs2_inode = type { i32, i32*, i32 }
%struct.gfs2_sbd = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@GFS2_QUOTA_OFF = common dso_local global i64 0, align 8
@gfs2_qadata_cachep = common dso_local global i32 0, align 4
@GFP_NOFS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gfs2_qa_alloc(%struct.gfs2_inode* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.gfs2_inode*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.gfs2_sbd*, align 8
  store %struct.gfs2_inode* %0, %struct.gfs2_inode** %3, align 8
  store i32 0, i32* %4, align 4
  %6 = load %struct.gfs2_inode*, %struct.gfs2_inode** %3, align 8
  %7 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %6, i32 0, i32 2
  %8 = call %struct.gfs2_sbd* @GFS2_SB(i32* %7)
  store %struct.gfs2_sbd* %8, %struct.gfs2_sbd** %5, align 8
  %9 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %5, align 8
  %10 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @GFS2_QUOTA_OFF, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %43

16:                                               ; preds = %1
  %17 = load %struct.gfs2_inode*, %struct.gfs2_inode** %3, align 8
  %18 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %17, i32 0, i32 0
  %19 = call i32 @down_write(i32* %18)
  %20 = load %struct.gfs2_inode*, %struct.gfs2_inode** %3, align 8
  %21 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %20, i32 0, i32 1
  %22 = load i32*, i32** %21, align 8
  %23 = icmp eq i32* %22, null
  br i1 %23, label %24, label %38

24:                                               ; preds = %16
  %25 = load i32, i32* @gfs2_qadata_cachep, align 4
  %26 = load i32, i32* @GFP_NOFS, align 4
  %27 = call i32* @kmem_cache_zalloc(i32 %25, i32 %26)
  %28 = load %struct.gfs2_inode*, %struct.gfs2_inode** %3, align 8
  %29 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %28, i32 0, i32 1
  store i32* %27, i32** %29, align 8
  %30 = load %struct.gfs2_inode*, %struct.gfs2_inode** %3, align 8
  %31 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %30, i32 0, i32 1
  %32 = load i32*, i32** %31, align 8
  %33 = icmp ne i32* %32, null
  br i1 %33, label %37, label %34

34:                                               ; preds = %24
  %35 = load i32, i32* @ENOMEM, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %4, align 4
  br label %37

37:                                               ; preds = %34, %24
  br label %38

38:                                               ; preds = %37, %16
  %39 = load %struct.gfs2_inode*, %struct.gfs2_inode** %3, align 8
  %40 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %39, i32 0, i32 0
  %41 = call i32 @up_write(i32* %40)
  %42 = load i32, i32* %4, align 4
  store i32 %42, i32* %2, align 4
  br label %43

43:                                               ; preds = %38, %15
  %44 = load i32, i32* %2, align 4
  ret i32 %44
}

declare dso_local %struct.gfs2_sbd* @GFS2_SB(i32*) #1

declare dso_local i32 @down_write(i32*) #1

declare dso_local i32* @kmem_cache_zalloc(i32, i32) #1

declare dso_local i32 @up_write(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
