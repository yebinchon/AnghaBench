; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_inode.c_nfs_wcc_update_inode.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_inode.c_nfs_wcc_update_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i8*, i8* }
%struct.nfs_fattr = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.timespec = type { i32 }

@NFS_ATTR_FATTR_PRECHANGE = common dso_local global i32 0, align 4
@NFS_ATTR_FATTR_CHANGE = common dso_local global i32 0, align 4
@NFS_INO_INVALID_DATA = common dso_local global i32 0, align 4
@NFS_ATTR_FATTR_PRECTIME = common dso_local global i32 0, align 4
@NFS_ATTR_FATTR_CTIME = common dso_local global i32 0, align 4
@NFS_ATTR_FATTR_PREMTIME = common dso_local global i32 0, align 4
@NFS_ATTR_FATTR_MTIME = common dso_local global i32 0, align 4
@NFS_ATTR_FATTR_PRESIZE = common dso_local global i32 0, align 4
@NFS_ATTR_FATTR_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.inode*, %struct.nfs_fattr*)* @nfs_wcc_update_inode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nfs_wcc_update_inode(%struct.inode* %0, %struct.nfs_fattr* %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.nfs_fattr*, align 8
  %5 = alloca %struct.timespec, align 4
  %6 = alloca %struct.timespec, align 4
  %7 = alloca %struct.timespec, align 4
  store %struct.inode* %0, %struct.inode** %3, align 8
  store %struct.nfs_fattr* %1, %struct.nfs_fattr** %4, align 8
  %8 = load %struct.nfs_fattr*, %struct.nfs_fattr** %4, align 8
  %9 = getelementptr inbounds %struct.nfs_fattr, %struct.nfs_fattr* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @NFS_ATTR_FATTR_PRECHANGE, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %44

14:                                               ; preds = %2
  %15 = load %struct.nfs_fattr*, %struct.nfs_fattr** %4, align 8
  %16 = getelementptr inbounds %struct.nfs_fattr, %struct.nfs_fattr* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @NFS_ATTR_FATTR_CHANGE, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %44

21:                                               ; preds = %14
  %22 = load %struct.inode*, %struct.inode** %3, align 8
  %23 = load %struct.nfs_fattr*, %struct.nfs_fattr** %4, align 8
  %24 = getelementptr inbounds %struct.nfs_fattr, %struct.nfs_fattr* %23, i32 0, i32 8
  %25 = load i32, i32* %24, align 4
  %26 = call i64 @inode_eq_iversion_raw(%struct.inode* %22, i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %44

28:                                               ; preds = %21
  %29 = load %struct.inode*, %struct.inode** %3, align 8
  %30 = load %struct.nfs_fattr*, %struct.nfs_fattr** %4, align 8
  %31 = getelementptr inbounds %struct.nfs_fattr, %struct.nfs_fattr* %30, i32 0, i32 7
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @inode_set_iversion_raw(%struct.inode* %29, i32 %32)
  %34 = load %struct.inode*, %struct.inode** %3, align 8
  %35 = getelementptr inbounds %struct.inode, %struct.inode* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = call i64 @S_ISDIR(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %28
  %40 = load %struct.inode*, %struct.inode** %3, align 8
  %41 = load i32, i32* @NFS_INO_INVALID_DATA, align 4
  %42 = call i32 @nfs_set_cache_invalid(%struct.inode* %40, i32 %41)
  br label %43

43:                                               ; preds = %39, %28
  br label %44

44:                                               ; preds = %43, %21, %14, %2
  %45 = load %struct.inode*, %struct.inode** %3, align 8
  %46 = getelementptr inbounds %struct.inode, %struct.inode* %45, i32 0, i32 2
  %47 = load i8*, i8** %46, align 8
  %48 = call i32 @timespec64_to_timespec(i8* %47)
  %49 = getelementptr inbounds %struct.timespec, %struct.timespec* %6, i32 0, i32 0
  store i32 %48, i32* %49, align 4
  %50 = bitcast %struct.timespec* %5 to i8*
  %51 = bitcast %struct.timespec* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %50, i8* align 4 %51, i64 4, i1 false)
  %52 = load %struct.nfs_fattr*, %struct.nfs_fattr** %4, align 8
  %53 = getelementptr inbounds %struct.nfs_fattr, %struct.nfs_fattr* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @NFS_ATTR_FATTR_PRECTIME, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %77

58:                                               ; preds = %44
  %59 = load %struct.nfs_fattr*, %struct.nfs_fattr** %4, align 8
  %60 = getelementptr inbounds %struct.nfs_fattr, %struct.nfs_fattr* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @NFS_ATTR_FATTR_CTIME, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %77

65:                                               ; preds = %58
  %66 = load %struct.nfs_fattr*, %struct.nfs_fattr** %4, align 8
  %67 = getelementptr inbounds %struct.nfs_fattr, %struct.nfs_fattr* %66, i32 0, i32 6
  %68 = call i64 @timespec_equal(%struct.timespec* %5, i32* %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %77

70:                                               ; preds = %65
  %71 = load %struct.nfs_fattr*, %struct.nfs_fattr** %4, align 8
  %72 = getelementptr inbounds %struct.nfs_fattr, %struct.nfs_fattr* %71, i32 0, i32 5
  %73 = load i32, i32* %72, align 4
  %74 = call i8* @timespec_to_timespec64(i32 %73)
  %75 = load %struct.inode*, %struct.inode** %3, align 8
  %76 = getelementptr inbounds %struct.inode, %struct.inode* %75, i32 0, i32 2
  store i8* %74, i8** %76, align 8
  br label %77

77:                                               ; preds = %70, %65, %58, %44
  %78 = load %struct.inode*, %struct.inode** %3, align 8
  %79 = getelementptr inbounds %struct.inode, %struct.inode* %78, i32 0, i32 1
  %80 = load i8*, i8** %79, align 8
  %81 = call i32 @timespec64_to_timespec(i8* %80)
  %82 = getelementptr inbounds %struct.timespec, %struct.timespec* %7, i32 0, i32 0
  store i32 %81, i32* %82, align 4
  %83 = bitcast %struct.timespec* %5 to i8*
  %84 = bitcast %struct.timespec* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %83, i8* align 4 %84, i64 4, i1 false)
  %85 = load %struct.nfs_fattr*, %struct.nfs_fattr** %4, align 8
  %86 = getelementptr inbounds %struct.nfs_fattr, %struct.nfs_fattr* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* @NFS_ATTR_FATTR_PREMTIME, align 4
  %89 = and i32 %87, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %120

91:                                               ; preds = %77
  %92 = load %struct.nfs_fattr*, %struct.nfs_fattr** %4, align 8
  %93 = getelementptr inbounds %struct.nfs_fattr, %struct.nfs_fattr* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* @NFS_ATTR_FATTR_MTIME, align 4
  %96 = and i32 %94, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %120

98:                                               ; preds = %91
  %99 = load %struct.nfs_fattr*, %struct.nfs_fattr** %4, align 8
  %100 = getelementptr inbounds %struct.nfs_fattr, %struct.nfs_fattr* %99, i32 0, i32 4
  %101 = call i64 @timespec_equal(%struct.timespec* %5, i32* %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %120

103:                                              ; preds = %98
  %104 = load %struct.nfs_fattr*, %struct.nfs_fattr** %4, align 8
  %105 = getelementptr inbounds %struct.nfs_fattr, %struct.nfs_fattr* %104, i32 0, i32 3
  %106 = load i32, i32* %105, align 4
  %107 = call i8* @timespec_to_timespec64(i32 %106)
  %108 = load %struct.inode*, %struct.inode** %3, align 8
  %109 = getelementptr inbounds %struct.inode, %struct.inode* %108, i32 0, i32 1
  store i8* %107, i8** %109, align 8
  %110 = load %struct.inode*, %struct.inode** %3, align 8
  %111 = getelementptr inbounds %struct.inode, %struct.inode* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = call i64 @S_ISDIR(i32 %112)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %119

115:                                              ; preds = %103
  %116 = load %struct.inode*, %struct.inode** %3, align 8
  %117 = load i32, i32* @NFS_INO_INVALID_DATA, align 4
  %118 = call i32 @nfs_set_cache_invalid(%struct.inode* %116, i32 %117)
  br label %119

119:                                              ; preds = %115, %103
  br label %120

120:                                              ; preds = %119, %98, %91, %77
  %121 = load %struct.nfs_fattr*, %struct.nfs_fattr** %4, align 8
  %122 = getelementptr inbounds %struct.nfs_fattr, %struct.nfs_fattr* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = load i32, i32* @NFS_ATTR_FATTR_PRESIZE, align 4
  %125 = and i32 %123, %124
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %153

127:                                              ; preds = %120
  %128 = load %struct.nfs_fattr*, %struct.nfs_fattr** %4, align 8
  %129 = getelementptr inbounds %struct.nfs_fattr, %struct.nfs_fattr* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = load i32, i32* @NFS_ATTR_FATTR_SIZE, align 4
  %132 = and i32 %130, %131
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %153

134:                                              ; preds = %127
  %135 = load %struct.inode*, %struct.inode** %3, align 8
  %136 = call i64 @i_size_read(%struct.inode* %135)
  %137 = load %struct.nfs_fattr*, %struct.nfs_fattr** %4, align 8
  %138 = getelementptr inbounds %struct.nfs_fattr, %struct.nfs_fattr* %137, i32 0, i32 2
  %139 = load i32, i32* %138, align 4
  %140 = call i64 @nfs_size_to_loff_t(i32 %139)
  %141 = icmp eq i64 %136, %140
  br i1 %141, label %142, label %153

142:                                              ; preds = %134
  %143 = load %struct.inode*, %struct.inode** %3, align 8
  %144 = call i32 @nfs_have_writebacks(%struct.inode* %143)
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %153, label %146

146:                                              ; preds = %142
  %147 = load %struct.inode*, %struct.inode** %3, align 8
  %148 = load %struct.nfs_fattr*, %struct.nfs_fattr** %4, align 8
  %149 = getelementptr inbounds %struct.nfs_fattr, %struct.nfs_fattr* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 4
  %151 = call i64 @nfs_size_to_loff_t(i32 %150)
  %152 = call i32 @i_size_write(%struct.inode* %147, i64 %151)
  br label %153

153:                                              ; preds = %146, %142, %134, %127, %120
  ret void
}

declare dso_local i64 @inode_eq_iversion_raw(%struct.inode*, i32) #1

declare dso_local i32 @inode_set_iversion_raw(%struct.inode*, i32) #1

declare dso_local i64 @S_ISDIR(i32) #1

declare dso_local i32 @nfs_set_cache_invalid(%struct.inode*, i32) #1

declare dso_local i32 @timespec64_to_timespec(i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @timespec_equal(%struct.timespec*, i32*) #1

declare dso_local i8* @timespec_to_timespec64(i32) #1

declare dso_local i64 @i_size_read(%struct.inode*) #1

declare dso_local i64 @nfs_size_to_loff_t(i32) #1

declare dso_local i32 @nfs_have_writebacks(%struct.inode*) #1

declare dso_local i32 @i_size_write(%struct.inode*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
