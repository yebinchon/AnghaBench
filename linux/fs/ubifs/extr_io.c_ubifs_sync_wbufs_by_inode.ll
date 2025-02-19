; ModuleID = '/home/carl/AnghaBench/linux/fs/ubifs/extr_io.c_ubifs_sync_wbufs_by_inode.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ubifs/extr_io.c_ubifs_sync_wbufs_by_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubifs_info = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.ubifs_wbuf }
%struct.ubifs_wbuf = type { i32, i32 }
%struct.inode = type { i32 }

@GCHD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ubifs_sync_wbufs_by_inode(%struct.ubifs_info* %0, %struct.inode* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ubifs_info*, align 8
  %5 = alloca %struct.inode*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.ubifs_wbuf*, align 8
  store %struct.ubifs_info* %0, %struct.ubifs_info** %4, align 8
  store %struct.inode* %1, %struct.inode** %5, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %6, align 4
  br label %9

9:                                                ; preds = %63, %2
  %10 = load i32, i32* %6, align 4
  %11 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %12 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp slt i32 %10, %13
  br i1 %14, label %15, label %66

15:                                               ; preds = %9
  %16 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %17 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %16, i32 0, i32 1
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = load i32, i32* %6, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  store %struct.ubifs_wbuf* %22, %struct.ubifs_wbuf** %8, align 8
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* @GCHD, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %15
  br label %63

27:                                               ; preds = %15
  %28 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %8, align 8
  %29 = load %struct.inode*, %struct.inode** %5, align 8
  %30 = getelementptr inbounds %struct.inode, %struct.inode* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i64 @wbuf_has_ino(%struct.ubifs_wbuf* %28, i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %27
  br label %63

35:                                               ; preds = %27
  %36 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %8, align 8
  %37 = getelementptr inbounds %struct.ubifs_wbuf, %struct.ubifs_wbuf* %36, i32 0, i32 0
  %38 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %8, align 8
  %39 = getelementptr inbounds %struct.ubifs_wbuf, %struct.ubifs_wbuf* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @mutex_lock_nested(i32* %37, i32 %40)
  %42 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %8, align 8
  %43 = load %struct.inode*, %struct.inode** %5, align 8
  %44 = getelementptr inbounds %struct.inode, %struct.inode* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i64 @wbuf_has_ino(%struct.ubifs_wbuf* %42, i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %35
  %49 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %8, align 8
  %50 = call i32 @ubifs_wbuf_sync_nolock(%struct.ubifs_wbuf* %49)
  store i32 %50, i32* %7, align 4
  br label %51

51:                                               ; preds = %48, %35
  %52 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %8, align 8
  %53 = getelementptr inbounds %struct.ubifs_wbuf, %struct.ubifs_wbuf* %52, i32 0, i32 0
  %54 = call i32 @mutex_unlock(i32* %53)
  %55 = load i32, i32* %7, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %51
  %58 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %59 = load i32, i32* %7, align 4
  %60 = call i32 @ubifs_ro_mode(%struct.ubifs_info* %58, i32 %59)
  %61 = load i32, i32* %7, align 4
  store i32 %61, i32* %3, align 4
  br label %67

62:                                               ; preds = %51
  br label %63

63:                                               ; preds = %62, %34, %26
  %64 = load i32, i32* %6, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %6, align 4
  br label %9

66:                                               ; preds = %9
  store i32 0, i32* %3, align 4
  br label %67

67:                                               ; preds = %66, %57
  %68 = load i32, i32* %3, align 4
  ret i32 %68
}

declare dso_local i64 @wbuf_has_ino(%struct.ubifs_wbuf*, i32) #1

declare dso_local i32 @mutex_lock_nested(i32*, i32) #1

declare dso_local i32 @ubifs_wbuf_sync_nolock(%struct.ubifs_wbuf*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @ubifs_ro_mode(%struct.ubifs_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
