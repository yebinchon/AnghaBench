; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_nfs3proc.c_nfs3_proc_mknod.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_nfs3proc.c_nfs3_proc_mknod.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.dentry = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32 }
%struct.iattr = type { i32 }
%struct.posix_acl = type { i32 }
%struct.nfs3_createdata = type { %struct.TYPE_8__, %struct.TYPE_5__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32, %struct.iattr*, i32, i32, i32 }
%struct.TYPE_5__ = type { i32* }

@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"NFS call  mknod %pd %u:%u\0A\00", align 1
@nfs3_procedures = common dso_local global i32* null, align 8
@NFS3PROC_MKNOD = common dso_local global i64 0, align 8
@S_IFMT = common dso_local global i32 0, align 4
@NF3BLK = common dso_local global i32 0, align 4
@NF3CHR = common dso_local global i32 0, align 4
@NF3FIFO = common dso_local global i32 0, align 4
@NF3SOCK = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"NFS reply mknod: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.dentry*, %struct.iattr*, i32)* @nfs3_proc_mknod to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfs3_proc_mknod(%struct.inode* %0, %struct.dentry* %1, %struct.iattr* %2, i32 %3) #0 {
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.dentry*, align 8
  %7 = alloca %struct.iattr*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.posix_acl*, align 8
  %10 = alloca %struct.posix_acl*, align 8
  %11 = alloca %struct.nfs3_createdata*, align 8
  %12 = alloca %struct.dentry*, align 8
  %13 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %5, align 8
  store %struct.dentry* %1, %struct.dentry** %6, align 8
  store %struct.iattr* %2, %struct.iattr** %7, align 8
  store i32 %3, i32* %8, align 4
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %13, align 4
  %16 = load %struct.dentry*, %struct.dentry** %6, align 8
  %17 = load i32, i32* %8, align 4
  %18 = call i32 @MAJOR(i32 %17)
  %19 = load i32, i32* %8, align 4
  %20 = call i32 @MINOR(i32 %19)
  %21 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), %struct.dentry* %16, i32 %18, i32 %20)
  %22 = call %struct.nfs3_createdata* (...) @nfs3_alloc_createdata()
  store %struct.nfs3_createdata* %22, %struct.nfs3_createdata** %11, align 8
  %23 = load %struct.nfs3_createdata*, %struct.nfs3_createdata** %11, align 8
  %24 = icmp eq %struct.nfs3_createdata* %23, null
  br i1 %24, label %25, label %26

25:                                               ; preds = %4
  br label %133

26:                                               ; preds = %4
  %27 = load %struct.inode*, %struct.inode** %5, align 8
  %28 = load %struct.iattr*, %struct.iattr** %7, align 8
  %29 = getelementptr inbounds %struct.iattr, %struct.iattr* %28, i32 0, i32 0
  %30 = call i32 @posix_acl_create(%struct.inode* %27, i32* %29, %struct.posix_acl** %9, %struct.posix_acl** %10)
  store i32 %30, i32* %13, align 4
  %31 = load i32, i32* %13, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %26
  br label %133

34:                                               ; preds = %26
  %35 = load i32*, i32** @nfs3_procedures, align 8
  %36 = load i64, i64* @NFS3PROC_MKNOD, align 8
  %37 = getelementptr inbounds i32, i32* %35, i64 %36
  %38 = load %struct.nfs3_createdata*, %struct.nfs3_createdata** %11, align 8
  %39 = getelementptr inbounds %struct.nfs3_createdata, %struct.nfs3_createdata* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  store i32* %37, i32** %40, align 8
  %41 = load %struct.inode*, %struct.inode** %5, align 8
  %42 = call i32 @NFS_FH(%struct.inode* %41)
  %43 = load %struct.nfs3_createdata*, %struct.nfs3_createdata** %11, align 8
  %44 = getelementptr inbounds %struct.nfs3_createdata, %struct.nfs3_createdata* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 5
  store i32 %42, i32* %46, align 8
  %47 = load %struct.dentry*, %struct.dentry** %6, align 8
  %48 = getelementptr inbounds %struct.dentry, %struct.dentry* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.nfs3_createdata*, %struct.nfs3_createdata** %11, align 8
  %52 = getelementptr inbounds %struct.nfs3_createdata, %struct.nfs3_createdata* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 4
  store i32 %50, i32* %54, align 4
  %55 = load %struct.dentry*, %struct.dentry** %6, align 8
  %56 = getelementptr inbounds %struct.dentry, %struct.dentry* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.nfs3_createdata*, %struct.nfs3_createdata** %11, align 8
  %60 = getelementptr inbounds %struct.nfs3_createdata, %struct.nfs3_createdata* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 3
  store i32 %58, i32* %62, align 8
  %63 = load %struct.iattr*, %struct.iattr** %7, align 8
  %64 = load %struct.nfs3_createdata*, %struct.nfs3_createdata** %11, align 8
  %65 = getelementptr inbounds %struct.nfs3_createdata, %struct.nfs3_createdata* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 2
  store %struct.iattr* %63, %struct.iattr** %67, align 8
  %68 = load i32, i32* %8, align 4
  %69 = load %struct.nfs3_createdata*, %struct.nfs3_createdata** %11, align 8
  %70 = getelementptr inbounds %struct.nfs3_createdata, %struct.nfs3_createdata* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 1
  store i32 %68, i32* %72, align 4
  %73 = load %struct.iattr*, %struct.iattr** %7, align 8
  %74 = getelementptr inbounds %struct.iattr, %struct.iattr* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* @S_IFMT, align 4
  %77 = and i32 %75, %76
  switch i32 %77, label %102 [
    i32 131, label %78
    i32 130, label %84
    i32 129, label %90
    i32 128, label %96
  ]

