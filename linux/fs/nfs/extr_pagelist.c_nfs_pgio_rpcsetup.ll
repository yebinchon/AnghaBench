; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_pagelist.c_nfs_pgio_rpcsetup.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_pagelist.c_nfs_pgio_rpcsetup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs_pgio_header = type { i32, i32, %struct.TYPE_6__, %struct.TYPE_5__, %struct.TYPE_4__, i32, i32, %struct.nfs_page* }
%struct.TYPE_6__ = type { i32*, i64, i64, i32* }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.nfs_page = type { i32, i32 }
%struct.nfs_commit_info = type { i32 }

@NFS_UNSTABLE = common dso_local global i32 0, align 4
@FLUSH_STABLE = common dso_local global i32 0, align 4
@NFS_FILE_SYNC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nfs_pgio_header*, i32, i32, %struct.nfs_commit_info*)* @nfs_pgio_rpcsetup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nfs_pgio_rpcsetup(%struct.nfs_pgio_header* %0, i32 %1, i32 %2, %struct.nfs_commit_info* %3) #0 {
  %5 = alloca %struct.nfs_pgio_header*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.nfs_commit_info*, align 8
  %9 = alloca %struct.nfs_page*, align 8
  store %struct.nfs_pgio_header* %0, %struct.nfs_pgio_header** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store %struct.nfs_commit_info* %3, %struct.nfs_commit_info** %8, align 8
  %10 = load %struct.nfs_pgio_header*, %struct.nfs_pgio_header** %5, align 8
  %11 = getelementptr inbounds %struct.nfs_pgio_header, %struct.nfs_pgio_header* %10, i32 0, i32 7
  %12 = load %struct.nfs_page*, %struct.nfs_page** %11, align 8
  store %struct.nfs_page* %12, %struct.nfs_page** %9, align 8
  %13 = load %struct.nfs_pgio_header*, %struct.nfs_pgio_header** %5, align 8
  %14 = getelementptr inbounds %struct.nfs_pgio_header, %struct.nfs_pgio_header* %13, i32 0, i32 6
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @NFS_FH(i32 %15)
  %17 = load %struct.nfs_pgio_header*, %struct.nfs_pgio_header** %5, align 8
  %18 = getelementptr inbounds %struct.nfs_pgio_header, %struct.nfs_pgio_header* %17, i32 0, i32 3
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 7
  store i32 %16, i32* %19, align 4
  %20 = load %struct.nfs_page*, %struct.nfs_page** %9, align 8
  %21 = call i32 @req_offset(%struct.nfs_page* %20)
  %22 = load %struct.nfs_pgio_header*, %struct.nfs_pgio_header** %5, align 8
  %23 = getelementptr inbounds %struct.nfs_pgio_header, %struct.nfs_pgio_header* %22, i32 0, i32 3
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 6
  store i32 %21, i32* %24, align 8
  %25 = load %struct.nfs_pgio_header*, %struct.nfs_pgio_header** %5, align 8
  %26 = getelementptr inbounds %struct.nfs_pgio_header, %struct.nfs_pgio_header* %25, i32 0, i32 3
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 6
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.nfs_pgio_header*, %struct.nfs_pgio_header** %5, align 8
  %30 = getelementptr inbounds %struct.nfs_pgio_header, %struct.nfs_pgio_header* %29, i32 0, i32 5
  store i32 %28, i32* %30, align 4
  %31 = load %struct.nfs_page*, %struct.nfs_page** %9, align 8
  %32 = getelementptr inbounds %struct.nfs_page, %struct.nfs_page* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.nfs_pgio_header*, %struct.nfs_pgio_header** %5, align 8
  %35 = getelementptr inbounds %struct.nfs_pgio_header, %struct.nfs_pgio_header* %34, i32 0, i32 3
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 5
  store i32 %33, i32* %36, align 4
  %37 = load %struct.nfs_pgio_header*, %struct.nfs_pgio_header** %5, align 8
  %38 = getelementptr inbounds %struct.nfs_pgio_header, %struct.nfs_pgio_header* %37, i32 0, i32 4
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.nfs_pgio_header*, %struct.nfs_pgio_header** %5, align 8
  %42 = getelementptr inbounds %struct.nfs_pgio_header, %struct.nfs_pgio_header* %41, i32 0, i32 3
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 4
  store i32 %40, i32* %43, align 8
  %44 = load i32, i32* %6, align 4
  %45 = load %struct.nfs_pgio_header*, %struct.nfs_pgio_header** %5, align 8
  %46 = getelementptr inbounds %struct.nfs_pgio_header, %struct.nfs_pgio_header* %45, i32 0, i32 3
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  store i32 %44, i32* %47, align 8
  %48 = load %struct.nfs_page*, %struct.nfs_page** %9, align 8
  %49 = call i32 @nfs_req_openctx(%struct.nfs_page* %48)
  %50 = call i32 @get_nfs_open_context(i32 %49)
  %51 = load %struct.nfs_pgio_header*, %struct.nfs_pgio_header** %5, align 8
  %52 = getelementptr inbounds %struct.nfs_pgio_header, %struct.nfs_pgio_header* %51, i32 0, i32 3
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 3
  store i32 %50, i32* %53, align 4
  %54 = load %struct.nfs_page*, %struct.nfs_page** %9, align 8
  %55 = getelementptr inbounds %struct.nfs_page, %struct.nfs_page* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.nfs_pgio_header*, %struct.nfs_pgio_header** %5, align 8
  %58 = getelementptr inbounds %struct.nfs_pgio_header, %struct.nfs_pgio_header* %57, i32 0, i32 3
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 2
  store i32 %56, i32* %59, align 8
  %60 = load i32, i32* @NFS_UNSTABLE, align 4
  %61 = load %struct.nfs_pgio_header*, %struct.nfs_pgio_header** %5, align 8
  %62 = getelementptr inbounds %struct.nfs_pgio_header, %struct.nfs_pgio_header* %61, i32 0, i32 3
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 1
  store i32 %60, i32* %63, align 4
  %64 = load i32, i32* %7, align 4
  %65 = load i32, i32* @FLUSH_STABLE, align 4
  %66 = or i32 %65, 128
  %67 = and i32 %64, %66
  switch i32 %67, label %75 [
    i32 0, label %68
    i32 128, label %69
  ]

