; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_dir.c_nfs_lookup_revalidate_dentry.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_dir.c_nfs_lookup_revalidate_dentry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32 }
%struct.inode = type { i32 }
%struct.nfs_fh = type { i32 }
%struct.nfs_fattr = type { i32 }
%struct.nfs4_label = type { i32 }
%struct.TYPE_2__ = type { i32 (%struct.inode*, i32*, %struct.nfs_fh*, %struct.nfs_fattr*, %struct.nfs4_label*)* }

@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ESTALE = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.dentry*, %struct.inode*)* @nfs_lookup_revalidate_dentry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfs_lookup_revalidate_dentry(%struct.inode* %0, %struct.dentry* %1, %struct.inode* %2) #0 {
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.nfs_fh*, align 8
  %8 = alloca %struct.nfs_fattr*, align 8
  %9 = alloca %struct.nfs4_label*, align 8
  %10 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.dentry* %1, %struct.dentry** %5, align 8
  store %struct.inode* %2, %struct.inode** %6, align 8
  %11 = load i32, i32* @ENOMEM, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %10, align 4
  %13 = call %struct.nfs_fh* (...) @nfs_alloc_fhandle()
  store %struct.nfs_fh* %13, %struct.nfs_fh** %7, align 8
  %14 = call %struct.nfs_fattr* (...) @nfs_alloc_fattr()
  store %struct.nfs_fattr* %14, %struct.nfs_fattr** %8, align 8
  %15 = load %struct.inode*, %struct.inode** %6, align 8
  %16 = call i32 @NFS_SERVER(%struct.inode* %15)
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call %struct.nfs4_label* @nfs4_label_alloc(i32 %16, i32 %17)
  store %struct.nfs4_label* %18, %struct.nfs4_label** %9, align 8
  %19 = load %struct.nfs_fh*, %struct.nfs_fh** %7, align 8
  %20 = icmp eq %struct.nfs_fh* %19, null
  br i1 %20, label %28, label %21

21:                                               ; preds = %3
  %22 = load %struct.nfs_fattr*, %struct.nfs_fattr** %8, align 8
  %23 = icmp eq %struct.nfs_fattr* %22, null
  br i1 %23, label %28, label %24