78:                                               ; preds = %34
  %79 = load i32, i32* @NF3BLK, align 4
  %80 = load %struct.nfs3_createdata*, %struct.nfs3_createdata** %11, align 8
  %81 = getelementptr inbounds %struct.nfs3_createdata, %struct.nfs3_createdata* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i32 0, i32 0
  store i32 %79, i32* %83, align 8
  br label %105

84:                                               ; preds = %34
  %85 = load i32, i32* @NF3CHR, align 4
  %86 = load %struct.nfs3_createdata*, %struct.nfs3_createdata** %11, align 8
  %87 = getelementptr inbounds %struct.nfs3_createdata, %struct.nfs3_createdata* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %88, i32 0, i32 0
  store i32 %85, i32* %89, align 8
  br label %105

90:                                               ; preds = %34
  %91 = load i32, i32* @NF3FIFO, align 4
  %92 = load %struct.nfs3_createdata*, %struct.nfs3_createdata** %11, align 8
  %93 = getelementptr inbounds %struct.nfs3_createdata, %struct.nfs3_createdata* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %94, i32 0, i32 0
  store i32 %91, i32* %95, align 8
  br label %105

96:                                               ; preds = %34
  %97 = load i32, i32* @NF3SOCK, align 4
  %98 = load %struct.nfs3_createdata*, %struct.nfs3_createdata** %11, align 8
  %99 = getelementptr inbounds %struct.nfs3_createdata, %struct.nfs3_createdata* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %100, i32 0, i32 0
  store i32 %97, i32* %101, align 8
  br label %105

102:                                              ; preds = %34
  %103 = load i32, i32* @EINVAL, align 4
  %104 = sub nsw i32 0, %103
  store i32 %104, i32* %13, align 4
  br label %133

105:                                              ; preds = %96, %90, %84, %78
  %106 = load %struct.inode*, %struct.inode** %5, align 8
  %107 = load %struct.dentry*, %struct.dentry** %6, align 8
  %108 = load %struct.nfs3_createdata*, %struct.nfs3_createdata** %11, align 8
  %109 = call %struct.dentry* @nfs3_do_create(%struct.inode* %106, %struct.dentry* %107, %struct.nfs3_createdata* %108)
  store %struct.dentry* %109, %struct.dentry** %12, align 8
  %110 = load %struct.dentry*, %struct.dentry** %12, align 8
  %111 = call i32 @PTR_ERR_OR_ZERO(%struct.dentry* %110)
  store i32 %111, i32* %13, align 4
  %112 = load i32, i32* %13, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %115

114:                                              ; preds = %105
  br label %128

115:                                              ; preds = %105
  %116 = load %struct.dentry*, %struct.dentry** %12, align 8
  %117 = icmp ne %struct.dentry* %116, null
  br i1 %117, label %118, label %120

118:                                              ; preds = %115
  %119 = load %struct.dentry*, %struct.dentry** %12, align 8
  store %struct.dentry* %119, %struct.dentry** %6, align 8
  br label %120

120:                                              ; preds = %118, %115
  %121 = load %struct.dentry*, %struct.dentry** %6, align 8
  %122 = call i32 @d_inode(%struct.dentry* %121)
  %123 = load %struct.posix_acl*, %struct.posix_acl** %10, align 8
  %124 = load %struct.posix_acl*, %struct.posix_acl** %9, align 8
  %125 = call i32 @nfs3_proc_setacls(i32 %122, %struct.posix_acl* %123, %struct.posix_acl* %124)
  store i32 %125, i32* %13, align 4
  %126 = load %struct.dentry*, %struct.dentry** %12, align 8
  %127 = call i32 @dput(%struct.dentry* %126)
  br label %128

128:                                              ; preds = %120, %114
  %129 = load %struct.posix_acl*, %struct.posix_acl** %10, align 8
  %130 = call i32 @posix_acl_release(%struct.posix_acl* %129)
  %131 = load %struct.posix_acl*, %struct.posix_acl** %9, align 8
  %132 = call i32 @posix_acl_release(%struct.posix_acl* %131)
  br label %133

133:                                              ; preds = %128, %102, %33, %25
  %134 = load %struct.nfs3_createdata*, %struct.nfs3_createdata** %11, align 8
  %135 = call i32 @nfs3_free_createdata(%struct.nfs3_createdata* %134)
  %136 = load i32, i32* %13, align 4
  %137 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %136)
  %138 = load i32, i32* %13, align 4
  ret i32 %138
}

declare dso_local i32 @dprintk(i8*, ...) #1

declare dso_local i32 @MAJOR(i32) #1

declare dso_local i32 @MINOR(i32) #1

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
