; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_write.c_nfs_writepage_setup.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_write.c_nfs_writepage_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs_open_context = type { i32 }
%struct.page = type { i32 }
%struct.nfs_page = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfs_open_context*, %struct.page*, i32, i32)* @nfs_writepage_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfs_writepage_setup(%struct.nfs_open_context* %0, %struct.page* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.nfs_open_context*, align 8
  %7 = alloca %struct.page*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.nfs_page*, align 8
  store %struct.nfs_open_context* %0, %struct.nfs_open_context** %6, align 8
  store %struct.page* %1, %struct.page** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %11 = load %struct.nfs_open_context*, %struct.nfs_open_context** %6, align 8
  %12 = load %struct.page*, %struct.page** %7, align 8
  %13 = load i32, i32* %8, align 4
  %14 = load i32, i32* %9, align 4
  %15 = call %struct.nfs_page* @nfs_setup_write_request(%struct.nfs_open_context* %11, %struct.page* %12, i32 %13, i32 %14)
  store %struct.nfs_page* %15, %struct.nfs_page** %10, align 8
  %16 = load %struct.nfs_page*, %struct.nfs_page** %10, align 8
  %17 = call i64 @IS_ERR(%struct.nfs_page* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %4
  %20 = load %struct.nfs_page*, %struct.nfs_page** %10, align 8
  %21 = call i32 @PTR_ERR(%struct.nfs_page* %20)
  store i32 %21, i32* %5, align 4
  br label %33

22:                                               ; preds = %4
  %23 = load %struct.page*, %struct.page** %7, align 8
  %24 = load i32, i32* %8, align 4
  %25 = load i32, i32* %9, align 4
  %26 = call i32 @nfs_grow_file(%struct.page* %23, i32 %24, i32 %25)
  %27 = load %struct.nfs_page*, %struct.nfs_page** %10, align 8
  %28 = call i32 @nfs_mark_uptodate(%struct.nfs_page* %27)
  %29 = load %struct.nfs_page*, %struct.nfs_page** %10, align 8
  %30 = call i32 @nfs_mark_request_dirty(%struct.nfs_page* %29)
  %31 = load %struct.nfs_page*, %struct.nfs_page** %10, align 8
  %32 = call i32 @nfs_unlock_and_release_request(%struct.nfs_page* %31)
  store i32 0, i32* %5, align 4
  br label %33

33:                                               ; preds = %22, %19
  %34 = load i32, i32* %5, align 4
  ret i32 %34
}

declare dso_local %struct.nfs_page* @nfs_setup_write_request(%struct.nfs_open_context*, %struct.page*, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.nfs_page*) #1

declare dso_local i32 @PTR_ERR(%struct.nfs_page*) #1

declare dso_local i32 @nfs_grow_file(%struct.page*, i32, i32) #1

declare dso_local i32 @nfs_mark_uptodate(%struct.nfs_page*) #1

declare dso_local i32 @nfs_mark_request_dirty(%struct.nfs_page*) #1

declare dso_local i32 @nfs_unlock_and_release_request(%struct.nfs_page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
