; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_inode.c_nfs_post_op_update_inode_force_wcc_locked.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_inode.c_nfs_post_op_update_inode_force_wcc_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32 }
%struct.nfs_fattr = type { i32, i32, i8*, i8*, i32 }

@NFS_ATTR_FATTR = common dso_local global i32 0, align 4
@NFS_ATTR_FATTR_PRECHANGE = common dso_local global i32 0, align 4
@NFS_ATTR_FATTR_PRESIZE = common dso_local global i32 0, align 4
@NFS_ATTR_FATTR_PREMTIME = common dso_local global i32 0, align 4
@NFS_ATTR_FATTR_PRECTIME = common dso_local global i32 0, align 4
@NFS_ATTR_FATTR_CHANGE = common dso_local global i32 0, align 4
@NFS_ATTR_FATTR_CTIME = common dso_local global i32 0, align 4
@NFS_ATTR_FATTR_MTIME = common dso_local global i32 0, align 4
@NFS_ATTR_FATTR_SIZE = common dso_local global i32 0, align 4
@NFS_INO_INVALID_CHANGE = common dso_local global i32 0, align 4
@NFS_INO_INVALID_CTIME = common dso_local global i32 0, align 4
@NFS_INO_INVALID_MTIME = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfs_post_op_update_inode_force_wcc_locked(%struct.inode* %0, %struct.nfs_fattr* %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.nfs_fattr*, align 8
  %5 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %3, align 8
  store %struct.nfs_fattr* %1, %struct.nfs_fattr** %4, align 8
  %6 = load %struct.nfs_fattr*, %struct.nfs_fattr** %4, align 8
  %7 = getelementptr inbounds %struct.nfs_fattr, %struct.nfs_fattr* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = load i32, i32* @NFS_ATTR_FATTR, align 4
  %10 = and i32 %8, %9
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %17, label %12

12:                                               ; preds = %2
  %13 = load %struct.inode*, %struct.inode** %3, align 8
  %14 = load %struct.nfs_fattr*, %struct.nfs_fattr** %4, align 8
  %15 = call i32 @nfs_inode_attrs_need_update(%struct.inode* %13, %struct.nfs_fattr* %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %30, label %17

17:                                               ; preds = %12, %2
  %18 = load i32, i32* @NFS_ATTR_FATTR_PRECHANGE, align 4
  %19 = load i32, i32* @NFS_ATTR_FATTR_PRESIZE, align 4
  %20 = or i32 %18, %19
  %21 = load i32, i32* @NFS_ATTR_FATTR_PREMTIME, align 4
  %22 = or i32 %20, %21
  %23 = load i32, i32* @NFS_ATTR_FATTR_PRECTIME, align 4
  %24 = or i32 %22, %23
  %25 = xor i32 %24, -1
  %26 = load %struct.nfs_fattr*, %struct.nfs_fattr** %4, align 8
  %27 = getelementptr inbounds %struct.nfs_fattr, %struct.nfs_fattr* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = and i32 %28, %25
  store i32 %29, i32* %27, align 8
  br label %131

30:                                               ; preds = %12
  %31 = load %struct.nfs_fattr*, %struct.nfs_fattr** %4, align 8
  %32 = getelementptr inbounds %struct.nfs_fattr, %struct.nfs_fattr* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @NFS_ATTR_FATTR_CHANGE, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %54

37:                                               ; preds = %30
  %38 = load %struct.nfs_fattr*, %struct.nfs_fattr** %4, align 8
  %39 = getelementptr inbounds %struct.nfs_fattr, %struct.nfs_fattr* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @NFS_ATTR_FATTR_PRECHANGE, align 4
  %42 = and i32 %40, %41
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %54

44:                                               ; preds = %37
  %45 = load %struct.inode*, %struct.inode** %3, align 8
  %46 = call i32 @inode_peek_iversion_raw(%struct.inode* %45)
  %47 = load %struct.nfs_fattr*, %struct.nfs_fattr** %4, align 8
  %48 = getelementptr inbounds %struct.nfs_fattr, %struct.nfs_fattr* %47, i32 0, i32 4
  store i32 %46, i32* %48, align 8
  %49 = load i32, i32* @NFS_ATTR_FATTR_PRECHANGE, align 4
  %50 = load %struct.nfs_fattr*, %struct.nfs_fattr** %4, align 8
  %51 = getelementptr inbounds %struct.nfs_fattr, %struct.nfs_fattr* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = or i32 %52, %49
  store i32 %53, i32* %51, align 8
  br label %54

54:                                               ; preds = %44, %37, %30
  %55 = load %struct.nfs_fattr*, %struct.nfs_fattr** %4, align 8
  %56 = getelementptr inbounds %struct.nfs_fattr, %struct.nfs_fattr* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* @NFS_ATTR_FATTR_CTIME, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %80

61:                                               ; preds = %54
  %62 = load %struct.nfs_fattr*, %struct.nfs_fattr** %4, align 8
  %63 = getelementptr inbounds %struct.nfs_fattr, %struct.nfs_fattr* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* @NFS_ATTR_FATTR_PRECTIME, align 4
  %66 = and i32 %64, %65
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %80

68:                                               ; preds = %61
  %69 = load %struct.inode*, %struct.inode** %3, align 8
  %70 = getelementptr inbounds %struct.inode, %struct.inode* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = call i8* @timespec64_to_timespec(i32 %71)
  %73 = load %struct.nfs_fattr*, %struct.nfs_fattr** %4, align 8
  %74 = getelementptr inbounds %struct.nfs_fattr, %struct.nfs_fattr* %73, i32 0, i32 3
  store i8* %72, i8** %74, align 8
  %75 = load i32, i32* @NFS_ATTR_FATTR_PRECTIME, align 4
  %76 = load %struct.nfs_fattr*, %struct.nfs_fattr** %4, align 8
  %77 = getelementptr inbounds %struct.nfs_fattr, %struct.nfs_fattr* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = or i32 %78, %75
  store i32 %79, i32* %77, align 8
  br label %80

80:                                               ; preds = %68, %61, %54
  %81 = load %struct.nfs_fattr*, %struct.nfs_fattr** %4, align 8
  %82 = getelementptr inbounds %struct.nfs_fattr, %struct.nfs_fattr* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = load i32, i32* @NFS_ATTR_FATTR_MTIME, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %106

87:                                               ; preds = %80
  %88 = load %struct.nfs_fattr*, %struct.nfs_fattr** %4, align 8
  %89 = getelementptr inbounds %struct.nfs_fattr, %struct.nfs_fattr* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = load i32, i32* @NFS_ATTR_FATTR_PREMTIME, align 4
  %92 = and i32 %90, %91
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %94, label %106

94:                                               ; preds = %87
  %95 = load %struct.inode*, %struct.inode** %3, align 8
  %96 = getelementptr inbounds %struct.inode, %struct.inode* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = call i8* @timespec64_to_timespec(i32 %97)
  %99 = load %struct.nfs_fattr*, %struct.nfs_fattr** %4, align 8
  %100 = getelementptr inbounds %struct.nfs_fattr, %struct.nfs_fattr* %99, i32 0, i32 2
  store i8* %98, i8** %100, align 8
  %101 = load i32, i32* @NFS_ATTR_FATTR_PREMTIME, align 4
  %102 = load %struct.nfs_fattr*, %struct.nfs_fattr** %4, align 8
  %103 = getelementptr inbounds %struct.nfs_fattr, %struct.nfs_fattr* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = or i32 %104, %101
  store i32 %105, i32* %103, align 8
  br label %106

106:                                              ; preds = %94, %87, %80
  %107 = load %struct.nfs_fattr*, %struct.nfs_fattr** %4, align 8
  %108 = getelementptr inbounds %struct.nfs_fattr, %struct.nfs_fattr* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = load i32, i32* @NFS_ATTR_FATTR_SIZE, align 4
  %111 = and i32 %109, %110
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %130

113:                                              ; preds = %106
  %114 = load %struct.nfs_fattr*, %struct.nfs_fattr** %4, align 8
  %115 = getelementptr inbounds %struct.nfs_fattr, %struct.nfs_fattr* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = load i32, i32* @NFS_ATTR_FATTR_PRESIZE, align 4
  %118 = and i32 %116, %117
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %120, label %130

120:                                              ; preds = %113
  %121 = load %struct.inode*, %struct.inode** %3, align 8
  %122 = call i32 @i_size_read(%struct.inode* %121)
  %123 = load %struct.nfs_fattr*, %struct.nfs_fattr** %4, align 8
  %124 = getelementptr inbounds %struct.nfs_fattr, %struct.nfs_fattr* %123, i32 0, i32 1
  store i32 %122, i32* %124, align 4
  %125 = load i32, i32* @NFS_ATTR_FATTR_PRESIZE, align 4
  %126 = load %struct.nfs_fattr*, %struct.nfs_fattr** %4, align 8
  %127 = getelementptr inbounds %struct.nfs_fattr, %struct.nfs_fattr* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = or i32 %128, %125
  store i32 %129, i32* %127, align 8
  br label %130

130:                                              ; preds = %120, %113, %106
  br label %131

131:                                              ; preds = %130, %17
  %132 = load %struct.inode*, %struct.inode** %3, align 8
  %133 = load %struct.nfs_fattr*, %struct.nfs_fattr** %4, align 8
  %134 = load i32, i32* @NFS_INO_INVALID_CHANGE, align 4
  %135 = load i32, i32* @NFS_INO_INVALID_CTIME, align 4
  %136 = or i32 %134, %135
  %137 = load i32, i32* @NFS_INO_INVALID_MTIME, align 4
  %138 = or i32 %136, %137
  %139 = call i32 @nfs_post_op_update_inode_locked(%struct.inode* %132, %struct.nfs_fattr* %133, i32 %138)
  store i32 %139, i32* %5, align 4
  %140 = load i32, i32* %5, align 4
  ret i32 %140
}

declare dso_local i32 @nfs_inode_attrs_need_update(%struct.inode*, %struct.nfs_fattr*) #1

declare dso_local i32 @inode_peek_iversion_raw(%struct.inode*) #1

declare dso_local i8* @timespec64_to_timespec(i32) #1

declare dso_local i32 @i_size_read(%struct.inode*) #1

declare dso_local i32 @nfs_post_op_update_inode_locked(%struct.inode*, %struct.nfs_fattr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
