; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_super.c_nfs_fill_super.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_super.c_nfs_fill_super.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32, i32, i64, i32*, i32, i64, i64, i32, i32 }
%struct.nfs_mount_info = type { %struct.nfs_parsed_mount_data* }
%struct.nfs_parsed_mount_data = type { i64 }
%struct.nfs_server = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__*, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32, i32 }

@SB_POSIXACL = common dso_local global i32 0, align 4
@nfs_export_ops = common dso_local global i32 0, align 4
@U32_MAX = common dso_local global i32 0, align 4
@S64_MIN = common dso_local global i64 0, align 8
@S64_MAX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nfs_fill_super(%struct.super_block* %0, %struct.nfs_mount_info* %1) #0 {
  %3 = alloca %struct.super_block*, align 8
  %4 = alloca %struct.nfs_mount_info*, align 8
  %5 = alloca %struct.nfs_parsed_mount_data*, align 8
  %6 = alloca %struct.nfs_server*, align 8
  store %struct.super_block* %0, %struct.super_block** %3, align 8
  store %struct.nfs_mount_info* %1, %struct.nfs_mount_info** %4, align 8
  %7 = load %struct.nfs_mount_info*, %struct.nfs_mount_info** %4, align 8
  %8 = getelementptr inbounds %struct.nfs_mount_info, %struct.nfs_mount_info* %7, i32 0, i32 0
  %9 = load %struct.nfs_parsed_mount_data*, %struct.nfs_parsed_mount_data** %8, align 8
  store %struct.nfs_parsed_mount_data* %9, %struct.nfs_parsed_mount_data** %5, align 8
  %10 = load %struct.super_block*, %struct.super_block** %3, align 8
  %11 = call %struct.nfs_server* @NFS_SB(%struct.super_block* %10)
  store %struct.nfs_server* %11, %struct.nfs_server** %6, align 8
  %12 = load %struct.super_block*, %struct.super_block** %3, align 8
  %13 = getelementptr inbounds %struct.super_block, %struct.super_block* %12, i32 0, i32 5
  store i64 0, i64* %13, align 8
  %14 = load %struct.super_block*, %struct.super_block** %3, align 8
  %15 = getelementptr inbounds %struct.super_block, %struct.super_block* %14, i32 0, i32 6
  store i64 0, i64* %15, align 8
  %16 = load %struct.nfs_server*, %struct.nfs_server** %6, align 8
  %17 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %16, i32 0, i32 0
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 1
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.super_block*, %struct.super_block** %3, align 8
  %24 = getelementptr inbounds %struct.super_block, %struct.super_block* %23, i32 0, i32 8
  store i32 %22, i32* %24, align 4
  %25 = load %struct.nfs_server*, %struct.nfs_server** %6, align 8
  %26 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %25, i32 0, i32 0
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 1
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.super_block*, %struct.super_block** %3, align 8
  %33 = getelementptr inbounds %struct.super_block, %struct.super_block* %32, i32 0, i32 7
  store i32 %31, i32* %33, align 8
  %34 = load %struct.nfs_parsed_mount_data*, %struct.nfs_parsed_mount_data** %5, align 8
  %35 = icmp ne %struct.nfs_parsed_mount_data* %34, null
  br i1 %35, label %36, label %50

36:                                               ; preds = %2
  %37 = load %struct.nfs_parsed_mount_data*, %struct.nfs_parsed_mount_data** %5, align 8
  %38 = getelementptr inbounds %struct.nfs_parsed_mount_data, %struct.nfs_parsed_mount_data* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %50

