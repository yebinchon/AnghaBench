; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_read.c_nfs_page_group_set_uptodate.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_read.c_nfs_page_group_set_uptodate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs_page = type { i32 }

@PG_UPTODATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nfs_page*)* @nfs_page_group_set_uptodate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nfs_page_group_set_uptodate(%struct.nfs_page* %0) #0 {
  %2 = alloca %struct.nfs_page*, align 8
  store %struct.nfs_page* %0, %struct.nfs_page** %2, align 8
  %3 = load %struct.nfs_page*, %struct.nfs_page** %2, align 8
  %4 = load i32, i32* @PG_UPTODATE, align 4
  %5 = call i64 @nfs_page_group_sync_on_bit(%struct.nfs_page* %3, i32 %4)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %12

7:                                                ; preds = %1
  %8 = load %struct.nfs_page*, %struct.nfs_page** %2, align 8
  %9 = getelementptr inbounds %struct.nfs_page, %struct.nfs_page* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @SetPageUptodate(i32 %10)
  br label %12

12:                                               ; preds = %7, %1
  ret void
}

declare dso_local i64 @nfs_page_group_sync_on_bit(%struct.nfs_page*, i32) #1

declare dso_local i32 @SetPageUptodate(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
