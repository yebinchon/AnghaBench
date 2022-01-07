; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_data.c_f2fs_set_data_blkaddr.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_data.c_f2fs_set_data_blkaddr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dnode_of_data = type { i32, i32 }

@NODE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @f2fs_set_data_blkaddr(%struct.dnode_of_data* %0) #0 {
  %2 = alloca %struct.dnode_of_data*, align 8
  store %struct.dnode_of_data* %0, %struct.dnode_of_data** %2, align 8
  %3 = load %struct.dnode_of_data*, %struct.dnode_of_data** %2, align 8
  %4 = getelementptr inbounds %struct.dnode_of_data, %struct.dnode_of_data* %3, i32 0, i32 1
  %5 = load i32, i32* %4, align 4
  %6 = load i32, i32* @NODE, align 4
  %7 = call i32 @f2fs_wait_on_page_writeback(i32 %5, i32 %6, i32 1, i32 1)
  %8 = load %struct.dnode_of_data*, %struct.dnode_of_data** %2, align 8
  %9 = call i32 @__set_data_blkaddr(%struct.dnode_of_data* %8)
  %10 = load %struct.dnode_of_data*, %struct.dnode_of_data** %2, align 8
  %11 = getelementptr inbounds %struct.dnode_of_data, %struct.dnode_of_data* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = call i64 @set_page_dirty(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %1
  %16 = load %struct.dnode_of_data*, %struct.dnode_of_data** %2, align 8
  %17 = getelementptr inbounds %struct.dnode_of_data, %struct.dnode_of_data* %16, i32 0, i32 0
  store i32 1, i32* %17, align 4
  br label %18

18:                                               ; preds = %15, %1
  ret void
}

declare dso_local i32 @f2fs_wait_on_page_writeback(i32, i32, i32, i32) #1

declare dso_local i32 @__set_data_blkaddr(%struct.dnode_of_data*) #1

declare dso_local i64 @set_page_dirty(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
