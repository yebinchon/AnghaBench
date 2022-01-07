; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_direct.c_nfs_init_cinfo_from_dreq.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_direct.c_nfs_init_cinfo_from_dreq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs_commit_info = type { i32*, %struct.nfs_direct_req*, i32*, i32*, i32 }
%struct.nfs_direct_req = type { i32, i32, i32 }

@nfs_direct_commit_completion_ops = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nfs_init_cinfo_from_dreq(%struct.nfs_commit_info* %0, %struct.nfs_direct_req* %1) #0 {
  %3 = alloca %struct.nfs_commit_info*, align 8
  %4 = alloca %struct.nfs_direct_req*, align 8
  store %struct.nfs_commit_info* %0, %struct.nfs_commit_info** %3, align 8
  store %struct.nfs_direct_req* %1, %struct.nfs_direct_req** %4, align 8
  %5 = load %struct.nfs_direct_req*, %struct.nfs_direct_req** %4, align 8
  %6 = getelementptr inbounds %struct.nfs_direct_req, %struct.nfs_direct_req* %5, i32 0, i32 2
  %7 = load i32, i32* %6, align 4
  %8 = load %struct.nfs_commit_info*, %struct.nfs_commit_info** %3, align 8
  %9 = getelementptr inbounds %struct.nfs_commit_info, %struct.nfs_commit_info* %8, i32 0, i32 4
  store i32 %7, i32* %9, align 8
  %10 = load %struct.nfs_direct_req*, %struct.nfs_direct_req** %4, align 8
  %11 = getelementptr inbounds %struct.nfs_direct_req, %struct.nfs_direct_req* %10, i32 0, i32 1
  %12 = load %struct.nfs_commit_info*, %struct.nfs_commit_info** %3, align 8
  %13 = getelementptr inbounds %struct.nfs_commit_info, %struct.nfs_commit_info* %12, i32 0, i32 3
  store i32* %11, i32** %13, align 8
  %14 = load %struct.nfs_direct_req*, %struct.nfs_direct_req** %4, align 8
  %15 = getelementptr inbounds %struct.nfs_direct_req, %struct.nfs_direct_req* %14, i32 0, i32 0
  %16 = load %struct.nfs_commit_info*, %struct.nfs_commit_info** %3, align 8
  %17 = getelementptr inbounds %struct.nfs_commit_info, %struct.nfs_commit_info* %16, i32 0, i32 2
  store i32* %15, i32** %17, align 8
  %18 = load %struct.nfs_direct_req*, %struct.nfs_direct_req** %4, align 8
  %19 = load %struct.nfs_commit_info*, %struct.nfs_commit_info** %3, align 8
  %20 = getelementptr inbounds %struct.nfs_commit_info, %struct.nfs_commit_info* %19, i32 0, i32 1
  store %struct.nfs_direct_req* %18, %struct.nfs_direct_req** %20, align 8
  %21 = load %struct.nfs_commit_info*, %struct.nfs_commit_info** %3, align 8
  %22 = getelementptr inbounds %struct.nfs_commit_info, %struct.nfs_commit_info* %21, i32 0, i32 0
  store i32* @nfs_direct_commit_completion_ops, i32** %22, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
