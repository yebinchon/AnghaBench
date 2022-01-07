; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_nfs3proc.c_nfs3_proc_symlink.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_nfs3proc.c_nfs3_proc_symlink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.dentry = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32 }
%struct.page = type { i32 }
%struct.iattr = type { i32 }
%struct.nfs3_createdata = type { %struct.TYPE_8__, %struct.TYPE_5__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, %struct.iattr*, %struct.page**, i32, i32, i32 }
%struct.TYPE_5__ = type { i32* }

@ENOMEM = common dso_local global i32 0, align 4
@NFS3_MAXPATHLEN = common dso_local global i32 0, align 4
@ENAMETOOLONG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"NFS call  symlink %pd\0A\00", align 1
@nfs3_procedures = common dso_local global i32* null, align 8
@NFS3PROC_SYMLINK = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [23 x i8] c"NFS reply symlink: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.dentry*, %struct.page*, i32, %struct.iattr*)* @nfs3_proc_symlink to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfs3_proc_symlink(%struct.inode* %0, %struct.dentry* %1, %struct.page* %2, i32 %3, %struct.iattr* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.inode*, align 8
  %8 = alloca %struct.dentry*, align 8
  %9 = alloca %struct.page*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.iattr*, align 8
  %12 = alloca %struct.nfs3_createdata*, align 8
  %13 = alloca %struct.dentry*, align 8
  %14 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %7, align 8
  store %struct.dentry* %1, %struct.dentry** %8, align 8
  store %struct.page* %2, %struct.page** %9, align 8
  store i32 %3, i32* %10, align 4
  store %struct.iattr* %4, %struct.iattr** %11, align 8
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %14, align 4
  %17 = load i32, i32* %10, align 4
  %18 = load i32, i32* @NFS3_MAXPATHLEN, align 4
  %19 = icmp ugt i32 %17, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %5
  %21 = load i32, i32* @ENAMETOOLONG, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %6, align 4
  br label %91

23:                                               ; preds = %5
  %24 = load %struct.dentry*, %struct.dentry** %8, align 8
  %25 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), %struct.dentry* %24)
  %26 = call %struct.nfs3_createdata* (...) @nfs3_alloc_createdata()
  store %struct.nfs3_createdata* %26, %struct.nfs3_createdata** %12, align 8
  %27 = load %struct.nfs3_createdata*, %struct.nfs3_createdata** %12, align 8
  %28 = icmp eq %struct.nfs3_createdata* %27, null
  br i1 %28, label %29, label %30

29:                                               ; preds = %23
  br label %87

30:                                               ; preds = %23
  %31 = load i32*, i32** @nfs3_procedures, align 8
  %32 = load i64, i64* @NFS3PROC_SYMLINK, align 8
  %33 = getelementptr inbounds i32, i32* %31, i64 %32
  %34 = load %struct.nfs3_createdata*, %struct.nfs3_createdata** %12, align 8
  %35 = getelementptr inbounds %struct.nfs3_createdata, %struct.nfs3_createdata* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  store i32* %33, i32** %36, align 8
  %37 = load %struct.inode*, %struct.inode** %7, align 8
  %38 = call i32 @NFS_FH(%struct.inode* %37)
  %39 = load %struct.nfs3_createdata*, %struct.nfs3_createdata** %12, align 8
  %40 = getelementptr inbounds %struct.nfs3_createdata, %struct.nfs3_createdata* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 5
  store i32 %38, i32* %42, align 8
  %43 = load %struct.dentry*, %struct.dentry** %8, align 8
  %44 = getelementptr inbounds %struct.dentry, %struct.dentry* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.nfs3_createdata*, %struct.nfs3_createdata** %12, align 8
  %48 = getelementptr inbounds %struct.nfs3_createdata, %struct.nfs3_createdata* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 4
  store i32 %46, i32* %50, align 4
  %51 = load %struct.dentry*, %struct.dentry** %8, align 8
  %52 = getelementptr inbounds %struct.dentry, %struct.dentry* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.nfs3_createdata*, %struct.nfs3_createdata** %12, align 8
  %56 = getelementptr inbounds %struct.nfs3_createdata, %struct.nfs3_createdata* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 3
  store i32 %54, i32* %58, align 8
  %59 = load %struct.nfs3_createdata*, %struct.nfs3_createdata** %12, align 8
  %60 = getelementptr inbounds %struct.nfs3_createdata, %struct.nfs3_createdata* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 2
  store %struct.page** %9, %struct.page*** %62, align 8
  %63 = load i32, i32* %10, align 4
  %64 = load %struct.nfs3_createdata*, %struct.nfs3_createdata** %12, align 8
  %65 = getelementptr inbounds %struct.nfs3_createdata, %struct.nfs3_createdata* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 0
  store i32 %63, i32* %67, align 8
  %68 = load %struct.iattr*, %struct.iattr** %11, align 8
  %69 = load %struct.nfs3_createdata*, %struct.nfs3_createdata** %12, align 8
  %70 = getelementptr inbounds %struct.nfs3_createdata, %struct.nfs3_createdata* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 1
  store %struct.iattr* %68, %struct.iattr** %72, align 8
  %73 = load %struct.inode*, %struct.inode** %7, align 8
  %74 = load %struct.dentry*, %struct.dentry** %8, align 8
  %75 = load %struct.nfs3_createdata*, %struct.nfs3_createdata** %12, align 8
  %76 = call %struct.dentry* @nfs3_do_create(%struct.inode* %73, %struct.dentry* %74, %struct.nfs3_createdata* %75)
  store %struct.dentry* %76, %struct.dentry** %13, align 8
  %77 = load %struct.dentry*, %struct.dentry** %13, align 8
  %78 = call i32 @PTR_ERR_OR_ZERO(%struct.dentry* %77)
  store i32 %78, i32* %14, align 4
  %79 = load i32, i32* %14, align 4
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %30
  %82 = load %struct.dentry*, %struct.dentry** %13, align 8
  %83 = call i32 @dput(%struct.dentry* %82)
  br label %84

84:                                               ; preds = %81, %30
  %85 = load %struct.nfs3_createdata*, %struct.nfs3_createdata** %12, align 8
  %86 = call i32 @nfs3_free_createdata(%struct.nfs3_createdata* %85)
  br label %87

87:                                               ; preds = %84, %29
  %88 = load i32, i32* %14, align 4
  %89 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %88)
  %90 = load i32, i32* %14, align 4
  store i32 %90, i32* %6, align 4
  br label %91

91:                                               ; preds = %87, %20
  %92 = load i32, i32* %6, align 4
  ret i32 %92
}

declare dso_local i32 @dprintk(i8*, ...) #1

declare dso_local %struct.nfs3_createdata* @nfs3_alloc_createdata(...) #1

declare dso_local i32 @NFS_FH(%struct.inode*) #1

declare dso_local %struct.dentry* @nfs3_do_create(%struct.inode*, %struct.dentry*, %struct.nfs3_createdata*) #1

declare dso_local i32 @PTR_ERR_OR_ZERO(%struct.dentry*) #1

declare dso_local i32 @dput(%struct.dentry*) #1

declare dso_local i32 @nfs3_free_createdata(%struct.nfs3_createdata*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
