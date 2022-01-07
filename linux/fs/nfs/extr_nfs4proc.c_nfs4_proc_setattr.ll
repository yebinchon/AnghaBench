; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4proc.c_nfs4_proc_setattr.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4proc.c_nfs4_proc_setattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32 }
%struct.nfs_fattr = type { i32 }
%struct.iattr = type { i32, i64, i32 }
%struct.inode = type { i32 }
%struct.cred = type { i32 }
%struct.nfs_open_context = type { %struct.cred* }
%struct.nfs4_label = type { i32 }

@ATTR_SIZE = common dso_local global i32 0, align 4
@ATTR_OPEN = common dso_local global i32 0, align 4
@ATTR_MTIME = common dso_local global i32 0, align 4
@ATTR_CTIME = common dso_local global i32 0, align 4
@ATTR_FILE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ATTR_MODE = common dso_local global i32 0, align 4
@ATTR_UID = common dso_local global i32 0, align 4
@ATTR_GID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dentry*, %struct.nfs_fattr*, %struct.iattr*)* @nfs4_proc_setattr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfs4_proc_setattr(%struct.dentry* %0, %struct.nfs_fattr* %1, %struct.iattr* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca %struct.nfs_fattr*, align 8
  %7 = alloca %struct.iattr*, align 8
  %8 = alloca %struct.inode*, align 8
  %9 = alloca %struct.cred*, align 8
  %10 = alloca %struct.nfs_open_context*, align 8
  %11 = alloca %struct.nfs4_label*, align 8
  %12 = alloca i32, align 4
  store %struct.dentry* %0, %struct.dentry** %5, align 8
  store %struct.nfs_fattr* %1, %struct.nfs_fattr** %6, align 8
  store %struct.iattr* %2, %struct.iattr** %7, align 8
  %13 = load %struct.dentry*, %struct.dentry** %5, align 8
  %14 = call %struct.inode* @d_inode(%struct.dentry* %13)
  store %struct.inode* %14, %struct.inode** %8, align 8
  store %struct.cred* null, %struct.cred** %9, align 8
  store %struct.nfs_open_context* null, %struct.nfs_open_context** %10, align 8
  store %struct.nfs4_label* null, %struct.nfs4_label** %11, align 8
  %15 = load %struct.inode*, %struct.inode** %8, align 8
  %16 = call i64 @pnfs_ld_layoutret_on_setattr(%struct.inode* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %35

18:                                               ; preds = %3
  %19 = load %struct.iattr*, %struct.iattr** %7, align 8
  %20 = getelementptr inbounds %struct.iattr, %struct.iattr* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @ATTR_SIZE, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %35

25:                                               ; preds = %18
  %26 = load %struct.iattr*, %struct.iattr** %7, align 8
  %27 = getelementptr inbounds %struct.iattr, %struct.iattr* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.inode*, %struct.inode** %8, align 8
  %30 = call i64 @i_size_read(%struct.inode* %29)
  %31 = icmp slt i64 %28, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %25
  %33 = load %struct.inode*, %struct.inode** %8, align 8
  %34 = call i32 @pnfs_commit_and_return_layout(%struct.inode* %33)
  br label %35

35:                                               ; preds = %32, %25, %18, %3
  %36 = load %struct.nfs_fattr*, %struct.nfs_fattr** %6, align 8
  %37 = call i32 @nfs_fattr_init(%struct.nfs_fattr* %36)
  %38 = load %struct.iattr*, %struct.iattr** %7, align 8
  %39 = getelementptr inbounds %struct.iattr, %struct.iattr* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @ATTR_OPEN, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %53

44:                                               ; preds = %35
  %45 = load i32, i32* @ATTR_MTIME, align 4
  %46 = load i32, i32* @ATTR_CTIME, align 4
  %47 = or i32 %45, %46
  %48 = xor i32 %47, -1
  %49 = load %struct.iattr*, %struct.iattr** %7, align 8
  %50 = getelementptr inbounds %struct.iattr, %struct.iattr* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = and i32 %51, %48
  store i32 %52, i32* %50, align 8
  br label %53

53:                                               ; preds = %44, %35
  %54 = load %struct.iattr*, %struct.iattr** %7, align 8
  %55 = getelementptr inbounds %struct.iattr, %struct.iattr* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* @ATTR_FILE, align 4
  %58 = load i32, i32* @ATTR_OPEN, align 4
  %59 = or i32 %57, %58
  %60 = xor i32 %59, -1
  %61 = and i32 %56, %60
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %53
  store i32 0, i32* %4, align 4
  br label %131

64:                                               ; preds = %53
  %65 = load %struct.iattr*, %struct.iattr** %7, align 8
  %66 = getelementptr inbounds %struct.iattr, %struct.iattr* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* @ATTR_FILE, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %83

71:                                               ; preds = %64
  %72 = load %struct.iattr*, %struct.iattr** %7, align 8
  %73 = getelementptr inbounds %struct.iattr, %struct.iattr* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 8
  %75 = call %struct.nfs_open_context* @nfs_file_open_context(i32 %74)
  store %struct.nfs_open_context* %75, %struct.nfs_open_context** %10, align 8
  %76 = load %struct.nfs_open_context*, %struct.nfs_open_context** %10, align 8
  %77 = icmp ne %struct.nfs_open_context* %76, null
  br i1 %77, label %78, label %82

78:                                               ; preds = %71
  %79 = load %struct.nfs_open_context*, %struct.nfs_open_context** %10, align 8
  %80 = getelementptr inbounds %struct.nfs_open_context, %struct.nfs_open_context* %79, i32 0, i32 0
  %81 = load %struct.cred*, %struct.cred** %80, align 8
  store %struct.cred* %81, %struct.cred** %9, align 8
  br label %82

82:                                               ; preds = %78, %71
  br label %83

83:                                               ; preds = %82, %64
  %84 = load %struct.inode*, %struct.inode** %8, align 8
  %85 = call i32 @NFS_SERVER(%struct.inode* %84)
  %86 = load i32, i32* @GFP_KERNEL, align 4
  %87 = call %struct.nfs4_label* @nfs4_label_alloc(i32 %85, i32 %86)
  store %struct.nfs4_label* %87, %struct.nfs4_label** %11, align 8
  %88 = load %struct.nfs4_label*, %struct.nfs4_label** %11, align 8
  %89 = call i64 @IS_ERR(%struct.nfs4_label* %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %94

91:                                               ; preds = %83
  %92 = load %struct.nfs4_label*, %struct.nfs4_label** %11, align 8
  %93 = call i32 @PTR_ERR(%struct.nfs4_label* %92)
  store i32 %93, i32* %4, align 4
  br label %131

94:                                               ; preds = %83
  %95 = load %struct.iattr*, %struct.iattr** %7, align 8
  %96 = getelementptr inbounds %struct.iattr, %struct.iattr* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = load i32, i32* @ATTR_MODE, align 4
  %99 = load i32, i32* @ATTR_UID, align 4
  %100 = or i32 %98, %99
  %101 = load i32, i32* @ATTR_GID, align 4
  %102 = or i32 %100, %101
  %103 = and i32 %97, %102
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %108

105:                                              ; preds = %94
  %106 = load %struct.inode*, %struct.inode** %8, align 8
  %107 = call i32 @nfs4_inode_make_writeable(%struct.inode* %106)
  br label %108

108:                                              ; preds = %105, %94
  %109 = load %struct.inode*, %struct.inode** %8, align 8
  %110 = load %struct.cred*, %struct.cred** %9, align 8
  %111 = load %struct.nfs_fattr*, %struct.nfs_fattr** %6, align 8
  %112 = load %struct.iattr*, %struct.iattr** %7, align 8
  %113 = load %struct.nfs_open_context*, %struct.nfs_open_context** %10, align 8
  %114 = load %struct.nfs4_label*, %struct.nfs4_label** %11, align 8
  %115 = call i32 @nfs4_do_setattr(%struct.inode* %109, %struct.cred* %110, %struct.nfs_fattr* %111, %struct.iattr* %112, %struct.nfs_open_context* %113, i32* null, %struct.nfs4_label* %114)
  store i32 %115, i32* %12, align 4
  %116 = load i32, i32* %12, align 4
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %118, label %127

118:                                              ; preds = %108
  %119 = load %struct.inode*, %struct.inode** %8, align 8
  %120 = load %struct.iattr*, %struct.iattr** %7, align 8
  %121 = load %struct.nfs_fattr*, %struct.nfs_fattr** %6, align 8
  %122 = call i32 @nfs_setattr_update_inode(%struct.inode* %119, %struct.iattr* %120, %struct.nfs_fattr* %121)
  %123 = load %struct.inode*, %struct.inode** %8, align 8
  %124 = load %struct.nfs_fattr*, %struct.nfs_fattr** %6, align 8
  %125 = load %struct.nfs4_label*, %struct.nfs4_label** %11, align 8
  %126 = call i32 @nfs_setsecurity(%struct.inode* %123, %struct.nfs_fattr* %124, %struct.nfs4_label* %125)
  br label %127

127:                                              ; preds = %118, %108
  %128 = load %struct.nfs4_label*, %struct.nfs4_label** %11, align 8
  %129 = call i32 @nfs4_label_free(%struct.nfs4_label* %128)
  %130 = load i32, i32* %12, align 4
  store i32 %130, i32* %4, align 4
  br label %131

131:                                              ; preds = %127, %91, %63
  %132 = load i32, i32* %4, align 4
  ret i32 %132
}

declare dso_local %struct.inode* @d_inode(%struct.dentry*) #1

declare dso_local i64 @pnfs_ld_layoutret_on_setattr(%struct.inode*) #1

declare dso_local i64 @i_size_read(%struct.inode*) #1

declare dso_local i32 @pnfs_commit_and_return_layout(%struct.inode*) #1

declare dso_local i32 @nfs_fattr_init(%struct.nfs_fattr*) #1

declare dso_local %struct.nfs_open_context* @nfs_file_open_context(i32) #1

declare dso_local %struct.nfs4_label* @nfs4_label_alloc(i32, i32) #1

declare dso_local i32 @NFS_SERVER(%struct.inode*) #1

declare dso_local i64 @IS_ERR(%struct.nfs4_label*) #1

declare dso_local i32 @PTR_ERR(%struct.nfs4_label*) #1

declare dso_local i32 @nfs4_inode_make_writeable(%struct.inode*) #1

declare dso_local i32 @nfs4_do_setattr(%struct.inode*, %struct.cred*, %struct.nfs_fattr*, %struct.iattr*, %struct.nfs_open_context*, i32*, %struct.nfs4_label*) #1

declare dso_local i32 @nfs_setattr_update_inode(%struct.inode*, %struct.iattr*, %struct.nfs_fattr*) #1

declare dso_local i32 @nfs_setsecurity(%struct.inode*, %struct.nfs_fattr*, %struct.nfs4_label*) #1

declare dso_local i32 @nfs4_label_free(%struct.nfs4_label*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
