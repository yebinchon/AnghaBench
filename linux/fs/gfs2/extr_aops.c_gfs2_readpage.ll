; ModuleID = '/home/carl/AnghaBench/linux/fs/gfs2/extr_aops.c_gfs2_readpage.c'
source_filename = "/home/carl/AnghaBench/linux/fs/gfs2/extr_aops.c_gfs2_readpage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.page = type { %struct.address_space* }
%struct.address_space = type { i32 }
%struct.gfs2_inode = type { i32 }
%struct.gfs2_holder = type { i32 }

@LM_ST_SHARED = common dso_local global i32 0, align 4
@AOP_TRUNCATED_PAGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, %struct.page*)* @gfs2_readpage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gfs2_readpage(%struct.file* %0, %struct.page* %1) #0 {
  %3 = alloca %struct.file*, align 8
  %4 = alloca %struct.page*, align 8
  %5 = alloca %struct.address_space*, align 8
  %6 = alloca %struct.gfs2_inode*, align 8
  %7 = alloca %struct.gfs2_holder, align 4
  %8 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %3, align 8
  store %struct.page* %1, %struct.page** %4, align 8
  %9 = load %struct.page*, %struct.page** %4, align 8
  %10 = getelementptr inbounds %struct.page, %struct.page* %9, i32 0, i32 0
  %11 = load %struct.address_space*, %struct.address_space** %10, align 8
  store %struct.address_space* %11, %struct.address_space** %5, align 8
  %12 = load %struct.address_space*, %struct.address_space** %5, align 8
  %13 = getelementptr inbounds %struct.address_space, %struct.address_space* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.gfs2_inode* @GFS2_I(i32 %14)
  store %struct.gfs2_inode* %15, %struct.gfs2_inode** %6, align 8
  %16 = load %struct.page*, %struct.page** %4, align 8
  %17 = call i32 @unlock_page(%struct.page* %16)
  %18 = load %struct.gfs2_inode*, %struct.gfs2_inode** %6, align 8
  %19 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @LM_ST_SHARED, align 4
  %22 = call i32 @gfs2_holder_init(i32 %20, i32 %21, i32 0, %struct.gfs2_holder* %7)
  %23 = call i32 @gfs2_glock_nq(%struct.gfs2_holder* %7)
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* %8, align 4
  %25 = call i64 @unlikely(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %2
  br label %50

28:                                               ; preds = %2
  %29 = load i32, i32* @AOP_TRUNCATED_PAGE, align 4
  store i32 %29, i32* %8, align 4
  %30 = load %struct.page*, %struct.page** %4, align 8
  %31 = call i32 @lock_page(%struct.page* %30)
  %32 = load %struct.page*, %struct.page** %4, align 8
  %33 = getelementptr inbounds %struct.page, %struct.page* %32, i32 0, i32 0
  %34 = load %struct.address_space*, %struct.address_space** %33, align 8
  %35 = load %struct.address_space*, %struct.address_space** %5, align 8
  %36 = icmp eq %struct.address_space* %34, %35
  br i1 %36, label %37, label %45

37:                                               ; preds = %28
  %38 = load %struct.page*, %struct.page** %4, align 8
  %39 = call i32 @PageUptodate(%struct.page* %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %45, label %41

41:                                               ; preds = %37
  %42 = load %struct.file*, %struct.file** %3, align 8
  %43 = load %struct.page*, %struct.page** %4, align 8
  %44 = call i32 @__gfs2_readpage(%struct.file* %42, %struct.page* %43)
  store i32 %44, i32* %8, align 4
  br label %48

45:                                               ; preds = %37, %28
  %46 = load %struct.page*, %struct.page** %4, align 8
  %47 = call i32 @unlock_page(%struct.page* %46)
  br label %48

48:                                               ; preds = %45, %41
  %49 = call i32 @gfs2_glock_dq(%struct.gfs2_holder* %7)
  br label %50

50:                                               ; preds = %48, %27
  %51 = call i32 @gfs2_holder_uninit(%struct.gfs2_holder* %7)
  %52 = load i32, i32* %8, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %61

54:                                               ; preds = %50
  %55 = load i32, i32* %8, align 4
  %56 = load i32, i32* @AOP_TRUNCATED_PAGE, align 4
  %57 = icmp ne i32 %55, %56
  br i1 %57, label %58, label %61

58:                                               ; preds = %54
  %59 = load %struct.page*, %struct.page** %4, align 8
  %60 = call i32 @lock_page(%struct.page* %59)
  br label %61

61:                                               ; preds = %58, %54, %50
  %62 = load i32, i32* %8, align 4
  ret i32 %62
}

declare dso_local %struct.gfs2_inode* @GFS2_I(i32) #1

declare dso_local i32 @unlock_page(%struct.page*) #1

declare dso_local i32 @gfs2_holder_init(i32, i32, i32, %struct.gfs2_holder*) #1

declare dso_local i32 @gfs2_glock_nq(%struct.gfs2_holder*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @lock_page(%struct.page*) #1

declare dso_local i32 @PageUptodate(%struct.page*) #1

declare dso_local i32 @__gfs2_readpage(%struct.file*, %struct.page*) #1

declare dso_local i32 @gfs2_glock_dq(%struct.gfs2_holder*) #1

declare dso_local i32 @gfs2_holder_uninit(%struct.gfs2_holder*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
