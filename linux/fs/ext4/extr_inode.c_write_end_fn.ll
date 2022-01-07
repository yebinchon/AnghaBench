; ModuleID = '/home/carl/AnghaBench/linux/fs/ext4/extr_inode.c_write_end_fn.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext4/extr_inode.c_write_end_fn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buffer_head = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.buffer_head*)* @write_end_fn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @write_end_fn(i32* %0, %struct.buffer_head* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.buffer_head*, align 8
  %6 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store %struct.buffer_head* %1, %struct.buffer_head** %5, align 8
  %7 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %8 = call i32 @buffer_mapped(%struct.buffer_head* %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %2
  %11 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %12 = call i64 @buffer_freed(%struct.buffer_head* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %10, %2
  store i32 0, i32* %3, align 4
  br label %26

15:                                               ; preds = %10
  %16 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %17 = call i32 @set_buffer_uptodate(%struct.buffer_head* %16)
  %18 = load i32*, i32** %4, align 8
  %19 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %20 = call i32 @ext4_handle_dirty_metadata(i32* %18, i32* null, %struct.buffer_head* %19)
  store i32 %20, i32* %6, align 4
  %21 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %22 = call i32 @clear_buffer_meta(%struct.buffer_head* %21)
  %23 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %24 = call i32 @clear_buffer_prio(%struct.buffer_head* %23)
  %25 = load i32, i32* %6, align 4
  store i32 %25, i32* %3, align 4
  br label %26

26:                                               ; preds = %15, %14
  %27 = load i32, i32* %3, align 4
  ret i32 %27
}

declare dso_local i32 @buffer_mapped(%struct.buffer_head*) #1

declare dso_local i64 @buffer_freed(%struct.buffer_head*) #1

declare dso_local i32 @set_buffer_uptodate(%struct.buffer_head*) #1

declare dso_local i32 @ext4_handle_dirty_metadata(i32*, i32*, %struct.buffer_head*) #1

declare dso_local i32 @clear_buffer_meta(%struct.buffer_head*) #1

declare dso_local i32 @clear_buffer_prio(%struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
