; ModuleID = '/home/carl/AnghaBench/linux/fs/ext4/extr_inode.c_do_journal_get_write_access.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext4/extr_inode.c_do_journal_get_write_access.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buffer_head = type { i32 }

@.str = private unnamed_addr constant [17 x i8] c"get write access\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @do_journal_get_write_access(i32* %0, %struct.buffer_head* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.buffer_head*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store %struct.buffer_head* %1, %struct.buffer_head** %5, align 8
  %8 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %9 = call i32 @buffer_dirty(%struct.buffer_head* %8)
  store i32 %9, i32* %6, align 4
  %10 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %11 = call i32 @buffer_mapped(%struct.buffer_head* %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %2
  %14 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %15 = call i64 @buffer_freed(%struct.buffer_head* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %13, %2
  store i32 0, i32* %3, align 4
  br label %41

18:                                               ; preds = %13
  %19 = load i32, i32* %6, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %18
  %22 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %23 = call i32 @clear_buffer_dirty(%struct.buffer_head* %22)
  br label %24

24:                                               ; preds = %21, %18
  %25 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %26 = call i32 @BUFFER_TRACE(%struct.buffer_head* %25, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %27 = load i32*, i32** %4, align 8
  %28 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %29 = call i32 @ext4_journal_get_write_access(i32* %27, %struct.buffer_head* %28)
  store i32 %29, i32* %7, align 4
  %30 = load i32, i32* %7, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %39, label %32

32:                                               ; preds = %24
  %33 = load i32, i32* %6, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %32
  %36 = load i32*, i32** %4, align 8
  %37 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %38 = call i32 @ext4_handle_dirty_metadata(i32* %36, i32* null, %struct.buffer_head* %37)
  store i32 %38, i32* %7, align 4
  br label %39

39:                                               ; preds = %35, %32, %24
  %40 = load i32, i32* %7, align 4
  store i32 %40, i32* %3, align 4
  br label %41

41:                                               ; preds = %39, %17
  %42 = load i32, i32* %3, align 4
  ret i32 %42
}

declare dso_local i32 @buffer_dirty(%struct.buffer_head*) #1

declare dso_local i32 @buffer_mapped(%struct.buffer_head*) #1

declare dso_local i64 @buffer_freed(%struct.buffer_head*) #1

declare dso_local i32 @clear_buffer_dirty(%struct.buffer_head*) #1

declare dso_local i32 @BUFFER_TRACE(%struct.buffer_head*, i8*) #1

declare dso_local i32 @ext4_journal_get_write_access(i32*, %struct.buffer_head*) #1

declare dso_local i32 @ext4_handle_dirty_metadata(i32*, i32*, %struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
