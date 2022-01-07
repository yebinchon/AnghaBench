; ModuleID = '/home/carl/AnghaBench/linux/fs/ext2/extr_namei.c_ext2_symlink.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext2/extr_namei.c_ext2_symlink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i8*, i32, i32*, %struct.TYPE_3__*, %struct.super_block* }
%struct.TYPE_3__ = type { i32* }
%struct.super_block = type { i32 }
%struct.dentry = type { i32 }
%struct.TYPE_4__ = type { i64 }

@ENAMETOOLONG = common dso_local global i32 0, align 4
@S_IFLNK = common dso_local global i32 0, align 4
@S_IRWXUGO = common dso_local global i32 0, align 4
@ext2_symlink_inode_operations = common dso_local global i32 0, align 4
@NOBH = common dso_local global i32 0, align 4
@ext2_nobh_aops = common dso_local global i32 0, align 4
@ext2_aops = common dso_local global i32 0, align 4
@ext2_fast_symlink_inode_operations = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.dentry*, i8*)* @ext2_symlink to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ext2_symlink(%struct.inode* %0, %struct.dentry* %1, i8* %2) #0 {
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.super_block*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.inode*, align 8
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.dentry* %1, %struct.dentry** %5, align 8
  store i8* %2, i8** %6, align 8
  %11 = load %struct.inode*, %struct.inode** %4, align 8
  %12 = getelementptr inbounds %struct.inode, %struct.inode* %11, i32 0, i32 4
  %13 = load %struct.super_block*, %struct.super_block** %12, align 8
  store %struct.super_block* %13, %struct.super_block** %7, align 8
  %14 = load i32, i32* @ENAMETOOLONG, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %8, align 4
  %16 = load i8*, i8** %6, align 8
  %17 = call i32 @strlen(i8* %16)
  %18 = add nsw i32 %17, 1
  store i32 %18, i32* %9, align 4
  %19 = load i32, i32* %9, align 4
  %20 = load %struct.super_block*, %struct.super_block** %7, align 8
  %21 = getelementptr inbounds %struct.super_block, %struct.super_block* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp ugt i32 %19, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %3
  br label %105

25:                                               ; preds = %3
  %26 = load %struct.inode*, %struct.inode** %4, align 8
  %27 = call i32 @dquot_initialize(%struct.inode* %26)
  store i32 %27, i32* %8, align 4
  %28 = load i32, i32* %8, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %25
  br label %105

