; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_write.c_nfs_flush_incompatible.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_write.c_nfs_flush_incompatible.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64 }
%struct.file = type { i32 }
%struct.page = type { i32 }
%struct.nfs_open_context = type { i32 }
%struct.nfs_lock_context = type { i64 }
%struct.file_lock_context = type { i32, i32 }
%struct.nfs_page = type { %struct.page*, %struct.nfs_lock_context* }
%struct.TYPE_5__ = type { %struct.file_lock_context* }
%struct.TYPE_4__ = type { i32 }

@current = common dso_local global %struct.TYPE_6__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfs_flush_incompatible(%struct.file* %0, %struct.page* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.page*, align 8
  %6 = alloca %struct.nfs_open_context*, align 8
  %7 = alloca %struct.nfs_lock_context*, align 8
  %8 = alloca %struct.file_lock_context*, align 8
  %9 = alloca %struct.nfs_page*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %4, align 8
  store %struct.page* %1, %struct.page** %5, align 8
  %12 = load %struct.file*, %struct.file** %4, align 8
  %13 = call %struct.nfs_open_context* @nfs_file_open_context(%struct.file* %12)
  store %struct.nfs_open_context* %13, %struct.nfs_open_context** %6, align 8
  %14 = load %struct.file*, %struct.file** %4, align 8
  %15 = call %struct.TYPE_5__* @file_inode(%struct.file* %14)
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load %struct.file_lock_context*, %struct.file_lock_context** %16, align 8
  store %struct.file_lock_context* %17, %struct.file_lock_context** %8, align 8
  br label %18

18:                                               ; preds = %82, %2
  %19 = load %struct.page*, %struct.page** %5, align 8
  %20 = call %struct.nfs_page* @nfs_page_find_head_request(%struct.page* %19)
  store %struct.nfs_page* %20, %struct.nfs_page** %9, align 8
  %21 = load %struct.nfs_page*, %struct.nfs_page** %9, align 8
  %22 = icmp eq %struct.nfs_page* %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %18
  store i32 0, i32* %3, align 4
  br label %87

24:                                               ; preds = %18
  %25 = load %struct.nfs_page*, %struct.nfs_page** %9, align 8
  %26 = getelementptr inbounds %struct.nfs_page, %struct.nfs_page* %25, i32 0, i32 1
  %27 = load %struct.nfs_lock_context*, %struct.nfs_lock_context** %26, align 8
  store %struct.nfs_lock_context* %27, %struct.nfs_lock_context** %7, align 8
  %28 = load %struct.nfs_page*, %struct.nfs_page** %9, align 8
  %29 = getelementptr inbounds %struct.nfs_page, %struct.nfs_page* %28, i32 0, i32 0
  %30 = load %struct.page*, %struct.page** %29, align 8
  %31 = load %struct.page*, %struct.page** %5, align 8
  %32 = icmp ne %struct.page* %30, %31
  br i1 %32, label %40, label %33

33:                                               ; preds = %24
  %34 = load %struct.nfs_page*, %struct.nfs_page** %9, align 8
  %35 = call i32 @nfs_req_openctx(%struct.nfs_page* %34)
  %36 = load %struct.nfs_open_context*, %struct.nfs_open_context** %6, align 8
  %37 = call i32 @nfs_match_open_context(i32 %35, %struct.nfs_open_context* %36)
  %38 = icmp ne i32 %37, 0
  %39 = xor i1 %38, true
  br label %40

40:                                               ; preds = %33, %24
  %41 = phi i1 [ true, %24 ], [ %39, %33 ]
  %42 = zext i1 %41 to i32
  store i32 %42, i32* %10, align 4
  %43 = load %struct.nfs_lock_context*, %struct.nfs_lock_context** %7, align 8
  %44 = icmp ne %struct.nfs_lock_context* %43, null
  br i1 %44, label %45, label %69

45:                                               ; preds = %40
  %46 = load %struct.file_lock_context*, %struct.file_lock_context** %8, align 8
  %47 = icmp ne %struct.file_lock_context* %46, null
  br i1 %47, label %48, label %69

48:                                               ; preds = %45
  %49 = load %struct.file_lock_context*, %struct.file_lock_context** %8, align 8
  %50 = getelementptr inbounds %struct.file_lock_context, %struct.file_lock_context* %49, i32 0, i32 1
  %51 = call i64 @list_empty_careful(i32* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %48
  %54 = load %struct.file_lock_context*, %struct.file_lock_context** %8, align 8
  %55 = getelementptr inbounds %struct.file_lock_context, %struct.file_lock_context* %54, i32 0, i32 0
  %56 = call i64 @list_empty_careful(i32* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %69, label %58

58:                                               ; preds = %53, %48
  %59 = load %struct.nfs_lock_context*, %struct.nfs_lock_context** %7, align 8
  %60 = getelementptr inbounds %struct.nfs_lock_context, %struct.nfs_lock_context* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** @current, align 8
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %61, %64
  %66 = zext i1 %65 to i32
  %67 = load i32, i32* %10, align 4
  %68 = or i32 %67, %66
  store i32 %68, i32* %10, align 4
  br label %69

69:                                               ; preds = %58, %53, %45, %40
  %70 = load %struct.nfs_page*, %struct.nfs_page** %9, align 8
  %71 = call i32 @nfs_release_request(%struct.nfs_page* %70)
  %72 = load i32, i32* %10, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %75, label %74

74:                                               ; preds = %69
  store i32 0, i32* %3, align 4
  br label %87

75:                                               ; preds = %69
  %76 = load %struct.page*, %struct.page** %5, align 8
  %77 = call %struct.TYPE_4__* @page_file_mapping(%struct.page* %76)
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.page*, %struct.page** %5, align 8
  %81 = call i32 @nfs_wb_page(i32 %79, %struct.page* %80)
  store i32 %81, i32* %11, align 4
  br label %82

82:                                               ; preds = %75
  %83 = load i32, i32* %11, align 4
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %18, label %85

85:                                               ; preds = %82
  %86 = load i32, i32* %11, align 4
  store i32 %86, i32* %3, align 4
  br label %87

87:                                               ; preds = %85, %74, %23
  %88 = load i32, i32* %3, align 4
  ret i32 %88
}

declare dso_local %struct.nfs_open_context* @nfs_file_open_context(%struct.file*) #1

declare dso_local %struct.TYPE_5__* @file_inode(%struct.file*) #1

declare dso_local %struct.nfs_page* @nfs_page_find_head_request(%struct.page*) #1

declare dso_local i32 @nfs_match_open_context(i32, %struct.nfs_open_context*) #1

declare dso_local i32 @nfs_req_openctx(%struct.nfs_page*) #1

declare dso_local i64 @list_empty_careful(i32*) #1

declare dso_local i32 @nfs_release_request(%struct.nfs_page*) #1

declare dso_local i32 @nfs_wb_page(i32, %struct.page*) #1

declare dso_local %struct.TYPE_4__* @page_file_mapping(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
