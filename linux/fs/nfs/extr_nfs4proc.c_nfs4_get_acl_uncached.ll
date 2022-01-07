; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4proc.c_nfs4_get_acl_uncached.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4proc.c_nfs4_get_acl_uncached.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs4_exception = type { i32, i64 }
%struct.inode = type { i32 }

@__const.nfs4_get_acl_uncached.exception = private unnamed_addr constant %struct.nfs4_exception { i32 1, i64 0 }, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.inode*, i8*, i64)* @nfs4_get_acl_uncached to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @nfs4_get_acl_uncached(%struct.inode* %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.inode*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.nfs4_exception, align 8
  %8 = alloca i64, align 8
  store %struct.inode* %0, %struct.inode** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %9 = bitcast %struct.nfs4_exception* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %9, i8* align 8 bitcast (%struct.nfs4_exception* @__const.nfs4_get_acl_uncached.exception to i8*), i64 16, i1 false)
  br label %10

10:                                               ; preds = %26, %3
  %11 = load %struct.inode*, %struct.inode** %4, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = load i64, i64* %6, align 8
  %14 = call i64 @__nfs4_get_acl_uncached(%struct.inode* %11, i8* %12, i64 %13)
  store i64 %14, i64* %8, align 8
  %15 = load %struct.inode*, %struct.inode** %4, align 8
  %16 = load i64, i64* %8, align 8
  %17 = call i32 @trace_nfs4_get_acl(%struct.inode* %15, i64 %16)
  %18 = load i64, i64* %8, align 8
  %19 = icmp sge i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %10
  br label %30

21:                                               ; preds = %10
  %22 = load %struct.inode*, %struct.inode** %4, align 8
  %23 = call i32 @NFS_SERVER(%struct.inode* %22)
  %24 = load i64, i64* %8, align 8
  %25 = call i64 @nfs4_handle_exception(i32 %23, i64 %24, %struct.nfs4_exception* %7)
  store i64 %25, i64* %8, align 8
  br label %26

26:                                               ; preds = %21
  %27 = getelementptr inbounds %struct.nfs4_exception, %struct.nfs4_exception* %7, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %10, label %30

30:                                               ; preds = %26, %20
  %31 = load i64, i64* %8, align 8
  ret i64 %31
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @__nfs4_get_acl_uncached(%struct.inode*, i8*, i64) #2

declare dso_local i32 @trace_nfs4_get_acl(%struct.inode*, i64) #2

declare dso_local i64 @nfs4_handle_exception(i32, i64, %struct.nfs4_exception*) #2

declare dso_local i32 @NFS_SERVER(%struct.inode*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
