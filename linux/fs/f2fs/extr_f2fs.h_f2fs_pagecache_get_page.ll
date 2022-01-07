; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_f2fs.h_f2fs_pagecache_get_page.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_f2fs.h_f2fs_pagecache_get_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }
%struct.address_space = type { i32 }

@FAULT_PAGE_GET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.page* (%struct.address_space*, i32, i32, i32)* @f2fs_pagecache_get_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.page* @f2fs_pagecache_get_page(%struct.address_space* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.page*, align 8
  %6 = alloca %struct.address_space*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.address_space* %0, %struct.address_space** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %10 = load %struct.address_space*, %struct.address_space** %6, align 8
  %11 = call i32 @F2FS_M_SB(%struct.address_space* %10)
  %12 = load i32, i32* @FAULT_PAGE_GET, align 4
  %13 = call i64 @time_to_inject(i32 %11, i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %4
  %16 = load i32, i32* @FAULT_PAGE_GET, align 4
  %17 = call i32 @f2fs_show_injection_info(i32 %16)
  store %struct.page* null, %struct.page** %5, align 8
  br label %24

18:                                               ; preds = %4
  %19 = load %struct.address_space*, %struct.address_space** %6, align 8
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* %8, align 4
  %22 = load i32, i32* %9, align 4
  %23 = call %struct.page* @pagecache_get_page(%struct.address_space* %19, i32 %20, i32 %21, i32 %22)
  store %struct.page* %23, %struct.page** %5, align 8
  br label %24

24:                                               ; preds = %18, %15
  %25 = load %struct.page*, %struct.page** %5, align 8
  ret %struct.page* %25
}

declare dso_local i64 @time_to_inject(i32, i32) #1

declare dso_local i32 @F2FS_M_SB(%struct.address_space*) #1

declare dso_local i32 @f2fs_show_injection_info(i32) #1

declare dso_local %struct.page* @pagecache_get_page(%struct.address_space*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
