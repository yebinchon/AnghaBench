; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_buffer.c___block_commit_write.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_buffer.c___block_commit_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.page = type { i32 }
%struct.buffer_head = type { i32, %struct.buffer_head* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.page*, i32, i32)* @__block_commit_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__block_commit_write(%struct.inode* %0, %struct.page* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.page*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.buffer_head*, align 8
  %14 = alloca %struct.buffer_head*, align 8
  store %struct.inode* %0, %struct.inode** %5, align 8
  store %struct.page* %1, %struct.page** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %11, align 4
  %15 = load %struct.page*, %struct.page** %6, align 8
  %16 = call %struct.buffer_head* @page_buffers(%struct.page* %15)
  store %struct.buffer_head* %16, %struct.buffer_head** %14, align 8
  store %struct.buffer_head* %16, %struct.buffer_head** %13, align 8
  %17 = load %struct.buffer_head*, %struct.buffer_head** %13, align 8
  %18 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  store i32 %19, i32* %12, align 4
  store i32 0, i32* %9, align 4
  br label %20

20:                                               ; preds = %49, %4
  %21 = load i32, i32* %9, align 4
  %22 = load i32, i32* %12, align 4
  %23 = add i32 %21, %22
  store i32 %23, i32* %10, align 4
  %24 = load i32, i32* %10, align 4
  %25 = load i32, i32* %7, align 4
  %26 = icmp ule i32 %24, %25
  br i1 %26, label %31, label %27

27:                                               ; preds = %20
  %28 = load i32, i32* %9, align 4
  %29 = load i32, i32* %8, align 4
  %30 = icmp uge i32 %28, %29
  br i1 %30, label %31, label %37

31:                                               ; preds = %27, %20
  %32 = load %struct.buffer_head*, %struct.buffer_head** %13, align 8
  %33 = call i32 @buffer_uptodate(%struct.buffer_head* %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %31
  store i32 1, i32* %11, align 4
  br label %36

36:                                               ; preds = %35, %31
  br label %42

37:                                               ; preds = %27
  %38 = load %struct.buffer_head*, %struct.buffer_head** %13, align 8
  %39 = call i32 @set_buffer_uptodate(%struct.buffer_head* %38)
  %40 = load %struct.buffer_head*, %struct.buffer_head** %13, align 8
  %41 = call i32 @mark_buffer_dirty(%struct.buffer_head* %40)
  br label %42

42:                                               ; preds = %37, %36
  %43 = load %struct.buffer_head*, %struct.buffer_head** %13, align 8
  %44 = call i32 @clear_buffer_new(%struct.buffer_head* %43)
  %45 = load i32, i32* %10, align 4
  store i32 %45, i32* %9, align 4
  %46 = load %struct.buffer_head*, %struct.buffer_head** %13, align 8
  %47 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %46, i32 0, i32 1
  %48 = load %struct.buffer_head*, %struct.buffer_head** %47, align 8
  store %struct.buffer_head* %48, %struct.buffer_head** %13, align 8
  br label %49

49:                                               ; preds = %42
  %50 = load %struct.buffer_head*, %struct.buffer_head** %13, align 8
  %51 = load %struct.buffer_head*, %struct.buffer_head** %14, align 8
  %52 = icmp ne %struct.buffer_head* %50, %51
  br i1 %52, label %20, label %53

53:                                               ; preds = %49
  %54 = load i32, i32* %11, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %59, label %56

56:                                               ; preds = %53
  %57 = load %struct.page*, %struct.page** %6, align 8
  %58 = call i32 @SetPageUptodate(%struct.page* %57)
  br label %59

59:                                               ; preds = %56, %53
  ret i32 0
}

declare dso_local %struct.buffer_head* @page_buffers(%struct.page*) #1

declare dso_local i32 @buffer_uptodate(%struct.buffer_head*) #1

declare dso_local i32 @set_buffer_uptodate(%struct.buffer_head*) #1

declare dso_local i32 @mark_buffer_dirty(%struct.buffer_head*) #1

declare dso_local i32 @clear_buffer_new(%struct.buffer_head*) #1

declare dso_local i32 @SetPageUptodate(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
