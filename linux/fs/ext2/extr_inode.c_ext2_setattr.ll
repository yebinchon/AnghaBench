; ModuleID = '/home/carl/AnghaBench/linux/fs/ext2/extr_inode.c_ext2_setattr.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext2/extr_inode.c_ext2_setattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32 }
%struct.iattr = type { i32, i64, i32, i32 }
%struct.inode = type { i64, i32, i32, i32 }

@ATTR_UID = common dso_local global i32 0, align 4
@ATTR_GID = common dso_local global i32 0, align 4
@ATTR_SIZE = common dso_local global i32 0, align 4
@ATTR_MODE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ext2_setattr(%struct.dentry* %0, %struct.iattr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dentry*, align 8
  %5 = alloca %struct.iattr*, align 8
  %6 = alloca %struct.inode*, align 8
  %7 = alloca i32, align 4
  store %struct.dentry* %0, %struct.dentry** %4, align 8
  store %struct.iattr* %1, %struct.iattr** %5, align 8
  %8 = load %struct.dentry*, %struct.dentry** %4, align 8
  %9 = call %struct.inode* @d_inode(%struct.dentry* %8)
  store %struct.inode* %9, %struct.inode** %6, align 8
  %10 = load %struct.dentry*, %struct.dentry** %4, align 8
  %11 = load %struct.iattr*, %struct.iattr** %5, align 8
  %12 = call i32 @setattr_prepare(%struct.dentry* %10, %struct.iattr* %11)
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* %7, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = load i32, i32* %7, align 4
  store i32 %16, i32* %3, align 4
  br label %117

17:                                               ; preds = %2
  %18 = load %struct.inode*, %struct.inode** %6, align 8
  %19 = load %struct.iattr*, %struct.iattr** %5, align 8
  %20 = call i64 @is_quota_modification(%struct.inode* %18, %struct.iattr* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %30

22:                                               ; preds = %17
  %23 = load %struct.inode*, %struct.inode** %6, align 8
  %24 = call i32 @dquot_initialize(%struct.inode* %23)
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* %7, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %22
  %28 = load i32, i32* %7, align 4
  store i32 %28, i32* %3, align 4
  br label %117

29:                                               ; preds = %22
  br label %30

30:                                               ; preds = %29, %17
  %31 = load %struct.iattr*, %struct.iattr** %5, align 8
  %32 = getelementptr inbounds %struct.iattr, %struct.iattr* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @ATTR_UID, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %46

37:                                               ; preds = %30
  %38 = load %struct.iattr*, %struct.iattr** %5, align 8
  %39 = getelementptr inbounds %struct.iattr, %struct.iattr* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.inode*, %struct.inode** %6, align 8
  %42 = getelementptr inbounds %struct.inode, %struct.inode* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @uid_eq(i32 %40, i32 %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %62

46:                                               ; preds = %37, %30
  %47 = load %struct.iattr*, %struct.iattr** %5, align 8
  %48 = getelementptr inbounds %struct.iattr, %struct.iattr* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* @ATTR_GID, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %71

53:                                               ; preds = %46
  %54 = load %struct.iattr*, %struct.iattr** %5, align 8
  %55 = getelementptr inbounds %struct.iattr, %struct.iattr* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.inode*, %struct.inode** %6, align 8
  %58 = getelementptr inbounds %struct.inode, %struct.inode* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @gid_eq(i32 %56, i32 %59)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %71, label %62

62:                                               ; preds = %53, %37
  %63 = load %struct.inode*, %struct.inode** %6, align 8
  %64 = load %struct.iattr*, %struct.iattr** %5, align 8
  %65 = call i32 @dquot_transfer(%struct.inode* %63, %struct.iattr* %64)
  store i32 %65, i32* %7, align 4
  %66 = load i32, i32* %7, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %62
  %69 = load i32, i32* %7, align 4
  store i32 %69, i32* %3, align 4
  br label %117

70:                                               ; preds = %62
  br label %71

71:                                               ; preds = %70, %53, %46
  %72 = load %struct.iattr*, %struct.iattr** %5, align 8
  %73 = getelementptr inbounds %struct.iattr, %struct.iattr* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* @ATTR_SIZE, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %97

78:                                               ; preds = %71
  %79 = load %struct.iattr*, %struct.iattr** %5, align 8
  %80 = getelementptr inbounds %struct.iattr, %struct.iattr* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = load %struct.inode*, %struct.inode** %6, align 8
  %83 = getelementptr inbounds %struct.inode, %struct.inode* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = icmp ne i64 %81, %84
  br i1 %85, label %86, label %97

86:                                               ; preds = %78
  %87 = load %struct.inode*, %struct.inode** %6, align 8
  %88 = load %struct.iattr*, %struct.iattr** %5, align 8
  %89 = getelementptr inbounds %struct.iattr, %struct.iattr* %88, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = call i32 @ext2_setsize(%struct.inode* %87, i64 %90)
  store i32 %91, i32* %7, align 4
  %92 = load i32, i32* %7, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %96

94:                                               ; preds = %86
  %95 = load i32, i32* %7, align 4
  store i32 %95, i32* %3, align 4
  br label %117

96:                                               ; preds = %86
  br label %97

97:                                               ; preds = %96, %78, %71
  %98 = load %struct.inode*, %struct.inode** %6, align 8
  %99 = load %struct.iattr*, %struct.iattr** %5, align 8
  %100 = call i32 @setattr_copy(%struct.inode* %98, %struct.iattr* %99)
  %101 = load %struct.iattr*, %struct.iattr** %5, align 8
  %102 = getelementptr inbounds %struct.iattr, %struct.iattr* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = load i32, i32* @ATTR_MODE, align 4
  %105 = and i32 %103, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %113

107:                                              ; preds = %97
  %108 = load %struct.inode*, %struct.inode** %6, align 8
  %109 = load %struct.inode*, %struct.inode** %6, align 8
  %110 = getelementptr inbounds %struct.inode, %struct.inode* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 8
  %112 = call i32 @posix_acl_chmod(%struct.inode* %108, i32 %111)
  store i32 %112, i32* %7, align 4
  br label %113

113:                                              ; preds = %107, %97
  %114 = load %struct.inode*, %struct.inode** %6, align 8
  %115 = call i32 @mark_inode_dirty(%struct.inode* %114)
  %116 = load i32, i32* %7, align 4
  store i32 %116, i32* %3, align 4
  br label %117

117:                                              ; preds = %113, %94, %68, %27, %15
  %118 = load i32, i32* %3, align 4
  ret i32 %118
}

declare dso_local %struct.inode* @d_inode(%struct.dentry*) #1

declare dso_local i32 @setattr_prepare(%struct.dentry*, %struct.iattr*) #1

declare dso_local i64 @is_quota_modification(%struct.inode*, %struct.iattr*) #1

declare dso_local i32 @dquot_initialize(%struct.inode*) #1

declare dso_local i32 @uid_eq(i32, i32) #1

declare dso_local i32 @gid_eq(i32, i32) #1

declare dso_local i32 @dquot_transfer(%struct.inode*, %struct.iattr*) #1

declare dso_local i32 @ext2_setsize(%struct.inode*, i64) #1

declare dso_local i32 @setattr_copy(%struct.inode*, %struct.iattr*) #1

declare dso_local i32 @posix_acl_chmod(%struct.inode*, i32) #1

declare dso_local i32 @mark_inode_dirty(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
