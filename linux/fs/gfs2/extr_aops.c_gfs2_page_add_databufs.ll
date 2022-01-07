; ModuleID = '/home/carl/AnghaBench/linux/fs/gfs2/extr_aops.c_gfs2_page_add_databufs.c'
source_filename = "/home/carl/AnghaBench/linux/fs/gfs2/extr_aops.c_gfs2_page_add_databufs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gfs2_inode = type { i32 }
%struct.page = type { i32 }
%struct.buffer_head = type { i32, %struct.buffer_head* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gfs2_page_add_databufs(%struct.gfs2_inode* %0, %struct.page* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.gfs2_inode*, align 8
  %6 = alloca %struct.page*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.buffer_head*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.buffer_head*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.gfs2_inode* %0, %struct.gfs2_inode** %5, align 8
  store %struct.page* %1, %struct.page** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %15 = load %struct.page*, %struct.page** %6, align 8
  %16 = call %struct.buffer_head* @page_buffers(%struct.page* %15)
  store %struct.buffer_head* %16, %struct.buffer_head** %9, align 8
  %17 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %18 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  store i32 %19, i32* %10, align 4
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* %8, align 4
  %22 = add i32 %20, %21
  store i32 %22, i32* %12, align 4
  %23 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  store %struct.buffer_head* %23, %struct.buffer_head** %11, align 8
  store i32 0, i32* %13, align 4
  br label %24

24:                                               ; preds = %55, %4
  %25 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %26 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %27 = icmp ne %struct.buffer_head* %25, %26
  br i1 %27, label %32, label %28

28:                                               ; preds = %24
  %29 = load i32, i32* %13, align 4
  %30 = icmp ne i32 %29, 0
  %31 = xor i1 %30, true
  br label %32

32:                                               ; preds = %28, %24
  %33 = phi i1 [ true, %24 ], [ %31, %28 ]
  br i1 %33, label %34, label %60

34:                                               ; preds = %32
  %35 = load i32, i32* %13, align 4
  %36 = load i32, i32* %10, align 4
  %37 = add i32 %35, %36
  store i32 %37, i32* %14, align 4
  %38 = load i32, i32* %14, align 4
  %39 = load i32, i32* %7, align 4
  %40 = icmp ule i32 %38, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %34
  br label %55

42:                                               ; preds = %34
  %43 = load i32, i32* %13, align 4
  %44 = load i32, i32* %12, align 4
  %45 = icmp uge i32 %43, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %42
  br label %60

47:                                               ; preds = %42
  %48 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %49 = call i32 @set_buffer_uptodate(%struct.buffer_head* %48)
  %50 = load %struct.gfs2_inode*, %struct.gfs2_inode** %5, align 8
  %51 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %54 = call i32 @gfs2_trans_add_data(i32 %52, %struct.buffer_head* %53)
  br label %55

55:                                               ; preds = %47, %41
  %56 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %57 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %56, i32 0, i32 1
  %58 = load %struct.buffer_head*, %struct.buffer_head** %57, align 8
  store %struct.buffer_head* %58, %struct.buffer_head** %11, align 8
  %59 = load i32, i32* %14, align 4
  store i32 %59, i32* %13, align 4
  br label %24

60:                                               ; preds = %46, %32
  ret void
}

declare dso_local %struct.buffer_head* @page_buffers(%struct.page*) #1

declare dso_local i32 @set_buffer_uptodate(%struct.buffer_head*) #1

declare dso_local i32 @gfs2_trans_add_data(i32, %struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
