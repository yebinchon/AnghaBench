; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_super.c_nfs_clone_super.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_super.c_nfs_clone_super.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32, i32, i64, i32, i32, i32, i32, i32, i32, i32 }
%struct.nfs_mount_info = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.super_block* }
%struct.nfs_server = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }

@SB_POSIXACL = common dso_local global i32 0, align 4
@U32_MAX = common dso_local global i32 0, align 4
@S64_MIN = common dso_local global i64 0, align 8
@S64_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.super_block*, %struct.nfs_mount_info*)* @nfs_clone_super to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nfs_clone_super(%struct.super_block* %0, %struct.nfs_mount_info* %1) #0 {
  %3 = alloca %struct.super_block*, align 8
  %4 = alloca %struct.nfs_mount_info*, align 8
  %5 = alloca %struct.super_block*, align 8
  %6 = alloca %struct.nfs_server*, align 8
  store %struct.super_block* %0, %struct.super_block** %3, align 8
  store %struct.nfs_mount_info* %1, %struct.nfs_mount_info** %4, align 8
  %7 = load %struct.nfs_mount_info*, %struct.nfs_mount_info** %4, align 8
  %8 = getelementptr inbounds %struct.nfs_mount_info, %struct.nfs_mount_info* %7, i32 0, i32 0
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load %struct.super_block*, %struct.super_block** %10, align 8
  store %struct.super_block* %11, %struct.super_block** %5, align 8
  %12 = load %struct.super_block*, %struct.super_block** %3, align 8
  %13 = call %struct.nfs_server* @NFS_SB(%struct.super_block* %12)
  store %struct.nfs_server* %13, %struct.nfs_server** %6, align 8
  %14 = load %struct.super_block*, %struct.super_block** %5, align 8
  %15 = getelementptr inbounds %struct.super_block, %struct.super_block* %14, i32 0, i32 9
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.super_block*, %struct.super_block** %3, align 8
  %18 = getelementptr inbounds %struct.super_block, %struct.super_block* %17, i32 0, i32 9
  store i32 %16, i32* %18, align 8
  %19 = load %struct.super_block*, %struct.super_block** %5, align 8
  %20 = getelementptr inbounds %struct.super_block, %struct.super_block* %19, i32 0, i32 8
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.super_block*, %struct.super_block** %3, align 8
  %23 = getelementptr inbounds %struct.super_block, %struct.super_block* %22, i32 0, i32 8
  store i32 %21, i32* %23, align 4
  %24 = load %struct.super_block*, %struct.super_block** %5, align 8
  %25 = getelementptr inbounds %struct.super_block, %struct.super_block* %24, i32 0, i32 7
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.super_block*, %struct.super_block** %3, align 8
  %28 = getelementptr inbounds %struct.super_block, %struct.super_block* %27, i32 0, i32 7
  store i32 %26, i32* %28, align 8
  %29 = load %struct.super_block*, %struct.super_block** %5, align 8
  %30 = getelementptr inbounds %struct.super_block, %struct.super_block* %29, i32 0, i32 6
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.super_block*, %struct.super_block** %3, align 8
  %33 = getelementptr inbounds %struct.super_block, %struct.super_block* %32, i32 0, i32 6
  store i32 %31, i32* %33, align 4
  %34 = load %struct.super_block*, %struct.super_block** %5, align 8
  %35 = getelementptr inbounds %struct.super_block, %struct.super_block* %34, i32 0, i32 5
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.super_block*, %struct.super_block** %3, align 8
  %38 = getelementptr inbounds %struct.super_block, %struct.super_block* %37, i32 0, i32 5
  store i32 %36, i32* %38, align 8
  %39 = load %struct.super_block*, %struct.super_block** %5, align 8
  %40 = getelementptr inbounds %struct.super_block, %struct.super_block* %39, i32 0, i32 4
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.super_block*, %struct.super_block** %3, align 8
  %43 = getelementptr inbounds %struct.super_block, %struct.super_block* %42, i32 0, i32 4
  store i32 %41, i32* %43, align 4
  %44 = load %struct.nfs_server*, %struct.nfs_server** %6, align 8
  %45 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %44, i32 0, i32 0
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = icmp ne i32 %50, 2
  br i1 %51, label %52, label %60

52:                                               ; preds = %2
  %53 = load i32, i32* @SB_POSIXACL, align 4
  %54 = load %struct.super_block*, %struct.super_block** %3, align 8
  %55 = getelementptr inbounds %struct.super_block, %struct.super_block* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 8
  %57 = or i32 %56, %53
  store i32 %57, i32* %55, align 8
  %58 = load %struct.super_block*, %struct.super_block** %3, align 8
  %59 = getelementptr inbounds %struct.super_block, %struct.super_block* %58, i32 0, i32 0
  store i32 1, i32* %59, align 8
  br label %63

60:                                               ; preds = %2
  %61 = load %struct.super_block*, %struct.super_block** %3, align 8
  %62 = getelementptr inbounds %struct.super_block, %struct.super_block* %61, i32 0, i32 0
  store i32 1000, i32* %62, align 8
  br label %63

63:                                               ; preds = %60, %52
  %64 = load %struct.nfs_server*, %struct.nfs_server** %6, align 8
  %65 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %64, i32 0, i32 0
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 0
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = icmp ne i32 %70, 4
  br i1 %71, label %72, label %78

72:                                               ; preds = %63
  %73 = load %struct.super_block*, %struct.super_block** %3, align 8
  %74 = getelementptr inbounds %struct.super_block, %struct.super_block* %73, i32 0, i32 2
  store i64 0, i64* %74, align 8
  %75 = load i32, i32* @U32_MAX, align 4
  %76 = load %struct.super_block*, %struct.super_block** %3, align 8
  %77 = getelementptr inbounds %struct.super_block, %struct.super_block* %76, i32 0, i32 1
  store i32 %75, i32* %77, align 4
  br label %85

78:                                               ; preds = %63
  %79 = load i64, i64* @S64_MIN, align 8
  %80 = load %struct.super_block*, %struct.super_block** %3, align 8
  %81 = getelementptr inbounds %struct.super_block, %struct.super_block* %80, i32 0, i32 2
  store i64 %79, i64* %81, align 8
  %82 = load i32, i32* @S64_MAX, align 4
  %83 = load %struct.super_block*, %struct.super_block** %3, align 8
  %84 = getelementptr inbounds %struct.super_block, %struct.super_block* %83, i32 0, i32 1
  store i32 %82, i32* %84, align 4
  br label %85

85:                                               ; preds = %78, %72
  %86 = load %struct.super_block*, %struct.super_block** %3, align 8
  %87 = call i32 @nfs_initialise_sb(%struct.super_block* %86)
  ret void
}

declare dso_local %struct.nfs_server* @NFS_SB(%struct.super_block*) #1

declare dso_local i32 @nfs_initialise_sb(%struct.super_block*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
