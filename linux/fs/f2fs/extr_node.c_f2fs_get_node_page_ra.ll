; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_node.c_f2fs_get_node_page_ra.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_node.c_f2fs_get_node_page_ra.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }
%struct.f2fs_sb_info = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.page* @f2fs_get_node_page_ra(%struct.page* %0, i32 %1) #0 {
  %3 = alloca %struct.page*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.f2fs_sb_info*, align 8
  %6 = alloca i32, align 4
  store %struct.page* %0, %struct.page** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.page*, %struct.page** %3, align 8
  %8 = call %struct.f2fs_sb_info* @F2FS_P_SB(%struct.page* %7)
  store %struct.f2fs_sb_info* %8, %struct.f2fs_sb_info** %5, align 8
  %9 = load %struct.page*, %struct.page** %3, align 8
  %10 = load i32, i32* %4, align 4
  %11 = call i32 @get_nid(%struct.page* %9, i32 %10, i32 0)
  store i32 %11, i32* %6, align 4
  %12 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %5, align 8
  %13 = load i32, i32* %6, align 4
  %14 = load %struct.page*, %struct.page** %3, align 8
  %15 = load i32, i32* %4, align 4
  %16 = call %struct.page* @__get_node_page(%struct.f2fs_sb_info* %12, i32 %13, %struct.page* %14, i32 %15)
  ret %struct.page* %16
}

declare dso_local %struct.f2fs_sb_info* @F2FS_P_SB(%struct.page*) #1

declare dso_local i32 @get_nid(%struct.page*, i32, i32) #1

declare dso_local %struct.page* @__get_node_page(%struct.f2fs_sb_info*, i32, %struct.page*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
