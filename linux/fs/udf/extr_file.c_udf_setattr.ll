; ModuleID = '/home/carl/AnghaBench/linux/fs/udf/extr_file.c_udf_setattr.c'
source_filename = "/home/carl/AnghaBench/linux/fs/udf/extr_file.c_udf_setattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32 }
%struct.iattr = type { i32, i64, i32, i32, i32 }
%struct.inode = type { %struct.super_block* }
%struct.super_block = type { i32 }
%struct.TYPE_2__ = type { i32, i32 }

@ATTR_UID = common dso_local global i32 0, align 4
@UDF_FLAG_UID_SET = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@ATTR_GID = common dso_local global i32 0, align 4
@UDF_FLAG_GID_SET = common dso_local global i32 0, align 4
@ATTR_SIZE = common dso_local global i32 0, align 4
@ATTR_MODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dentry*, %struct.iattr*)* @udf_setattr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @udf_setattr(%struct.dentry* %0, %struct.iattr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dentry*, align 8
  %5 = alloca %struct.iattr*, align 8
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.super_block*, align 8
  %8 = alloca i32, align 4
  store %struct.dentry* %0, %struct.dentry** %4, align 8
  store %struct.iattr* %1, %struct.iattr** %5, align 8
  %9 = load %struct.dentry*, %struct.dentry** %4, align 8
  %10 = call %struct.inode* @d_inode(%struct.dentry* %9)
  store %struct.inode* %10, %struct.inode** %6, align 8
  %11 = load %struct.inode*, %struct.inode** %6, align 8
  %12 = getelementptr inbounds %struct.inode, %struct.inode* %11, i32 0, i32 0
  %13 = load %struct.super_block*, %struct.super_block** %12, align 8
  store %struct.super_block* %13, %struct.super_block** %7, align 8
  %14 = load %struct.dentry*, %struct.dentry** %4, align 8
  %15 = load %struct.iattr*, %struct.iattr** %5, align 8
  %16 = call i32 @setattr_prepare(%struct.dentry* %14, %struct.iattr* %15)
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* %8, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %2
  %20 = load i32, i32* %8, align 4
  store i32 %20, i32* %3, align 4
  br label %115

21:                                               ; preds = %2
  %22 = load %struct.iattr*, %struct.iattr** %5, align 8
  %23 = getelementptr inbounds %struct.iattr, %struct.iattr* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @ATTR_UID, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %46

28:                                               ; preds = %21
  %29 = load %struct.super_block*, %struct.super_block** %7, align 8
  %30 = load i32, i32* @UDF_FLAG_UID_SET, align 4
  %31 = call i64 @UDF_QUERY_FLAG(%struct.super_block* %29, i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %46

33:                                               ; preds = %28
  %34 = load %struct.iattr*, %struct.iattr** %5, align 8
  %35 = getelementptr inbounds %struct.iattr, %struct.iattr* %34, i32 0, i32 4
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.super_block*, %struct.super_block** %7, align 8
  %38 = call %struct.TYPE_2__* @UDF_SB(%struct.super_block* %37)
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @uid_eq(i32 %36, i32 %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %46, label %43

43:                                               ; preds = %33
  %44 = load i32, i32* @EPERM, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %3, align 4
  br label %115

46:                                               ; preds = %33, %28, %21
  %47 = load %struct.iattr*, %struct.iattr** %5, align 8
  %48 = getelementptr inbounds %struct.iattr, %struct.iattr* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* @ATTR_GID, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %71

53:                                               ; preds = %46
  %54 = load %struct.super_block*, %struct.super_block** %7, align 8
  %55 = load i32, i32* @UDF_FLAG_GID_SET, align 4
  %56 = call i64 @UDF_QUERY_FLAG(%struct.super_block* %54, i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %71

58:                                               ; preds = %53
  %59 = load %struct.iattr*, %struct.iattr** %5, align 8
  %60 = getelementptr inbounds %struct.iattr, %struct.iattr* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.super_block*, %struct.super_block** %7, align 8
  %63 = call %struct.TYPE_2__* @UDF_SB(%struct.super_block* %62)
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @gid_eq(i32 %61, i32 %65)
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %71, label %68

68:                                               ; preds = %58
  %69 = load i32, i32* @EPERM, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %3, align 4
  br label %115

71:                                               ; preds = %58, %53, %46
  %72 = load %struct.iattr*, %struct.iattr** %5, align 8
  %73 = getelementptr inbounds %struct.iattr, %struct.iattr* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* @ATTR_SIZE, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %96

78:                                               ; preds = %71
  %79 = load %struct.iattr*, %struct.iattr** %5, align 8
  %80 = getelementptr inbounds %struct.iattr, %struct.iattr* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = load %struct.inode*, %struct.inode** %6, align 8
  %83 = call i64 @i_size_read(%struct.inode* %82)
  %84 = icmp ne i64 %81, %83
  br i1 %84, label %85, label %96

85:                                               ; preds = %78
  %86 = load %struct.inode*, %struct.inode** %6, align 8
  %87 = load %struct.iattr*, %struct.iattr** %5, align 8
  %88 = getelementptr inbounds %struct.iattr, %struct.iattr* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = call i32 @udf_setsize(%struct.inode* %86, i64 %89)
  store i32 %90, i32* %8, align 4
  %91 = load i32, i32* %8, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %95

93:                                               ; preds = %85
  %94 = load i32, i32* %8, align 4
  store i32 %94, i32* %3, align 4
  br label %115

95:                                               ; preds = %85
  br label %96

96:                                               ; preds = %95, %78, %71
  %97 = load %struct.iattr*, %struct.iattr** %5, align 8
  %98 = getelementptr inbounds %struct.iattr, %struct.iattr* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = load i32, i32* @ATTR_MODE, align 4
  %101 = and i32 %99, %100
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %109

103:                                              ; preds = %96
  %104 = load %struct.inode*, %struct.inode** %6, align 8
  %105 = load %struct.iattr*, %struct.iattr** %5, align 8
  %106 = getelementptr inbounds %struct.iattr, %struct.iattr* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 8
  %108 = call i32 @udf_update_extra_perms(%struct.inode* %104, i32 %107)
  br label %109

109:                                              ; preds = %103, %96
  %110 = load %struct.inode*, %struct.inode** %6, align 8
  %111 = load %struct.iattr*, %struct.iattr** %5, align 8
  %112 = call i32 @setattr_copy(%struct.inode* %110, %struct.iattr* %111)
  %113 = load %struct.inode*, %struct.inode** %6, align 8
  %114 = call i32 @mark_inode_dirty(%struct.inode* %113)
  store i32 0, i32* %3, align 4
  br label %115

115:                                              ; preds = %109, %93, %68, %43, %19
  %116 = load i32, i32* %3, align 4
  ret i32 %116
}

declare dso_local %struct.inode* @d_inode(%struct.dentry*) #1

declare dso_local i32 @setattr_prepare(%struct.dentry*, %struct.iattr*) #1

declare dso_local i64 @UDF_QUERY_FLAG(%struct.super_block*, i32) #1

declare dso_local i32 @uid_eq(i32, i32) #1

declare dso_local %struct.TYPE_2__* @UDF_SB(%struct.super_block*) #1

declare dso_local i32 @gid_eq(i32, i32) #1

declare dso_local i64 @i_size_read(%struct.inode*) #1

declare dso_local i32 @udf_setsize(%struct.inode*, i64) #1

declare dso_local i32 @udf_update_extra_perms(%struct.inode*, i32) #1

declare dso_local i32 @setattr_copy(%struct.inode*, %struct.iattr*) #1

declare dso_local i32 @mark_inode_dirty(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
