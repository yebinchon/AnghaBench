; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_pnfs_nfs.c_pnfs_generic_alloc_ds_commits.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_pnfs_nfs.c_pnfs_generic_alloc_ds_commits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs_commit_info = type { %struct.pnfs_ds_commit_info* }
%struct.pnfs_ds_commit_info = type { i32, %struct.pnfs_commit_bucket* }
%struct.pnfs_commit_bucket = type { i32 }
%struct.list_head = type { i32 }
%struct.nfs_commit_data = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfs_commit_info*, %struct.list_head*)* @pnfs_generic_alloc_ds_commits to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pnfs_generic_alloc_ds_commits(%struct.nfs_commit_info* %0, %struct.list_head* %1) #0 {
  %3 = alloca %struct.nfs_commit_info*, align 8
  %4 = alloca %struct.list_head*, align 8
  %5 = alloca %struct.pnfs_ds_commit_info*, align 8
  %6 = alloca %struct.pnfs_commit_bucket*, align 8
  %7 = alloca %struct.nfs_commit_data*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.nfs_commit_info* %0, %struct.nfs_commit_info** %3, align 8
  store %struct.list_head* %1, %struct.list_head** %4, align 8
  store i32 0, i32* %9, align 4
  %10 = load %struct.nfs_commit_info*, %struct.nfs_commit_info** %3, align 8
  %11 = getelementptr inbounds %struct.nfs_commit_info, %struct.nfs_commit_info* %10, i32 0, i32 0
  %12 = load %struct.pnfs_ds_commit_info*, %struct.pnfs_ds_commit_info** %11, align 8
  store %struct.pnfs_ds_commit_info* %12, %struct.pnfs_ds_commit_info** %5, align 8
  %13 = load %struct.pnfs_ds_commit_info*, %struct.pnfs_ds_commit_info** %5, align 8
  %14 = getelementptr inbounds %struct.pnfs_ds_commit_info, %struct.pnfs_ds_commit_info* %13, i32 0, i32 1
  %15 = load %struct.pnfs_commit_bucket*, %struct.pnfs_commit_bucket** %14, align 8
  store %struct.pnfs_commit_bucket* %15, %struct.pnfs_commit_bucket** %6, align 8
  store i32 0, i32* %8, align 4
  br label %16

16:                                               ; preds = %43, %2
  %17 = load i32, i32* %8, align 4
  %18 = load %struct.pnfs_ds_commit_info*, %struct.pnfs_ds_commit_info** %5, align 8
  %19 = getelementptr inbounds %struct.pnfs_ds_commit_info, %struct.pnfs_ds_commit_info* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp slt i32 %17, %20
  br i1 %21, label %22, label %48

22:                                               ; preds = %16
  %23 = load %struct.pnfs_commit_bucket*, %struct.pnfs_commit_bucket** %6, align 8
  %24 = getelementptr inbounds %struct.pnfs_commit_bucket, %struct.pnfs_commit_bucket* %23, i32 0, i32 0
  %25 = call i64 @list_empty(i32* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %22
  br label %43

28:                                               ; preds = %22
  %29 = call %struct.nfs_commit_data* @nfs_commitdata_alloc(i32 0)
  store %struct.nfs_commit_data* %29, %struct.nfs_commit_data** %7, align 8
  %30 = load %struct.nfs_commit_data*, %struct.nfs_commit_data** %7, align 8
  %31 = icmp ne %struct.nfs_commit_data* %30, null
  br i1 %31, label %33, label %32

32:                                               ; preds = %28
  br label %48

33:                                               ; preds = %28
  %34 = load i32, i32* %8, align 4
  %35 = load %struct.nfs_commit_data*, %struct.nfs_commit_data** %7, align 8
  %36 = getelementptr inbounds %struct.nfs_commit_data, %struct.nfs_commit_data* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 4
  %37 = load %struct.nfs_commit_data*, %struct.nfs_commit_data** %7, align 8
  %38 = getelementptr inbounds %struct.nfs_commit_data, %struct.nfs_commit_data* %37, i32 0, i32 1
  %39 = load %struct.list_head*, %struct.list_head** %4, align 8
  %40 = call i32 @list_add(i32* %38, %struct.list_head* %39)
  %41 = load i32, i32* %9, align 4
  %42 = add i32 %41, 1
  store i32 %42, i32* %9, align 4
  br label %43

43:                                               ; preds = %33, %27
  %44 = load i32, i32* %8, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %8, align 4
  %46 = load %struct.pnfs_commit_bucket*, %struct.pnfs_commit_bucket** %6, align 8
  %47 = getelementptr inbounds %struct.pnfs_commit_bucket, %struct.pnfs_commit_bucket* %46, i32 1
  store %struct.pnfs_commit_bucket* %47, %struct.pnfs_commit_bucket** %6, align 8
  br label %16

48:                                               ; preds = %32, %16
  %49 = load %struct.nfs_commit_info*, %struct.nfs_commit_info** %3, align 8
  %50 = load i32, i32* %8, align 4
  %51 = call i32 @pnfs_generic_retry_commit(%struct.nfs_commit_info* %49, i32 %50)
  %52 = load i32, i32* %9, align 4
  ret i32 %52
}

declare dso_local i64 @list_empty(i32*) #1

declare dso_local %struct.nfs_commit_data* @nfs_commitdata_alloc(i32) #1

declare dso_local i32 @list_add(i32*, %struct.list_head*) #1

declare dso_local i32 @pnfs_generic_retry_commit(%struct.nfs_commit_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
