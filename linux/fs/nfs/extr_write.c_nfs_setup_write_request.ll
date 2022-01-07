; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_write.c_nfs_setup_write_request.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_write.c_nfs_setup_write_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs_page = type { i32 }
%struct.nfs_open_context = type { i32 }
%struct.page = type { i32 }
%struct.inode = type { i32 }
%struct.TYPE_2__ = type { %struct.inode* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.nfs_page* (%struct.nfs_open_context*, %struct.page*, i32, i32)* @nfs_setup_write_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.nfs_page* @nfs_setup_write_request(%struct.nfs_open_context* %0, %struct.page* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.nfs_open_context*, align 8
  %6 = alloca %struct.page*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.inode*, align 8
  %10 = alloca %struct.nfs_page*, align 8
  store %struct.nfs_open_context* %0, %struct.nfs_open_context** %5, align 8
  store %struct.page* %1, %struct.page** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load %struct.page*, %struct.page** %6, align 8
  %12 = call %struct.TYPE_2__* @page_file_mapping(%struct.page* %11)
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load %struct.inode*, %struct.inode** %13, align 8
  store %struct.inode* %14, %struct.inode** %9, align 8
  %15 = load %struct.inode*, %struct.inode** %9, align 8
  %16 = load %struct.page*, %struct.page** %6, align 8
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* %8, align 4
  %19 = call %struct.nfs_page* @nfs_try_to_update_request(%struct.inode* %15, %struct.page* %16, i32 %17, i32 %18)
  store %struct.nfs_page* %19, %struct.nfs_page** %10, align 8
  %20 = load %struct.nfs_page*, %struct.nfs_page** %10, align 8
  %21 = icmp ne %struct.nfs_page* %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %4
  br label %37

23:                                               ; preds = %4
  %24 = load %struct.nfs_open_context*, %struct.nfs_open_context** %5, align 8
  %25 = load %struct.page*, %struct.page** %6, align 8
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* %8, align 4
  %28 = call %struct.nfs_page* @nfs_create_request(%struct.nfs_open_context* %24, %struct.page* %25, i32 %26, i32 %27)
  store %struct.nfs_page* %28, %struct.nfs_page** %10, align 8
  %29 = load %struct.nfs_page*, %struct.nfs_page** %10, align 8
  %30 = call i64 @IS_ERR(%struct.nfs_page* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %23
  br label %37

33:                                               ; preds = %23
  %34 = load %struct.inode*, %struct.inode** %9, align 8
  %35 = load %struct.nfs_page*, %struct.nfs_page** %10, align 8
  %36 = call i32 @nfs_inode_add_request(%struct.inode* %34, %struct.nfs_page* %35)
  br label %37

37:                                               ; preds = %33, %32, %22
  %38 = load %struct.nfs_page*, %struct.nfs_page** %10, align 8
  ret %struct.nfs_page* %38
}

declare dso_local %struct.TYPE_2__* @page_file_mapping(%struct.page*) #1

declare dso_local %struct.nfs_page* @nfs_try_to_update_request(%struct.inode*, %struct.page*, i32, i32) #1

declare dso_local %struct.nfs_page* @nfs_create_request(%struct.nfs_open_context*, %struct.page*, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.nfs_page*) #1

declare dso_local i32 @nfs_inode_add_request(%struct.inode*, %struct.nfs_page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
