; ModuleID = '/home/carl/AnghaBench/linux/fs/hfsplus/extr_dir.c_hfsplus_mknod.c'
source_filename = "/home/carl/AnghaBench/linux/fs/hfsplus/extr_dir.c_hfsplus_mknod.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32 }
%struct.dentry = type { i32 }
%struct.hfsplus_sb_info = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.dentry*, i32, i32)* @hfsplus_mknod to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hfsplus_mknod(%struct.inode* %0, %struct.dentry* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.dentry*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.hfsplus_sb_info*, align 8
  %10 = alloca %struct.inode*, align 8
  %11 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %5, align 8
  store %struct.dentry* %1, %struct.dentry** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = load %struct.inode*, %struct.inode** %5, align 8
  %13 = getelementptr inbounds %struct.inode, %struct.inode* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.hfsplus_sb_info* @HFSPLUS_SB(i32 %14)
  store %struct.hfsplus_sb_info* %15, %struct.hfsplus_sb_info** %9, align 8
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %11, align 4
  %18 = load %struct.hfsplus_sb_info*, %struct.hfsplus_sb_info** %9, align 8
  %19 = getelementptr inbounds %struct.hfsplus_sb_info, %struct.hfsplus_sb_info* %18, i32 0, i32 0
  %20 = call i32 @mutex_lock(i32* %19)
  %21 = load %struct.inode*, %struct.inode** %5, align 8
  %22 = getelementptr inbounds %struct.inode, %struct.inode* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.inode*, %struct.inode** %5, align 8
  %25 = load i32, i32* %7, align 4
  %26 = call %struct.inode* @hfsplus_new_inode(i32 %23, %struct.inode* %24, i32 %25)
  store %struct.inode* %26, %struct.inode** %10, align 8
  %27 = load %struct.inode*, %struct.inode** %10, align 8
  %28 = icmp ne %struct.inode* %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %4
  br label %102

30:                                               ; preds = %4
  %31 = load i32, i32* %7, align 4
  %32 = call i64 @S_ISBLK(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %46, label %34

34:                                               ; preds = %30
  %35 = load i32, i32* %7, align 4
  %36 = call i64 @S_ISCHR(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %46, label %38

38:                                               ; preds = %34
  %39 = load i32, i32* %7, align 4
  %40 = call i64 @S_ISFIFO(i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %46, label %42

42:                                               ; preds = %38
  %43 = load i32, i32* %7, align 4
  %44 = call i64 @S_ISSOCK(i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %42, %38, %34, %30
  %47 = load %struct.inode*, %struct.inode** %10, align 8
  %48 = load i32, i32* %7, align 4
  %49 = load i32, i32* %8, align 4
  %50 = call i32 @init_special_inode(%struct.inode* %47, i32 %48, i32 %49)
  br label %51

51:                                               ; preds = %46, %42
  %52 = load %struct.inode*, %struct.inode** %10, align 8
  %53 = getelementptr inbounds %struct.inode, %struct.inode* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.inode*, %struct.inode** %5, align 8
  %56 = load %struct.dentry*, %struct.dentry** %6, align 8
  %57 = getelementptr inbounds %struct.dentry, %struct.dentry* %56, i32 0, i32 0
  %58 = load %struct.inode*, %struct.inode** %10, align 8
  %59 = call i32 @hfsplus_create_cat(i32 %54, %struct.inode* %55, i32* %57, %struct.inode* %58)
  store i32 %59, i32* %11, align 4
  %60 = load i32, i32* %11, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %51
  br label %95

63:                                               ; preds = %51
  %64 = load %struct.inode*, %struct.inode** %10, align 8
  %65 = load %struct.inode*, %struct.inode** %5, align 8
  %66 = load %struct.dentry*, %struct.dentry** %6, align 8
  %67 = getelementptr inbounds %struct.dentry, %struct.dentry* %66, i32 0, i32 0
  %68 = call i32 @hfsplus_init_security(%struct.inode* %64, %struct.inode* %65, i32* %67)
  store i32 %68, i32* %11, align 4
  %69 = load i32, i32* %11, align 4
  %70 = load i32, i32* @EOPNOTSUPP, align 4
  %71 = sub nsw i32 0, %70
  %72 = icmp eq i32 %69, %71
  br i1 %72, label %73, label %74

73:                                               ; preds = %63
  store i32 0, i32* %11, align 4
  br label %86

74:                                               ; preds = %63
  %75 = load i32, i32* %11, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %85

77:                                               ; preds = %74
  %78 = load %struct.inode*, %struct.inode** %10, align 8
  %79 = getelementptr inbounds %struct.inode, %struct.inode* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.inode*, %struct.inode** %5, align 8
  %82 = load %struct.dentry*, %struct.dentry** %6, align 8
  %83 = getelementptr inbounds %struct.dentry, %struct.dentry* %82, i32 0, i32 0
  %84 = call i32 @hfsplus_delete_cat(i32 %80, %struct.inode* %81, i32* %83)
  br label %95

85:                                               ; preds = %74
  br label %86

86:                                               ; preds = %85, %73
  %87 = load %struct.dentry*, %struct.dentry** %6, align 8
  %88 = load %struct.inode*, %struct.inode** %10, align 8
  %89 = load %struct.inode*, %struct.inode** %10, align 8
  %90 = getelementptr inbounds %struct.inode, %struct.inode* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @hfsplus_instantiate(%struct.dentry* %87, %struct.inode* %88, i32 %91)
  %93 = load %struct.inode*, %struct.inode** %10, align 8
  %94 = call i32 @mark_inode_dirty(%struct.inode* %93)
  br label %102

95:                                               ; preds = %77, %62
  %96 = load %struct.inode*, %struct.inode** %10, align 8
  %97 = call i32 @clear_nlink(%struct.inode* %96)
  %98 = load %struct.inode*, %struct.inode** %10, align 8
  %99 = call i32 @hfsplus_delete_inode(%struct.inode* %98)
  %100 = load %struct.inode*, %struct.inode** %10, align 8
  %101 = call i32 @iput(%struct.inode* %100)
  br label %102

102:                                              ; preds = %95, %86, %29
  %103 = load %struct.hfsplus_sb_info*, %struct.hfsplus_sb_info** %9, align 8
  %104 = getelementptr inbounds %struct.hfsplus_sb_info, %struct.hfsplus_sb_info* %103, i32 0, i32 0
  %105 = call i32 @mutex_unlock(i32* %104)
  %106 = load i32, i32* %11, align 4
  ret i32 %106
}

declare dso_local %struct.hfsplus_sb_info* @HFSPLUS_SB(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.inode* @hfsplus_new_inode(i32, %struct.inode*, i32) #1

declare dso_local i64 @S_ISBLK(i32) #1

declare dso_local i64 @S_ISCHR(i32) #1

declare dso_local i64 @S_ISFIFO(i32) #1

declare dso_local i64 @S_ISSOCK(i32) #1

declare dso_local i32 @init_special_inode(%struct.inode*, i32, i32) #1

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