41:                                               ; preds = %36
  %42 = load %struct.nfs_parsed_mount_data*, %struct.nfs_parsed_mount_data** %5, align 8
  %43 = getelementptr inbounds %struct.nfs_parsed_mount_data, %struct.nfs_parsed_mount_data* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.super_block*, %struct.super_block** %3, align 8
  %46 = getelementptr inbounds %struct.super_block, %struct.super_block* %45, i32 0, i32 5
  %47 = call i64 @nfs_block_size(i64 %44, i64* %46)
  %48 = load %struct.super_block*, %struct.super_block** %3, align 8
  %49 = getelementptr inbounds %struct.super_block, %struct.super_block* %48, i32 0, i32 6
  store i64 %47, i64* %49, align 8
  br label %50

50:                                               ; preds = %41, %36, %2
  %51 = load %struct.nfs_server*, %struct.nfs_server** %6, align 8
  %52 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %51, i32 0, i32 0
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 0
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = icmp ne i32 %57, 2
  br i1 %58, label %59, label %69

59:                                               ; preds = %50
  %60 = load i32, i32* @SB_POSIXACL, align 4
  %61 = load %struct.super_block*, %struct.super_block** %3, align 8
  %62 = getelementptr inbounds %struct.super_block, %struct.super_block* %61, i32 0, i32 4
  %63 = load i32, i32* %62, align 8
  %64 = or i32 %63, %60
  store i32 %64, i32* %62, align 8
  %65 = load %struct.super_block*, %struct.super_block** %3, align 8
  %66 = getelementptr inbounds %struct.super_block, %struct.super_block* %65, i32 0, i32 0
  store i32 1, i32* %66, align 8
  %67 = load %struct.super_block*, %struct.super_block** %3, align 8
  %68 = getelementptr inbounds %struct.super_block, %struct.super_block* %67, i32 0, i32 3
  store i32* @nfs_export_ops, i32** %68, align 8
  br label %72

69:                                               ; preds = %50
  %70 = load %struct.super_block*, %struct.super_block** %3, align 8
  %71 = getelementptr inbounds %struct.super_block, %struct.super_block* %70, i32 0, i32 0
  store i32 1000, i32* %71, align 8
  br label %72

72:                                               ; preds = %69, %59
  %73 = load %struct.nfs_server*, %struct.nfs_server** %6, align 8
  %74 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %73, i32 0, i32 0
  %75 = load %struct.TYPE_6__*, %struct.TYPE_6__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 0
  %77 = load %struct.TYPE_5__*, %struct.TYPE_5__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = icmp ne i32 %79, 4
  br i1 %80, label %81, label %87

81:                                               ; preds = %72
  %82 = load %struct.super_block*, %struct.super_block** %3, align 8
  %83 = getelementptr inbounds %struct.super_block, %struct.super_block* %82, i32 0, i32 2
  store i64 0, i64* %83, align 8
  %84 = load i32, i32* @U32_MAX, align 4
  %85 = load %struct.super_block*, %struct.super_block** %3, align 8
  %86 = getelementptr inbounds %struct.super_block, %struct.super_block* %85, i32 0, i32 1
  store i32 %84, i32* %86, align 4
  br label %94

87:                                               ; preds = %72
  %88 = load i64, i64* @S64_MIN, align 8
  %89 = load %struct.super_block*, %struct.super_block** %3, align 8
  %90 = getelementptr inbounds %struct.super_block, %struct.super_block* %89, i32 0, i32 2
  store i64 %88, i64* %90, align 8
  %91 = load i32, i32* @S64_MAX, align 4
  %92 = load %struct.super_block*, %struct.super_block** %3, align 8
  %93 = getelementptr inbounds %struct.super_block, %struct.super_block* %92, i32 0, i32 1
  store i32 %91, i32* %93, align 4
  br label %94

94:                                               ; preds = %87, %81
  %95 = load %struct.super_block*, %struct.super_block** %3, align 8
  %96 = call i32 @nfs_initialise_sb(%struct.super_block* %95)
  ret void
}

declare dso_local %struct.nfs_server* @NFS_SB(%struct.super_block*) #1

declare dso_local i64 @nfs_block_size(i64, i64*) #1

declare dso_local i32 @nfs_initialise_sb(%struct.super_block*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
