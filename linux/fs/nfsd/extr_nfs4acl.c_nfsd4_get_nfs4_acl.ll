; ModuleID = '/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4acl.c_nfsd4_get_nfs4_acl.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4acl.c_nfsd4_get_nfs4_acl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_rqst = type { i32 }
%struct.dentry = type { i32 }
%struct.nfs4_acl = type { i64 }
%struct.inode = type { i32 }
%struct.posix_acl = type { i32 }

@ACL_TYPE_ACCESS = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@NFS4_ACL_DIR = common dso_local global i32 0, align 4
@ACL_TYPE_DEFAULT = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@NFS4_ACL_TYPE_DEFAULT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfsd4_get_nfs4_acl(%struct.svc_rqst* %0, %struct.dentry* %1, %struct.nfs4_acl** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.svc_rqst*, align 8
  %6 = alloca %struct.dentry*, align 8
  %7 = alloca %struct.nfs4_acl**, align 8
  %8 = alloca %struct.inode*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.posix_acl*, align 8
  %11 = alloca %struct.posix_acl*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.svc_rqst* %0, %struct.svc_rqst** %5, align 8
  store %struct.dentry* %1, %struct.dentry** %6, align 8
  store %struct.nfs4_acl** %2, %struct.nfs4_acl*** %7, align 8
  %14 = load %struct.dentry*, %struct.dentry** %6, align 8
  %15 = call %struct.inode* @d_inode(%struct.dentry* %14)
  store %struct.inode* %15, %struct.inode** %8, align 8
  store i32 0, i32* %9, align 4
  store %struct.posix_acl* null, %struct.posix_acl** %10, align 8
  store %struct.posix_acl* null, %struct.posix_acl** %11, align 8
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %16 = load %struct.inode*, %struct.inode** %8, align 8
  %17 = load i32, i32* @ACL_TYPE_ACCESS, align 4
  %18 = call %struct.posix_acl* @get_acl(%struct.inode* %16, i32 %17)
  store %struct.posix_acl* %18, %struct.posix_acl** %10, align 8
  %19 = load %struct.posix_acl*, %struct.posix_acl** %10, align 8
  %20 = icmp ne %struct.posix_acl* %19, null
  br i1 %20, label %27, label %21

21:                                               ; preds = %3
  %22 = load %struct.inode*, %struct.inode** %8, align 8
  %23 = getelementptr inbounds %struct.inode, %struct.inode* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @GFP_KERNEL, align 4
  %26 = call %struct.posix_acl* @posix_acl_from_mode(i32 %24, i32 %25)
  store %struct.posix_acl* %26, %struct.posix_acl** %10, align 8
  br label %27

27:                                               ; preds = %21, %3
  %28 = load %struct.posix_acl*, %struct.posix_acl** %10, align 8
  %29 = call i64 @IS_ERR(%struct.posix_acl* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %27
  %32 = load %struct.posix_acl*, %struct.posix_acl** %10, align 8
  %33 = call i32 @PTR_ERR(%struct.posix_acl* %32)
  store i32 %33, i32* %4, align 4
  br label %110

34:                                               ; preds = %27
  %35 = load %struct.posix_acl*, %struct.posix_acl** %10, align 8
  %36 = getelementptr inbounds %struct.posix_acl, %struct.posix_acl* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = mul nsw i32 2, %37
  %39 = load i32, i32* %13, align 4
  %40 = add nsw i32 %39, %38
  store i32 %40, i32* %13, align 4
  %41 = load %struct.inode*, %struct.inode** %8, align 8
  %42 = getelementptr inbounds %struct.inode, %struct.inode* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i64 @S_ISDIR(i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %68

46:                                               ; preds = %34
  %47 = load i32, i32* @NFS4_ACL_DIR, align 4
  store i32 %47, i32* %12, align 4
  %48 = load %struct.inode*, %struct.inode** %8, align 8
  %49 = load i32, i32* @ACL_TYPE_DEFAULT, align 4
  %50 = call %struct.posix_acl* @get_acl(%struct.inode* %48, i32 %49)
  store %struct.posix_acl* %50, %struct.posix_acl** %11, align 8
  %51 = load %struct.posix_acl*, %struct.posix_acl** %11, align 8
  %52 = call i64 @IS_ERR(%struct.posix_acl* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %46
  %55 = load %struct.posix_acl*, %struct.posix_acl** %11, align 8
  %56 = call i32 @PTR_ERR(%struct.posix_acl* %55)
  store i32 %56, i32* %9, align 4
  br label %106

57:                                               ; preds = %46
  %58 = load %struct.posix_acl*, %struct.posix_acl** %11, align 8
  %59 = icmp ne %struct.posix_acl* %58, null
  br i1 %59, label %60, label %67

60:                                               ; preds = %57
  %61 = load %struct.posix_acl*, %struct.posix_acl** %11, align 8
  %62 = getelementptr inbounds %struct.posix_acl, %struct.posix_acl* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = mul nsw i32 2, %63
  %65 = load i32, i32* %13, align 4
  %66 = add nsw i32 %65, %64
  store i32 %66, i32* %13, align 4
  br label %67

67:                                               ; preds = %60, %57
  br label %68

68:                                               ; preds = %67, %34
  %69 = load i32, i32* %13, align 4
  %70 = call i32 @nfs4_acl_bytes(i32 %69)
  %71 = load i32, i32* @GFP_KERNEL, align 4
  %72 = call %struct.nfs4_acl* @kmalloc(i32 %70, i32 %71)
  %73 = load %struct.nfs4_acl**, %struct.nfs4_acl*** %7, align 8
  store %struct.nfs4_acl* %72, %struct.nfs4_acl** %73, align 8
  %74 = load %struct.nfs4_acl**, %struct.nfs4_acl*** %7, align 8
  %75 = load %struct.nfs4_acl*, %struct.nfs4_acl** %74, align 8
  %76 = icmp eq %struct.nfs4_acl* %75, null
  br i1 %76, label %77, label %80

77:                                               ; preds = %68
  %78 = load i32, i32* @ENOMEM, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %9, align 4
  br label %103

80:                                               ; preds = %68
  %81 = load %struct.nfs4_acl**, %struct.nfs4_acl*** %7, align 8
  %82 = load %struct.nfs4_acl*, %struct.nfs4_acl** %81, align 8
  %83 = getelementptr inbounds %struct.nfs4_acl, %struct.nfs4_acl* %82, i32 0, i32 0
  store i64 0, i64* %83, align 8
  %84 = load %struct.posix_acl*, %struct.posix_acl** %10, align 8
  %85 = load %struct.nfs4_acl**, %struct.nfs4_acl*** %7, align 8
  %86 = load %struct.nfs4_acl*, %struct.nfs4_acl** %85, align 8
  %87 = load i32, i32* %12, align 4
  %88 = load i32, i32* @NFS4_ACL_TYPE_DEFAULT, align 4
  %89 = xor i32 %88, -1
  %90 = and i32 %87, %89
  %91 = call i32 @_posix_to_nfsv4_one(%struct.posix_acl* %84, %struct.nfs4_acl* %86, i32 %90)
  %92 = load %struct.posix_acl*, %struct.posix_acl** %11, align 8
  %93 = icmp ne %struct.posix_acl* %92, null
  br i1 %93, label %94, label %102

94:                                               ; preds = %80
  %95 = load %struct.posix_acl*, %struct.posix_acl** %11, align 8
  %96 = load %struct.nfs4_acl**, %struct.nfs4_acl*** %7, align 8
  %97 = load %struct.nfs4_acl*, %struct.nfs4_acl** %96, align 8
  %98 = load i32, i32* %12, align 4
  %99 = load i32, i32* @NFS4_ACL_TYPE_DEFAULT, align 4
  %100 = or i32 %98, %99
  %101 = call i32 @_posix_to_nfsv4_one(%struct.posix_acl* %95, %struct.nfs4_acl* %97, i32 %100)
  br label %102

102:                                              ; preds = %94, %80
  br label %103

103:                                              ; preds = %102, %77
  %104 = load %struct.posix_acl*, %struct.posix_acl** %11, align 8
  %105 = call i32 @posix_acl_release(%struct.posix_acl* %104)
  br label %106

106:                                              ; preds = %103, %54
  %107 = load %struct.posix_acl*, %struct.posix_acl** %10, align 8
  %108 = call i32 @posix_acl_release(%struct.posix_acl* %107)
  %109 = load i32, i32* %9, align 4
  store i32 %109, i32* %4, align 4
  br label %110

110:                                              ; preds = %106, %31
  %111 = load i32, i32* %4, align 4
  ret i32 %111
}

declare dso_local %struct.inode* @d_inode(%struct.dentry*) #1

declare dso_local %struct.posix_acl* @get_acl(%struct.inode*, i32) #1

declare dso_local %struct.posix_acl* @posix_acl_from_mode(i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.posix_acl*) #1

declare dso_local i32 @PTR_ERR(%struct.posix_acl*) #1

declare dso_local i64 @S_ISDIR(i32) #1

declare dso_local %struct.nfs4_acl* @kmalloc(i32, i32) #1

declare dso_local i32 @nfs4_acl_bytes(i32) #1

declare dso_local i32 @_posix_to_nfsv4_one(%struct.posix_acl*, %struct.nfs4_acl*, i32) #1

declare dso_local i32 @posix_acl_release(%struct.posix_acl*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
