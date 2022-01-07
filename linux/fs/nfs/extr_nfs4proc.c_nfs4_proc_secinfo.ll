; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4proc.c_nfs4_proc_secinfo.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4proc.c_nfs4_proc_secinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs4_exception = type { i32, i64 }
%struct.inode = type { i32 }
%struct.qstr = type { i32 }
%struct.nfs4_secinfo_flavors = type { i32 }
%struct.TYPE_3__ = type { i32 }

@__const.nfs4_proc_secinfo.exception = private unnamed_addr constant %struct.nfs4_exception { i32 1, i64 0 }, align 8
@NFS4ERR_WRONGSEC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfs4_proc_secinfo(%struct.inode* %0, %struct.qstr* %1, %struct.nfs4_secinfo_flavors* %2) #0 {
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.qstr*, align 8
  %6 = alloca %struct.nfs4_secinfo_flavors*, align 8
  %7 = alloca %struct.nfs4_exception, align 8
  %8 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.qstr* %1, %struct.qstr** %5, align 8
  store %struct.nfs4_secinfo_flavors* %2, %struct.nfs4_secinfo_flavors** %6, align 8
  %9 = bitcast %struct.nfs4_exception* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %9, i8* align 8 bitcast (%struct.nfs4_exception* @__const.nfs4_proc_secinfo.exception to i8*), i64 16, i1 false)
  br label %10

10:                                               ; preds = %43, %3
  %11 = load i32, i32* @NFS4ERR_WRONGSEC, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %8, align 4
  %13 = load %struct.inode*, %struct.inode** %4, align 8
  %14 = call %struct.TYPE_3__* @NFS_SERVER(%struct.inode* %13)
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i64 @_nfs4_is_integrity_protected(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %10
  %20 = load %struct.inode*, %struct.inode** %4, align 8
  %21 = load %struct.qstr*, %struct.qstr** %5, align 8
  %22 = load %struct.nfs4_secinfo_flavors*, %struct.nfs4_secinfo_flavors** %6, align 8
  %23 = call i32 @_nfs4_proc_secinfo(%struct.inode* %20, %struct.qstr* %21, %struct.nfs4_secinfo_flavors* %22, i32 1)
  store i32 %23, i32* %8, align 4
  br label %24

24:                                               ; preds = %19, %10
  %25 = load i32, i32* %8, align 4
  %26 = load i32, i32* @NFS4ERR_WRONGSEC, align 4
  %27 = sub nsw i32 0, %26
  %28 = icmp eq i32 %25, %27
  br i1 %28, label %29, label %34

29:                                               ; preds = %24
  %30 = load %struct.inode*, %struct.inode** %4, align 8
  %31 = load %struct.qstr*, %struct.qstr** %5, align 8
  %32 = load %struct.nfs4_secinfo_flavors*, %struct.nfs4_secinfo_flavors** %6, align 8
  %33 = call i32 @_nfs4_proc_secinfo(%struct.inode* %30, %struct.qstr* %31, %struct.nfs4_secinfo_flavors* %32, i32 0)
  store i32 %33, i32* %8, align 4
  br label %34

34:                                               ; preds = %29, %24
  %35 = load %struct.inode*, %struct.inode** %4, align 8
  %36 = load %struct.qstr*, %struct.qstr** %5, align 8
  %37 = load i32, i32* %8, align 4
  %38 = call i32 @trace_nfs4_secinfo(%struct.inode* %35, %struct.qstr* %36, i32 %37)
  %39 = load %struct.inode*, %struct.inode** %4, align 8
  %40 = call %struct.TYPE_3__* @NFS_SERVER(%struct.inode* %39)
  %41 = load i32, i32* %8, align 4
  %42 = call i32 @nfs4_handle_exception(%struct.TYPE_3__* %40, i32 %41, %struct.nfs4_exception* %7)
  store i32 %42, i32* %8, align 4
  br label %43

43:                                               ; preds = %34
  %44 = getelementptr inbounds %struct.nfs4_exception, %struct.nfs4_exception* %7, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %10, label %47

47:                                               ; preds = %43
  %48 = load i32, i32* %8, align 4
  ret i32 %48
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @_nfs4_is_integrity_protected(i32) #2

declare dso_local %struct.TYPE_3__* @NFS_SERVER(%struct.inode*) #2

declare dso_local i32 @_nfs4_proc_secinfo(%struct.inode*, %struct.qstr*, %struct.nfs4_secinfo_flavors*, i32) #2

declare dso_local i32 @trace_nfs4_secinfo(%struct.inode*, %struct.qstr*, i32) #2

declare dso_local i32 @nfs4_handle_exception(%struct.TYPE_3__*, i32, %struct.nfs4_exception*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
