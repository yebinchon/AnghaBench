; ModuleID = '/home/carl/AnghaBench/linux/fs/nilfs2/extr_dat.c_nilfs_dat_commit_entry.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nilfs2/extr_dat.c_nilfs_dat_commit_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.nilfs_palloc_req = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.inode*, %struct.nilfs_palloc_req*)* @nilfs_dat_commit_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nilfs_dat_commit_entry(%struct.inode* %0, %struct.nilfs_palloc_req* %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.nilfs_palloc_req*, align 8
  store %struct.inode* %0, %struct.inode** %3, align 8
  store %struct.nilfs_palloc_req* %1, %struct.nilfs_palloc_req** %4, align 8
  %5 = load %struct.nilfs_palloc_req*, %struct.nilfs_palloc_req** %4, align 8
  %6 = getelementptr inbounds %struct.nilfs_palloc_req, %struct.nilfs_palloc_req* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = call i32 @mark_buffer_dirty(i32 %7)
  %9 = load %struct.inode*, %struct.inode** %3, align 8
  %10 = call i32 @nilfs_mdt_mark_dirty(%struct.inode* %9)
  %11 = load %struct.nilfs_palloc_req*, %struct.nilfs_palloc_req** %4, align 8
  %12 = getelementptr inbounds %struct.nilfs_palloc_req, %struct.nilfs_palloc_req* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @brelse(i32 %13)
  ret void
}

declare dso_local i32 @mark_buffer_dirty(i32) #1

declare dso_local i32 @nilfs_mdt_mark_dirty(%struct.inode*) #1

declare dso_local i32 @brelse(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
