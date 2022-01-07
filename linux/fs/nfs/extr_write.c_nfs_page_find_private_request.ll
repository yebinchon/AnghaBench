; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_write.c_nfs_page_find_private_request.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_write.c_nfs_page_find_private_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs_page = type { i32, %struct.nfs_page* }
%struct.page = type { i32 }
%struct.address_space = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.nfs_page* (%struct.page*)* @nfs_page_find_private_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.nfs_page* @nfs_page_find_private_request(%struct.page* %0) #0 {
  %2 = alloca %struct.nfs_page*, align 8
  %3 = alloca %struct.page*, align 8
  %4 = alloca %struct.address_space*, align 8
  %5 = alloca %struct.nfs_page*, align 8
  store %struct.page* %0, %struct.page** %3, align 8
  %6 = load %struct.page*, %struct.page** %3, align 8
  %7 = call %struct.address_space* @page_file_mapping(%struct.page* %6)
  store %struct.address_space* %7, %struct.address_space** %4, align 8
  %8 = load %struct.page*, %struct.page** %3, align 8
  %9 = call i32 @PagePrivate(%struct.page* %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  store %struct.nfs_page* null, %struct.nfs_page** %2, align 8
  br label %36

12:                                               ; preds = %1
  %13 = load %struct.address_space*, %struct.address_space** %4, align 8
  %14 = getelementptr inbounds %struct.address_space, %struct.address_space* %13, i32 0, i32 0
  %15 = call i32 @spin_lock(i32* %14)
  %16 = load %struct.page*, %struct.page** %3, align 8
  %17 = call %struct.nfs_page* @nfs_page_private_request(%struct.page* %16)
  store %struct.nfs_page* %17, %struct.nfs_page** %5, align 8
  %18 = load %struct.nfs_page*, %struct.nfs_page** %5, align 8
  %19 = icmp ne %struct.nfs_page* %18, null
  br i1 %19, label %20, label %31

20:                                               ; preds = %12
  %21 = load %struct.nfs_page*, %struct.nfs_page** %5, align 8
  %22 = getelementptr inbounds %struct.nfs_page, %struct.nfs_page* %21, i32 0, i32 1
  %23 = load %struct.nfs_page*, %struct.nfs_page** %22, align 8
  %24 = load %struct.nfs_page*, %struct.nfs_page** %5, align 8
  %25 = icmp ne %struct.nfs_page* %23, %24
  %26 = zext i1 %25 to i32
  %27 = call i32 @WARN_ON_ONCE(i32 %26)
  %28 = load %struct.nfs_page*, %struct.nfs_page** %5, align 8
  %29 = getelementptr inbounds %struct.nfs_page, %struct.nfs_page* %28, i32 0, i32 0
  %30 = call i32 @kref_get(i32* %29)
  br label %31

31:                                               ; preds = %20, %12
  %32 = load %struct.address_space*, %struct.address_space** %4, align 8
  %33 = getelementptr inbounds %struct.address_space, %struct.address_space* %32, i32 0, i32 0
  %34 = call i32 @spin_unlock(i32* %33)
  %35 = load %struct.nfs_page*, %struct.nfs_page** %5, align 8
  store %struct.nfs_page* %35, %struct.nfs_page** %2, align 8
  br label %36

36:                                               ; preds = %31, %11
  %37 = load %struct.nfs_page*, %struct.nfs_page** %2, align 8
  ret %struct.nfs_page* %37
}

declare dso_local %struct.address_space* @page_file_mapping(%struct.page*) #1

declare dso_local i32 @PagePrivate(%struct.page*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local %struct.nfs_page* @nfs_page_private_request(%struct.page*) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @kref_get(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
