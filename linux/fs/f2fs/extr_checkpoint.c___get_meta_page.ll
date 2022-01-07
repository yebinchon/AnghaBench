; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_checkpoint.c___get_meta_page.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_checkpoint.c___get_meta_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { %struct.address_space* }
%struct.address_space = type { i32 }
%struct.f2fs_sb_info = type { i32 }
%struct.f2fs_io_info = type { i32, i32, %struct.page*, i32*, i32, i32, i32, i32, %struct.f2fs_sb_info* }

@REQ_META = common dso_local global i32 0, align 4
@REQ_PRIO = common dso_local global i32 0, align 4
@REQ_OP_READ = common dso_local global i32 0, align 4
@META = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.page* (%struct.f2fs_sb_info*, i32, i32)* @__get_meta_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.page* @__get_meta_page(%struct.f2fs_sb_info* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.page*, align 8
  %5 = alloca %struct.f2fs_sb_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.address_space*, align 8
  %9 = alloca %struct.page*, align 8
  %10 = alloca %struct.f2fs_io_info, align 8
  %11 = alloca i32, align 4
  store %struct.f2fs_sb_info* %0, %struct.f2fs_sb_info** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %12 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %5, align 8
  %13 = call %struct.address_space* @META_MAPPING(%struct.f2fs_sb_info* %12)
  store %struct.address_space* %13, %struct.address_space** %8, align 8
  %14 = getelementptr inbounds %struct.f2fs_io_info, %struct.f2fs_io_info* %10, i32 0, i32 0
  %15 = load i32, i32* @REQ_META, align 4
  %16 = load i32, i32* @REQ_PRIO, align 4
  %17 = or i32 %15, %16
  store i32 %17, i32* %14, align 8
  %18 = getelementptr inbounds %struct.f2fs_io_info, %struct.f2fs_io_info* %10, i32 0, i32 1
  %19 = load i32, i32* %7, align 4
  %20 = icmp ne i32 %19, 0
  %21 = xor i1 %20, true
  %22 = zext i1 %21 to i32
  store i32 %22, i32* %18, align 4
  %23 = getelementptr inbounds %struct.f2fs_io_info, %struct.f2fs_io_info* %10, i32 0, i32 2
  store %struct.page* null, %struct.page** %23, align 8
  %24 = getelementptr inbounds %struct.f2fs_io_info, %struct.f2fs_io_info* %10, i32 0, i32 3
  store i32* null, i32** %24, align 8
  %25 = getelementptr inbounds %struct.f2fs_io_info, %struct.f2fs_io_info* %10, i32 0, i32 4
  %26 = load i32, i32* %6, align 4
  store i32 %26, i32* %25, align 8
  %27 = getelementptr inbounds %struct.f2fs_io_info, %struct.f2fs_io_info* %10, i32 0, i32 5
  %28 = load i32, i32* %6, align 4
  store i32 %28, i32* %27, align 4
  %29 = getelementptr inbounds %struct.f2fs_io_info, %struct.f2fs_io_info* %10, i32 0, i32 6
  %30 = load i32, i32* @REQ_OP_READ, align 4
  store i32 %30, i32* %29, align 8
  %31 = getelementptr inbounds %struct.f2fs_io_info, %struct.f2fs_io_info* %10, i32 0, i32 7
  %32 = load i32, i32* @META, align 4
  store i32 %32, i32* %31, align 4
  %33 = getelementptr inbounds %struct.f2fs_io_info, %struct.f2fs_io_info* %10, i32 0, i32 8
  %34 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %5, align 8
  store %struct.f2fs_sb_info* %34, %struct.f2fs_sb_info** %33, align 8
  %35 = load i32, i32* %7, align 4
  %36 = icmp ne i32 %35, 0
  %37 = xor i1 %36, true
  %38 = zext i1 %37 to i32
  %39 = call i64 @unlikely(i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %47

41:                                               ; preds = %3
  %42 = load i32, i32* @REQ_META, align 4
  %43 = xor i32 %42, -1
  %44 = getelementptr inbounds %struct.f2fs_io_info, %struct.f2fs_io_info* %10, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = and i32 %45, %43
  store i32 %46, i32* %44, align 8
  br label %47

47:                                               ; preds = %41, %3
  br label %48

48:                                               ; preds = %83, %54, %47
  %49 = load %struct.address_space*, %struct.address_space** %8, align 8
  %50 = load i32, i32* %6, align 4
  %51 = call %struct.page* @f2fs_grab_cache_page(%struct.address_space* %49, i32 %50, i32 0)
  store %struct.page* %51, %struct.page** %9, align 8
  %52 = load %struct.page*, %struct.page** %9, align 8
  %53 = icmp ne %struct.page* %52, null
  br i1 %53, label %56, label %54

54:                                               ; preds = %48
  %55 = call i32 (...) @cond_resched()
  br label %48

56:                                               ; preds = %48
  %57 = load %struct.page*, %struct.page** %9, align 8
  %58 = call i64 @PageUptodate(%struct.page* %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %56
  br label %101

61:                                               ; preds = %56
  %62 = load %struct.page*, %struct.page** %9, align 8
  %63 = getelementptr inbounds %struct.f2fs_io_info, %struct.f2fs_io_info* %10, i32 0, i32 2
  store %struct.page* %62, %struct.page** %63, align 8
  %64 = call i32 @f2fs_submit_page_bio(%struct.f2fs_io_info* %10)
  store i32 %64, i32* %11, align 4
  %65 = load i32, i32* %11, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %72

67:                                               ; preds = %61
  %68 = load %struct.page*, %struct.page** %9, align 8
  %69 = call i32 @f2fs_put_page(%struct.page* %68, i32 1)
  %70 = load i32, i32* %11, align 4
  %71 = call %struct.page* @ERR_PTR(i32 %70)
  store %struct.page* %71, %struct.page** %4, align 8
  br label %103

72:                                               ; preds = %61
  %73 = load %struct.page*, %struct.page** %9, align 8
  %74 = call i32 @lock_page(%struct.page* %73)
  %75 = load %struct.page*, %struct.page** %9, align 8
  %76 = getelementptr inbounds %struct.page, %struct.page* %75, i32 0, i32 0
  %77 = load %struct.address_space*, %struct.address_space** %76, align 8
  %78 = load %struct.address_space*, %struct.address_space** %8, align 8
  %79 = icmp ne %struct.address_space* %77, %78
  %80 = zext i1 %79 to i32
  %81 = call i64 @unlikely(i32 %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %72
  %84 = load %struct.page*, %struct.page** %9, align 8
  %85 = call i32 @f2fs_put_page(%struct.page* %84, i32 1)
  br label %48

86:                                               ; preds = %72
  %87 = load %struct.page*, %struct.page** %9, align 8
  %88 = call i64 @PageUptodate(%struct.page* %87)
  %89 = icmp ne i64 %88, 0
  %90 = xor i1 %89, true
  %91 = zext i1 %90 to i32
  %92 = call i64 @unlikely(i32 %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %100

94:                                               ; preds = %86
  %95 = load %struct.page*, %struct.page** %9, align 8
  %96 = call i32 @f2fs_put_page(%struct.page* %95, i32 1)
  %97 = load i32, i32* @EIO, align 4
  %98 = sub nsw i32 0, %97
  %99 = call %struct.page* @ERR_PTR(i32 %98)
  store %struct.page* %99, %struct.page** %4, align 8
  br label %103

100:                                              ; preds = %86
  br label %101

101:                                              ; preds = %100, %60
  %102 = load %struct.page*, %struct.page** %9, align 8
  store %struct.page* %102, %struct.page** %4, align 8
  br label %103

103:                                              ; preds = %101, %94, %67
  %104 = load %struct.page*, %struct.page** %4, align 8
  ret %struct.page* %104
}

declare dso_local %struct.address_space* @META_MAPPING(%struct.f2fs_sb_info*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local %struct.page* @f2fs_grab_cache_page(%struct.address_space*, i32, i32) #1

declare dso_local i32 @cond_resched(...) #1

declare dso_local i64 @PageUptodate(%struct.page*) #1

declare dso_local i32 @f2fs_submit_page_bio(%struct.f2fs_io_info*) #1

declare dso_local i32 @f2fs_put_page(%struct.page*, i32) #1

declare dso_local %struct.page* @ERR_PTR(i32) #1

declare dso_local i32 @lock_page(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
