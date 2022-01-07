; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_f2fs.h_inode_dec_dirty_pages.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_f2fs.h_inode_dec_dirty_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.TYPE_2__ = type { i32 }

@F2FS_DIRTY_DENTS = common dso_local global i32 0, align 4
@F2FS_DIRTY_DATA = common dso_local global i32 0, align 4
@F2FS_DIRTY_QDATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.inode*)* @inode_dec_dirty_pages to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @inode_dec_dirty_pages(%struct.inode* %0) #0 {
  %2 = alloca %struct.inode*, align 8
  store %struct.inode* %0, %struct.inode** %2, align 8
  %3 = load %struct.inode*, %struct.inode** %2, align 8
  %4 = getelementptr inbounds %struct.inode, %struct.inode* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  %6 = call i64 @S_ISDIR(i32 %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %21, label %8

8:                                                ; preds = %1
  %9 = load %struct.inode*, %struct.inode** %2, align 8
  %10 = getelementptr inbounds %struct.inode, %struct.inode* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @S_ISREG(i32 %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %21, label %14

14:                                               ; preds = %8
  %15 = load %struct.inode*, %struct.inode** %2, align 8
  %16 = getelementptr inbounds %struct.inode, %struct.inode* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @S_ISLNK(i32 %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %14
  br label %48

21:                                               ; preds = %14, %8, %1
  %22 = load %struct.inode*, %struct.inode** %2, align 8
  %23 = call %struct.TYPE_2__* @F2FS_I(%struct.inode* %22)
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = call i32 @atomic_dec(i32* %24)
  %26 = load %struct.inode*, %struct.inode** %2, align 8
  %27 = call i32 @F2FS_I_SB(%struct.inode* %26)
  %28 = load %struct.inode*, %struct.inode** %2, align 8
  %29 = getelementptr inbounds %struct.inode, %struct.inode* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i64 @S_ISDIR(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %21
  %34 = load i32, i32* @F2FS_DIRTY_DENTS, align 4
  br label %37

35:                                               ; preds = %21
  %36 = load i32, i32* @F2FS_DIRTY_DATA, align 4
  br label %37

37:                                               ; preds = %35, %33
  %38 = phi i32 [ %34, %33 ], [ %36, %35 ]
  %39 = call i32 @dec_page_count(i32 %27, i32 %38)
  %40 = load %struct.inode*, %struct.inode** %2, align 8
  %41 = call i64 @IS_NOQUOTA(%struct.inode* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %37
  %44 = load %struct.inode*, %struct.inode** %2, align 8
  %45 = call i32 @F2FS_I_SB(%struct.inode* %44)
  %46 = load i32, i32* @F2FS_DIRTY_QDATA, align 4
  %47 = call i32 @dec_page_count(i32 %45, i32 %46)
  br label %48

48:                                               ; preds = %20, %43, %37
  ret void
}

declare dso_local i64 @S_ISDIR(i32) #1

declare dso_local i32 @S_ISREG(i32) #1

declare dso_local i32 @S_ISLNK(i32) #1

declare dso_local i32 @atomic_dec(i32*) #1

declare dso_local %struct.TYPE_2__* @F2FS_I(%struct.inode*) #1

declare dso_local i32 @dec_page_count(i32, i32) #1

declare dso_local i32 @F2FS_I_SB(%struct.inode*) #1

declare dso_local i64 @IS_NOQUOTA(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
