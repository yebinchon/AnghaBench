; ModuleID = '/home/carl/AnghaBench/linux/fs/fuse/extr_dir.c_fuse_reverse_inval_entry.c'
source_filename = "/home/carl/AnghaBench/linux/fs/fuse/extr_dir.c_fuse_reverse_inval_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.qstr = type { i32, i32, i32 }
%struct.inode = type { i32, i32 }
%struct.dentry = type { i32 }

@ENOTDIR = common dso_local global i32 0, align 4
@fuse_inode_eq = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@ENOTEMPTY = common dso_local global i32 0, align 4
@S_DEAD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fuse_reverse_inval_entry(%struct.super_block* %0, i64 %1, i64 %2, %struct.qstr* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.super_block*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.qstr*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.inode*, align 8
  %12 = alloca %struct.dentry*, align 8
  %13 = alloca %struct.dentry*, align 8
  store %struct.super_block* %0, %struct.super_block** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store %struct.qstr* %3, %struct.qstr** %9, align 8
  %14 = load i32, i32* @ENOTDIR, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %10, align 4
  %16 = load %struct.super_block*, %struct.super_block** %6, align 8
  %17 = load i64, i64* %7, align 8
  %18 = load i32, i32* @fuse_inode_eq, align 4
  %19 = call %struct.inode* @ilookup5(%struct.super_block* %16, i64 %17, i32 %18, i64* %7)
  store %struct.inode* %19, %struct.inode** %11, align 8
  %20 = load %struct.inode*, %struct.inode** %11, align 8
  %21 = icmp ne %struct.inode* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %4
  %23 = load i32, i32* @ENOENT, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %5, align 4
  br label %137

25:                                               ; preds = %4
  %26 = load %struct.inode*, %struct.inode** %11, align 8
  %27 = call i32 @inode_lock(%struct.inode* %26)
  %28 = load %struct.inode*, %struct.inode** %11, align 8
  %29 = getelementptr inbounds %struct.inode, %struct.inode* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @S_ISDIR(i32 %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %25
  br label %131

34:                                               ; preds = %25
  %35 = load i32, i32* @ENOENT, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %10, align 4
  %37 = load %struct.inode*, %struct.inode** %11, align 8
  %38 = call %struct.dentry* @d_find_alias(%struct.inode* %37)
  store %struct.dentry* %38, %struct.dentry** %12, align 8
  %39 = load %struct.dentry*, %struct.dentry** %12, align 8
  %40 = icmp ne %struct.dentry* %39, null
  br i1 %40, label %42, label %41

41:                                               ; preds = %34
  br label %131

42:                                               ; preds = %34
  %43 = load %struct.dentry*, %struct.dentry** %12, align 8
  %44 = load %struct.qstr*, %struct.qstr** %9, align 8
  %45 = getelementptr inbounds %struct.qstr, %struct.qstr* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.qstr*, %struct.qstr** %9, align 8
  %48 = getelementptr inbounds %struct.qstr, %struct.qstr* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @full_name_hash(%struct.dentry* %43, i32 %46, i32 %49)
  %51 = load %struct.qstr*, %struct.qstr** %9, align 8
  %52 = getelementptr inbounds %struct.qstr, %struct.qstr* %51, i32 0, i32 2
  store i32 %50, i32* %52, align 4
  %53 = load %struct.dentry*, %struct.dentry** %12, align 8
  %54 = load %struct.qstr*, %struct.qstr** %9, align 8
  %55 = call %struct.dentry* @d_lookup(%struct.dentry* %53, %struct.qstr* %54)
  store %struct.dentry* %55, %struct.dentry** %13, align 8
  %56 = load %struct.dentry*, %struct.dentry** %12, align 8
  %57 = call i32 @dput(%struct.dentry* %56)
  %58 = load %struct.dentry*, %struct.dentry** %13, align 8
  %59 = icmp ne %struct.dentry* %58, null
  br i1 %59, label %61, label %60

60:                                               ; preds = %42
  br label %131

61:                                               ; preds = %42
  %62 = load %struct.inode*, %struct.inode** %11, align 8
  %63 = call i32 @fuse_dir_changed(%struct.inode* %62)
  %64 = load %struct.dentry*, %struct.dentry** %13, align 8
  %65 = call i32 @fuse_invalidate_entry(%struct.dentry* %64)
  %66 = load i64, i64* %8, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %127

68:                                               ; preds = %61
  %69 = load %struct.dentry*, %struct.dentry** %13, align 8
  %70 = call i64 @d_really_is_positive(%struct.dentry* %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %127

72:                                               ; preds = %68
  %73 = load %struct.dentry*, %struct.dentry** %13, align 8
  %74 = call %struct.inode* @d_inode(%struct.dentry* %73)
  %75 = call i32 @inode_lock(%struct.inode* %74)
  %76 = load %struct.dentry*, %struct.dentry** %13, align 8
  %77 = call %struct.inode* @d_inode(%struct.dentry* %76)
  %78 = call i64 @get_node_id(%struct.inode* %77)
  %79 = load i64, i64* %8, align 8
  %80 = icmp ne i64 %78, %79
  br i1 %80, label %81, label %84

81:                                               ; preds = %72
  %82 = load i32, i32* @ENOENT, align 4
  %83 = sub nsw i32 0, %82
  store i32 %83, i32* %10, align 4
  br label %117

84:                                               ; preds = %72
  %85 = load %struct.dentry*, %struct.dentry** %13, align 8
  %86 = call i64 @d_mountpoint(%struct.dentry* %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %91

88:                                               ; preds = %84
  %89 = load i32, i32* @EBUSY, align 4
  %90 = sub nsw i32 0, %89
  store i32 %90, i32* %10, align 4
  br label %117

91:                                               ; preds = %84
  %92 = load %struct.dentry*, %struct.dentry** %13, align 8
  %93 = call i64 @d_is_dir(%struct.dentry* %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %111

95:                                               ; preds = %91
  %96 = load %struct.dentry*, %struct.dentry** %13, align 8
  %97 = call i32 @shrink_dcache_parent(%struct.dentry* %96)
  %98 = load %struct.dentry*, %struct.dentry** %13, align 8
  %99 = call i32 @simple_empty(%struct.dentry* %98)
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %104, label %101

101:                                              ; preds = %95
  %102 = load i32, i32* @ENOTEMPTY, align 4
  %103 = sub nsw i32 0, %102
  store i32 %103, i32* %10, align 4
  br label %117

104:                                              ; preds = %95
  %105 = load i32, i32* @S_DEAD, align 4
  %106 = load %struct.dentry*, %struct.dentry** %13, align 8
  %107 = call %struct.inode* @d_inode(%struct.dentry* %106)
  %108 = getelementptr inbounds %struct.inode, %struct.inode* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = or i32 %109, %105
  store i32 %110, i32* %108, align 4
  br label %111

111:                                              ; preds = %104, %91
  %112 = load %struct.dentry*, %struct.dentry** %13, align 8
  %113 = call i32 @dont_mount(%struct.dentry* %112)
  %114 = load %struct.dentry*, %struct.dentry** %13, align 8
  %115 = call %struct.inode* @d_inode(%struct.dentry* %114)
  %116 = call i32 @clear_nlink(%struct.inode* %115)
  store i32 0, i32* %10, align 4
  br label %117

117:                                              ; preds = %111, %101, %88, %81
  %118 = load %struct.dentry*, %struct.dentry** %13, align 8
  %119 = call %struct.inode* @d_inode(%struct.dentry* %118)
  %120 = call i32 @inode_unlock(%struct.inode* %119)
  %121 = load i32, i32* %10, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %126, label %123

123:                                              ; preds = %117
  %124 = load %struct.dentry*, %struct.dentry** %13, align 8
  %125 = call i32 @d_delete(%struct.dentry* %124)
  br label %126

126:                                              ; preds = %123, %117
  br label %128

127:                                              ; preds = %68, %61
  store i32 0, i32* %10, align 4
  br label %128

128:                                              ; preds = %127, %126
  %129 = load %struct.dentry*, %struct.dentry** %13, align 8
  %130 = call i32 @dput(%struct.dentry* %129)
  br label %131

131:                                              ; preds = %128, %60, %41, %33
  %132 = load %struct.inode*, %struct.inode** %11, align 8
  %133 = call i32 @inode_unlock(%struct.inode* %132)
  %134 = load %struct.inode*, %struct.inode** %11, align 8
  %135 = call i32 @iput(%struct.inode* %134)
  %136 = load i32, i32* %10, align 4
  store i32 %136, i32* %5, align 4
  br label %137

137:                                              ; preds = %131, %22
  %138 = load i32, i32* %5, align 4
  ret i32 %138
}

declare dso_local %struct.inode* @ilookup5(%struct.super_block*, i64, i32, i64*) #1

declare dso_local i32 @inode_lock(%struct.inode*) #1

declare dso_local i32 @S_ISDIR(i32) #1

declare dso_local %struct.dentry* @d_find_alias(%struct.inode*) #1

declare dso_local i32 @full_name_hash(%struct.dentry*, i32, i32) #1

declare dso_local %struct.dentry* @d_lookup(%struct.dentry*, %struct.qstr*) #1

declare dso_local i32 @dput(%struct.dentry*) #1

declare dso_local i32 @fuse_dir_changed(%struct.inode*) #1

declare dso_local i32 @fuse_invalidate_entry(%struct.dentry*) #1

declare dso_local i64 @d_really_is_positive(%struct.dentry*) #1

declare dso_local %struct.inode* @d_inode(%struct.dentry*) #1

declare dso_local i64 @get_node_id(%struct.inode*) #1

declare dso_local i64 @d_mountpoint(%struct.dentry*) #1

declare dso_local i64 @d_is_dir(%struct.dentry*) #1

declare dso_local i32 @shrink_dcache_parent(%struct.dentry*) #1

declare dso_local i32 @simple_empty(%struct.dentry*) #1

declare dso_local i32 @dont_mount(%struct.dentry*) #1

declare dso_local i32 @clear_nlink(%struct.inode*) #1

declare dso_local i32 @inode_unlock(%struct.inode*) #1

declare dso_local i32 @d_delete(%struct.dentry*) #1

declare dso_local i32 @iput(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
