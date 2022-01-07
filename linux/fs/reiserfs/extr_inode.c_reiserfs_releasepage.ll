; ModuleID = '/home/carl/AnghaBench/linux/fs/reiserfs/extr_inode.c_reiserfs_releasepage.c'
source_filename = "/home/carl/AnghaBench/linux/fs/reiserfs/extr_inode.c_reiserfs_releasepage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.inode* }
%struct.inode = type { i32 }
%struct.reiserfs_journal = type { i32 }
%struct.buffer_head = type { %struct.buffer_head*, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.page*, i32)* @reiserfs_releasepage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @reiserfs_releasepage(%struct.page* %0, i32 %1) #0 {
  %3 = alloca %struct.page*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.reiserfs_journal*, align 8
  %7 = alloca %struct.buffer_head*, align 8
  %8 = alloca %struct.buffer_head*, align 8
  %9 = alloca i32, align 4
  store %struct.page* %0, %struct.page** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.page*, %struct.page** %3, align 8
  %11 = getelementptr inbounds %struct.page, %struct.page* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load %struct.inode*, %struct.inode** %13, align 8
  store %struct.inode* %14, %struct.inode** %5, align 8
  %15 = load %struct.inode*, %struct.inode** %5, align 8
  %16 = getelementptr inbounds %struct.inode, %struct.inode* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call %struct.reiserfs_journal* @SB_JOURNAL(i32 %17)
  store %struct.reiserfs_journal* %18, %struct.reiserfs_journal** %6, align 8
  store i32 1, i32* %9, align 4
  %19 = load %struct.page*, %struct.page** %3, align 8
  %20 = call i32 @PageChecked(%struct.page* %19)
  %21 = call i32 @WARN_ON(i32 %20)
  %22 = load %struct.reiserfs_journal*, %struct.reiserfs_journal** %6, align 8
  %23 = getelementptr inbounds %struct.reiserfs_journal, %struct.reiserfs_journal* %22, i32 0, i32 0
  %24 = call i32 @spin_lock(i32* %23)
  %25 = load %struct.page*, %struct.page** %3, align 8
  %26 = call %struct.buffer_head* @page_buffers(%struct.page* %25)
  store %struct.buffer_head* %26, %struct.buffer_head** %7, align 8
  %27 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  store %struct.buffer_head* %27, %struct.buffer_head** %8, align 8
  br label %28

28:                                               ; preds = %50, %2
  %29 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %30 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %46

33:                                               ; preds = %28
  %34 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %35 = call i32 @buffer_dirty(%struct.buffer_head* %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %44, label %37

37:                                               ; preds = %33
  %38 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %39 = call i32 @buffer_locked(%struct.buffer_head* %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %44, label %41

41:                                               ; preds = %37
  %42 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %43 = call i32 @reiserfs_free_jh(%struct.buffer_head* %42)
  br label %45

44:                                               ; preds = %37, %33
  store i32 0, i32* %9, align 4
  br label %54

45:                                               ; preds = %41
  br label %46

46:                                               ; preds = %45, %28
  %47 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %48 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %47, i32 0, i32 0
  %49 = load %struct.buffer_head*, %struct.buffer_head** %48, align 8
  store %struct.buffer_head* %49, %struct.buffer_head** %8, align 8
  br label %50

50:                                               ; preds = %46
  %51 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %52 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %53 = icmp ne %struct.buffer_head* %51, %52
  br i1 %53, label %28, label %54

54:                                               ; preds = %50, %44
  %55 = load i32, i32* %9, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %54
  %58 = load %struct.page*, %struct.page** %3, align 8
  %59 = call i32 @try_to_free_buffers(%struct.page* %58)
  store i32 %59, i32* %9, align 4
  br label %60

60:                                               ; preds = %57, %54
  %61 = load %struct.reiserfs_journal*, %struct.reiserfs_journal** %6, align 8
  %62 = getelementptr inbounds %struct.reiserfs_journal, %struct.reiserfs_journal* %61, i32 0, i32 0
  %63 = call i32 @spin_unlock(i32* %62)
  %64 = load i32, i32* %9, align 4
  ret i32 %64
}

declare dso_local %struct.reiserfs_journal* @SB_JOURNAL(i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @PageChecked(%struct.page*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local %struct.buffer_head* @page_buffers(%struct.page*) #1

declare dso_local i32 @buffer_dirty(%struct.buffer_head*) #1

declare dso_local i32 @buffer_locked(%struct.buffer_head*) #1

declare dso_local i32 @reiserfs_free_jh(%struct.buffer_head*) #1

declare dso_local i32 @try_to_free_buffers(%struct.page*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
