; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_pnfs_nfs.c_pnfs_generic_scan_ds_commit_list.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_pnfs_nfs.c_pnfs_generic_scan_ds_commit_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pnfs_commit_bucket = type { i32*, i32*, %struct.list_head, %struct.list_head }
%struct.list_head = type { i32 }
%struct.nfs_commit_info = type { %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pnfs_commit_bucket*, %struct.nfs_commit_info*, i32)* @pnfs_generic_scan_ds_commit_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pnfs_generic_scan_ds_commit_list(%struct.pnfs_commit_bucket* %0, %struct.nfs_commit_info* %1, i32 %2) #0 {
  %4 = alloca %struct.pnfs_commit_bucket*, align 8
  %5 = alloca %struct.nfs_commit_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.list_head*, align 8
  %8 = alloca %struct.list_head*, align 8
  %9 = alloca i32, align 4
  store %struct.pnfs_commit_bucket* %0, %struct.pnfs_commit_bucket** %4, align 8
  store %struct.nfs_commit_info* %1, %struct.nfs_commit_info** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.pnfs_commit_bucket*, %struct.pnfs_commit_bucket** %4, align 8
  %11 = getelementptr inbounds %struct.pnfs_commit_bucket, %struct.pnfs_commit_bucket* %10, i32 0, i32 3
  store %struct.list_head* %11, %struct.list_head** %7, align 8
  %12 = load %struct.pnfs_commit_bucket*, %struct.pnfs_commit_bucket** %4, align 8
  %13 = getelementptr inbounds %struct.pnfs_commit_bucket, %struct.pnfs_commit_bucket* %12, i32 0, i32 2
  store %struct.list_head* %13, %struct.list_head** %8, align 8
  %14 = load %struct.nfs_commit_info*, %struct.nfs_commit_info** %5, align 8
  %15 = getelementptr inbounds %struct.nfs_commit_info, %struct.nfs_commit_info* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = call %struct.TYPE_4__* @NFS_I(i32 %16)
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = call i32 @lockdep_assert_held(i32* %18)
  %20 = load %struct.list_head*, %struct.list_head** %7, align 8
  %21 = load %struct.list_head*, %struct.list_head** %8, align 8
  %22 = load %struct.nfs_commit_info*, %struct.nfs_commit_info** %5, align 8
  %23 = load i32, i32* %6, align 4
  %24 = call i32 @nfs_scan_commit_list(%struct.list_head* %20, %struct.list_head* %21, %struct.nfs_commit_info* %22, i32 %23)
  store i32 %24, i32* %9, align 4
  %25 = load i32, i32* %9, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %65

27:                                               ; preds = %3
  %28 = load i32, i32* %9, align 4
  %29 = load %struct.nfs_commit_info*, %struct.nfs_commit_info** %5, align 8
  %30 = getelementptr inbounds %struct.nfs_commit_info, %struct.nfs_commit_info* %29, i32 0, i32 0
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = sub nsw i32 %33, %28
  store i32 %34, i32* %32, align 4
  %35 = load i32, i32* %9, align 4
  %36 = load %struct.nfs_commit_info*, %struct.nfs_commit_info** %5, align 8
  %37 = getelementptr inbounds %struct.nfs_commit_info, %struct.nfs_commit_info* %36, i32 0, i32 0
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = add nsw i32 %40, %35
  store i32 %41, i32* %39, align 4
  %42 = load %struct.pnfs_commit_bucket*, %struct.pnfs_commit_bucket** %4, align 8
  %43 = getelementptr inbounds %struct.pnfs_commit_bucket, %struct.pnfs_commit_bucket* %42, i32 0, i32 1
  %44 = load i32*, i32** %43, align 8
  %45 = icmp eq i32* %44, null
  br i1 %45, label %46, label %53

46:                                               ; preds = %27
  %47 = load %struct.pnfs_commit_bucket*, %struct.pnfs_commit_bucket** %4, align 8
  %48 = getelementptr inbounds %struct.pnfs_commit_bucket, %struct.pnfs_commit_bucket* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = call i32* @pnfs_get_lseg(i32* %49)
  %51 = load %struct.pnfs_commit_bucket*, %struct.pnfs_commit_bucket** %4, align 8
  %52 = getelementptr inbounds %struct.pnfs_commit_bucket, %struct.pnfs_commit_bucket* %51, i32 0, i32 1
  store i32* %50, i32** %52, align 8
  br label %53

53:                                               ; preds = %46, %27
  %54 = load %struct.list_head*, %struct.list_head** %7, align 8
  %55 = call i64 @list_empty(%struct.list_head* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %64

57:                                               ; preds = %53
  %58 = load %struct.pnfs_commit_bucket*, %struct.pnfs_commit_bucket** %4, align 8
  %59 = getelementptr inbounds %struct.pnfs_commit_bucket, %struct.pnfs_commit_bucket* %58, i32 0, i32 0
  %60 = load i32*, i32** %59, align 8
  %61 = call i32 @pnfs_put_lseg(i32* %60)
  %62 = load %struct.pnfs_commit_bucket*, %struct.pnfs_commit_bucket** %4, align 8
  %63 = getelementptr inbounds %struct.pnfs_commit_bucket, %struct.pnfs_commit_bucket* %62, i32 0, i32 0
  store i32* null, i32** %63, align 8
  br label %64

64:                                               ; preds = %57, %53
  br label %65

65:                                               ; preds = %64, %3
  %66 = load i32, i32* %9, align 4
  ret i32 %66
}

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local %struct.TYPE_4__* @NFS_I(i32) #1

declare dso_local i32 @nfs_scan_commit_list(%struct.list_head*, %struct.list_head*, %struct.nfs_commit_info*, i32) #1

declare dso_local i32* @pnfs_get_lseg(i32*) #1

declare dso_local i64 @list_empty(%struct.list_head*) #1

declare dso_local i32 @pnfs_put_lseg(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
