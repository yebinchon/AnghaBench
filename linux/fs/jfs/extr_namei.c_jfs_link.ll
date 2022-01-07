; ModuleID = '/home/carl/AnghaBench/linux/fs/jfs/extr_namei.c_jfs_link.c'
source_filename = "/home/carl/AnghaBench/linux/fs/jfs/extr_namei.c_jfs_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i8*, i8*, i32, i32 }
%struct.dentry = type { i32 }
%struct.component_name = type { i32 }
%struct.btstack = type { i32 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [18 x i8] c"jfs_link: %pd %pd\00", align 1
@COMMIT_MUTEX_PARENT = common dso_local global i32 0, align 4
@COMMIT_MUTEX_CHILD = common dso_local global i32 0, align 4
@JFS_CREATE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"jfs_link: rc:%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dentry*, %struct.inode*, %struct.dentry*)* @jfs_link to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jfs_link(%struct.dentry* %0, %struct.inode* %1, %struct.dentry* %2) #0 {
  %4 = alloca %struct.dentry*, align 8
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.dentry*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.inode*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.component_name, align 4
  %12 = alloca %struct.btstack, align 4
  %13 = alloca [2 x %struct.inode*], align 16
  store %struct.dentry* %0, %struct.dentry** %4, align 8
  store %struct.inode* %1, %struct.inode** %5, align 8
  store %struct.dentry* %2, %struct.dentry** %6, align 8
  %14 = load %struct.dentry*, %struct.dentry** %4, align 8
  %15 = call %struct.inode* @d_inode(%struct.dentry* %14)
  store %struct.inode* %15, %struct.inode** %9, align 8
  %16 = load %struct.dentry*, %struct.dentry** %4, align 8
  %17 = ptrtoint %struct.dentry* %16 to i32
  %18 = load %struct.dentry*, %struct.dentry** %6, align 8
  %19 = call i32 (i8*, i32, ...) @jfs_info(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %17, %struct.dentry* %18)
  %20 = load %struct.inode*, %struct.inode** %5, align 8
  %21 = call i32 @dquot_initialize(%struct.inode* %20)
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* %7, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %3
  br label %108

25:                                               ; preds = %3
  %26 = load %struct.inode*, %struct.inode** %9, align 8
  %27 = getelementptr inbounds %struct.inode, %struct.inode* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @txBegin(i32 %28, i32 0)
  store i32 %29, i32* %8, align 4
  %30 = load %struct.inode*, %struct.inode** %5, align 8
  %31 = call %struct.TYPE_2__* @JFS_IP(%struct.inode* %30)
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* @COMMIT_MUTEX_PARENT, align 4
  %34 = call i32 @mutex_lock_nested(i32* %32, i32 %33)
  %35 = load %struct.inode*, %struct.inode** %9, align 8
  %36 = call %struct.TYPE_2__* @JFS_IP(%struct.inode* %35)
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32, i32* @COMMIT_MUTEX_CHILD, align 4
  %39 = call i32 @mutex_lock_nested(i32* %37, i32 %38)
  %40 = load %struct.dentry*, %struct.dentry** %6, align 8
  %41 = call i32 @get_UCSname(%struct.component_name* %11, %struct.dentry* %40)
  store i32 %41, i32* %7, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %25
  br label %97

44:                                               ; preds = %25
  %45 = load %struct.inode*, %struct.inode** %5, align 8
  %46 = load i32, i32* @JFS_CREATE, align 4
  %47 = call i32 @dtSearch(%struct.inode* %45, %struct.component_name* %11, i32* %10, %struct.btstack* %12, i32 %46)
  store i32 %47, i32* %7, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %44
  br label %95

50:                                               ; preds = %44
  %51 = load %struct.inode*, %struct.inode** %9, align 8
  %52 = getelementptr inbounds %struct.inode, %struct.inode* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  store i32 %53, i32* %10, align 4
  %54 = load i32, i32* %8, align 4
  %55 = load %struct.inode*, %struct.inode** %5, align 8
  %56 = call i32 @dtInsert(i32 %54, %struct.inode* %55, %struct.component_name* %11, i32* %10, %struct.btstack* %12)
  store i32 %56, i32* %7, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %50
  br label %95

59:                                               ; preds = %50
  %60 = load %struct.inode*, %struct.inode** %9, align 8
  %61 = call i32 @inc_nlink(%struct.inode* %60)
  %62 = load %struct.inode*, %struct.inode** %9, align 8
  %63 = call i8* @current_time(%struct.inode* %62)
  %64 = load %struct.inode*, %struct.inode** %9, align 8
  %65 = getelementptr inbounds %struct.inode, %struct.inode* %64, i32 0, i32 1
  store i8* %63, i8** %65, align 8
  %66 = load %struct.inode*, %struct.inode** %5, align 8
  %67 = call i8* @current_time(%struct.inode* %66)
  %68 = load %struct.inode*, %struct.inode** %5, align 8
  %69 = getelementptr inbounds %struct.inode, %struct.inode* %68, i32 0, i32 0
  store i8* %67, i8** %69, align 8
  %70 = load %struct.inode*, %struct.inode** %5, align 8
  %71 = getelementptr inbounds %struct.inode, %struct.inode* %70, i32 0, i32 1
  store i8* %67, i8** %71, align 8
  %72 = load %struct.inode*, %struct.inode** %5, align 8
  %73 = call i32 @mark_inode_dirty(%struct.inode* %72)
  %74 = load %struct.inode*, %struct.inode** %9, align 8
  %75 = call i32 @ihold(%struct.inode* %74)
  %76 = load %struct.inode*, %struct.inode** %9, align 8
  %77 = getelementptr inbounds [2 x %struct.inode*], [2 x %struct.inode*]* %13, i64 0, i64 0
  store %struct.inode* %76, %struct.inode** %77, align 16
  %78 = load %struct.inode*, %struct.inode** %5, align 8
  %79 = getelementptr inbounds [2 x %struct.inode*], [2 x %struct.inode*]* %13, i64 0, i64 1
  store %struct.inode* %78, %struct.inode** %79, align 8
  %80 = load i32, i32* %8, align 4
  %81 = getelementptr inbounds [2 x %struct.inode*], [2 x %struct.inode*]* %13, i64 0, i64 0
  %82 = call i32 @txCommit(i32 %80, i32 2, %struct.inode** %81, i32 0)
  store i32 %82, i32* %7, align 4
  %83 = load i32, i32* %7, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %90

85:                                               ; preds = %59
  %86 = load %struct.inode*, %struct.inode** %9, align 8
  %87 = call i32 @drop_nlink(%struct.inode* %86)
  %88 = load %struct.inode*, %struct.inode** %9, align 8
  %89 = call i32 @iput(%struct.inode* %88)
  br label %94

90:                                               ; preds = %59
  %91 = load %struct.dentry*, %struct.dentry** %6, align 8
  %92 = load %struct.inode*, %struct.inode** %9, align 8
  %93 = call i32 @d_instantiate(%struct.dentry* %91, %struct.inode* %92)
  br label %94

94:                                               ; preds = %90, %85
  br label %95

95:                                               ; preds = %94, %58, %49
  %96 = call i32 @free_UCSname(%struct.component_name* %11)
  br label %97

97:                                               ; preds = %95, %43
  %98 = load i32, i32* %8, align 4
  %99 = call i32 @txEnd(i32 %98)
  %100 = load %struct.inode*, %struct.inode** %9, align 8
  %101 = call %struct.TYPE_2__* @JFS_IP(%struct.inode* %100)
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i32 0, i32 0
  %103 = call i32 @mutex_unlock(i32* %102)
  %104 = load %struct.inode*, %struct.inode** %5, align 8
  %105 = call %struct.TYPE_2__* @JFS_IP(%struct.inode* %104)
  %106 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %105, i32 0, i32 0
  %107 = call i32 @mutex_unlock(i32* %106)
  br label %108

108:                                              ; preds = %97, %24
  %109 = load i32, i32* %7, align 4
  %110 = call i32 (i8*, i32, ...) @jfs_info(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 %109)
  %111 = load i32, i32* %7, align 4
  ret i32 %111
}

