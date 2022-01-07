; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4proc.c_nfs4_do_fsinfo.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4proc.c_nfs4_do_fsinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs4_exception = type { i32, i64 }
%struct.nfs_server = type { i32 }
%struct.nfs_fh = type { i32 }
%struct.nfs_fsinfo = type { i32, i32 }

@__const.nfs4_do_fsinfo.exception = private unnamed_addr constant %struct.nfs4_exception { i32 1, i64 0 }, align 8
@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfs_server*, %struct.nfs_fh*, %struct.nfs_fsinfo*)* @nfs4_do_fsinfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfs4_do_fsinfo(%struct.nfs_server* %0, %struct.nfs_fh* %1, %struct.nfs_fsinfo* %2) #0 {
  %4 = alloca %struct.nfs_server*, align 8
  %5 = alloca %struct.nfs_fh*, align 8
  %6 = alloca %struct.nfs_fsinfo*, align 8
  %7 = alloca %struct.nfs4_exception, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.nfs_server* %0, %struct.nfs_server** %4, align 8
  store %struct.nfs_fh* %1, %struct.nfs_fh** %5, align 8
  store %struct.nfs_fsinfo* %2, %struct.nfs_fsinfo** %6, align 8
  %10 = bitcast %struct.nfs4_exception* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %10, i8* align 8 bitcast (%struct.nfs4_exception* @__const.nfs4_do_fsinfo.exception to i8*), i64 16, i1 false)
  %11 = load i64, i64* @jiffies, align 8
  store i64 %11, i64* %8, align 8
  br label %12

12:                                               ; preds = %41, %3
  %13 = load %struct.nfs_server*, %struct.nfs_server** %4, align 8
  %14 = load %struct.nfs_fh*, %struct.nfs_fh** %5, align 8
  %15 = load %struct.nfs_fsinfo*, %struct.nfs_fsinfo** %6, align 8
  %16 = call i32 @_nfs4_do_fsinfo(%struct.nfs_server* %13, %struct.nfs_fh* %14, %struct.nfs_fsinfo* %15)
  store i32 %16, i32* %9, align 4
  %17 = load %struct.nfs_server*, %struct.nfs_server** %4, align 8
  %18 = load %struct.nfs_fh*, %struct.nfs_fh** %5, align 8
  %19 = load %struct.nfs_fsinfo*, %struct.nfs_fsinfo** %6, align 8
  %20 = getelementptr inbounds %struct.nfs_fsinfo, %struct.nfs_fsinfo* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* %9, align 4
  %23 = call i32 @trace_nfs4_fsinfo(%struct.nfs_server* %17, %struct.nfs_fh* %18, i32 %21, i32 %22)
  %24 = load i32, i32* %9, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %37

26:                                               ; preds = %12
  %27 = load %struct.nfs_server*, %struct.nfs_server** %4, align 8
  %28 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.nfs_fsinfo*, %struct.nfs_fsinfo** %6, align 8
  %31 = getelementptr inbounds %struct.nfs_fsinfo, %struct.nfs_fsinfo* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @HZ, align 4
  %34 = mul nsw i32 %32, %33
  %35 = load i64, i64* %8, align 8
  %36 = call i32 @nfs4_set_lease_period(i32 %29, i32 %34, i64 %35)
  br label %45

37:                                               ; preds = %12
  %38 = load %struct.nfs_server*, %struct.nfs_server** %4, align 8
  %39 = load i32, i32* %9, align 4
  %40 = call i32 @nfs4_handle_exception(%struct.nfs_server* %38, i32 %39, %struct.nfs4_exception* %7)
  store i32 %40, i32* %9, align 4
  br label %41

41:                                               ; preds = %37
  %42 = getelementptr inbounds %struct.nfs4_exception, %struct.nfs4_exception* %7, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %12, label %45

45:                                               ; preds = %41, %26
  %46 = load i32, i32* %9, align 4
  ret i32 %46
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @_nfs4_do_fsinfo(%struct.nfs_server*, %struct.nfs_fh*, %struct.nfs_fsinfo*) #2

declare dso_local i32 @trace_nfs4_fsinfo(%struct.nfs_server*, %struct.nfs_fh*, i32, i32) #2

declare dso_local i32 @nfs4_set_lease_period(i32, i32, i64) #2

declare dso_local i32 @nfs4_handle_exception(%struct.nfs_server*, i32, %struct.nfs4_exception*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
