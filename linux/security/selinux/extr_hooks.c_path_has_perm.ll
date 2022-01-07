; ModuleID = '/home/carl/AnghaBench/linux/security/selinux/extr_hooks.c_path_has_perm.c'
source_filename = "/home/carl/AnghaBench/linux/security/selinux/extr_hooks.c_path_has_perm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cred = type { i32 }
%struct.path = type { i32 }
%struct.inode = type { i32 }
%struct.common_audit_data = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { %struct.path }

@LSM_AUDIT_DATA_PATH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cred*, %struct.path*, i32)* @path_has_perm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @path_has_perm(%struct.cred* %0, %struct.path* %1, i32 %2) #0 {
  %4 = alloca %struct.cred*, align 8
  %5 = alloca %struct.path*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.inode*, align 8
  %8 = alloca %struct.common_audit_data, align 4
  store %struct.cred* %0, %struct.cred** %4, align 8
  store %struct.path* %1, %struct.path** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.path*, %struct.path** %5, align 8
  %10 = getelementptr inbounds %struct.path, %struct.path* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.inode* @d_backing_inode(i32 %11)
  store %struct.inode* %12, %struct.inode** %7, align 8
  %13 = load i32, i32* @LSM_AUDIT_DATA_PATH, align 4
  %14 = getelementptr inbounds %struct.common_audit_data, %struct.common_audit_data* %8, i32 0, i32 1
  store i32 %13, i32* %14, align 4
  %15 = getelementptr inbounds %struct.common_audit_data, %struct.common_audit_data* %8, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load %struct.path*, %struct.path** %5, align 8
  %18 = bitcast %struct.path* %16 to i8*
  %19 = bitcast %struct.path* %17 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %18, i8* align 4 %19, i64 4, i1 false)
  %20 = load %struct.inode*, %struct.inode** %7, align 8
  %21 = load %struct.path*, %struct.path** %5, align 8
  %22 = getelementptr inbounds %struct.path, %struct.path* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @__inode_security_revalidate(%struct.inode* %20, i32 %23, i32 1)
  %25 = load %struct.cred*, %struct.cred** %4, align 8
  %26 = load %struct.inode*, %struct.inode** %7, align 8
  %27 = load i32, i32* %6, align 4
  %28 = call i32 @inode_has_perm(%struct.cred* %25, %struct.inode* %26, i32 %27, %struct.common_audit_data* %8)
  ret i32 %28
}

declare dso_local %struct.inode* @d_backing_inode(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @__inode_security_revalidate(%struct.inode*, i32, i32) #1

declare dso_local i32 @inode_has_perm(%struct.cred*, %struct.inode*, i32, %struct.common_audit_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
