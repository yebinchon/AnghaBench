; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_buffer.c_create_empty_buffers.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_buffer.c_create_empty_buffers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.buffer_head = type { i64, %struct.buffer_head* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @create_empty_buffers(%struct.page* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.page*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.buffer_head*, align 8
  %8 = alloca %struct.buffer_head*, align 8
  %9 = alloca %struct.buffer_head*, align 8
  store %struct.page* %0, %struct.page** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %10 = load %struct.page*, %struct.page** %4, align 8
  %11 = load i64, i64* %5, align 8
  %12 = call %struct.buffer_head* @alloc_page_buffers(%struct.page* %10, i64 %11, i32 1)
  store %struct.buffer_head* %12, %struct.buffer_head** %8, align 8
  %13 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  store %struct.buffer_head* %13, %struct.buffer_head** %7, align 8
  br label %14

14:                                               ; preds = %24, %3
  %15 = load i64, i64* %6, align 8
  %16 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %17 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = or i64 %18, %15
  store i64 %19, i64* %17, align 8
  %20 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  store %struct.buffer_head* %20, %struct.buffer_head** %9, align 8
  %21 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %22 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %21, i32 0, i32 1
  %23 = load %struct.buffer_head*, %struct.buffer_head** %22, align 8
  store %struct.buffer_head* %23, %struct.buffer_head** %7, align 8
  br label %24

24:                                               ; preds = %14
  %25 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %26 = icmp ne %struct.buffer_head* %25, null
  br i1 %26, label %14, label %27

27:                                               ; preds = %24
  %28 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %29 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %30 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %29, i32 0, i32 1
  store %struct.buffer_head* %28, %struct.buffer_head** %30, align 8
  %31 = load %struct.page*, %struct.page** %4, align 8
  %32 = getelementptr inbounds %struct.page, %struct.page* %31, i32 0, i32 0
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = call i32 @spin_lock(i32* %34)
  %36 = load %struct.page*, %struct.page** %4, align 8
  %37 = call i64 @PageUptodate(%struct.page* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %43, label %39

39:                                               ; preds = %27
  %40 = load %struct.page*, %struct.page** %4, align 8
  %41 = call i64 @PageDirty(%struct.page* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %68

43:                                               ; preds = %39, %27
  %44 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  store %struct.buffer_head* %44, %struct.buffer_head** %7, align 8
  br label %45

45:                                               ; preds = %63, %43
  %46 = load %struct.page*, %struct.page** %4, align 8
  %47 = call i64 @PageDirty(%struct.page* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %45
  %50 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %51 = call i32 @set_buffer_dirty(%struct.buffer_head* %50)
  br label %52

52:                                               ; preds = %49, %45
  %53 = load %struct.page*, %struct.page** %4, align 8
  %54 = call i64 @PageUptodate(%struct.page* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %52
  %57 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %58 = call i32 @set_buffer_uptodate(%struct.buffer_head* %57)
  br label %59

59:                                               ; preds = %56, %52
  %60 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %61 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %60, i32 0, i32 1
  %62 = load %struct.buffer_head*, %struct.buffer_head** %61, align 8
  store %struct.buffer_head* %62, %struct.buffer_head** %7, align 8
  br label %63

63:                                               ; preds = %59
  %64 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %65 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %66 = icmp ne %struct.buffer_head* %64, %65
  br i1 %66, label %45, label %67

67:                                               ; preds = %63
  br label %68

68:                                               ; preds = %67, %39
  %69 = load %struct.page*, %struct.page** %4, align 8
  %70 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %71 = call i32 @attach_page_buffers(%struct.page* %69, %struct.buffer_head* %70)
  %72 = load %struct.page*, %struct.page** %4, align 8
  %73 = getelementptr inbounds %struct.page, %struct.page* %72, i32 0, i32 0
  %74 = load %struct.TYPE_2__*, %struct.TYPE_2__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 0
  %76 = call i32 @spin_unlock(i32* %75)
  ret void
}

declare dso_local %struct.buffer_head* @alloc_page_buffers(%struct.page*, i64, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @PageUptodate(%struct.page*) #1

declare dso_local i64 @PageDirty(%struct.page*) #1

declare dso_local i32 @set_buffer_dirty(%struct.buffer_head*) #1

declare dso_local i32 @set_buffer_uptodate(%struct.buffer_head*) #1

declare dso_local i32 @attach_page_buffers(%struct.page*, %struct.buffer_head*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
