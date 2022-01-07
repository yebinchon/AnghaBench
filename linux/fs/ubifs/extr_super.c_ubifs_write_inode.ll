; ModuleID = '/home/carl/AnghaBench/linux/fs/ubifs/extr_super.c_ubifs_write_inode.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ubifs/extr_super.c_ubifs_write_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i64, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.ubifs_info* }
%struct.ubifs_info = type { i32 }
%struct.writeback_control = type { i32 }
%struct.ubifs_inode = type { i32, i64, i32, i32 }

@.str = private unnamed_addr constant [30 x i8] c"inode %lu, mode %#x, nlink %u\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"can't write inode %lu, error %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.writeback_control*)* @ubifs_write_inode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ubifs_write_inode(%struct.inode* %0, %struct.writeback_control* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.writeback_control*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ubifs_info*, align 8
  %8 = alloca %struct.ubifs_inode*, align 8
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.writeback_control* %1, %struct.writeback_control** %5, align 8
  store i32 0, i32* %6, align 4
  %9 = load %struct.inode*, %struct.inode** %4, align 8
  %10 = getelementptr inbounds %struct.inode, %struct.inode* %9, i32 0, i32 3
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load %struct.ubifs_info*, %struct.ubifs_info** %12, align 8
  store %struct.ubifs_info* %13, %struct.ubifs_info** %7, align 8
  %14 = load %struct.inode*, %struct.inode** %4, align 8
  %15 = call %struct.ubifs_inode* @ubifs_inode(%struct.inode* %14)
  store %struct.ubifs_inode* %15, %struct.ubifs_inode** %8, align 8
  %16 = load %struct.ubifs_info*, %struct.ubifs_info** %7, align 8
  %17 = load %struct.ubifs_inode*, %struct.ubifs_inode** %8, align 8
  %18 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  %21 = xor i1 %20, true
  %22 = zext i1 %21 to i32
  %23 = call i32 @ubifs_assert(%struct.ubifs_info* %16, i32 %22)
  %24 = load %struct.inode*, %struct.inode** %4, align 8
  %25 = call i64 @is_bad_inode(%struct.inode* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %87

28:                                               ; preds = %2
  %29 = load %struct.ubifs_inode*, %struct.ubifs_inode** %8, align 8
  %30 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %29, i32 0, i32 0
  %31 = call i32 @mutex_lock(i32* %30)
  %32 = load %struct.ubifs_inode*, %struct.ubifs_inode** %8, align 8
  %33 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %40, label %36

36:                                               ; preds = %28
  %37 = load %struct.ubifs_inode*, %struct.ubifs_inode** %8, align 8
  %38 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %37, i32 0, i32 0
  %39 = call i32 @mutex_unlock(i32* %38)
  store i32 0, i32* %3, align 4
  br label %87

40:                                               ; preds = %28
  %41 = load %struct.inode*, %struct.inode** %4, align 8
  %42 = getelementptr inbounds %struct.inode, %struct.inode* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.inode*, %struct.inode** %4, align 8
  %45 = getelementptr inbounds %struct.inode, %struct.inode* %44, i32 0, i32 2
  %46 = load i64, i64* %45, align 8
  %47 = trunc i64 %46 to i32
  %48 = load %struct.inode*, %struct.inode** %4, align 8
  %49 = getelementptr inbounds %struct.inode, %struct.inode* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = call i32 @dbg_gen(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %43, i32 %47, i64 %50)
  %52 = load %struct.inode*, %struct.inode** %4, align 8
  %53 = getelementptr inbounds %struct.inode, %struct.inode* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %77

56:                                               ; preds = %40
  %57 = load %struct.ubifs_info*, %struct.ubifs_info** %7, align 8
  %58 = load %struct.inode*, %struct.inode** %4, align 8
  %59 = call i32 @ubifs_jnl_write_inode(%struct.ubifs_info* %57, %struct.inode* %58)
  store i32 %59, i32* %6, align 4
  %60 = load i32, i32* %6, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %69

62:                                               ; preds = %56
  %63 = load %struct.ubifs_info*, %struct.ubifs_info** %7, align 8
  %64 = load %struct.inode*, %struct.inode** %4, align 8
  %65 = getelementptr inbounds %struct.inode, %struct.inode* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* %6, align 4
  %68 = call i32 @ubifs_err(%struct.ubifs_info* %63, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %66, i32 %67)
  br label %76

69:                                               ; preds = %56
  %70 = load %struct.ubifs_info*, %struct.ubifs_info** %7, align 8
  %71 = load %struct.inode*, %struct.inode** %4, align 8
  %72 = load %struct.ubifs_inode*, %struct.ubifs_inode** %8, align 8
  %73 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 8
  %75 = call i32 @dbg_check_inode_size(%struct.ubifs_info* %70, %struct.inode* %71, i32 %74)
  store i32 %75, i32* %6, align 4
  br label %76

76:                                               ; preds = %69, %62
  br label %77

77:                                               ; preds = %76, %40
  %78 = load %struct.ubifs_inode*, %struct.ubifs_inode** %8, align 8
  %79 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %78, i32 0, i32 1
  store i64 0, i64* %79, align 8
  %80 = load %struct.ubifs_inode*, %struct.ubifs_inode** %8, align 8
  %81 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %80, i32 0, i32 0
  %82 = call i32 @mutex_unlock(i32* %81)
  %83 = load %struct.ubifs_info*, %struct.ubifs_info** %7, align 8
  %84 = load %struct.ubifs_inode*, %struct.ubifs_inode** %8, align 8
  %85 = call i32 @ubifs_release_dirty_inode_budget(%struct.ubifs_info* %83, %struct.ubifs_inode* %84)
  %86 = load i32, i32* %6, align 4
  store i32 %86, i32* %3, align 4
  br label %87

87:                                               ; preds = %77, %36, %27
  %88 = load i32, i32* %3, align 4
  ret i32 %88
}

declare dso_local %struct.ubifs_inode* @ubifs_inode(%struct.inode*) #1

declare dso_local i32 @ubifs_assert(%struct.ubifs_info*, i32) #1

declare dso_local i64 @is_bad_inode(%struct.inode*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @dbg_gen(i8*, i32, i32, i64) #1

declare dso_local i32 @ubifs_jnl_write_inode(%struct.ubifs_info*, %struct.inode*) #1

declare dso_local i32 @ubifs_err(%struct.ubifs_info*, i8*, i32, i32) #1

declare dso_local i32 @dbg_check_inode_size(%struct.ubifs_info*, %struct.inode*, i32) #1

declare dso_local i32 @ubifs_release_dirty_inode_budget(%struct.ubifs_info*, %struct.ubifs_inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