31:                                               ; preds = %25
  %32 = load %struct.inode*, %struct.inode** %4, align 8
  %33 = load i32, i32* @S_IFLNK, align 4
  %34 = load i32, i32* @S_IRWXUGO, align 4
  %35 = or i32 %33, %34
  %36 = load %struct.dentry*, %struct.dentry** %5, align 8
  %37 = getelementptr inbounds %struct.dentry, %struct.dentry* %36, i32 0, i32 0
  %38 = call %struct.inode* @ext2_new_inode(%struct.inode* %32, i32 %35, i32* %37)
  store %struct.inode* %38, %struct.inode** %10, align 8
  %39 = load %struct.inode*, %struct.inode** %10, align 8
  %40 = call i32 @PTR_ERR(%struct.inode* %39)
  store i32 %40, i32* %8, align 4
  %41 = load %struct.inode*, %struct.inode** %10, align 8
  %42 = call i64 @IS_ERR(%struct.inode* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %31
  br label %105

45:                                               ; preds = %31
  %46 = load i32, i32* %9, align 4
  %47 = zext i32 %46 to i64
  %48 = icmp ugt i64 %47, 8
  br i1 %48, label %49, label %79

49:                                               ; preds = %45
  %50 = load %struct.inode*, %struct.inode** %10, align 8
  %51 = getelementptr inbounds %struct.inode, %struct.inode* %50, i32 0, i32 2
  store i32* @ext2_symlink_inode_operations, i32** %51, align 8
  %52 = load %struct.inode*, %struct.inode** %10, align 8
  %53 = call i32 @inode_nohighmem(%struct.inode* %52)
  %54 = load %struct.inode*, %struct.inode** %10, align 8
  %55 = getelementptr inbounds %struct.inode, %struct.inode* %54, i32 0, i32 4
  %56 = load %struct.super_block*, %struct.super_block** %55, align 8
  %57 = load i32, i32* @NOBH, align 4
  %58 = call i64 @test_opt(%struct.super_block* %56, i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %65

60:                                               ; preds = %49
  %61 = load %struct.inode*, %struct.inode** %10, align 8
  %62 = getelementptr inbounds %struct.inode, %struct.inode* %61, i32 0, i32 3
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 0
  store i32* @ext2_nobh_aops, i32** %64, align 8
  br label %70

65:                                               ; preds = %49
  %66 = load %struct.inode*, %struct.inode** %10, align 8
  %67 = getelementptr inbounds %struct.inode, %struct.inode* %66, i32 0, i32 3
  %68 = load %struct.TYPE_3__*, %struct.TYPE_3__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 0
  store i32* @ext2_aops, i32** %69, align 8
  br label %70

70:                                               ; preds = %65, %60
  %71 = load %struct.inode*, %struct.inode** %10, align 8
  %72 = load i8*, i8** %6, align 8
  %73 = load i32, i32* %9, align 4
  %74 = call i32 @page_symlink(%struct.inode* %71, i8* %72, i32 %73)
  store i32 %74, i32* %8, align 4
  %75 = load i32, i32* %8, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %70
  br label %107

78:                                               ; preds = %70
  br label %99

79:                                               ; preds = %45
  %80 = load %struct.inode*, %struct.inode** %10, align 8
  %81 = getelementptr inbounds %struct.inode, %struct.inode* %80, i32 0, i32 2
  store i32* @ext2_fast_symlink_inode_operations, i32** %81, align 8
  %82 = load %struct.inode*, %struct.inode** %10, align 8
  %83 = call %struct.TYPE_4__* @EXT2_I(%struct.inode* %82)
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = inttoptr i64 %85 to i8*
  %87 = load %struct.inode*, %struct.inode** %10, align 8
  %88 = getelementptr inbounds %struct.inode, %struct.inode* %87, i32 0, i32 0
  store i8* %86, i8** %88, align 8
  %89 = load %struct.inode*, %struct.inode** %10, align 8
  %90 = getelementptr inbounds %struct.inode, %struct.inode* %89, i32 0, i32 0
  %91 = load i8*, i8** %90, align 8
  %92 = load i8*, i8** %6, align 8
  %93 = load i32, i32* %9, align 4
  %94 = call i32 @memcpy(i8* %91, i8* %92, i32 %93)
  %95 = load i32, i32* %9, align 4
  %96 = sub i32 %95, 1
  %97 = load %struct.inode*, %struct.inode** %10, align 8
  %98 = getelementptr inbounds %struct.inode, %struct.inode* %97, i32 0, i32 1
  store i32 %96, i32* %98, align 8
  br label %99

99:                                               ; preds = %79, %78
  %100 = load %struct.inode*, %struct.inode** %10, align 8
  %101 = call i32 @mark_inode_dirty(%struct.inode* %100)
  %102 = load %struct.dentry*, %struct.dentry** %5, align 8
  %103 = load %struct.inode*, %struct.inode** %10, align 8
  %104 = call i32 @ext2_add_nondir(%struct.dentry* %102, %struct.inode* %103)
  store i32 %104, i32* %8, align 4
  br label %105

105:                                              ; preds = %107, %99, %44, %30, %24
  %106 = load i32, i32* %8, align 4
  ret i32 %106

107:                                              ; preds = %77
  %108 = load %struct.inode*, %struct.inode** %10, align 8
  %109 = call i32 @inode_dec_link_count(%struct.inode* %108)
  %110 = load %struct.inode*, %struct.inode** %10, align 8
  %111 = call i32 @discard_new_inode(%struct.inode* %110)
  br label %105
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @dquot_initialize(%struct.inode*) #1

declare dso_local %struct.inode* @ext2_new_inode(%struct.inode*, i32, i32*) #1

declare dso_local i32 @PTR_ERR(%struct.inode*) #1

declare dso_local i64 @IS_ERR(%struct.inode*) #1

declare dso_local i32 @inode_nohighmem(%struct.inode*) #1

declare dso_local i64 @test_opt(%struct.super_block*, i32) #1

declare dso_local i32 @page_symlink(%struct.inode*, i8*, i32) #1

declare dso_local %struct.TYPE_4__* @EXT2_I(%struct.inode*) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @mark_inode_dirty(%struct.inode*) #1

declare dso_local i32 @ext2_add_nondir(%struct.dentry*, %struct.inode*) #1

declare dso_local i32 @inode_dec_link_count(%struct.inode*) #1

declare dso_local i32 @discard_new_inode(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
