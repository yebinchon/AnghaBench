; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_buffer.c_ll_rw_block.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_buffer.c_ll_rw_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buffer_head = type { i32 }

@WRITE = common dso_local global i32 0, align 4
@end_buffer_write_sync = common dso_local global i32 0, align 4
@end_buffer_read_sync = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ll_rw_block(i32 %0, i32 %1, i32 %2, %struct.buffer_head** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.buffer_head**, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.buffer_head*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store %struct.buffer_head** %3, %struct.buffer_head*** %8, align 8
  store i32 0, i32* %9, align 4
  br label %11

11:                                               ; preds = %62, %4
  %12 = load i32, i32* %9, align 4
  %13 = load i32, i32* %7, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %65

15:                                               ; preds = %11
  %16 = load %struct.buffer_head**, %struct.buffer_head*** %8, align 8
  %17 = load i32, i32* %9, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %16, i64 %18
  %20 = load %struct.buffer_head*, %struct.buffer_head** %19, align 8
  store %struct.buffer_head* %20, %struct.buffer_head** %10, align 8
  %21 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %22 = call i32 @trylock_buffer(%struct.buffer_head* %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %15
  br label %62

25:                                               ; preds = %15
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* @WRITE, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %44

29:                                               ; preds = %25
  %30 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %31 = call i64 @test_clear_buffer_dirty(%struct.buffer_head* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %43

33:                                               ; preds = %29
  %34 = load i32, i32* @end_buffer_write_sync, align 4
  %35 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %36 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 4
  %37 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %38 = call i32 @get_bh(%struct.buffer_head* %37)
  %39 = load i32, i32* %5, align 4
  %40 = load i32, i32* %6, align 4
  %41 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %42 = call i32 @submit_bh(i32 %39, i32 %40, %struct.buffer_head* %41)
  br label %62

43:                                               ; preds = %29
  br label %59

44:                                               ; preds = %25
  %45 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %46 = call i32 @buffer_uptodate(%struct.buffer_head* %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %58, label %48

48:                                               ; preds = %44
  %49 = load i32, i32* @end_buffer_read_sync, align 4
  %50 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %51 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 4
  %52 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %53 = call i32 @get_bh(%struct.buffer_head* %52)
  %54 = load i32, i32* %5, align 4
  %55 = load i32, i32* %6, align 4
  %56 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %57 = call i32 @submit_bh(i32 %54, i32 %55, %struct.buffer_head* %56)
  br label %62

58:                                               ; preds = %44
  br label %59

59:                                               ; preds = %58, %43
  %60 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %61 = call i32 @unlock_buffer(%struct.buffer_head* %60)
  br label %62

62:                                               ; preds = %59, %48, %33, %24
  %63 = load i32, i32* %9, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %9, align 4
  br label %11

65:                                               ; preds = %11
  ret void
}

declare dso_local i32 @trylock_buffer(%struct.buffer_head*) #1

declare dso_local i64 @test_clear_buffer_dirty(%struct.buffer_head*) #1

declare dso_local i32 @get_bh(%struct.buffer_head*) #1

declare dso_local i32 @submit_bh(i32, i32, %struct.buffer_head*) #1

declare dso_local i32 @buffer_uptodate(%struct.buffer_head*) #1

declare dso_local i32 @unlock_buffer(%struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
