; ModuleID = '/home/carl/AnghaBench/linux/fs/nilfs2/extr_page.h_nilfs_page_get_nth_block.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nilfs2/extr_page.h_nilfs_page_get_nth_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buffer_head = type { %struct.buffer_head* }
%struct.page = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.buffer_head* (%struct.page*, i32)* @nilfs_page_get_nth_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.buffer_head* @nilfs_page_get_nth_block(%struct.page* %0, i32 %1) #0 {
  %3 = alloca %struct.page*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.buffer_head*, align 8
  store %struct.page* %0, %struct.page** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.page*, %struct.page** %3, align 8
  %7 = call %struct.buffer_head* @page_buffers(%struct.page* %6)
  store %struct.buffer_head* %7, %struct.buffer_head** %5, align 8
  br label %8

8:                                                ; preds = %12, %2
  %9 = load i32, i32* %4, align 4
  %10 = add i32 %9, -1
  store i32 %10, i32* %4, align 4
  %11 = icmp ugt i32 %9, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %8
  %13 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %14 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %13, i32 0, i32 0
  %15 = load %struct.buffer_head*, %struct.buffer_head** %14, align 8
  store %struct.buffer_head* %15, %struct.buffer_head** %5, align 8
  br label %8

16:                                               ; preds = %8
  %17 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %18 = call i32 @get_bh(%struct.buffer_head* %17)
  %19 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  ret %struct.buffer_head* %19
}

declare dso_local %struct.buffer_head* @page_buffers(%struct.page*) #1

declare dso_local i32 @get_bh(%struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
