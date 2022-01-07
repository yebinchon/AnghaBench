; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_pnfs_nfs.c_pnfs_generic_recover_commit_reqs.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_pnfs_nfs.c_pnfs_generic_recover_commit_reqs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.list_head = type { i32 }
%struct.nfs_commit_info = type { %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32, i32, %struct.pnfs_commit_bucket* }
%struct.pnfs_commit_bucket = type { %struct.pnfs_layout_segment*, i32 }
%struct.pnfs_layout_segment = type { i32 }
%struct.TYPE_4__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pnfs_generic_recover_commit_reqs(%struct.list_head* %0, %struct.nfs_commit_info* %1) #0 {
  %3 = alloca %struct.list_head*, align 8
  %4 = alloca %struct.nfs_commit_info*, align 8
  %5 = alloca %struct.pnfs_commit_bucket*, align 8
  %6 = alloca %struct.pnfs_layout_segment*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.list_head* %0, %struct.list_head** %3, align 8
  store %struct.nfs_commit_info* %1, %struct.nfs_commit_info** %4, align 8
  %9 = load %struct.nfs_commit_info*, %struct.nfs_commit_info** %4, align 8
  %10 = getelementptr inbounds %struct.nfs_commit_info, %struct.nfs_commit_info* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 8
  %12 = call %struct.TYPE_4__* @NFS_I(i32 %11)
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = call i32 @lockdep_assert_held(i32* %13)
  br label %15

15:                                               ; preds = %50, %2
  store i32 0, i32* %8, align 4
  %16 = load %struct.nfs_commit_info*, %struct.nfs_commit_info** %4, align 8
  %17 = getelementptr inbounds %struct.nfs_commit_info, %struct.nfs_commit_info* %16, i32 0, i32 0
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 2
  %20 = load %struct.pnfs_commit_bucket*, %struct.pnfs_commit_bucket** %19, align 8
  store %struct.pnfs_commit_bucket* %20, %struct.pnfs_commit_bucket** %5, align 8
  br label %21

21:                                               ; preds = %59, %15
  %22 = load i32, i32* %8, align 4
  %23 = load %struct.nfs_commit_info*, %struct.nfs_commit_info** %4, align 8
  %24 = getelementptr inbounds %struct.nfs_commit_info, %struct.nfs_commit_info* %23, i32 0, i32 0
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp slt i32 %22, %27
  br i1 %28, label %29, label %64

29:                                               ; preds = %21
  %30 = load %struct.pnfs_commit_bucket*, %struct.pnfs_commit_bucket** %5, align 8
  %31 = getelementptr inbounds %struct.pnfs_commit_bucket, %struct.pnfs_commit_bucket* %30, i32 0, i32 1
  %32 = load %struct.list_head*, %struct.list_head** %3, align 8
  %33 = load %struct.nfs_commit_info*, %struct.nfs_commit_info** %4, align 8
  %34 = call i32 @nfs_scan_commit_list(i32* %31, %struct.list_head* %32, %struct.nfs_commit_info* %33, i32 0)
  store i32 %34, i32* %7, align 4
  %35 = load i32, i32* %7, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %29
  br label %59

38:                                               ; preds = %29
  %39 = load i32, i32* %7, align 4
  %40 = load %struct.nfs_commit_info*, %struct.nfs_commit_info** %4, align 8
  %41 = getelementptr inbounds %struct.nfs_commit_info, %struct.nfs_commit_info* %40, i32 0, i32 0
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = sub nsw i32 %44, %39
  store i32 %45, i32* %43, align 4
  %46 = load %struct.pnfs_commit_bucket*, %struct.pnfs_commit_bucket** %5, align 8
  %47 = getelementptr inbounds %struct.pnfs_commit_bucket, %struct.pnfs_commit_bucket* %46, i32 0, i32 1
  %48 = call i64 @list_empty(i32* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %58

50:                                               ; preds = %38
  %51 = load %struct.pnfs_commit_bucket*, %struct.pnfs_commit_bucket** %5, align 8
  %52 = getelementptr inbounds %struct.pnfs_commit_bucket, %struct.pnfs_commit_bucket* %51, i32 0, i32 0
  %53 = load %struct.pnfs_layout_segment*, %struct.pnfs_layout_segment** %52, align 8
  store %struct.pnfs_layout_segment* %53, %struct.pnfs_layout_segment** %6, align 8
  %54 = load %struct.pnfs_commit_bucket*, %struct.pnfs_commit_bucket** %5, align 8
  %55 = getelementptr inbounds %struct.pnfs_commit_bucket, %struct.pnfs_commit_bucket* %54, i32 0, i32 0
  store %struct.pnfs_layout_segment* null, %struct.pnfs_layout_segment** %55, align 8
  %56 = load %struct.pnfs_layout_segment*, %struct.pnfs_layout_segment** %6, align 8
  %57 = call i32 @pnfs_put_lseg(%struct.pnfs_layout_segment* %56)
  br label %15

58:                                               ; preds = %38
  br label %59

59:                                               ; preds = %58, %37
  %60 = load i32, i32* %8, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %8, align 4
  %62 = load %struct.pnfs_commit_bucket*, %struct.pnfs_commit_bucket** %5, align 8
  %63 = getelementptr inbounds %struct.pnfs_commit_bucket, %struct.pnfs_commit_bucket* %62, i32 1
  store %struct.pnfs_commit_bucket* %63, %struct.pnfs_commit_bucket** %5, align 8
  br label %21

64:                                               ; preds = %21
  ret void
}

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local %struct.TYPE_4__* @NFS_I(i32) #1

declare dso_local i32 @nfs_scan_commit_list(i32*, %struct.list_head*, %struct.nfs_commit_info*, i32) #1

declare dso_local i64 @list_empty(i32*) #1

declare dso_local i32 @pnfs_put_lseg(%struct.pnfs_layout_segment*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
