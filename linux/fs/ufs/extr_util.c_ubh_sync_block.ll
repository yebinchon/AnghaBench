; ModuleID = '/home/carl/AnghaBench/linux/fs/ufs/extr_util.c_ubh_sync_block.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ufs/extr_util.c_ubh_sync_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ufs_buffer_head = type { i32, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ubh_sync_block(%struct.ufs_buffer_head* %0) #0 {
  %2 = alloca %struct.ufs_buffer_head*, align 8
  %3 = alloca i32, align 4
  store %struct.ufs_buffer_head* %0, %struct.ufs_buffer_head** %2, align 8
  %4 = load %struct.ufs_buffer_head*, %struct.ufs_buffer_head** %2, align 8
  %5 = icmp ne %struct.ufs_buffer_head* %4, null
  br i1 %5, label %6, label %45

6:                                                ; preds = %1
  store i32 0, i32* %3, align 4
  br label %7

7:                                                ; preds = %22, %6
  %8 = load i32, i32* %3, align 4
  %9 = load %struct.ufs_buffer_head*, %struct.ufs_buffer_head** %2, align 8
  %10 = getelementptr inbounds %struct.ufs_buffer_head, %struct.ufs_buffer_head* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp ult i32 %8, %11
  br i1 %12, label %13, label %25

13:                                               ; preds = %7
  %14 = load %struct.ufs_buffer_head*, %struct.ufs_buffer_head** %2, align 8
  %15 = getelementptr inbounds %struct.ufs_buffer_head, %struct.ufs_buffer_head* %14, i32 0, i32 1
  %16 = load i32*, i32** %15, align 8
  %17 = load i32, i32* %3, align 4
  %18 = zext i32 %17 to i64
  %19 = getelementptr inbounds i32, i32* %16, i64 %18
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @write_dirty_buffer(i32 %20, i32 0)
  br label %22

22:                                               ; preds = %13
  %23 = load i32, i32* %3, align 4
  %24 = add i32 %23, 1
  store i32 %24, i32* %3, align 4
  br label %7

25:                                               ; preds = %7
  store i32 0, i32* %3, align 4
  br label %26

26:                                               ; preds = %41, %25
  %27 = load i32, i32* %3, align 4
  %28 = load %struct.ufs_buffer_head*, %struct.ufs_buffer_head** %2, align 8
  %29 = getelementptr inbounds %struct.ufs_buffer_head, %struct.ufs_buffer_head* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp ult i32 %27, %30
  br i1 %31, label %32, label %44

32:                                               ; preds = %26
  %33 = load %struct.ufs_buffer_head*, %struct.ufs_buffer_head** %2, align 8
  %34 = getelementptr inbounds %struct.ufs_buffer_head, %struct.ufs_buffer_head* %33, i32 0, i32 1
  %35 = load i32*, i32** %34, align 8
  %36 = load i32, i32* %3, align 4
  %37 = zext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %35, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @wait_on_buffer(i32 %39)
  br label %41

41:                                               ; preds = %32
  %42 = load i32, i32* %3, align 4
  %43 = add i32 %42, 1
  store i32 %43, i32* %3, align 4
  br label %26

44:                                               ; preds = %26
  br label %45

45:                                               ; preds = %44, %1
  ret void
}

declare dso_local i32 @write_dirty_buffer(i32, i32) #1

declare dso_local i32 @wait_on_buffer(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
