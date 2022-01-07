; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_nfs3proc.c_nfs3_proc_mkdir.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_nfs3proc.c_nfs3_proc_mkdir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.dentry = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32 }
%struct.iattr = type { i32 }
%struct.posix_acl = type { i32 }
%struct.nfs3_createdata = type { %struct.TYPE_8__, %struct.TYPE_5__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.iattr*, i32, i32, i32 }
%struct.TYPE_5__ = type { i32* }

@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"NFS call  mkdir %pd\0A\00", align 1
@nfs3_procedures = common dso_local global i32* null, align 8
@NFS3PROC_MKDIR = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [21 x i8] c"NFS reply mkdir: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.dentry*, %struct.iattr*)* @nfs3_proc_mkdir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfs3_proc_mkdir(%struct.inode* %0, %struct.dentry* %1, %struct.iattr* %2) #0 {
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca %struct.iattr*, align 8
  %7 = alloca %struct.posix_acl*, align 8
  %8 = alloca %struct.posix_acl*, align 8
  %9 = alloca %struct.nfs3_createdata*, align 8
  %10 = alloca %struct.dentry*, align 8
  %11 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.dentry* %1, %struct.dentry** %5, align 8
  store %struct.iattr* %2, %struct.iattr** %6, align 8
  %12 = load i32, i32* @ENOMEM, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %11, align 4
  %14 = load %struct.dentry*, %struct.dentry** %5, align 8
  %15 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), %struct.dentry* %14)
  %16 = call %struct.nfs3_createdata* (...) @nfs3_alloc_createdata()
  store %struct.nfs3_createdata* %16, %struct.nfs3_createdata** %9, align 8
  %17 = load %struct.nfs3_createdata*, %struct.nfs3_createdata** %9, align 8
  %18 = icmp eq %struct.nfs3_createdata* %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %3
  br label %89

20:                                               ; preds = %3
  %21 = load %struct.inode*, %struct.inode** %4, align 8
  %22 = load %struct.iattr*, %struct.iattr** %6, align 8
  %23 = getelementptr inbounds %struct.iattr, %struct.iattr* %22, i32 0, i32 0
  %24 = call i32 @posix_acl_create(%struct.inode* %21, i32* %23, %struct.posix_acl** %7, %struct.posix_acl** %8)
  store i32 %24, i32* %11, align 4
  %25 = load i32, i32* %11, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %20
  br label %89

28:                                               ; preds = %20
  %29 = load i32*, i32** @nfs3_procedures, align 8
  %30 = load i64, i64* @NFS3PROC_MKDIR, align 8
  %31 = getelementptr inbounds i32, i32* %29, i64 %30
  %32 = load %struct.nfs3_createdata*, %struct.nfs3_createdata** %9, align 8
  %33 = getelementptr inbounds %struct.nfs3_createdata, %struct.nfs3_createdata* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  store i32* %31, i32** %34, align 8
  %35 = load %struct.inode*, %struct.inode** %4, align 8
  %36 = call i32 @NFS_FH(%struct.inode* %35)
  %37 = load %struct.nfs3_createdata*, %struct.nfs3_createdata** %9, align 8
  %38 = getelementptr inbounds %struct.nfs3_createdata, %struct.nfs3_createdata* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 3
  store i32 %36, i32* %40, align 8
  %41 = load %struct.dentry*, %struct.dentry** %5, align 8
  %42 = getelementptr inbounds %struct.dentry, %struct.dentry* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.nfs3_createdata*, %struct.nfs3_createdata** %9, align 8
  %46 = getelementptr inbounds %struct.nfs3_createdata, %struct.nfs3_createdata* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 2
  store i32 %44, i32* %48, align 4
  %49 = load %struct.dentry*, %struct.dentry** %5, align 8
  %50 = getelementptr inbounds %struct.dentry, %struct.dentry* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.nfs3_createdata*, %struct.nfs3_createdata** %9, align 8
  %54 = getelementptr inbounds %struct.nfs3_createdata, %struct.nfs3_createdata* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 1
  store i32 %52, i32* %56, align 8
  %57 = load %struct.iattr*, %struct.iattr** %6, align 8
  %58 = load %struct.nfs3_createdata*, %struct.nfs3_createdata** %9, align 8
  %59 = getelementptr inbounds %struct.nfs3_createdata, %struct.nfs3_createdata* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 0
  store %struct.iattr* %57, %struct.iattr** %61, align 8
  %62 = load %struct.inode*, %struct.inode** %4, align 8
  %63 = load %struct.dentry*, %struct.dentry** %5, align 8
  %64 = load %struct.nfs3_createdata*, %struct.nfs3_createdata** %9, align 8
  %65 = call %struct.dentry* @nfs3_do_create(%struct.inode* %62, %struct.dentry* %63, %struct.nfs3_createdata* %64)
  store %struct.dentry* %65, %struct.dentry** %10, align 8
  %66 = load %struct.dentry*, %struct.dentry** %10, align 8
  %67 = call i32 @PTR_ERR_OR_ZERO(%struct.dentry* %66)
  store i32 %67, i32* %11, align 4
  %68 = load i32, i32* %11, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %28
  br label %84

