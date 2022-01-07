; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_buffer.c_block_invalidatepage.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_buffer.c_block_invalidatepage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }
%struct.buffer_head = type { i32, %struct.buffer_head* }

@PAGE_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @block_invalidatepage(%struct.page* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.page*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.buffer_head*, align 8
  %8 = alloca %struct.buffer_head*, align 8
  %9 = alloca %struct.buffer_head*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.page* %0, %struct.page** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %10, align 4
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* %5, align 4
  %15 = add i32 %13, %14
  store i32 %15, i32* %11, align 4
  %16 = load %struct.page*, %struct.page** %4, align 8
  %17 = call i32 @PageLocked(%struct.page* %16)
  %18 = icmp ne i32 %17, 0
  %19 = xor i1 %18, true
  %20 = zext i1 %19 to i32
  %21 = call i32 @BUG_ON(i32 %20)
  %22 = load %struct.page*, %struct.page** %4, align 8
  %23 = call i32 @page_has_buffers(%struct.page* %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %3
  br label %76

26:                                               ; preds = %3
  %27 = load i32, i32* %11, align 4
  %28 = load i32, i32* @PAGE_SIZE, align 4
  %29 = icmp ugt i32 %27, %28
  br i1 %29, label %34, label %30

30:                                               ; preds = %26
  %31 = load i32, i32* %11, align 4
  %32 = load i32, i32* %6, align 4
  %33 = icmp ult i32 %31, %32
  br label %34

34:                                               ; preds = %30, %26
  %35 = phi i1 [ true, %26 ], [ %33, %30 ]
  %36 = zext i1 %35 to i32
  %37 = call i32 @BUG_ON(i32 %36)
  %38 = load %struct.page*, %struct.page** %4, align 8
  %39 = call %struct.buffer_head* @page_buffers(%struct.page* %38)
  store %struct.buffer_head* %39, %struct.buffer_head** %7, align 8
  %40 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  store %struct.buffer_head* %40, %struct.buffer_head** %8, align 8
  br label %41

41:                                               ; preds = %64, %34
  %42 = load i32, i32* %10, align 4
  %43 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %44 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = add i32 %42, %45
  store i32 %46, i32* %12, align 4
  %47 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %48 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %47, i32 0, i32 1
  %49 = load %struct.buffer_head*, %struct.buffer_head** %48, align 8
  store %struct.buffer_head* %49, %struct.buffer_head** %9, align 8
  %50 = load i32, i32* %12, align 4
  %51 = load i32, i32* %11, align 4
  %52 = icmp ugt i32 %50, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %41
  br label %76

54:                                               ; preds = %41
  %55 = load i32, i32* %5, align 4
  %56 = load i32, i32* %10, align 4
  %57 = icmp ule i32 %55, %56
  br i1 %57, label %58, label %61

58:                                               ; preds = %54
  %59 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %60 = call i32 @discard_buffer(%struct.buffer_head* %59)
  br label %61

61:                                               ; preds = %58, %54
  %62 = load i32, i32* %12, align 4
  store i32 %62, i32* %10, align 4
  %63 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  store %struct.buffer_head* %63, %struct.buffer_head** %8, align 8
  br label %64

64:                                               ; preds = %61
  %65 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %66 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %67 = icmp ne %struct.buffer_head* %65, %66
  br i1 %67, label %41, label %68

68:                                               ; preds = %64
  %69 = load i32, i32* %6, align 4
  %70 = load i32, i32* @PAGE_SIZE, align 4
  %71 = icmp eq i32 %69, %70
  br i1 %71, label %72, label %75

72:                                               ; preds = %68
  %73 = load %struct.page*, %struct.page** %4, align 8
  %74 = call i32 @try_to_release_page(%struct.page* %73, i32 0)
  br label %75

75:                                               ; preds = %72, %68
  br label %76

76:                                               ; preds = %75, %53, %25
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @PageLocked(%struct.page*) #1

declare dso_local i32 @page_has_buffers(%struct.page*) #1

declare dso_local %struct.buffer_head* @page_buffers(%struct.page*) #1

declare dso_local i32 @discard_buffer(%struct.buffer_head*) #1

declare dso_local i32 @try_to_release_page(%struct.page*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
