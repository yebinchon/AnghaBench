; ModuleID = '/home/carl/AnghaBench/linux/fs/hpfs/extr_inode.c_hpfs_setattr.c'
source_filename = "/home/carl/AnghaBench/linux/fs/hpfs/extr_inode.c_hpfs_setattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32 }
%struct.iattr = type { i32, i64, i32, i32 }
%struct.inode = type { i64, i64, i32 }
%struct.TYPE_2__ = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@ATTR_UID = common dso_local global i32 0, align 4
@init_user_ns = common dso_local global i32 0, align 4
@ATTR_GID = common dso_local global i32 0, align 4
@ATTR_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hpfs_setattr(%struct.dentry* %0, %struct.iattr* %1) #0 {
  %3 = alloca %struct.dentry*, align 8
  %4 = alloca %struct.iattr*, align 8
  %5 = alloca %struct.inode*, align 8
  %6 = alloca i32, align 4
  store %struct.dentry* %0, %struct.dentry** %3, align 8
  store %struct.iattr* %1, %struct.iattr** %4, align 8
  %7 = load %struct.dentry*, %struct.dentry** %3, align 8
  %8 = call %struct.inode* @d_inode(%struct.dentry* %7)
  store %struct.inode* %8, %struct.inode** %5, align 8
  %9 = load i32, i32* @EINVAL, align 4
  %10 = sub nsw i32 0, %9
  store i32 %10, i32* %6, align 4
  %11 = load %struct.inode*, %struct.inode** %5, align 8
  %12 = getelementptr inbounds %struct.inode, %struct.inode* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @hpfs_lock(i32 %13)
  %15 = load %struct.inode*, %struct.inode** %5, align 8
  %16 = getelementptr inbounds %struct.inode, %struct.inode* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.inode*, %struct.inode** %5, align 8
  %19 = getelementptr inbounds %struct.inode, %struct.inode* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 8
  %21 = call %struct.TYPE_2__* @hpfs_sb(i32 %20)
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp eq i64 %17, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %2
  br label %114

26:                                               ; preds = %2
  %27 = load %struct.iattr*, %struct.iattr** %4, align 8
  %28 = getelementptr inbounds %struct.iattr, %struct.iattr* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @ATTR_UID, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %40

33:                                               ; preds = %26
  %34 = load %struct.iattr*, %struct.iattr** %4, align 8
  %35 = getelementptr inbounds %struct.iattr, %struct.iattr* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @from_kuid(i32* @init_user_ns, i32 %36)
  %38 = icmp sge i32 %37, 65536
  br i1 %38, label %39, label %40

39:                                               ; preds = %33
  br label %114

40:                                               ; preds = %33, %26
  %41 = load %struct.iattr*, %struct.iattr** %4, align 8
  %42 = getelementptr inbounds %struct.iattr, %struct.iattr* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @ATTR_GID, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %54

47:                                               ; preds = %40
  %48 = load %struct.iattr*, %struct.iattr** %4, align 8
  %49 = getelementptr inbounds %struct.iattr, %struct.iattr* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @from_kgid(i32* @init_user_ns, i32 %50)
  %52 = icmp sge i32 %51, 65536
  br i1 %52, label %53, label %54

53:                                               ; preds = %47
  br label %114

54:                                               ; preds = %47, %40
  %55 = load %struct.iattr*, %struct.iattr** %4, align 8
  %56 = getelementptr inbounds %struct.iattr, %struct.iattr* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* @ATTR_SIZE, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %70

61:                                               ; preds = %54
  %62 = load %struct.iattr*, %struct.iattr** %4, align 8
  %63 = getelementptr inbounds %struct.iattr, %struct.iattr* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = load %struct.inode*, %struct.inode** %5, align 8
  %66 = getelementptr inbounds %struct.inode, %struct.inode* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = icmp sgt i64 %64, %67
  br i1 %68, label %69, label %70

69:                                               ; preds = %61
  br label %114

