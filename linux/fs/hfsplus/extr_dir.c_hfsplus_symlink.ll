; ModuleID = '/home/carl/AnghaBench/linux/fs/hfsplus/extr_dir.c_hfsplus_symlink.c'
source_filename = "/home/carl/AnghaBench/linux/fs/hfsplus/extr_dir.c_hfsplus_symlink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32 }
%struct.dentry = type { i32 }
%struct.hfsplus_sb_info = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@S_IFLNK = common dso_local global i32 0, align 4
@S_IRWXUGO = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.dentry*, i8*)* @hfsplus_symlink to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hfsplus_symlink(%struct.inode* %0, %struct.dentry* %1, i8* %2) #0 {
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.hfsplus_sb_info*, align 8
  %8 = alloca %struct.inode*, align 8
  %9 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.dentry* %1, %struct.dentry** %5, align 8
  store i8* %2, i8** %6, align 8
  %10 = load %struct.inode*, %struct.inode** %4, align 8
  %11 = getelementptr inbounds %struct.inode, %struct.inode* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.hfsplus_sb_info* @HFSPLUS_SB(i32 %12)
  store %struct.hfsplus_sb_info* %13, %struct.hfsplus_sb_info** %7, align 8
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %9, align 4
  %16 = load %struct.hfsplus_sb_info*, %struct.hfsplus_sb_info** %7, align 8
  %17 = getelementptr inbounds %struct.hfsplus_sb_info, %struct.hfsplus_sb_info* %16, i32 0, i32 0
  %18 = call i32 @mutex_lock(i32* %17)
  %19 = load %struct.inode*, %struct.inode** %4, align 8
  %20 = getelementptr inbounds %struct.inode, %struct.inode* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.inode*, %struct.inode** %4, align 8
  %23 = load i32, i32* @S_IFLNK, align 4
  %24 = load i32, i32* @S_IRWXUGO, align 4
  %25 = or i32 %23, %24
  %26 = call %struct.inode* @hfsplus_new_inode(i32 %21, %struct.inode* %22, i32 %25)
  store %struct.inode* %26, %struct.inode** %8, align 8
  %27 = load %struct.inode*, %struct.inode** %8, align 8
  %28 = icmp ne %struct.inode* %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %3
  br label %91

30:                                               ; preds = %3
  %31 = load %struct.inode*, %struct.inode** %8, align 8
  %32 = load i8*, i8** %6, align 8
  %33 = load i8*, i8** %6, align 8
  %34 = call i64 @strlen(i8* %33)
  %35 = add nsw i64 %34, 1
  %36 = call i32 @page_symlink(%struct.inode* %31, i8* %32, i64 %35)
  store i32 %36, i32* %9, align 4
  %37 = load i32, i32* %9, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %30
  br label %84

40:                                               ; preds = %30
  %41 = load %struct.inode*, %struct.inode** %8, align 8
  %42 = getelementptr inbounds %struct.inode, %struct.inode* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.inode*, %struct.inode** %4, align 8
  %45 = load %struct.dentry*, %struct.dentry** %5, align 8
  %46 = getelementptr inbounds %struct.dentry, %struct.dentry* %45, i32 0, i32 0
  %47 = load %struct.inode*, %struct.inode** %8, align 8
  %48 = call i32 @hfsplus_create_cat(i32 %43, %struct.inode* %44, i32* %46, %struct.inode* %47)
  store i32 %48, i32* %9, align 4
  %49 = load i32, i32* %9, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %40
  br label %84

52:                                               ; preds = %40
  %53 = load %struct.inode*, %struct.inode** %8, align 8
  %54 = load %struct.inode*, %struct.inode** %4, align 8
  %55 = load %struct.dentry*, %struct.dentry** %5, align 8
  %56 = getelementptr inbounds %struct.dentry, %struct.dentry* %55, i32 0, i32 0
  %57 = call i32 @hfsplus_init_security(%struct.inode* %53, %struct.inode* %54, i32* %56)
  store i32 %57, i32* %9, align 4
  %58 = load i32, i32* %9, align 4
  %59 = load i32, i32* @EOPNOTSUPP, align 4
  %60 = sub nsw i32 0, %59
  %61 = icmp eq i32 %58, %60
  br i1 %61, label %62, label %63

62:                                               ; preds = %52
  store i32 0, i32* %9, align 4
  br label %75

63:                                               ; preds = %52
  %64 = load i32, i32* %9, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %74

66:                                               ; preds = %63
  %67 = load %struct.inode*, %struct.inode** %8, align 8
  %68 = getelementptr inbounds %struct.inode, %struct.inode* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.inode*, %struct.inode** %4, align 8
  %71 = load %struct.dentry*, %struct.dentry** %5, align 8
  %72 = getelementptr inbounds %struct.dentry, %struct.dentry* %71, i32 0, i32 0
  %73 = call i32 @hfsplus_delete_cat(i32 %69, %struct.inode* %70, i32* %72)
  br label %84

74:                                               ; preds = %63
  br label %75

75:                                               ; preds = %74, %62
  %76 = load %struct.dentry*, %struct.dentry** %5, align 8
  %77 = load %struct.inode*, %struct.inode** %8, align 8
  %78 = load %struct.inode*, %struct.inode** %8, align 8
  %79 = getelementptr inbounds %struct.inode, %struct.inode* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @hfsplus_instantiate(%struct.dentry* %76, %struct.inode* %77, i32 %80)
  %82 = load %struct.inode*, %struct.inode** %8, align 8
  %83 = call i32 @mark_inode_dirty(%struct.inode* %82)
  br label %91

84:                                               ; preds = %66, %51, %39
  %85 = load %struct.inode*, %struct.inode** %8, align 8
  %86 = call i32 @clear_nlink(%struct.inode* %85)
  %87 = load %struct.inode*, %struct.inode** %8, align 8
  %88 = call i32 @hfsplus_delete_inode(%struct.inode* %87)
  %89 = load %struct.inode*, %struct.inode** %8, align 8
  %90 = call i32 @iput(%struct.inode* %89)
  br label %91

91:                                               ; preds = %84, %75, %29
  %92 = load %struct.hfsplus_sb_info*, %struct.hfsplus_sb_info** %7, align 8
  %93 = getelementptr inbounds %struct.hfsplus_sb_info, %struct.hfsplus_sb_info* %92, i32 0, i32 0
  %94 = call i32 @mutex_unlock(i32* %93)
  %95 = load i32, i32* %9, align 4
  ret i32 %95
}

declare dso_local %struct.hfsplus_sb_info* @HFSPLUS_SB(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.inode* @hfsplus_new_inode(i32, %struct.inode*, i32) #1

declare dso_local i32 @page_symlink(%struct.inode*, i8*, i64) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @hfsplus_create_cat(i32, %struct.inode*, i32*, %struct.inode*) #1

declare dso_local i32 @hfsplus_init_security(%struct.inode*, %struct.inode*, i32*) #1

declare dso_local i32 @hfsplus_delete_cat(i32, %struct.inode*, i32*) #1

declare dso_local i32 @hfsplus_instantiate(%struct.dentry*, %struct.inode*, i32) #1

declare dso_local i32 @mark_inode_dirty(%struct.inode*) #1

declare dso_local i32 @clear_nlink(%struct.inode*) #1

declare dso_local i32 @hfsplus_delete_inode(%struct.inode*) #1

declare dso_local i32 @iput(%struct.inode*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
