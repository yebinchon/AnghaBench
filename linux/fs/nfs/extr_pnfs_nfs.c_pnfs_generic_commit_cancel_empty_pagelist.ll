; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_pnfs_nfs.c_pnfs_generic_commit_cancel_empty_pagelist.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_pnfs_nfs.c_pnfs_generic_commit_cancel_empty_pagelist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.list_head = type { i32 }
%struct.nfs_commit_data = type { i32 }
%struct.nfs_commit_info = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.list_head*, %struct.nfs_commit_data*, %struct.nfs_commit_info*)* @pnfs_generic_commit_cancel_empty_pagelist to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pnfs_generic_commit_cancel_empty_pagelist(%struct.list_head* %0, %struct.nfs_commit_data* %1, %struct.nfs_commit_info* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.list_head*, align 8
  %6 = alloca %struct.nfs_commit_data*, align 8
  %7 = alloca %struct.nfs_commit_info*, align 8
  store %struct.list_head* %0, %struct.list_head** %5, align 8
  store %struct.nfs_commit_data* %1, %struct.nfs_commit_data** %6, align 8
  store %struct.nfs_commit_info* %2, %struct.nfs_commit_info** %7, align 8
  %8 = load %struct.list_head*, %struct.list_head** %5, align 8
  %9 = call i64 @list_empty(%struct.list_head* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %31

11:                                               ; preds = %3
  %12 = load %struct.nfs_commit_info*, %struct.nfs_commit_info** %7, align 8
  %13 = getelementptr inbounds %struct.nfs_commit_info, %struct.nfs_commit_info* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = call i64 @atomic_dec_and_test(i32* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %11
  %19 = load %struct.nfs_commit_info*, %struct.nfs_commit_info** %7, align 8
  %20 = getelementptr inbounds %struct.nfs_commit_info, %struct.nfs_commit_info* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = call i32 @wake_up_var(i32* %22)
  br label %24

24:                                               ; preds = %18, %11
  %25 = load %struct.nfs_commit_data*, %struct.nfs_commit_data** %6, align 8
  %26 = getelementptr inbounds %struct.nfs_commit_data, %struct.nfs_commit_data* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @WARN_ON_ONCE(i32 %27)
  %29 = load %struct.nfs_commit_data*, %struct.nfs_commit_data** %6, align 8
  %30 = call i32 @nfs_commit_free(%struct.nfs_commit_data* %29)
  store i32 1, i32* %4, align 4
  br label %32

31:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %32

32:                                               ; preds = %31, %24
  %33 = load i32, i32* %4, align 4
  ret i32 %33
}

declare dso_local i64 @list_empty(%struct.list_head*) #1

declare dso_local i64 @atomic_dec_and_test(i32*) #1

declare dso_local i32 @wake_up_var(i32*) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @nfs_commit_free(%struct.nfs_commit_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
