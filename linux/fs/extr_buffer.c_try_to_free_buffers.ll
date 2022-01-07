; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_buffer.c_try_to_free_buffers.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_buffer.c_try_to_free_buffers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { %struct.address_space* }
%struct.address_space = type { i32 }
%struct.buffer_head = type { %struct.buffer_head* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @try_to_free_buffers(%struct.page* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.page*, align 8
  %4 = alloca %struct.address_space*, align 8
  %5 = alloca %struct.buffer_head*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.buffer_head*, align 8
  %8 = alloca %struct.buffer_head*, align 8
  store %struct.page* %0, %struct.page** %3, align 8
  %9 = load %struct.page*, %struct.page** %3, align 8
  %10 = getelementptr inbounds %struct.page, %struct.page* %9, i32 0, i32 0
  %11 = load %struct.address_space*, %struct.address_space** %10, align 8
  store %struct.address_space* %11, %struct.address_space** %4, align 8
  store %struct.buffer_head* null, %struct.buffer_head** %5, align 8
  store i32 0, i32* %6, align 4
  %12 = load %struct.page*, %struct.page** %3, align 8
  %13 = call i32 @PageLocked(%struct.page* %12)
  %14 = icmp ne i32 %13, 0
  %15 = xor i1 %14, true
  %16 = zext i1 %15 to i32
  %17 = call i32 @BUG_ON(i32 %16)
  %18 = load %struct.page*, %struct.page** %3, align 8
  %19 = call i64 @PageWriteback(%struct.page* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %62

22:                                               ; preds = %1
  %23 = load %struct.address_space*, %struct.address_space** %4, align 8
  %24 = icmp eq %struct.address_space* %23, null
  br i1 %24, label %25, label %28

25:                                               ; preds = %22
  %26 = load %struct.page*, %struct.page** %3, align 8
  %27 = call i32 @drop_buffers(%struct.page* %26, %struct.buffer_head** %5)
  store i32 %27, i32* %6, align 4
  br label %43

28:                                               ; preds = %22
  %29 = load %struct.address_space*, %struct.address_space** %4, align 8
  %30 = getelementptr inbounds %struct.address_space, %struct.address_space* %29, i32 0, i32 0
  %31 = call i32 @spin_lock(i32* %30)
  %32 = load %struct.page*, %struct.page** %3, align 8
  %33 = call i32 @drop_buffers(%struct.page* %32, %struct.buffer_head** %5)
  store i32 %33, i32* %6, align 4
  %34 = load i32, i32* %6, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %28
  %37 = load %struct.page*, %struct.page** %3, align 8
  %38 = call i32 @cancel_dirty_page(%struct.page* %37)
  br label %39

39:                                               ; preds = %36, %28
  %40 = load %struct.address_space*, %struct.address_space** %4, align 8
  %41 = getelementptr inbounds %struct.address_space, %struct.address_space* %40, i32 0, i32 0
  %42 = call i32 @spin_unlock(i32* %41)
  br label %43

43:                                               ; preds = %39, %25
  %44 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %45 = icmp ne %struct.buffer_head* %44, null
  br i1 %45, label %46, label %60

46:                                               ; preds = %43
  %47 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  store %struct.buffer_head* %47, %struct.buffer_head** %7, align 8
  br label %48

48:                                               ; preds = %55, %46
  %49 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %50 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %49, i32 0, i32 0
  %51 = load %struct.buffer_head*, %struct.buffer_head** %50, align 8
  store %struct.buffer_head* %51, %struct.buffer_head** %8, align 8
  %52 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %53 = call i32 @free_buffer_head(%struct.buffer_head* %52)
  %54 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  store %struct.buffer_head* %54, %struct.buffer_head** %7, align 8
  br label %55

55:                                               ; preds = %48
  %56 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %57 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %58 = icmp ne %struct.buffer_head* %56, %57
  br i1 %58, label %48, label %59

59:                                               ; preds = %55
  br label %60

60:                                               ; preds = %59, %43
  %61 = load i32, i32* %6, align 4
  store i32 %61, i32* %2, align 4
  br label %62

62:                                               ; preds = %60, %21
  %63 = load i32, i32* %2, align 4
  ret i32 %63
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @PageLocked(%struct.page*) #1

declare dso_local i64 @PageWriteback(%struct.page*) #1

declare dso_local i32 @drop_buffers(%struct.page*, %struct.buffer_head**) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @cancel_dirty_page(%struct.page*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @free_buffer_head(%struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
