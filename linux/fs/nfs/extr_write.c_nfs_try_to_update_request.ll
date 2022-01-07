; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_write.c_nfs_try_to_update_request.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_write.c_nfs_try_to_update_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs_page = type { i32, i32, i32, i64 }
%struct.inode = type { i32 }
%struct.page = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.nfs_page* (%struct.inode*, %struct.page*, i32, i32)* @nfs_try_to_update_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.nfs_page* @nfs_try_to_update_request(%struct.inode* %0, %struct.page* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.nfs_page*, align 8
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.page*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.nfs_page*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %6, align 8
  store %struct.page* %1, %struct.page** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %14 = load i32, i32* %8, align 4
  %15 = load i32, i32* %9, align 4
  %16 = add i32 %14, %15
  store i32 %16, i32* %12, align 4
  %17 = load %struct.page*, %struct.page** %7, align 8
  %18 = call %struct.nfs_page* @nfs_lock_and_join_requests(%struct.page* %17)
  store %struct.nfs_page* %18, %struct.nfs_page** %10, align 8
  %19 = load %struct.nfs_page*, %struct.nfs_page** %10, align 8
  %20 = call i64 @IS_ERR_OR_NULL(%struct.nfs_page* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %4
  %23 = load %struct.nfs_page*, %struct.nfs_page** %10, align 8
  store %struct.nfs_page* %23, %struct.nfs_page** %5, align 8
  br label %95

24:                                               ; preds = %4
  %25 = load %struct.nfs_page*, %struct.nfs_page** %10, align 8
  %26 = getelementptr inbounds %struct.nfs_page, %struct.nfs_page* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.nfs_page*, %struct.nfs_page** %10, align 8
  %29 = getelementptr inbounds %struct.nfs_page, %struct.nfs_page* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = add i32 %27, %30
  store i32 %31, i32* %11, align 4
  %32 = load i32, i32* %8, align 4
  %33 = load i32, i32* %11, align 4
  %34 = icmp ugt i32 %32, %33
  br i1 %34, label %41, label %35

35:                                               ; preds = %24
  %36 = load i32, i32* %12, align 4
  %37 = load %struct.nfs_page*, %struct.nfs_page** %10, align 8
  %38 = getelementptr inbounds %struct.nfs_page, %struct.nfs_page* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = icmp ult i32 %36, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %35, %24
  br label %79

42:                                               ; preds = %35
  %43 = load i32, i32* %8, align 4
  %44 = load %struct.nfs_page*, %struct.nfs_page** %10, align 8
  %45 = getelementptr inbounds %struct.nfs_page, %struct.nfs_page* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = icmp ult i32 %43, %46
  br i1 %47, label %48, label %55

48:                                               ; preds = %42
  %49 = load i32, i32* %8, align 4
  %50 = load %struct.nfs_page*, %struct.nfs_page** %10, align 8
  %51 = getelementptr inbounds %struct.nfs_page, %struct.nfs_page* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 8
  %52 = load i32, i32* %8, align 4
  %53 = load %struct.nfs_page*, %struct.nfs_page** %10, align 8
  %54 = getelementptr inbounds %struct.nfs_page, %struct.nfs_page* %53, i32 0, i32 2
  store i32 %52, i32* %54, align 8
  br label %55

55:                                               ; preds = %48, %42
  %56 = load i32, i32* %12, align 4
  %57 = load i32, i32* %11, align 4
  %58 = icmp ugt i32 %56, %57
  br i1 %58, label %59, label %67

59:                                               ; preds = %55
  %60 = load i32, i32* %12, align 4
  %61 = load %struct.nfs_page*, %struct.nfs_page** %10, align 8
  %62 = getelementptr inbounds %struct.nfs_page, %struct.nfs_page* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = sub i32 %60, %63
  %65 = load %struct.nfs_page*, %struct.nfs_page** %10, align 8
  %66 = getelementptr inbounds %struct.nfs_page, %struct.nfs_page* %65, i32 0, i32 1
  store i32 %64, i32* %66, align 4
  br label %75

67:                                               ; preds = %55
  %68 = load i32, i32* %11, align 4
  %69 = load %struct.nfs_page*, %struct.nfs_page** %10, align 8
  %70 = getelementptr inbounds %struct.nfs_page, %struct.nfs_page* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = sub i32 %68, %71
  %73 = load %struct.nfs_page*, %struct.nfs_page** %10, align 8
  %74 = getelementptr inbounds %struct.nfs_page, %struct.nfs_page* %73, i32 0, i32 1
  store i32 %72, i32* %74, align 4
  br label %75

75:                                               ; preds = %67, %59
  %76 = load %struct.nfs_page*, %struct.nfs_page** %10, align 8
  %77 = getelementptr inbounds %struct.nfs_page, %struct.nfs_page* %76, i32 0, i32 3
  store i64 0, i64* %77, align 8
  %78 = load %struct.nfs_page*, %struct.nfs_page** %10, align 8
  store %struct.nfs_page* %78, %struct.nfs_page** %5, align 8
  br label %95

79:                                               ; preds = %41
  %80 = load %struct.nfs_page*, %struct.nfs_page** %10, align 8
  %81 = call i32 @nfs_mark_request_dirty(%struct.nfs_page* %80)
  %82 = load %struct.nfs_page*, %struct.nfs_page** %10, align 8
  %83 = call i32 @nfs_unlock_and_release_request(%struct.nfs_page* %82)
  %84 = load %struct.inode*, %struct.inode** %6, align 8
  %85 = load %struct.page*, %struct.page** %7, align 8
  %86 = call i32 @nfs_wb_page(%struct.inode* %84, %struct.page* %85)
  store i32 %86, i32* %13, align 4
  %87 = load i32, i32* %13, align 4
  %88 = icmp slt i32 %87, 0
  br i1 %88, label %89, label %92

89:                                               ; preds = %79
  %90 = load i32, i32* %13, align 4
  %91 = call %struct.nfs_page* @ERR_PTR(i32 %90)
  br label %93

92:                                               ; preds = %79
  br label %93

93:                                               ; preds = %92, %89
  %94 = phi %struct.nfs_page* [ %91, %89 ], [ null, %92 ]
  store %struct.nfs_page* %94, %struct.nfs_page** %5, align 8
  br label %95

95:                                               ; preds = %93, %75, %22
  %96 = load %struct.nfs_page*, %struct.nfs_page** %5, align 8
  ret %struct.nfs_page* %96
}

declare dso_local %struct.nfs_page* @nfs_lock_and_join_requests(%struct.page*) #1

declare dso_local i64 @IS_ERR_OR_NULL(%struct.nfs_page*) #1

declare dso_local i32 @nfs_mark_request_dirty(%struct.nfs_page*) #1

declare dso_local i32 @nfs_unlock_and_release_request(%struct.nfs_page*) #1

declare dso_local i32 @nfs_wb_page(%struct.inode*, %struct.page*) #1

declare dso_local %struct.nfs_page* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
