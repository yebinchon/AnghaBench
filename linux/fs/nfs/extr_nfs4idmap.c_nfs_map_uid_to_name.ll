; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4idmap.c_nfs_map_uid_to_name.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4idmap.c_nfs_map_uid_to_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs_server = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.idmap* }
%struct.idmap = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@NFS_CAP_UIDGID_NOMAP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"user\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfs_map_uid_to_name(%struct.nfs_server* %0, i32 %1, i8* %2, i64 %3) #0 {
  %5 = alloca %struct.nfs_server*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.idmap*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.nfs_server* %0, %struct.nfs_server** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %12 = load %struct.nfs_server*, %struct.nfs_server** %5, align 8
  %13 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %12, i32 0, i32 1
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load %struct.idmap*, %struct.idmap** %15, align 8
  store %struct.idmap* %16, %struct.idmap** %9, align 8
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %10, align 4
  %19 = load %struct.idmap*, %struct.idmap** %9, align 8
  %20 = call i32 @idmap_userns(%struct.idmap* %19)
  %21 = load i32, i32* %6, align 4
  %22 = call i32 @from_kuid_munged(i32 %20, i32 %21)
  store i32 %22, i32* %11, align 4
  %23 = load %struct.nfs_server*, %struct.nfs_server** %5, align 8
  %24 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @NFS_CAP_UIDGID_NOMAP, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %35, label %29

29:                                               ; preds = %4
  %30 = load i32, i32* %11, align 4
  %31 = load i8*, i8** %7, align 8
  %32 = load i64, i64* %8, align 8
  %33 = load %struct.idmap*, %struct.idmap** %9, align 8
  %34 = call i32 @nfs_idmap_lookup_name(i32 %30, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* %31, i64 %32, %struct.idmap* %33)
  store i32 %34, i32* %10, align 4
  br label %35

35:                                               ; preds = %29, %4
  %36 = load i32, i32* %10, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %35
  %39 = load i32, i32* %11, align 4
  %40 = load i8*, i8** %7, align 8
  %41 = load i64, i64* %8, align 8
  %42 = call i32 @nfs_map_numeric_to_string(i32 %39, i8* %40, i64 %41)
  store i32 %42, i32* %10, align 4
  br label %43

43:                                               ; preds = %38, %35
  %44 = load i8*, i8** %7, align 8
  %45 = load i32, i32* %10, align 4
  %46 = load i32, i32* %11, align 4
  %47 = load i32, i32* %10, align 4
  %48 = call i32 @trace_nfs4_map_uid_to_name(i8* %44, i32 %45, i32 %46, i32 %47)
  %49 = load i32, i32* %10, align 4
  ret i32 %49
}

declare dso_local i32 @from_kuid_munged(i32, i32) #1

declare dso_local i32 @idmap_userns(%struct.idmap*) #1

declare dso_local i32 @nfs_idmap_lookup_name(i32, i8*, i8*, i64, %struct.idmap*) #1

declare dso_local i32 @nfs_map_numeric_to_string(i32, i8*, i64) #1

declare dso_local i32 @trace_nfs4_map_uid_to_name(i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
