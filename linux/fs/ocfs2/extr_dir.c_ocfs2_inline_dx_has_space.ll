; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_dir.c_ocfs2_inline_dx_has_space.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_dir.c_ocfs2_inline_dx_has_space.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buffer_head = type { i64 }
%struct.ocfs2_dx_root_block = type { %struct.ocfs2_dx_entry_list }
%struct.ocfs2_dx_entry_list = type { i32, i32 }

@ENOSPC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.buffer_head*)* @ocfs2_inline_dx_has_space to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_inline_dx_has_space(%struct.buffer_head* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.buffer_head*, align 8
  %4 = alloca %struct.ocfs2_dx_root_block*, align 8
  %5 = alloca %struct.ocfs2_dx_entry_list*, align 8
  store %struct.buffer_head* %0, %struct.buffer_head** %3, align 8
  %6 = load %struct.buffer_head*, %struct.buffer_head** %3, align 8
  %7 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = inttoptr i64 %8 to %struct.ocfs2_dx_root_block*
  store %struct.ocfs2_dx_root_block* %9, %struct.ocfs2_dx_root_block** %4, align 8
  %10 = load %struct.ocfs2_dx_root_block*, %struct.ocfs2_dx_root_block** %4, align 8
  %11 = getelementptr inbounds %struct.ocfs2_dx_root_block, %struct.ocfs2_dx_root_block* %10, i32 0, i32 0
  store %struct.ocfs2_dx_entry_list* %11, %struct.ocfs2_dx_entry_list** %5, align 8
  %12 = load %struct.ocfs2_dx_entry_list*, %struct.ocfs2_dx_entry_list** %5, align 8
  %13 = getelementptr inbounds %struct.ocfs2_dx_entry_list, %struct.ocfs2_dx_entry_list* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = call i64 @le16_to_cpu(i32 %14)
  %16 = load %struct.ocfs2_dx_entry_list*, %struct.ocfs2_dx_entry_list** %5, align 8
  %17 = getelementptr inbounds %struct.ocfs2_dx_entry_list, %struct.ocfs2_dx_entry_list* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i64 @le16_to_cpu(i32 %18)
  %20 = icmp sge i64 %15, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %1
  %22 = load i32, i32* @ENOSPC, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %2, align 4
  br label %25

24:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %25

25:                                               ; preds = %24, %21
  %26 = load i32, i32* %2, align 4
  ret i32 %26
}

declare dso_local i64 @le16_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
