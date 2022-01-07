; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_fs-writeback.c_try_to_writeback_inodes_sb.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_fs-writeback.c_try_to_writeback_inodes_sb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @try_to_writeback_inodes_sb(%struct.super_block* %0, i32 %1) #0 {
  %3 = alloca %struct.super_block*, align 8
  %4 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.super_block*, %struct.super_block** %3, align 8
  %6 = getelementptr inbounds %struct.super_block, %struct.super_block* %5, i32 0, i32 0
  %7 = call i32 @down_read_trylock(i32* %6)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %2
  br label %18

10:                                               ; preds = %2
  %11 = load %struct.super_block*, %struct.super_block** %3, align 8
  %12 = call i32 (...) @get_nr_dirty_pages()
  %13 = load i32, i32* %4, align 4
  %14 = call i32 @__writeback_inodes_sb_nr(%struct.super_block* %11, i32 %12, i32 %13, i32 1)
  %15 = load %struct.super_block*, %struct.super_block** %3, align 8
  %16 = getelementptr inbounds %struct.super_block, %struct.super_block* %15, i32 0, i32 0
  %17 = call i32 @up_read(i32* %16)
  br label %18

18:                                               ; preds = %10, %9
  ret void
}

declare dso_local i32 @down_read_trylock(i32*) #1

declare dso_local i32 @__writeback_inodes_sb_nr(%struct.super_block*, i32, i32, i32) #1

declare dso_local i32 @get_nr_dirty_pages(...) #1

declare dso_local i32 @up_read(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