24:                                               ; preds = %21
  %25 = load %struct.nfs4_label*, %struct.nfs4_label** %9, align 8
  %26 = call i64 @IS_ERR(%struct.nfs4_label* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %24, %21, %3
  br label %79

29:                                               ; preds = %24
  %30 = load %struct.inode*, %struct.inode** %4, align 8
  %31 = call %struct.TYPE_2__* @NFS_PROTO(%struct.inode* %30)
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32 (%struct.inode*, i32*, %struct.nfs_fh*, %struct.nfs_fattr*, %struct.nfs4_label*)*, i32 (%struct.inode*, i32*, %struct.nfs_fh*, %struct.nfs_fattr*, %struct.nfs4_label*)** %32, align 8
  %34 = load %struct.inode*, %struct.inode** %4, align 8
  %35 = load %struct.dentry*, %struct.dentry** %5, align 8
  %36 = getelementptr inbounds %struct.dentry, %struct.dentry* %35, i32 0, i32 0
  %37 = load %struct.nfs_fh*, %struct.nfs_fh** %7, align 8
  %38 = load %struct.nfs_fattr*, %struct.nfs_fattr** %8, align 8
  %39 = load %struct.nfs4_label*, %struct.nfs4_label** %9, align 8
  %40 = call i32 %33(%struct.inode* %34, i32* %36, %struct.nfs_fh* %37, %struct.nfs_fattr* %38, %struct.nfs4_label* %39)
  store i32 %40, i32* %10, align 4
  %41 = load i32, i32* %10, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %55

43:                                               ; preds = %29
  %44 = load i32, i32* %10, align 4
  %45 = load i32, i32* @ESTALE, align 4
  %46 = sub nsw i32 0, %45
  %47 = icmp eq i32 %44, %46
  br i1 %47, label %53, label %48

48:                                               ; preds = %43
  %49 = load i32, i32* %10, align 4
  %50 = load i32, i32* @ENOENT, align 4
  %51 = sub nsw i32 0, %50
  %52 = icmp eq i32 %49, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %48, %43
  store i32 0, i32* %10, align 4
  br label %54

54:                                               ; preds = %53, %48
  br label %79

55:                                               ; preds = %29
  store i32 0, i32* %10, align 4
  %56 = load %struct.inode*, %struct.inode** %6, align 8
  %57 = call i32 @NFS_FH(%struct.inode* %56)
  %58 = load %struct.nfs_fh*, %struct.nfs_fh** %7, align 8
  %59 = call i64 @nfs_compare_fh(i32 %57, %struct.nfs_fh* %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %55
  br label %79

62:                                               ; preds = %55
  %63 = load %struct.inode*, %struct.inode** %6, align 8
  %64 = load %struct.nfs_fattr*, %struct.nfs_fattr** %8, align 8
  %65 = call i64 @nfs_refresh_inode(%struct.inode* %63, %struct.nfs_fattr* %64)
  %66 = icmp slt i64 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %62
  br label %79

68:                                               ; preds = %62
  %69 = load %struct.inode*, %struct.inode** %6, align 8
  %70 = load %struct.nfs_fattr*, %struct.nfs_fattr** %8, align 8
  %71 = load %struct.nfs4_label*, %struct.nfs4_label** %9, align 8
  %72 = call i32 @nfs_setsecurity(%struct.inode* %69, %struct.nfs_fattr* %70, %struct.nfs4_label* %71)
  %73 = load %struct.dentry*, %struct.dentry** %5, align 8
  %74 = load %struct.inode*, %struct.inode** %4, align 8
  %75 = call i32 @nfs_save_change_attribute(%struct.inode* %74)
  %76 = call i32 @nfs_set_verifier(%struct.dentry* %73, i32 %75)
  %77 = load %struct.inode*, %struct.inode** %4, align 8
  %78 = call i32 @nfs_force_use_readdirplus(%struct.inode* %77)
  store i32 1, i32* %10, align 4
  br label %79

79:                                               ; preds = %68, %67, %61, %54, %28
  %80 = load %struct.nfs_fattr*, %struct.nfs_fattr** %8, align 8
  %81 = call i32 @nfs_free_fattr(%struct.nfs_fattr* %80)
  %82 = load %struct.nfs_fh*, %struct.nfs_fh** %7, align 8
  %83 = call i32 @nfs_free_fhandle(%struct.nfs_fh* %82)
  %84 = load %struct.nfs4_label*, %struct.nfs4_label** %9, align 8
  %85 = call i32 @nfs4_label_free(%struct.nfs4_label* %84)
  %86 = load %struct.inode*, %struct.inode** %4, align 8
  %87 = load %struct.dentry*, %struct.dentry** %5, align 8
  %88 = load %struct.inode*, %struct.inode** %6, align 8
  %89 = load i32, i32* %10, align 4
  %90 = call i32 @nfs_lookup_revalidate_done(%struct.inode* %86, %struct.dentry* %87, %struct.inode* %88, i32 %89)
  ret i32 %90
}

declare dso_local %struct.nfs_fh* @nfs_alloc_fhandle(...) #1

declare dso_local %struct.nfs_fattr* @nfs_alloc_fattr(...) #1

declare dso_local %struct.nfs4_label* @nfs4_label_alloc(i32, i32) #1

declare dso_local i32 @NFS_SERVER(%struct.inode*) #1

declare dso_local i64 @IS_ERR(%struct.nfs4_label*) #1

declare dso_local %struct.TYPE_2__* @NFS_PROTO(%struct.inode*) #1

declare dso_local i64 @nfs_compare_fh(i32, %struct.nfs_fh*) #1

declare dso_local i32 @NFS_FH(%struct.inode*) #1

declare dso_local i64 @nfs_refresh_inode(%struct.inode*, %struct.nfs_fattr*) #1

declare dso_local i32 @nfs_setsecurity(%struct.inode*, %struct.nfs_fattr*, %struct.nfs4_label*) #1

declare dso_local i32 @nfs_set_verifier(%struct.dentry*, i32) #1

declare dso_local i32 @nfs_save_change_attribute(%struct.inode*) #1

declare dso_local i32 @nfs_force_use_readdirplus(%struct.inode*) #1

declare dso_local i32 @nfs_free_fattr(%struct.nfs_fattr*) #1

declare dso_local i32 @nfs_free_fhandle(%struct.nfs_fh*) #1

declare dso_local i32 @nfs4_label_free(%struct.nfs4_label*) #1

declare dso_local i32 @nfs_lookup_revalidate_done(%struct.inode*, %struct.dentry*, %struct.inode*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
