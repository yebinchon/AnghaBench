; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_write.c___nfs_commit_inode.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_write.c___nfs_commit_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.writeback_control = type { i64, i32 }
%struct.nfs_commit_info = type { i32 }

@head = common dso_local global i32 0, align 4
@FLUSH_SYNC = common dso_local global i32 0, align 4
@WB_SYNC_NONE = common dso_local global i64 0, align 8
@INT_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, i32, %struct.writeback_control*)* @__nfs_commit_inode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__nfs_commit_inode(%struct.inode* %0, i32 %1, %struct.writeback_control* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.inode*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.writeback_control*, align 8
  %8 = alloca %struct.nfs_commit_info, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.writeback_control* %2, %struct.writeback_control** %7, align 8
  %12 = load i32, i32* @head, align 4
  %13 = call i32 @LIST_HEAD(i32 %12)
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* @FLUSH_SYNC, align 4
  %16 = and i32 %14, %15
  store i32 %16, i32* %9, align 4
  %17 = load %struct.inode*, %struct.inode** %5, align 8
  %18 = call i32 @nfs_init_cinfo_from_inode(%struct.nfs_commit_info* %8, %struct.inode* %17)
  %19 = getelementptr inbounds %struct.nfs_commit_info, %struct.nfs_commit_info* %8, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @nfs_commit_begin(i32 %20)
  br label %22

22:                                               ; preds = %65, %3
  %23 = load %struct.inode*, %struct.inode** %5, align 8
  %24 = call i32 @nfs_scan_commit(%struct.inode* %23, i32* @head, %struct.nfs_commit_info* %8)
  store i32 %24, i32* %11, align 4
  store i32 %24, i32* %10, align 4
  %25 = load i32, i32* %10, align 4
  %26 = icmp sle i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %22
  br label %67

28:                                               ; preds = %22
  %29 = load %struct.inode*, %struct.inode** %5, align 8
  %30 = load i32, i32* %6, align 4
  %31 = call i32 @nfs_generic_commit_list(%struct.inode* %29, i32* @head, i32 %30, %struct.nfs_commit_info* %8)
  store i32 %31, i32* %10, align 4
  %32 = load i32, i32* %10, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %28
  br label %67

35:                                               ; preds = %28
  store i32 0, i32* %10, align 4
  %36 = load %struct.writeback_control*, %struct.writeback_control** %7, align 8
  %37 = icmp ne %struct.writeback_control* %36, null
  br i1 %37, label %38, label %60

38:                                               ; preds = %35
  %39 = load %struct.writeback_control*, %struct.writeback_control** %7, align 8
  %40 = getelementptr inbounds %struct.writeback_control, %struct.writeback_control* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @WB_SYNC_NONE, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %60

44:                                               ; preds = %38
  %45 = load i32, i32* %11, align 4
  %46 = load %struct.writeback_control*, %struct.writeback_control** %7, align 8
  %47 = getelementptr inbounds %struct.writeback_control, %struct.writeback_control* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = icmp slt i32 %45, %48
  br i1 %49, label %50, label %56

50:                                               ; preds = %44
  %51 = load i32, i32* %11, align 4
  %52 = load %struct.writeback_control*, %struct.writeback_control** %7, align 8
  %53 = getelementptr inbounds %struct.writeback_control, %struct.writeback_control* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = sub nsw i32 %54, %51
  store i32 %55, i32* %53, align 8
  br label %59

56:                                               ; preds = %44
  %57 = load %struct.writeback_control*, %struct.writeback_control** %7, align 8
  %58 = getelementptr inbounds %struct.writeback_control, %struct.writeback_control* %57, i32 0, i32 1
  store i32 0, i32* %58, align 8
  br label %59

59:                                               ; preds = %56, %50
  br label %60

60:                                               ; preds = %59, %38, %35
  %61 = load i32, i32* %11, align 4
  %62 = load i32, i32* @INT_MAX, align 4
  %63 = icmp slt i32 %61, %62
  br i1 %63, label %64, label %65

64:                                               ; preds = %60
  br label %67

65:                                               ; preds = %60
  %66 = call i32 (...) @cond_resched()
  br label %22

67:                                               ; preds = %64, %34, %27
  %68 = getelementptr inbounds %struct.nfs_commit_info, %struct.nfs_commit_info* %8, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @nfs_commit_end(i32 %69)
  %71 = load i32, i32* %10, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %76, label %73

73:                                               ; preds = %67
  %74 = load i32, i32* %9, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %78, label %76

76:                                               ; preds = %73, %67
  %77 = load i32, i32* %10, align 4
  store i32 %77, i32* %4, align 4
  br label %82

78:                                               ; preds = %73
  %79 = getelementptr inbounds %struct.nfs_commit_info, %struct.nfs_commit_info* %8, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @wait_on_commit(i32 %80)
  store i32 %81, i32* %4, align 4
  br label %82

82:                                               ; preds = %78, %76
  %83 = load i32, i32* %4, align 4
  ret i32 %83
}

declare dso_local i32 @LIST_HEAD(i32) #1

declare dso_local i32 @nfs_init_cinfo_from_inode(%struct.nfs_commit_info*, %struct.inode*) #1

declare dso_local i32 @nfs_commit_begin(i32) #1

declare dso_local i32 @nfs_scan_commit(%struct.inode*, i32*, %struct.nfs_commit_info*) #1

declare dso_local i32 @nfs_generic_commit_list(%struct.inode*, i32*, i32, %struct.nfs_commit_info*) #1

declare dso_local i32 @cond_resched(...) #1

declare dso_local i32 @nfs_commit_end(i32) #1

declare dso_local i32 @wait_on_commit(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
