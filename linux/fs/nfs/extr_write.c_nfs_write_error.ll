; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_write.c_nfs_write_error.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_write.c_nfs_write_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs_page = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nfs_page*, i32)* @nfs_write_error to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nfs_write_error(%struct.nfs_page* %0, i32 %1) #0 {
  %3 = alloca %struct.nfs_page*, align 8
  %4 = alloca i32, align 4
  store %struct.nfs_page* %0, %struct.nfs_page** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.nfs_page*, %struct.nfs_page** %3, align 8
  %6 = getelementptr inbounds %struct.nfs_page, %struct.nfs_page* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = call i32 @page_file_mapping(i32 %7)
  %9 = call i32 @nfs_set_pageerror(i32 %8)
  %10 = load %struct.nfs_page*, %struct.nfs_page** %3, align 8
  %11 = getelementptr inbounds %struct.nfs_page, %struct.nfs_page* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* %4, align 4
  %14 = call i32 @nfs_mapping_set_error(i32 %12, i32 %13)
  %15 = load %struct.nfs_page*, %struct.nfs_page** %3, align 8
  %16 = call i32 @nfs_inode_remove_request(%struct.nfs_page* %15)
  %17 = load %struct.nfs_page*, %struct.nfs_page** %3, align 8
  %18 = call i32 @nfs_end_page_writeback(%struct.nfs_page* %17)
  %19 = load %struct.nfs_page*, %struct.nfs_page** %3, align 8
  %20 = call i32 @nfs_release_request(%struct.nfs_page* %19)
  ret void
}

declare dso_local i32 @nfs_set_pageerror(i32) #1

declare dso_local i32 @page_file_mapping(i32) #1

declare dso_local i32 @nfs_mapping_set_error(i32, i32) #1

declare dso_local i32 @nfs_inode_remove_request(%struct.nfs_page*) #1

declare dso_local i32 @nfs_end_page_writeback(%struct.nfs_page*) #1

declare dso_local i32 @nfs_release_request(%struct.nfs_page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
