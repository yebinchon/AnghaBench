; ModuleID = '/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4xdr.c_get_parent_attributes.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4xdr.c_get_parent_attributes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_export = type { %struct.path }
%struct.path = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.kstat = type { i32 }

@STATX_BASIC_STATS = common dso_local global i32 0, align 4
@AT_STATX_SYNC_AS_STAT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.svc_export*, %struct.kstat*)* @get_parent_attributes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_parent_attributes(%struct.svc_export* %0, %struct.kstat* %1) #0 {
  %3 = alloca %struct.svc_export*, align 8
  %4 = alloca %struct.kstat*, align 8
  %5 = alloca %struct.path, align 8
  %6 = alloca i32, align 4
  store %struct.svc_export* %0, %struct.svc_export** %3, align 8
  store %struct.kstat* %1, %struct.kstat** %4, align 8
  %7 = load %struct.svc_export*, %struct.svc_export** %3, align 8
  %8 = getelementptr inbounds %struct.svc_export, %struct.svc_export* %7, i32 0, i32 0
  %9 = bitcast %struct.path* %5 to i8*
  %10 = bitcast %struct.path* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %9, i8* align 8 %10, i64 16, i1 false)
  %11 = call i32 @path_get(%struct.path* %5)
  br label %12

12:                                               ; preds = %24, %2
  %13 = call i64 @follow_up(%struct.path* %5)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %25

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.path, %struct.path* %5, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = getelementptr inbounds %struct.path, %struct.path* %5, i32 0, i32 1
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %17, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %15
  br label %25

24:                                               ; preds = %15
  br label %12

25:                                               ; preds = %23, %12
  %26 = load %struct.kstat*, %struct.kstat** %4, align 8
  %27 = load i32, i32* @STATX_BASIC_STATS, align 4
  %28 = load i32, i32* @AT_STATX_SYNC_AS_STAT, align 4
  %29 = call i32 @vfs_getattr(%struct.path* %5, %struct.kstat* %26, i32 %27, i32 %28)
  store i32 %29, i32* %6, align 4
  %30 = call i32 @path_put(%struct.path* %5)
  %31 = load i32, i32* %6, align 4
  ret i32 %31
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @path_get(%struct.path*) #2

declare dso_local i64 @follow_up(%struct.path*) #2

declare dso_local i32 @vfs_getattr(%struct.path*, %struct.kstat*, i32, i32) #2

declare dso_local i32 @path_put(%struct.path*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
