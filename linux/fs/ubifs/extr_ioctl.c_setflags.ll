; ModuleID = '/home/carl/AnghaBench/linux/fs/ubifs/extr_ioctl.c_setflags.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ubifs/extr_ioctl.c_setflags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.ubifs_info* }
%struct.ubifs_info = type { i32 }
%struct.ubifs_inode = type { i32, i32, i32, i32 }
%struct.ubifs_budget_req = type { i32, i32 }

@.str = private unnamed_addr constant [34 x i8] c"can't modify inode %lu attributes\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, i32)* @setflags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @setflags(%struct.inode* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.ubifs_inode*, align 8
  %10 = alloca %struct.ubifs_info*, align 8
  %11 = alloca %struct.ubifs_budget_req, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = load %struct.inode*, %struct.inode** %4, align 8
  %13 = call %struct.ubifs_inode* @ubifs_inode(%struct.inode* %12)
  store %struct.ubifs_inode* %13, %struct.ubifs_inode** %9, align 8
  %14 = load %struct.inode*, %struct.inode** %4, align 8
  %15 = getelementptr inbounds %struct.inode, %struct.inode* %14, i32 0, i32 2
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load %struct.ubifs_info*, %struct.ubifs_info** %17, align 8
  store %struct.ubifs_info* %18, %struct.ubifs_info** %10, align 8
  %19 = getelementptr inbounds %struct.ubifs_budget_req, %struct.ubifs_budget_req* %11, i32 0, i32 0
  store i32 1, i32* %19, align 4
  %20 = getelementptr inbounds %struct.ubifs_budget_req, %struct.ubifs_budget_req* %11, i32 0, i32 1
  %21 = load %struct.ubifs_inode*, %struct.ubifs_inode** %9, align 8
  %22 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %20, align 4
  %24 = load %struct.ubifs_info*, %struct.ubifs_info** %10, align 8
  %25 = call i32 @ubifs_budget_space(%struct.ubifs_info* %24, %struct.ubifs_budget_req* %11)
  store i32 %25, i32* %7, align 4
  %26 = load i32, i32* %7, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %2
  %29 = load i32, i32* %7, align 4
  store i32 %29, i32* %3, align 4
  br label %90

30:                                               ; preds = %2
  %31 = load %struct.ubifs_inode*, %struct.ubifs_inode** %9, align 8
  %32 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %31, i32 0, i32 1
  %33 = call i32 @mutex_lock(i32* %32)
  %34 = load %struct.ubifs_inode*, %struct.ubifs_inode** %9, align 8
  %35 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @ubifs2ioctl(i32 %36)
  store i32 %37, i32* %6, align 4
  %38 = load %struct.inode*, %struct.inode** %4, align 8
  %39 = load i32, i32* %6, align 4
  %40 = load i32, i32* %5, align 4
  %41 = call i32 @vfs_ioc_setflags_prepare(%struct.inode* %38, i32 %39, i32 %40)
  store i32 %41, i32* %7, align 4
  %42 = load i32, i32* %7, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %30
  br label %78

45:                                               ; preds = %30
  %46 = load i32, i32* %5, align 4
  %47 = call i32 @ioctl2ubifs(i32 %46)
  %48 = load %struct.ubifs_inode*, %struct.ubifs_inode** %9, align 8
  %49 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %48, i32 0, i32 2
  store i32 %47, i32* %49, align 4
  %50 = load %struct.inode*, %struct.inode** %4, align 8
  %51 = call i32 @ubifs_set_inode_flags(%struct.inode* %50)
  %52 = load %struct.inode*, %struct.inode** %4, align 8
  %53 = call i32 @current_time(%struct.inode* %52)
  %54 = load %struct.inode*, %struct.inode** %4, align 8
  %55 = getelementptr inbounds %struct.inode, %struct.inode* %54, i32 0, i32 1
  store i32 %53, i32* %55, align 4
  %56 = load %struct.ubifs_inode*, %struct.ubifs_inode** %9, align 8
  %57 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  store i32 %58, i32* %8, align 4
  %59 = load %struct.inode*, %struct.inode** %4, align 8
  %60 = call i32 @mark_inode_dirty_sync(%struct.inode* %59)
  %61 = load %struct.ubifs_inode*, %struct.ubifs_inode** %9, align 8
  %62 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %61, i32 0, i32 1
  %63 = call i32 @mutex_unlock(i32* %62)
  %64 = load i32, i32* %8, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %45
  %67 = load %struct.ubifs_info*, %struct.ubifs_info** %10, align 8
  %68 = call i32 @ubifs_release_budget(%struct.ubifs_info* %67, %struct.ubifs_budget_req* %11)
  br label %69

69:                                               ; preds = %66, %45
  %70 = load %struct.inode*, %struct.inode** %4, align 8
  %71 = call i64 @IS_SYNC(%struct.inode* %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %69
  %74 = load %struct.inode*, %struct.inode** %4, align 8
  %75 = call i32 @write_inode_now(%struct.inode* %74, i32 1)
  store i32 %75, i32* %7, align 4
  br label %76

76:                                               ; preds = %73, %69
  %77 = load i32, i32* %7, align 4
  store i32 %77, i32* %3, align 4
  br label %90

78:                                               ; preds = %44
  %79 = load %struct.ubifs_info*, %struct.ubifs_info** %10, align 8
  %80 = load %struct.inode*, %struct.inode** %4, align 8
  %81 = getelementptr inbounds %struct.inode, %struct.inode* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = call i32 @ubifs_err(%struct.ubifs_info* %79, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %82)
  %84 = load %struct.ubifs_inode*, %struct.ubifs_inode** %9, align 8
  %85 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %84, i32 0, i32 1
  %86 = call i32 @mutex_unlock(i32* %85)
  %87 = load %struct.ubifs_info*, %struct.ubifs_info** %10, align 8
  %88 = call i32 @ubifs_release_budget(%struct.ubifs_info* %87, %struct.ubifs_budget_req* %11)
  %89 = load i32, i32* %7, align 4
  store i32 %89, i32* %3, align 4
  br label %90

90:                                               ; preds = %78, %76, %28
  %91 = load i32, i32* %3, align 4
  ret i32 %91
}

declare dso_local %struct.ubifs_inode* @ubifs_inode(%struct.inode*) #1

declare dso_local i32 @ubifs_budget_space(%struct.ubifs_info*, %struct.ubifs_budget_req*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @ubifs2ioctl(i32) #1

declare dso_local i32 @vfs_ioc_setflags_prepare(%struct.inode*, i32, i32) #1

declare dso_local i32 @ioctl2ubifs(i32) #1

declare dso_local i32 @ubifs_set_inode_flags(%struct.inode*) #1

declare dso_local i32 @current_time(%struct.inode*) #1

declare dso_local i32 @mark_inode_dirty_sync(%struct.inode*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @ubifs_release_budget(%struct.ubifs_info*, %struct.ubifs_budget_req*) #1

declare dso_local i64 @IS_SYNC(%struct.inode*) #1

declare dso_local i32 @write_inode_now(%struct.inode*, i32) #1

declare dso_local i32 @ubifs_err(%struct.ubifs_info*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
