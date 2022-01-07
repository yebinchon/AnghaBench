; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_write.c_nfs_request_remove_commit_list.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_write.c_nfs_request_remove_commit_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs_page = type { i32 }
%struct.nfs_commit_info = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@PG_CLEAN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nfs_request_remove_commit_list(%struct.nfs_page* %0, %struct.nfs_commit_info* %1) #0 {
  %3 = alloca %struct.nfs_page*, align 8
  %4 = alloca %struct.nfs_commit_info*, align 8
  store %struct.nfs_page* %0, %struct.nfs_page** %3, align 8
  store %struct.nfs_commit_info* %1, %struct.nfs_commit_info** %4, align 8
  %5 = load i32, i32* @PG_CLEAN, align 4
  %6 = load %struct.nfs_page*, %struct.nfs_page** %3, align 8
  %7 = getelementptr inbounds %struct.nfs_page, %struct.nfs_page* %6, i32 0, i32 0
  %8 = call i32 @test_and_clear_bit(i32 %5, i32* %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  br label %19

11:                                               ; preds = %2
  %12 = load %struct.nfs_page*, %struct.nfs_page** %3, align 8
  %13 = call i32 @nfs_list_remove_request(%struct.nfs_page* %12)
  %14 = load %struct.nfs_commit_info*, %struct.nfs_commit_info** %4, align 8
  %15 = getelementptr inbounds %struct.nfs_commit_info, %struct.nfs_commit_info* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = call i32 @atomic_long_dec(i32* %17)
  br label %19

19:                                               ; preds = %11, %10
  ret void
}

declare dso_local i32 @test_and_clear_bit(i32, i32*) #1

declare dso_local i32 @nfs_list_remove_request(%struct.nfs_page*) #1

declare dso_local i32 @atomic_long_dec(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