declare dso_local %struct.inode* @d_inode(%struct.dentry*) #1

declare dso_local i32 @jfs_info(i8*, i32, ...) #1

declare dso_local i32 @dquot_initialize(%struct.inode*) #1

declare dso_local i32 @txBegin(i32, i32) #1

declare dso_local i32 @mutex_lock_nested(i32*, i32) #1

declare dso_local %struct.TYPE_2__* @JFS_IP(%struct.inode*) #1

declare dso_local i32 @get_UCSname(%struct.component_name*, %struct.dentry*) #1

declare dso_local i32 @dtSearch(%struct.inode*, %struct.component_name*, i32*, %struct.btstack*, i32) #1

declare dso_local i32 @dtInsert(i32, %struct.inode*, %struct.component_name*, i32*, %struct.btstack*) #1

declare dso_local i32 @inc_nlink(%struct.inode*) #1

declare dso_local i8* @current_time(%struct.inode*) #1

declare dso_local i32 @mark_inode_dirty(%struct.inode*) #1

declare dso_local i32 @ihold(%struct.inode*) #1

declare dso_local i32 @txCommit(i32, i32, %struct.inode**, i32) #1

declare dso_local i32 @drop_nlink(%struct.inode*) #1

declare dso_local i32 @iput(%struct.inode*) #1

declare dso_local i32 @d_instantiate(%struct.dentry*, %struct.inode*) #1

declare dso_local i32 @free_UCSname(%struct.component_name*) #1

declare dso_local i32 @txEnd(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