70:                                               ; preds = %61, %54
  %71 = load %struct.dentry*, %struct.dentry** %3, align 8
  %72 = load %struct.iattr*, %struct.iattr** %4, align 8
  %73 = call i32 @setattr_prepare(%struct.dentry* %71, %struct.iattr* %72)
  store i32 %73, i32* %6, align 4
  %74 = load i32, i32* %6, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %70
  br label %114

77:                                               ; preds = %70
  %78 = load %struct.iattr*, %struct.iattr** %4, align 8
  %79 = getelementptr inbounds %struct.iattr, %struct.iattr* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = load i32, i32* @ATTR_SIZE, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %108

84:                                               ; preds = %77
  %85 = load %struct.iattr*, %struct.iattr** %4, align 8
  %86 = getelementptr inbounds %struct.iattr, %struct.iattr* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = load %struct.inode*, %struct.inode** %5, align 8
  %89 = call i64 @i_size_read(%struct.inode* %88)
  %90 = icmp ne i64 %87, %89
  br i1 %90, label %91, label %108

91:                                               ; preds = %84
  %92 = load %struct.inode*, %struct.inode** %5, align 8
  %93 = load %struct.iattr*, %struct.iattr** %4, align 8
  %94 = getelementptr inbounds %struct.iattr, %struct.iattr* %93, i32 0, i32 1
  %95 = load i64, i64* %94, align 8
  %96 = call i32 @inode_newsize_ok(%struct.inode* %92, i64 %95)
  store i32 %96, i32* %6, align 4
  %97 = load i32, i32* %6, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %91
  br label %114

100:                                              ; preds = %91
  %101 = load %struct.inode*, %struct.inode** %5, align 8
  %102 = load %struct.iattr*, %struct.iattr** %4, align 8
  %103 = getelementptr inbounds %struct.iattr, %struct.iattr* %102, i32 0, i32 1
  %104 = load i64, i64* %103, align 8
  %105 = call i32 @truncate_setsize(%struct.inode* %101, i64 %104)
  %106 = load %struct.inode*, %struct.inode** %5, align 8
  %107 = call i32 @hpfs_truncate(%struct.inode* %106)
  br label %108

108:                                              ; preds = %100, %84, %77
  %109 = load %struct.inode*, %struct.inode** %5, align 8
  %110 = load %struct.iattr*, %struct.iattr** %4, align 8
  %111 = call i32 @setattr_copy(%struct.inode* %109, %struct.iattr* %110)
  %112 = load %struct.inode*, %struct.inode** %5, align 8
  %113 = call i32 @hpfs_write_inode(%struct.inode* %112)
  br label %114

114:                                              ; preds = %108, %99, %76, %69, %53, %39, %25
  %115 = load %struct.inode*, %struct.inode** %5, align 8
  %116 = getelementptr inbounds %struct.inode, %struct.inode* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 8
  %118 = call i32 @hpfs_unlock(i32 %117)
  %119 = load i32, i32* %6, align 4
  ret i32 %119
}

declare dso_local %struct.inode* @d_inode(%struct.dentry*) #1

declare dso_local i32 @hpfs_lock(i32) #1

declare dso_local %struct.TYPE_2__* @hpfs_sb(i32) #1

declare dso_local i32 @from_kuid(i32*, i32) #1

declare dso_local i32 @from_kgid(i32*, i32) #1

declare dso_local i32 @setattr_prepare(%struct.dentry*, %struct.iattr*) #1

declare dso_local i64 @i_size_read(%struct.inode*) #1

declare dso_local i32 @inode_newsize_ok(%struct.inode*, i64) #1

declare dso_local i32 @truncate_setsize(%struct.inode*, i64) #1

declare dso_local i32 @hpfs_truncate(%struct.inode*) #1

declare dso_local i32 @setattr_copy(%struct.inode*, %struct.iattr*) #1

declare dso_local i32 @hpfs_write_inode(%struct.inode*) #1

declare dso_local i32 @hpfs_unlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
