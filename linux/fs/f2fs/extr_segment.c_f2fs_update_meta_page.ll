; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_segment.c_f2fs_update_meta_page.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_segment.c_f2fs_update_meta_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.f2fs_sb_info = type { i32 }
%struct.page = type { i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @f2fs_update_meta_page(%struct.f2fs_sb_info* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.f2fs_sb_info*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.page*, align 8
  store %struct.f2fs_sb_info* %0, %struct.f2fs_sb_info** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %4, align 8
  %9 = load i32, i32* %6, align 4
  %10 = call %struct.page* @f2fs_grab_meta_page(%struct.f2fs_sb_info* %8, i32 %9)
  store %struct.page* %10, %struct.page** %7, align 8
  %11 = load %struct.page*, %struct.page** %7, align 8
  %12 = call i32 @page_address(%struct.page* %11)
  %13 = load i8*, i8** %5, align 8
  %14 = load i32, i32* @PAGE_SIZE, align 4
  %15 = call i32 @memcpy(i32 %12, i8* %13, i32 %14)
  %16 = load %struct.page*, %struct.page** %7, align 8
  %17 = call i32 @set_page_dirty(%struct.page* %16)
  %18 = load %struct.page*, %struct.page** %7, align 8
  %19 = call i32 @f2fs_put_page(%struct.page* %18, i32 1)
  ret void
}

declare dso_local %struct.page* @f2fs_grab_meta_page(%struct.f2fs_sb_info*, i32) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

declare dso_local i32 @page_address(%struct.page*) #1

declare dso_local i32 @set_page_dirty(%struct.page*) #1

declare dso_local i32 @f2fs_put_page(%struct.page*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
