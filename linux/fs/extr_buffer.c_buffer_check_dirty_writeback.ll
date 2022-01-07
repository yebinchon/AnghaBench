; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_buffer.c_buffer_check_dirty_writeback.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_buffer.c_buffer_check_dirty_writeback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }
%struct.buffer_head = type { %struct.buffer_head* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @buffer_check_dirty_writeback(%struct.page* %0, i32* %1, i32* %2) #0 {
  %4 = alloca %struct.page*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.buffer_head*, align 8
  %8 = alloca %struct.buffer_head*, align 8
  store %struct.page* %0, %struct.page** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %9 = load i32*, i32** %5, align 8
  store i32 0, i32* %9, align 4
  %10 = load i32*, i32** %6, align 8
  store i32 0, i32* %10, align 4
  %11 = load %struct.page*, %struct.page** %4, align 8
  %12 = call i32 @PageLocked(%struct.page* %11)
  %13 = icmp ne i32 %12, 0
  %14 = xor i1 %13, true
  %15 = zext i1 %14 to i32
  %16 = call i32 @BUG_ON(i32 %15)
  %17 = load %struct.page*, %struct.page** %4, align 8
  %18 = call i32 @page_has_buffers(%struct.page* %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %3
  br label %51

21:                                               ; preds = %3
  %22 = load %struct.page*, %struct.page** %4, align 8
  %23 = call i64 @PageWriteback(%struct.page* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %21
  %26 = load i32*, i32** %6, align 8
  store i32 1, i32* %26, align 4
  br label %27

27:                                               ; preds = %25, %21
  %28 = load %struct.page*, %struct.page** %4, align 8
  %29 = call %struct.buffer_head* @page_buffers(%struct.page* %28)
  store %struct.buffer_head* %29, %struct.buffer_head** %7, align 8
  %30 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  store %struct.buffer_head* %30, %struct.buffer_head** %8, align 8
  br label %31

31:                                               ; preds = %47, %27
  %32 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %33 = call i64 @buffer_locked(%struct.buffer_head* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %31
  %36 = load i32*, i32** %6, align 8
  store i32 1, i32* %36, align 4
  br label %37

37:                                               ; preds = %35, %31
  %38 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %39 = call i64 @buffer_dirty(%struct.buffer_head* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %37
  %42 = load i32*, i32** %5, align 8
  store i32 1, i32* %42, align 4
  br label %43

43:                                               ; preds = %41, %37
  %44 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %45 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %44, i32 0, i32 0
  %46 = load %struct.buffer_head*, %struct.buffer_head** %45, align 8
  store %struct.buffer_head* %46, %struct.buffer_head** %8, align 8
  br label %47

47:                                               ; preds = %43
  %48 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %49 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %50 = icmp ne %struct.buffer_head* %48, %49
  br i1 %50, label %31, label %51

51:                                               ; preds = %20, %47
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @PageLocked(%struct.page*) #1

declare dso_local i32 @page_has_buffers(%struct.page*) #1

declare dso_local i64 @PageWriteback(%struct.page*) #1

declare dso_local %struct.buffer_head* @page_buffers(%struct.page*) #1

declare dso_local i64 @buffer_locked(%struct.buffer_head*) #1

declare dso_local i64 @buffer_dirty(%struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
