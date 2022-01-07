; ModuleID = '/home/carl/AnghaBench/linux/fs/ext4/extr_xattr.c_ext4_xattr_inode_update_ref.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext4/extr_xattr.c_ext4_xattr_inode_update_ref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32 }
%struct.mb_cache = type { i32 }
%struct.ext4_iloc = type { i32 }

@.str = private unnamed_addr constant [28 x i8] c"EA inode %lu ref_count=%lld\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"EA inode %lu i_nlink=%u\00", align 1
@GFP_NOFS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [37 x i8] c"ext4_mark_iloc_dirty() failed ret=%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.inode*, i32)* @ext4_xattr_inode_update_ref to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ext4_xattr_inode_update_ref(i32* %0, %struct.inode* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.inode*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.mb_cache*, align 8
  %8 = alloca %struct.ext4_iloc, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store %struct.inode* %1, %struct.inode** %5, align 8
  store i32 %2, i32* %6, align 4
  %12 = load %struct.inode*, %struct.inode** %5, align 8
  %13 = call %struct.mb_cache* @EA_INODE_CACHE(%struct.inode* %12)
  store %struct.mb_cache* %13, %struct.mb_cache** %7, align 8
  %14 = load %struct.inode*, %struct.inode** %5, align 8
  %15 = call i32 @inode_lock(%struct.inode* %14)
  %16 = load i32*, i32** %4, align 8
  %17 = load %struct.inode*, %struct.inode** %5, align 8
  %18 = call i32 @ext4_reserve_inode_write(i32* %16, %struct.inode* %17, %struct.ext4_iloc* %8)
  store i32 %18, i32* %11, align 4
  %19 = load i32, i32* %11, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %3
  br label %127

22:                                               ; preds = %3
  %23 = load %struct.inode*, %struct.inode** %5, align 8
  %24 = call i32 @ext4_xattr_inode_get_ref(%struct.inode* %23)
  store i32 %24, i32* %9, align 4
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* %9, align 4
  %27 = add nsw i32 %26, %25
  store i32 %27, i32* %9, align 4
  %28 = load %struct.inode*, %struct.inode** %5, align 8
  %29 = load i32, i32* %9, align 4
  %30 = call i32 @ext4_xattr_inode_set_ref(%struct.inode* %28, i32 %29)
  %31 = load i32, i32* %6, align 4
  %32 = icmp sgt i32 %31, 0
  br i1 %32, label %33, label %74

33:                                               ; preds = %22
  %34 = load i32, i32* %9, align 4
  %35 = icmp sle i32 %34, 0
  %36 = zext i1 %35 to i32
  %37 = load %struct.inode*, %struct.inode** %5, align 8
  %38 = getelementptr inbounds %struct.inode, %struct.inode* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* %9, align 4
  %41 = call i32 @WARN_ONCE(i32 %36, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %39, i32 %40)
  %42 = load i32, i32* %9, align 4
  %43 = icmp eq i32 %42, 1
  br i1 %43, label %44, label %73

44:                                               ; preds = %33
  %45 = load %struct.inode*, %struct.inode** %5, align 8
  %46 = getelementptr inbounds %struct.inode, %struct.inode* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.inode*, %struct.inode** %5, align 8
  %49 = getelementptr inbounds %struct.inode, %struct.inode* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.inode*, %struct.inode** %5, align 8
  %52 = getelementptr inbounds %struct.inode, %struct.inode* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @WARN_ONCE(i32 %47, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %50, i32 %53)
  %55 = load %struct.inode*, %struct.inode** %5, align 8
  %56 = call i32 @set_nlink(%struct.inode* %55, i32 1)
  %57 = load i32*, i32** %4, align 8
  %58 = load %struct.inode*, %struct.inode** %5, align 8
  %59 = call i32 @ext4_orphan_del(i32* %57, %struct.inode* %58)
  %60 = load %struct.mb_cache*, %struct.mb_cache** %7, align 8
  %61 = icmp ne %struct.mb_cache* %60, null
  br i1 %61, label %62, label %72

62:                                               ; preds = %44
  %63 = load %struct.inode*, %struct.inode** %5, align 8
  %64 = call i32 @ext4_xattr_inode_get_hash(%struct.inode* %63)
  store i32 %64, i32* %10, align 4
  %65 = load %struct.mb_cache*, %struct.mb_cache** %7, align 8
  %66 = load i32, i32* @GFP_NOFS, align 4
  %67 = load i32, i32* %10, align 4
  %68 = load %struct.inode*, %struct.inode** %5, align 8
  %69 = getelementptr inbounds %struct.inode, %struct.inode* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @mb_cache_entry_create(%struct.mb_cache* %65, i32 %66, i32 %67, i32 %70, i32 1)
  br label %72

72:                                               ; preds = %62, %44
  br label %73

73:                                               ; preds = %72, %33
  br label %116

