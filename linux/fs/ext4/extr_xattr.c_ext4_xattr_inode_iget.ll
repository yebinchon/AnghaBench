; ModuleID = '/home/carl/AnghaBench/linux/fs/ext4/extr_xattr.c_ext4_xattr_inode_iget.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext4/extr_xattr.c_ext4_xattr_inode_iget.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i64, i64, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@EXT4_IGET_NORMAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"error while reading EA inode %lu err=%d\00", align 1
@.str.1 = private unnamed_addr constant [46 x i8] c"error while reading EA inode %lu is_bad_inode\00", align 1
@EIO = common dso_local global i32 0, align 4
@EXT4_EA_INODE_FL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [49 x i8] c"EA inode %lu does not have EXT4_EA_INODE_FL flag\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@EXT4_STATE_LUSTRE_EA_INODE = common dso_local global i32 0, align 4
@S_NOQUOTA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, i64, i64, %struct.inode**)* @ext4_xattr_inode_iget to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ext4_xattr_inode_iget(%struct.inode* %0, i64 %1, i64 %2, %struct.inode** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.inode*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.inode**, align 8
  %10 = alloca %struct.inode*, align 8
  %11 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store %struct.inode** %3, %struct.inode*** %9, align 8
  %12 = load %struct.inode*, %struct.inode** %6, align 8
  %13 = getelementptr inbounds %struct.inode, %struct.inode* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 4
  %15 = load i64, i64* %7, align 8
  %16 = load i32, i32* @EXT4_IGET_NORMAL, align 4
  %17 = call %struct.inode* @ext4_iget(i32 %14, i64 %15, i32 %16)
  store %struct.inode* %17, %struct.inode** %10, align 8
  %18 = load %struct.inode*, %struct.inode** %10, align 8
  %19 = call i64 @IS_ERR(%struct.inode* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %31

21:                                               ; preds = %4
  %22 = load %struct.inode*, %struct.inode** %10, align 8
  %23 = call i32 @PTR_ERR(%struct.inode* %22)
  store i32 %23, i32* %11, align 4
  %24 = load %struct.inode*, %struct.inode** %6, align 8
  %25 = getelementptr inbounds %struct.inode, %struct.inode* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 4
  %27 = load i64, i64* %7, align 8
  %28 = load i32, i32* %11, align 4
  %29 = call i32 (i32, i8*, i64, ...) @ext4_error(i32 %26, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i64 %27, i32 %28)
  %30 = load i32, i32* %11, align 4
  store i32 %30, i32* %5, align 4
  br label %104

31:                                               ; preds = %4
  %32 = load %struct.inode*, %struct.inode** %10, align 8
  %33 = call i64 @is_bad_inode(%struct.inode* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %43

35:                                               ; preds = %31
  %36 = load %struct.inode*, %struct.inode** %6, align 8
  %37 = getelementptr inbounds %struct.inode, %struct.inode* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 4
  %39 = load i64, i64* %7, align 8
  %40 = call i32 (i32, i8*, i64, ...) @ext4_error(i32 %38, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i64 %39)
  %41 = load i32, i32* @EIO, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %11, align 4
  br label %100

43:                                               ; preds = %31
  %44 = load %struct.inode*, %struct.inode** %10, align 8
  %45 = call %struct.TYPE_2__* @EXT4_I(%struct.inode* %44)
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @EXT4_EA_INODE_FL, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %59, label %51

51:                                               ; preds = %43
  %52 = load %struct.inode*, %struct.inode** %6, align 8
  %53 = getelementptr inbounds %struct.inode, %struct.inode* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 4
  %55 = load i64, i64* %7, align 8
  %56 = call i32 (i32, i8*, i64, ...) @ext4_error(i32 %54, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0), i64 %55)
  %57 = load i32, i32* @EINVAL, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %11, align 4
  br label %100

59:                                               ; preds = %43
  %60 = load %struct.inode*, %struct.inode** %10, align 8
  %61 = call i32 @ext4_xattr_inode_set_class(%struct.inode* %60)
  %62 = load i64, i64* %8, align 8
  %63 = load %struct.inode*, %struct.inode** %10, align 8
  %64 = call i64 @ext4_xattr_inode_get_hash(%struct.inode* %63)
  %65 = icmp ne i64 %62, %64
  br i1 %65, label %66, label %87

66:                                               ; preds = %59
  %67 = load %struct.inode*, %struct.inode** %10, align 8
  %68 = call i64 @EXT4_XATTR_INODE_GET_PARENT(%struct.inode* %67)
  %69 = load %struct.inode*, %struct.inode** %6, align 8
  %70 = getelementptr inbounds %struct.inode, %struct.inode* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = icmp eq i64 %68, %71
  br i1 %72, label %73, label %87

73:                                               ; preds = %66
  %74 = load %struct.inode*, %struct.inode** %10, align 8
  %75 = getelementptr inbounds %struct.inode, %struct.inode* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = load %struct.inode*, %struct.inode** %6, align 8
  %78 = getelementptr inbounds %struct.inode, %struct.inode* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = icmp eq i64 %76, %79
  br i1 %80, label %81, label %87

81:                                               ; preds = %73
  %82 = load %struct.inode*, %struct.inode** %10, align 8
  %83 = load i32, i32* @EXT4_STATE_LUSTRE_EA_INODE, align 4
  %84 = call i32 @ext4_set_inode_state(%struct.inode* %82, i32 %83)
  %85 = load %struct.inode*, %struct.inode** %10, align 8
  %86 = call i32 @ext4_xattr_inode_set_ref(%struct.inode* %85, i32 1)
  br label %97

87:                                               ; preds = %73, %66, %59
  %88 = load %struct.inode*, %struct.inode** %10, align 8
  %89 = call i32 @inode_lock(%struct.inode* %88)
  %90 = load i32, i32* @S_NOQUOTA, align 4
  %91 = load %struct.inode*, %struct.inode** %10, align 8
  %92 = getelementptr inbounds %struct.inode, %struct.inode* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 8
  %94 = or i32 %93, %90
  store i32 %94, i32* %92, align 8
  %95 = load %struct.inode*, %struct.inode** %10, align 8
  %96 = call i32 @inode_unlock(%struct.inode* %95)
  br label %97

97:                                               ; preds = %87, %81
  %98 = load %struct.inode*, %struct.inode** %10, align 8
  %99 = load %struct.inode**, %struct.inode*** %9, align 8
  store %struct.inode* %98, %struct.inode** %99, align 8
  store i32 0, i32* %5, align 4
  br label %104

100:                                              ; preds = %51, %35
  %101 = load %struct.inode*, %struct.inode** %10, align 8
  %102 = call i32 @iput(%struct.inode* %101)
  %103 = load i32, i32* %11, align 4
  store i32 %103, i32* %5, align 4
  br label %104

104:                                              ; preds = %100, %97, %21
  %105 = load i32, i32* %5, align 4
  ret i32 %105
}

declare dso_local %struct.inode* @ext4_iget(i32, i64, i32) #1

declare dso_local i64 @IS_ERR(%struct.inode*) #1

declare dso_local i32 @PTR_ERR(%struct.inode*) #1

declare dso_local i32 @ext4_error(i32, i8*, i64, ...) #1

declare dso_local i64 @is_bad_inode(%struct.inode*) #1

declare dso_local %struct.TYPE_2__* @EXT4_I(%struct.inode*) #1

declare dso_local i32 @ext4_xattr_inode_set_class(%struct.inode*) #1

declare dso_local i64 @ext4_xattr_inode_get_hash(%struct.inode*) #1

declare dso_local i64 @EXT4_XATTR_INODE_GET_PARENT(%struct.inode*) #1

declare dso_local i32 @ext4_set_inode_state(%struct.inode*, i32) #1

declare dso_local i32 @ext4_xattr_inode_set_ref(%struct.inode*, i32) #1

declare dso_local i32 @inode_lock(%struct.inode*) #1

declare dso_local i32 @inode_unlock(%struct.inode*) #1

declare dso_local i32 @iput(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
