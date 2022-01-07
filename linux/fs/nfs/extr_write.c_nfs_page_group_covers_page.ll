; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_write.c_nfs_page_group_covers_page.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_write.c_nfs_page_group_covers_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs_page = type { i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfs_page*)* @nfs_page_group_covers_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfs_page_group_covers_page(%struct.nfs_page* %0) #0 {
  %2 = alloca %struct.nfs_page*, align 8
  %3 = alloca %struct.nfs_page*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.nfs_page* %0, %struct.nfs_page** %2, align 8
  store i32 0, i32* %4, align 4
  %6 = load %struct.nfs_page*, %struct.nfs_page** %2, align 8
  %7 = getelementptr inbounds %struct.nfs_page, %struct.nfs_page* %6, i32 0, i32 3
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @nfs_page_length(i32 %8)
  store i32 %9, i32* %5, align 4
  %10 = load %struct.nfs_page*, %struct.nfs_page** %2, align 8
  %11 = call i32 @nfs_page_group_lock(%struct.nfs_page* %10)
  br label %12

12:                                               ; preds = %21, %1
  %13 = load %struct.nfs_page*, %struct.nfs_page** %2, align 8
  %14 = getelementptr inbounds %struct.nfs_page, %struct.nfs_page* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* %4, align 4
  %17 = call %struct.nfs_page* @nfs_page_group_search_locked(i32 %15, i32 %16)
  store %struct.nfs_page* %17, %struct.nfs_page** %3, align 8
  %18 = load %struct.nfs_page*, %struct.nfs_page** %3, align 8
  %19 = icmp ne %struct.nfs_page* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %12
  br label %29

21:                                               ; preds = %12
  %22 = load %struct.nfs_page*, %struct.nfs_page** %3, align 8
  %23 = getelementptr inbounds %struct.nfs_page, %struct.nfs_page* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.nfs_page*, %struct.nfs_page** %3, align 8
  %26 = getelementptr inbounds %struct.nfs_page, %struct.nfs_page* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = add i32 %24, %27
  store i32 %28, i32* %4, align 4
  br label %12

29:                                               ; preds = %20
  %30 = load %struct.nfs_page*, %struct.nfs_page** %2, align 8
  %31 = call i32 @nfs_page_group_unlock(%struct.nfs_page* %30)
  %32 = load i32, i32* %4, align 4
  %33 = load i32, i32* %5, align 4
  %34 = icmp uge i32 %32, %33
  %35 = zext i1 %34 to i32
  ret i32 %35
}

declare dso_local i32 @nfs_page_length(i32) #1

declare dso_local i32 @nfs_page_group_lock(%struct.nfs_page*) #1

declare dso_local %struct.nfs_page* @nfs_page_group_search_locked(i32, i32) #1

declare dso_local i32 @nfs_page_group_unlock(%struct.nfs_page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