74:                                               ; preds = %22
  %75 = load i32, i32* %9, align 4
  %76 = icmp slt i32 %75, 0
  %77 = zext i1 %76 to i32
  %78 = load %struct.inode*, %struct.inode** %5, align 8
  %79 = getelementptr inbounds %struct.inode, %struct.inode* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* %9, align 4
  %82 = call i32 @WARN_ONCE(i32 %77, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %80, i32 %81)
  %83 = load i32, i32* %9, align 4
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %85, label %115

85:                                               ; preds = %74
  %86 = load %struct.inode*, %struct.inode** %5, align 8
  %87 = getelementptr inbounds %struct.inode, %struct.inode* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = icmp ne i32 %88, 1
  %90 = zext i1 %89 to i32
  %91 = load %struct.inode*, %struct.inode** %5, align 8
  %92 = getelementptr inbounds %struct.inode, %struct.inode* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.inode*, %struct.inode** %5, align 8
  %95 = getelementptr inbounds %struct.inode, %struct.inode* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @WARN_ONCE(i32 %90, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %93, i32 %96)
  %98 = load %struct.inode*, %struct.inode** %5, align 8
  %99 = call i32 @clear_nlink(%struct.inode* %98)
  %100 = load i32*, i32** %4, align 8
  %101 = load %struct.inode*, %struct.inode** %5, align 8
  %102 = call i32 @ext4_orphan_add(i32* %100, %struct.inode* %101)
  %103 = load %struct.mb_cache*, %struct.mb_cache** %7, align 8
  %104 = icmp ne %struct.mb_cache* %103, null
  br i1 %104, label %105, label %114

105:                                              ; preds = %85
  %106 = load %struct.inode*, %struct.inode** %5, align 8
  %107 = call i32 @ext4_xattr_inode_get_hash(%struct.inode* %106)
  store i32 %107, i32* %10, align 4
  %108 = load %struct.mb_cache*, %struct.mb_cache** %7, align 8
  %109 = load i32, i32* %10, align 4
  %110 = load %struct.inode*, %struct.inode** %5, align 8
  %111 = getelementptr inbounds %struct.inode, %struct.inode* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @mb_cache_entry_delete(%struct.mb_cache* %108, i32 %109, i32 %112)
  br label %114

114:                                              ; preds = %105, %85
  br label %115

115:                                              ; preds = %114, %74
  br label %116

116:                                              ; preds = %115, %73
  %117 = load i32*, i32** %4, align 8
  %118 = load %struct.inode*, %struct.inode** %5, align 8
  %119 = call i32 @ext4_mark_iloc_dirty(i32* %117, %struct.inode* %118, %struct.ext4_iloc* %8)
  store i32 %119, i32* %11, align 4
  %120 = load i32, i32* %11, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %126

122:                                              ; preds = %116
  %123 = load %struct.inode*, %struct.inode** %5, align 8
  %124 = load i32, i32* %11, align 4
  %125 = call i32 @ext4_warning_inode(%struct.inode* %123, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i32 %124)
  br label %126

126:                                              ; preds = %122, %116
  br label %127

127:                                              ; preds = %126, %21
  %128 = load %struct.inode*, %struct.inode** %5, align 8
  %129 = call i32 @inode_unlock(%struct.inode* %128)
  %130 = load i32, i32* %11, align 4
  ret i32 %130
}

declare dso_local %struct.mb_cache* @EA_INODE_CACHE(%struct.inode*) #1

declare dso_local i32 @inode_lock(%struct.inode*) #1

declare dso_local i32 @ext4_reserve_inode_write(i32*, %struct.inode*, %struct.ext4_iloc*) #1

declare dso_local i32 @ext4_xattr_inode_get_ref(%struct.inode*) #1

declare dso_local i32 @ext4_xattr_inode_set_ref(%struct.inode*, i32) #1

declare dso_local i32 @WARN_ONCE(i32, i8*, i32, i32) #1

declare dso_local i32 @set_nlink(%struct.inode*, i32) #1

declare dso_local i32 @ext4_orphan_del(i32*, %struct.inode*) #1

declare dso_local i32 @ext4_xattr_inode_get_hash(%struct.inode*) #1

declare dso_local i32 @mb_cache_entry_create(%struct.mb_cache*, i32, i32, i32, i32) #1

declare dso_local i32 @clear_nlink(%struct.inode*) #1

declare dso_local i32 @ext4_orphan_add(i32*, %struct.inode*) #1

declare dso_local i32 @mb_cache_entry_delete(%struct.mb_cache*, i32, i32) #1

declare dso_local i32 @ext4_mark_iloc_dirty(i32*, %struct.inode*, %struct.ext4_iloc*) #1

declare dso_local i32 @ext4_warning_inode(%struct.inode*, i8*, i32) #1

declare dso_local i32 @inode_unlock(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
