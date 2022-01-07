; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_write.c_nfs_request_add_commit_list_locked.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_write.c_nfs_request_add_commit_list_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs_page = type { i32 }
%struct.list_head = type { i32 }
%struct.nfs_commit_info = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@PG_CLEAN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nfs_request_add_commit_list_locked(%struct.nfs_page* %0, %struct.list_head* %1, %struct.nfs_commit_info* %2) #0 {
  %4 = alloca %struct.nfs_page*, align 8
  %5 = alloca %struct.list_head*, align 8
  %6 = alloca %struct.nfs_commit_info*, align 8
  store %struct.nfs_page* %0, %struct.nfs_page** %4, align 8
  store %struct.list_head* %1, %struct.list_head** %5, align 8
  store %struct.nfs_commit_info* %2, %struct.nfs_commit_info** %6, align 8
  %7 = load i32, i32* @PG_CLEAN, align 4
  %8 = load %struct.nfs_page*, %struct.nfs_page** %4, align 8
  %9 = getelementptr inbounds %struct.nfs_page, %struct.nfs_page* %8, i32 0, i32 0
  %10 = call i32 @set_bit(i32 %7, i32* %9)
  %11 = load %struct.nfs_page*, %struct.nfs_page** %4, align 8
  %12 = load %struct.list_head*, %struct.list_head** %5, align 8
  %13 = call i32 @nfs_list_add_request(%struct.nfs_page* %11, %struct.list_head* %12)
  %14 = load %struct.nfs_commit_info*, %struct.nfs_commit_info** %6, align 8
  %15 = getelementptr inbounds %struct.nfs_commit_info, %struct.nfs_commit_info* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = call i32 @atomic_long_inc(i32* %17)
  ret void
}

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @nfs_list_add_request(%struct.nfs_page*, %struct.list_head*) #1

declare dso_local i32 @atomic_long_inc(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