71:                                               ; preds = %28
  %72 = load %struct.dentry*, %struct.dentry** %10, align 8
  %73 = icmp ne %struct.dentry* %72, null
  br i1 %73, label %74, label %76

74:                                               ; preds = %71
  %75 = load %struct.dentry*, %struct.dentry** %10, align 8
  store %struct.dentry* %75, %struct.dentry** %5, align 8
  br label %76

76:                                               ; preds = %74, %71
  %77 = load %struct.dentry*, %struct.dentry** %5, align 8
  %78 = call i32 @d_inode(%struct.dentry* %77)
  %79 = load %struct.posix_acl*, %struct.posix_acl** %8, align 8
  %80 = load %struct.posix_acl*, %struct.posix_acl** %7, align 8
  %81 = call i32 @nfs3_proc_setacls(i32 %78, %struct.posix_acl* %79, %struct.posix_acl* %80)
  store i32 %81, i32* %11, align 4
  %82 = load %struct.dentry*, %struct.dentry** %10, align 8
  %83 = call i32 @dput(%struct.dentry* %82)
  br label %84

84:                                               ; preds = %76, %70
  %85 = load %struct.posix_acl*, %struct.posix_acl** %8, align 8
  %86 = call i32 @posix_acl_release(%struct.posix_acl* %85)
  %87 = load %struct.posix_acl*, %struct.posix_acl** %7, align 8
  %88 = call i32 @posix_acl_release(%struct.posix_acl* %87)
  br label %89

89:                                               ; preds = %84, %27, %19
  %90 = load %struct.nfs3_createdata*, %struct.nfs3_createdata** %9, align 8
  %91 = call i32 @nfs3_free_createdata(%struct.nfs3_createdata* %90)
  %92 = load i32, i32* %11, align 4
  %93 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %92)
  %94 = load i32, i32* %11, align 4
  ret i32 %94
}

declare dso_local i32 @dprintk(i8*, ...) #1

declare dso_local %struct.nfs3_createdata* @nfs3_alloc_createdata(...) #1

declare dso_local i32 @posix_acl_create(%struct.inode*, i32*, %struct.posix_acl**, %struct.posix_acl**) #1

declare dso_local i32 @NFS_FH(%struct.inode*) #1

declare dso_local %struct.dentry* @nfs3_do_create(%struct.inode*, %struct.dentry*, %struct.nfs3_createdata*) #1

declare dso_local i32 @PTR_ERR_OR_ZERO(%struct.dentry*) #1

declare dso_local i32 @nfs3_proc_setacls(i32, %struct.posix_acl*, %struct.posix_acl*) #1

declare dso_local i32 @d_inode(%struct.dentry*) #1

declare dso_local i32 @dput(%struct.dentry*) #1

declare dso_local i32 @posix_acl_release(%struct.posix_acl*) #1

declare dso_local i32 @nfs3_free_createdata(%struct.nfs3_createdata*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
