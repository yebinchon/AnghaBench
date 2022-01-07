; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_write.c_nfs_unroll_locks.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_write.c_nfs_unroll_locks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.nfs_page = type { i32, %struct.nfs_page* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.inode*, %struct.nfs_page*, %struct.nfs_page*)* @nfs_unroll_locks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nfs_unroll_locks(%struct.inode* %0, %struct.nfs_page* %1, %struct.nfs_page* %2) #0 {
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.nfs_page*, align 8
  %6 = alloca %struct.nfs_page*, align 8
  %7 = alloca %struct.nfs_page*, align 8
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.nfs_page* %1, %struct.nfs_page** %5, align 8
  store %struct.nfs_page* %2, %struct.nfs_page** %6, align 8
  %8 = load %struct.nfs_page*, %struct.nfs_page** %5, align 8
  %9 = getelementptr inbounds %struct.nfs_page, %struct.nfs_page* %8, i32 0, i32 1
  %10 = load %struct.nfs_page*, %struct.nfs_page** %9, align 8
  store %struct.nfs_page* %10, %struct.nfs_page** %7, align 8
  br label %11

11:                                               ; preds = %24, %3
  %12 = load %struct.nfs_page*, %struct.nfs_page** %7, align 8
  %13 = load %struct.nfs_page*, %struct.nfs_page** %6, align 8
  %14 = icmp ne %struct.nfs_page* %12, %13
  br i1 %14, label %15, label %28

15:                                               ; preds = %11
  %16 = load %struct.nfs_page*, %struct.nfs_page** %7, align 8
  %17 = getelementptr inbounds %struct.nfs_page, %struct.nfs_page* %16, i32 0, i32 0
  %18 = call i32 @kref_read(i32* %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %15
  br label %24

21:                                               ; preds = %15
  %22 = load %struct.nfs_page*, %struct.nfs_page** %7, align 8
  %23 = call i32 @nfs_unlock_and_release_request(%struct.nfs_page* %22)
  br label %24

24:                                               ; preds = %21, %20
  %25 = load %struct.nfs_page*, %struct.nfs_page** %7, align 8
  %26 = getelementptr inbounds %struct.nfs_page, %struct.nfs_page* %25, i32 0, i32 1
  %27 = load %struct.nfs_page*, %struct.nfs_page** %26, align 8
  store %struct.nfs_page* %27, %struct.nfs_page** %7, align 8
  br label %11

28:                                               ; preds = %11
  ret void
}

declare dso_local i32 @kref_read(i32*) #1

declare dso_local i32 @nfs_unlock_and_release_request(%struct.nfs_page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
