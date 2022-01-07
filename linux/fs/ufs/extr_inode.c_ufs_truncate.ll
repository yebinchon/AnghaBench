; ModuleID = '/home/carl/AnghaBench/linux/fs/ufs/extr_inode.c_ufs_truncate.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ufs/extr_inode.c_ufs_truncate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [48 x i8] c"ENTER: ino %lu, i_size: %llu, old_i_size: %llu\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@ufs_getfrag_block = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"EXIT: err %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, i64)* @ufs_truncate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ufs_truncate(%struct.inode* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 0, i32* %6, align 4
  %7 = load %struct.inode*, %struct.inode** %4, align 8
  %8 = getelementptr inbounds %struct.inode, %struct.inode* %7, i32 0, i32 4
  %9 = load i32, i32* %8, align 4
  %10 = load i64, i64* %5, align 8
  %11 = load %struct.inode*, %struct.inode** %4, align 8
  %12 = call i64 @i_size_read(%struct.inode* %11)
  %13 = call i32 (i8*, i32, ...) @UFSD(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %9, i64 %10, i64 %12)
  %14 = load %struct.inode*, %struct.inode** %4, align 8
  %15 = getelementptr inbounds %struct.inode, %struct.inode* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 4
  %17 = call i64 @S_ISREG(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %34, label %19

19:                                               ; preds = %2
  %20 = load %struct.inode*, %struct.inode** %4, align 8
  %21 = getelementptr inbounds %struct.inode, %struct.inode* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 4
  %23 = call i64 @S_ISDIR(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %34, label %25

25:                                               ; preds = %19
  %26 = load %struct.inode*, %struct.inode** %4, align 8
  %27 = getelementptr inbounds %struct.inode, %struct.inode* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 4
  %29 = call i64 @S_ISLNK(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %25
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %3, align 4
  br label %76

34:                                               ; preds = %25, %19, %2
  %35 = load %struct.inode*, %struct.inode** %4, align 8
  %36 = call i64 @IS_APPEND(%struct.inode* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %42, label %38

38:                                               ; preds = %34
  %39 = load %struct.inode*, %struct.inode** %4, align 8
  %40 = call i64 @IS_IMMUTABLE(%struct.inode* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %38, %34
  %43 = load i32, i32* @EPERM, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %3, align 4
  br label %76

45:                                               ; preds = %38
  %46 = load %struct.inode*, %struct.inode** %4, align 8
  %47 = load i64, i64* %5, align 8
  %48 = call i32 @ufs_alloc_lastblock(%struct.inode* %46, i64 %47)
  store i32 %48, i32* %6, align 4
  %49 = load i32, i32* %6, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %45
  br label %72

52:                                               ; preds = %45
  %53 = load %struct.inode*, %struct.inode** %4, align 8
  %54 = getelementptr inbounds %struct.inode, %struct.inode* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = load i64, i64* %5, align 8
  %57 = load i32, i32* @ufs_getfrag_block, align 4
  %58 = call i32 @block_truncate_page(i32 %55, i64 %56, i32 %57)
  %59 = load %struct.inode*, %struct.inode** %4, align 8
  %60 = load i64, i64* %5, align 8
  %61 = call i32 @truncate_setsize(%struct.inode* %59, i64 %60)
  %62 = load %struct.inode*, %struct.inode** %4, align 8
  %63 = call i32 @ufs_truncate_blocks(%struct.inode* %62)
  %64 = load %struct.inode*, %struct.inode** %4, align 8
  %65 = call i32 @current_time(%struct.inode* %64)
  %66 = load %struct.inode*, %struct.inode** %4, align 8
  %67 = getelementptr inbounds %struct.inode, %struct.inode* %66, i32 0, i32 0
  store i32 %65, i32* %67, align 4
  %68 = load %struct.inode*, %struct.inode** %4, align 8
  %69 = getelementptr inbounds %struct.inode, %struct.inode* %68, i32 0, i32 1
  store i32 %65, i32* %69, align 4
  %70 = load %struct.inode*, %struct.inode** %4, align 8
  %71 = call i32 @mark_inode_dirty(%struct.inode* %70)
  br label %72

72:                                               ; preds = %52, %51
  %73 = load i32, i32* %6, align 4
  %74 = call i32 (i8*, i32, ...) @UFSD(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 %73)
  %75 = load i32, i32* %6, align 4
  store i32 %75, i32* %3, align 4
  br label %76

76:                                               ; preds = %72, %42, %31
  %77 = load i32, i32* %3, align 4
  ret i32 %77
}

declare dso_local i32 @UFSD(i8*, i32, ...) #1

declare dso_local i64 @i_size_read(%struct.inode*) #1

declare dso_local i64 @S_ISREG(i32) #1

declare dso_local i64 @S_ISDIR(i32) #1

declare dso_local i64 @S_ISLNK(i32) #1

declare dso_local i64 @IS_APPEND(%struct.inode*) #1

declare dso_local i64 @IS_IMMUTABLE(%struct.inode*) #1

declare dso_local i32 @ufs_alloc_lastblock(%struct.inode*, i64) #1

declare dso_local i32 @block_truncate_page(i32, i64, i32) #1

declare dso_local i32 @truncate_setsize(%struct.inode*, i64) #1

declare dso_local i32 @ufs_truncate_blocks(%struct.inode*) #1

declare dso_local i32 @current_time(%struct.inode*) #1

declare dso_local i32 @mark_inode_dirty(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
