; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_buffer.c_attach_nobh_buffers.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_buffer.c_attach_nobh_buffers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.buffer_head = type { %struct.buffer_head* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.page*, %struct.buffer_head*)* @attach_nobh_buffers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @attach_nobh_buffers(%struct.page* %0, %struct.buffer_head* %1) #0 {
  %3 = alloca %struct.page*, align 8
  %4 = alloca %struct.buffer_head*, align 8
  %5 = alloca %struct.buffer_head*, align 8
  store %struct.page* %0, %struct.page** %3, align 8
  store %struct.buffer_head* %1, %struct.buffer_head** %4, align 8
  %6 = load %struct.page*, %struct.page** %3, align 8
  %7 = call i32 @PageLocked(%struct.page* %6)
  %8 = icmp ne i32 %7, 0
  %9 = xor i1 %8, true
  %10 = zext i1 %9 to i32
  %11 = call i32 @BUG_ON(i32 %10)
  %12 = load %struct.page*, %struct.page** %3, align 8
  %13 = getelementptr inbounds %struct.page, %struct.page* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = call i32 @spin_lock(i32* %15)
  %17 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  store %struct.buffer_head* %17, %struct.buffer_head** %5, align 8
  br label %18

18:                                               ; preds = %38, %2
  %19 = load %struct.page*, %struct.page** %3, align 8
  %20 = call i64 @PageDirty(%struct.page* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %18
  %23 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %24 = call i32 @set_buffer_dirty(%struct.buffer_head* %23)
  br label %25

25:                                               ; preds = %22, %18
  %26 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %27 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %26, i32 0, i32 0
  %28 = load %struct.buffer_head*, %struct.buffer_head** %27, align 8
  %29 = icmp ne %struct.buffer_head* %28, null
  br i1 %29, label %34, label %30

30:                                               ; preds = %25
  %31 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %32 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %33 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %32, i32 0, i32 0
  store %struct.buffer_head* %31, %struct.buffer_head** %33, align 8
  br label %34

34:                                               ; preds = %30, %25
  %35 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %36 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %35, i32 0, i32 0
  %37 = load %struct.buffer_head*, %struct.buffer_head** %36, align 8
  store %struct.buffer_head* %37, %struct.buffer_head** %5, align 8
  br label %38

38:                                               ; preds = %34
  %39 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %40 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %41 = icmp ne %struct.buffer_head* %39, %40
  br i1 %41, label %18, label %42

42:                                               ; preds = %38
  %43 = load %struct.page*, %struct.page** %3, align 8
  %44 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %45 = call i32 @attach_page_buffers(%struct.page* %43, %struct.buffer_head* %44)
  %46 = load %struct.page*, %struct.page** %3, align 8
  %47 = getelementptr inbounds %struct.page, %struct.page* %46, i32 0, i32 0
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = call i32 @spin_unlock(i32* %49)
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @PageLocked(%struct.page*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @PageDirty(%struct.page*) #1

declare dso_local i32 @set_buffer_dirty(%struct.buffer_head*) #1

declare dso_local i32 @attach_page_buffers(%struct.page*, %struct.buffer_head*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
