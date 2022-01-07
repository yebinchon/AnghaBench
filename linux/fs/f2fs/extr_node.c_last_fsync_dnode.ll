; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_node.c_last_fsync_dnode.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_node.c_last_fsync_dnode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i64 }
%struct.f2fs_sb_info = type { i32 }
%struct.pagevec = type { %struct.page** }

@PAGECACHE_TAG_DIRTY = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.page* (%struct.f2fs_sb_info*, i64)* @last_fsync_dnode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.page* @last_fsync_dnode(%struct.f2fs_sb_info* %0, i64 %1) #0 {
  %3 = alloca %struct.page*, align 8
  %4 = alloca %struct.f2fs_sb_info*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.pagevec, align 8
  %8 = alloca %struct.page*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.page*, align 8
  store %struct.f2fs_sb_info* %0, %struct.f2fs_sb_info** %4, align 8
  store i64 %1, i64* %5, align 8
  store %struct.page* null, %struct.page** %8, align 8
  %12 = call i32 @pagevec_init(%struct.pagevec* %7)
  store i64 0, i64* %6, align 8
  br label %13

13:                                               ; preds = %99, %2
  %14 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %4, align 8
  %15 = call i64 @NODE_MAPPING(%struct.f2fs_sb_info* %14)
  %16 = load i32, i32* @PAGECACHE_TAG_DIRTY, align 4
  %17 = call i32 @pagevec_lookup_tag(%struct.pagevec* %7, i64 %15, i64* %6, i32 %16)
  store i32 %17, i32* %9, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %102

19:                                               ; preds = %13
  store i32 0, i32* %10, align 4
  br label %20

20:                                               ; preds = %96, %19
  %21 = load i32, i32* %10, align 4
  %22 = load i32, i32* %9, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %99

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.pagevec, %struct.pagevec* %7, i32 0, i32 0
  %26 = load %struct.page**, %struct.page*** %25, align 8
  %27 = load i32, i32* %10, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.page*, %struct.page** %26, i64 %28
  %30 = load %struct.page*, %struct.page** %29, align 8
  store %struct.page* %30, %struct.page** %11, align 8
  %31 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %4, align 8
  %32 = call i32 @f2fs_cp_error(%struct.f2fs_sb_info* %31)
  %33 = call i64 @unlikely(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %42

35:                                               ; preds = %24
  %36 = load %struct.page*, %struct.page** %8, align 8
  %37 = call i32 @f2fs_put_page(%struct.page* %36, i32 0)
  %38 = call i32 @pagevec_release(%struct.pagevec* %7)
  %39 = load i32, i32* @EIO, align 4
  %40 = sub nsw i32 0, %39
  %41 = call %struct.page* @ERR_PTR(i32 %40)
  store %struct.page* %41, %struct.page** %3, align 8
  br label %104

42:                                               ; preds = %24
  %43 = load %struct.page*, %struct.page** %11, align 8
  %44 = call i32 @IS_DNODE(%struct.page* %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %42
  %47 = load %struct.page*, %struct.page** %11, align 8
  %48 = call i32 @is_cold_node(%struct.page* %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %51, label %50

50:                                               ; preds = %46, %42
  br label %96

51:                                               ; preds = %46
  %52 = load %struct.page*, %struct.page** %11, align 8
  %53 = call i64 @ino_of_node(%struct.page* %52)
  %54 = load i64, i64* %5, align 8
  %55 = icmp ne i64 %53, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %51
  br label %96

57:                                               ; preds = %51
  %58 = load %struct.page*, %struct.page** %11, align 8
  %59 = call i32 @lock_page(%struct.page* %58)
  %60 = load %struct.page*, %struct.page** %11, align 8
  %61 = getelementptr inbounds %struct.page, %struct.page* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %4, align 8
  %64 = call i64 @NODE_MAPPING(%struct.f2fs_sb_info* %63)
  %65 = icmp ne i64 %62, %64
  %66 = zext i1 %65 to i32
  %67 = call i64 @unlikely(i32 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %57
  br label %70

70:                                               ; preds = %83, %78, %69
  %71 = load %struct.page*, %struct.page** %11, align 8
  %72 = call i32 @unlock_page(%struct.page* %71)
  br label %96

73:                                               ; preds = %57
  %74 = load %struct.page*, %struct.page** %11, align 8
  %75 = call i64 @ino_of_node(%struct.page* %74)
  %76 = load i64, i64* %5, align 8
  %77 = icmp ne i64 %75, %76
  br i1 %77, label %78, label %79

78:                                               ; preds = %73
  br label %70

79:                                               ; preds = %73
  %80 = load %struct.page*, %struct.page** %11, align 8
  %81 = call i32 @PageDirty(%struct.page* %80)
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %84, label %83

83:                                               ; preds = %79
  br label %70

84:                                               ; preds = %79
  %85 = load %struct.page*, %struct.page** %8, align 8
  %86 = icmp ne %struct.page* %85, null
  br i1 %86, label %87, label %90

87:                                               ; preds = %84
  %88 = load %struct.page*, %struct.page** %8, align 8
  %89 = call i32 @f2fs_put_page(%struct.page* %88, i32 0)
  br label %90

90:                                               ; preds = %87, %84
  %91 = load %struct.page*, %struct.page** %11, align 8
  %92 = call i32 @get_page(%struct.page* %91)
  %93 = load %struct.page*, %struct.page** %11, align 8
  store %struct.page* %93, %struct.page** %8, align 8
  %94 = load %struct.page*, %struct.page** %11, align 8
  %95 = call i32 @unlock_page(%struct.page* %94)
  br label %96

96:                                               ; preds = %90, %70, %56, %50
  %97 = load i32, i32* %10, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %10, align 4
  br label %20

99:                                               ; preds = %20
  %100 = call i32 @pagevec_release(%struct.pagevec* %7)
  %101 = call i32 (...) @cond_resched()
  br label %13

102:                                              ; preds = %13
  %103 = load %struct.page*, %struct.page** %8, align 8
  store %struct.page* %103, %struct.page** %3, align 8
  br label %104

104:                                              ; preds = %102, %35
  %105 = load %struct.page*, %struct.page** %3, align 8
  ret %struct.page* %105
}

declare dso_local i32 @pagevec_init(%struct.pagevec*) #1

declare dso_local i32 @pagevec_lookup_tag(%struct.pagevec*, i64, i64*, i32) #1

declare dso_local i64 @NODE_MAPPING(%struct.f2fs_sb_info*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @f2fs_cp_error(%struct.f2fs_sb_info*) #1

declare dso_local i32 @f2fs_put_page(%struct.page*, i32) #1

declare dso_local i32 @pagevec_release(%struct.pagevec*) #1

declare dso_local %struct.page* @ERR_PTR(i32) #1

declare dso_local i32 @IS_DNODE(%struct.page*) #1

declare dso_local i32 @is_cold_node(%struct.page*) #1

declare dso_local i64 @ino_of_node(%struct.page*) #1

declare dso_local i32 @lock_page(%struct.page*) #1

declare dso_local i32 @unlock_page(%struct.page*) #1

declare dso_local i32 @PageDirty(%struct.page*) #1

declare dso_local i32 @get_page(%struct.page*) #1

declare dso_local i32 @cond_resched(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
