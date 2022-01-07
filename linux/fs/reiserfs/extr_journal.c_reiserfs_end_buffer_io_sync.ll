; ModuleID = '/home/carl/AnghaBench/linux/fs/reiserfs/extr_journal.c_reiserfs_end_buffer_io_sync.c'
source_filename = "/home/carl/AnghaBench/linux/fs/reiserfs/extr_journal.c_reiserfs_end_buffer_io_sync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buffer_head = type { i32, i32 }

@.str = private unnamed_addr constant [9 x i8] c"clm-2084\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"pinned buffer %lu:%pg sent to disk\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.buffer_head*, i32)* @reiserfs_end_buffer_io_sync to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @reiserfs_end_buffer_io_sync(%struct.buffer_head* %0, i32 %1) #0 {
  %3 = alloca %struct.buffer_head*, align 8
  %4 = alloca i32, align 4
  store %struct.buffer_head* %0, %struct.buffer_head** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.buffer_head*, %struct.buffer_head** %3, align 8
  %6 = call i64 @buffer_journaled(%struct.buffer_head* %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %16

8:                                                ; preds = %2
  %9 = load %struct.buffer_head*, %struct.buffer_head** %3, align 8
  %10 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.buffer_head*, %struct.buffer_head** %3, align 8
  %13 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @reiserfs_warning(i32* null, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %11, i32 %14)
  br label %16

16:                                               ; preds = %8, %2
  %17 = load i32, i32* %4, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %16
  %20 = load %struct.buffer_head*, %struct.buffer_head** %3, align 8
  %21 = call i32 @set_buffer_uptodate(%struct.buffer_head* %20)
  br label %25

22:                                               ; preds = %16
  %23 = load %struct.buffer_head*, %struct.buffer_head** %3, align 8
  %24 = call i32 @clear_buffer_uptodate(%struct.buffer_head* %23)
  br label %25

25:                                               ; preds = %22, %19
  %26 = load %struct.buffer_head*, %struct.buffer_head** %3, align 8
  %27 = call i32 @unlock_buffer(%struct.buffer_head* %26)
  %28 = load %struct.buffer_head*, %struct.buffer_head** %3, align 8
  %29 = call i32 @release_buffer_page(%struct.buffer_head* %28)
  ret void
}

declare dso_local i64 @buffer_journaled(%struct.buffer_head*) #1

declare dso_local i32 @reiserfs_warning(i32*, i8*, i8*, i32, i32) #1

declare dso_local i32 @set_buffer_uptodate(%struct.buffer_head*) #1

declare dso_local i32 @clear_buffer_uptodate(%struct.buffer_head*) #1

declare dso_local i32 @unlock_buffer(%struct.buffer_head*) #1

declare dso_local i32 @release_buffer_page(%struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