68:                                               ; preds = %4
  br label %80

69:                                               ; preds = %4
  %70 = load %struct.nfs_commit_info*, %struct.nfs_commit_info** %8, align 8
  %71 = call i32 @nfs_reqs_to_commit(%struct.nfs_commit_info* %70)
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %69
  br label %80

74:                                               ; preds = %69
  br label %75

75:                                               ; preds = %4, %74
  %76 = load i32, i32* @NFS_FILE_SYNC, align 4
  %77 = load %struct.nfs_pgio_header*, %struct.nfs_pgio_header** %5, align 8
  %78 = getelementptr inbounds %struct.nfs_pgio_header, %struct.nfs_pgio_header* %77, i32 0, i32 3
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 1
  store i32 %76, i32* %79, align 4
  br label %80

80:                                               ; preds = %75, %73, %68
  %81 = load %struct.nfs_pgio_header*, %struct.nfs_pgio_header** %5, align 8
  %82 = getelementptr inbounds %struct.nfs_pgio_header, %struct.nfs_pgio_header* %81, i32 0, i32 0
  %83 = load %struct.nfs_pgio_header*, %struct.nfs_pgio_header** %5, align 8
  %84 = getelementptr inbounds %struct.nfs_pgio_header, %struct.nfs_pgio_header* %83, i32 0, i32 2
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 3
  store i32* %82, i32** %85, align 8
  %86 = load %struct.nfs_pgio_header*, %struct.nfs_pgio_header** %5, align 8
  %87 = getelementptr inbounds %struct.nfs_pgio_header, %struct.nfs_pgio_header* %86, i32 0, i32 2
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 2
  store i64 0, i64* %88, align 8
  %89 = load %struct.nfs_pgio_header*, %struct.nfs_pgio_header** %5, align 8
  %90 = getelementptr inbounds %struct.nfs_pgio_header, %struct.nfs_pgio_header* %89, i32 0, i32 2
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 1
  store i64 0, i64* %91, align 8
  %92 = load %struct.nfs_pgio_header*, %struct.nfs_pgio_header** %5, align 8
  %93 = getelementptr inbounds %struct.nfs_pgio_header, %struct.nfs_pgio_header* %92, i32 0, i32 1
  %94 = load %struct.nfs_pgio_header*, %struct.nfs_pgio_header** %5, align 8
  %95 = getelementptr inbounds %struct.nfs_pgio_header, %struct.nfs_pgio_header* %94, i32 0, i32 2
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 0
  store i32* %93, i32** %96, align 8
  %97 = load %struct.nfs_pgio_header*, %struct.nfs_pgio_header** %5, align 8
  %98 = getelementptr inbounds %struct.nfs_pgio_header, %struct.nfs_pgio_header* %97, i32 0, i32 0
  %99 = call i32 @nfs_fattr_init(i32* %98)
  ret void
}

declare dso_local i32 @NFS_FH(i32) #1

declare dso_local i32 @req_offset(%struct.nfs_page*) #1

declare dso_local i32 @get_nfs_open_context(i32) #1

declare dso_local i32 @nfs_req_openctx(%struct.nfs_page*) #1

declare dso_local i32 @nfs_reqs_to_commit(%struct.nfs_commit_info*) #1

declare dso_local i32 @nfs_fattr_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
