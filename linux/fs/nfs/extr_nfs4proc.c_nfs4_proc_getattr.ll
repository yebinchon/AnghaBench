; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4proc.c_nfs4_proc_getattr.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4proc.c_nfs4_proc_getattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs4_exception = type { i32, i64 }
%struct.nfs_server = type { i32 }
%struct.nfs_fh = type { i32 }
%struct.nfs_fattr = type { i32 }
%struct.nfs4_label = type { i32 }
%struct.inode = type { i32 }

@__const.nfs4_proc_getattr.exception = private unnamed_addr constant %struct.nfs4_exception { i32 1, i64 0 }, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfs_server*, %struct.nfs_fh*, %struct.nfs_fattr*, %struct.nfs4_label*, %struct.inode*)* @nfs4_proc_getattr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfs4_proc_getattr(%struct.nfs_server* %0, %struct.nfs_fh* %1, %struct.nfs_fattr* %2, %struct.nfs4_label* %3, %struct.inode* %4) #0 {
  %6 = alloca %struct.nfs_server*, align 8
  %7 = alloca %struct.nfs_fh*, align 8
  %8 = alloca %struct.nfs_fattr*, align 8
  %9 = alloca %struct.nfs4_label*, align 8
  %10 = alloca %struct.inode*, align 8
  %11 = alloca %struct.nfs4_exception, align 8
  %12 = alloca i32, align 4
  store %struct.nfs_server* %0, %struct.nfs_server** %6, align 8
  store %struct.nfs_fh* %1, %struct.nfs_fh** %7, align 8
  store %struct.nfs_fattr* %2, %struct.nfs_fattr** %8, align 8
  store %struct.nfs4_label* %3, %struct.nfs4_label** %9, align 8
  store %struct.inode* %4, %struct.inode** %10, align 8
  %13 = bitcast %struct.nfs4_exception* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %13, i8* align 8 bitcast (%struct.nfs4_exception* @__const.nfs4_proc_getattr.exception to i8*), i64 16, i1 false)
  br label %14

14:                                               ; preds = %29, %5
  %15 = load %struct.nfs_server*, %struct.nfs_server** %6, align 8
  %16 = load %struct.nfs_fh*, %struct.nfs_fh** %7, align 8
  %17 = load %struct.nfs_fattr*, %struct.nfs_fattr** %8, align 8
  %18 = load %struct.nfs4_label*, %struct.nfs4_label** %9, align 8
  %19 = load %struct.inode*, %struct.inode** %10, align 8
  %20 = call i32 @_nfs4_proc_getattr(%struct.nfs_server* %15, %struct.nfs_fh* %16, %struct.nfs_fattr* %17, %struct.nfs4_label* %18, %struct.inode* %19)
  store i32 %20, i32* %12, align 4
  %21 = load %struct.nfs_server*, %struct.nfs_server** %6, align 8
  %22 = load %struct.nfs_fh*, %struct.nfs_fh** %7, align 8
  %23 = load %struct.nfs_fattr*, %struct.nfs_fattr** %8, align 8
  %24 = load i32, i32* %12, align 4
  %25 = call i32 @trace_nfs4_getattr(%struct.nfs_server* %21, %struct.nfs_fh* %22, %struct.nfs_fattr* %23, i32 %24)
  %26 = load %struct.nfs_server*, %struct.nfs_server** %6, align 8
  %27 = load i32, i32* %12, align 4
  %28 = call i32 @nfs4_handle_exception(%struct.nfs_server* %26, i32 %27, %struct.nfs4_exception* %11)
  store i32 %28, i32* %12, align 4
  br label %29

29:                                               ; preds = %14
  %30 = getelementptr inbounds %struct.nfs4_exception, %struct.nfs4_exception* %11, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %14, label %33

33:                                               ; preds = %29
  %34 = load i32, i32* %12, align 4
  ret i32 %34
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @_nfs4_proc_getattr(%struct.nfs_server*, %struct.nfs_fh*, %struct.nfs_fattr*, %struct.nfs4_label*, %struct.inode*) #2

declare dso_local i32 @trace_nfs4_getattr(%struct.nfs_server*, %struct.nfs_fh*, %struct.nfs_fattr*, i32) #2

declare dso_local i32 @nfs4_handle_exception(%struct.nfs_server*, i32, %struct.nfs4_exception*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
