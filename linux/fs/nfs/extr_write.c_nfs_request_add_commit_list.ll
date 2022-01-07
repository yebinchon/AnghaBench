; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_write.c_nfs_request_add_commit_list.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_write.c_nfs_request_add_commit_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs_page = type { i64 }
%struct.nfs_commit_info = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nfs_request_add_commit_list(%struct.nfs_page* %0, %struct.nfs_commit_info* %1) #0 {
  %3 = alloca %struct.nfs_page*, align 8
  %4 = alloca %struct.nfs_commit_info*, align 8
  store %struct.nfs_page* %0, %struct.nfs_page** %3, align 8
  store %struct.nfs_commit_info* %1, %struct.nfs_commit_info** %4, align 8
  %5 = load %struct.nfs_commit_info*, %struct.nfs_commit_info** %4, align 8
  %6 = getelementptr inbounds %struct.nfs_commit_info, %struct.nfs_commit_info* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = call %struct.TYPE_4__* @NFS_I(i32 %7)
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = call i32 @mutex_lock(i32* %9)
  %11 = load %struct.nfs_page*, %struct.nfs_page** %3, align 8
  %12 = load %struct.nfs_commit_info*, %struct.nfs_commit_info** %4, align 8
  %13 = getelementptr inbounds %struct.nfs_commit_info, %struct.nfs_commit_info* %12, i32 0, i32 1
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load %struct.nfs_commit_info*, %struct.nfs_commit_info** %4, align 8
  %17 = call i32 @nfs_request_add_commit_list_locked(%struct.nfs_page* %11, i32* %15, %struct.nfs_commit_info* %16)
  %18 = load %struct.nfs_commit_info*, %struct.nfs_commit_info** %4, align 8
  %19 = getelementptr inbounds %struct.nfs_commit_info, %struct.nfs_commit_info* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = call %struct.TYPE_4__* @NFS_I(i32 %20)
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = call i32 @mutex_unlock(i32* %22)
  %24 = load %struct.nfs_page*, %struct.nfs_page** %3, align 8
  %25 = getelementptr inbounds %struct.nfs_page, %struct.nfs_page* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %2
  %29 = load %struct.nfs_page*, %struct.nfs_page** %3, align 8
  %30 = getelementptr inbounds %struct.nfs_page, %struct.nfs_page* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.nfs_commit_info*, %struct.nfs_commit_info** %4, align 8
  %33 = call i32 @nfs_mark_page_unstable(i64 %31, %struct.nfs_commit_info* %32)
  br label %34

34:                                               ; preds = %28, %2
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.TYPE_4__* @NFS_I(i32) #1

declare dso_local i32 @nfs_request_add_commit_list_locked(%struct.nfs_page*, i32*, %struct.nfs_commit_info*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @nfs_mark_page_unstable(i64, %struct.nfs_commit_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
