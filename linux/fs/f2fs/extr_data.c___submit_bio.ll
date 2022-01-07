; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_data.c___submit_bio.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_data.c___submit_bio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }
%struct.f2fs_sb_info = type { i32, i32 }
%struct.bio = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.page = type { i32 }

@DATA = common dso_local global i32 0, align 4
@NODE = common dso_local global i32 0, align 4
@LFS = common dso_local global i32 0, align 4
@current = common dso_local global %struct.TYPE_4__* null, align 8
@F2FS_BLKSIZE_BITS = common dso_local global i32 0, align 4
@GFP_NOIO = common dso_local global i32 0, align 4
@__GFP_NOFAIL = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i64 0, align 8
@DUMMY_WRITTEN_PAGE = common dso_local global i64 0, align 8
@SBI_NEED_CP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.f2fs_sb_info*, %struct.bio*, i32)* @__submit_bio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__submit_bio(%struct.f2fs_sb_info* %0, %struct.bio* %1, i32 %2) #0 {
  %4 = alloca %struct.f2fs_sb_info*, align 8
  %5 = alloca %struct.bio*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.page*, align 8
  store %struct.f2fs_sb_info* %0, %struct.f2fs_sb_info** %4, align 8
  store %struct.bio* %1, %struct.bio** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.bio*, %struct.bio** %5, align 8
  %10 = call i32 @bio_op(%struct.bio* %9)
  %11 = call i64 @is_read_io(i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %108, label %13

13:                                               ; preds = %3
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* @DATA, align 4
  %16 = icmp ne i32 %14, %15
  br i1 %16, label %17, label %22

17:                                               ; preds = %13
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* @NODE, align 4
  %20 = icmp ne i32 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %17
  br label %109

22:                                               ; preds = %17, %13
  %23 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %4, align 8
  %24 = load i32, i32* @LFS, align 4
  %25 = call i64 @test_opt(%struct.f2fs_sb_info* %23, i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %37

27:                                               ; preds = %22
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %27
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = call i32 @blk_finish_plug(i64 %35)
  br label %37

37:                                               ; preds = %32, %27, %22
  %38 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %4, align 8
  %39 = call i64 @F2FS_IO_ALIGNED(%struct.f2fs_sb_info* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %37
  br label %109

42:                                               ; preds = %37
  %43 = load %struct.bio*, %struct.bio** %5, align 8
  %44 = getelementptr inbounds %struct.bio, %struct.bio* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @F2FS_BLKSIZE_BITS, align 4
  %48 = lshr i32 %46, %47
  store i32 %48, i32* %7, align 4
  %49 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %4, align 8
  %50 = call i32 @F2FS_IO_SIZE(%struct.f2fs_sb_info* %49)
  %51 = load i32, i32* %7, align 4
  %52 = urem i32 %51, %50
  store i32 %52, i32* %7, align 4
  %53 = load i32, i32* %7, align 4
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %42
  br label %109

56:                                               ; preds = %42
  br label %57

57:                                               ; preds = %96, %56
  %58 = load i32, i32* %7, align 4
  %59 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %4, align 8
  %60 = call i32 @F2FS_IO_SIZE(%struct.f2fs_sb_info* %59)
  %61 = icmp ult i32 %58, %60
  br i1 %61, label %62, label %99

62:                                               ; preds = %57
  %63 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %4, align 8
  %64 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @GFP_NOIO, align 4
  %67 = load i32, i32* @__GFP_NOFAIL, align 4
  %68 = or i32 %66, %67
  %69 = call %struct.page* @mempool_alloc(i32 %65, i32 %68)
  store %struct.page* %69, %struct.page** %8, align 8
  %70 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %4, align 8
  %71 = load %struct.page*, %struct.page** %8, align 8
  %72 = icmp ne %struct.page* %71, null
  %73 = xor i1 %72, true
  %74 = zext i1 %73 to i32
  %75 = call i32 @f2fs_bug_on(%struct.f2fs_sb_info* %70, i32 %74)
  %76 = load %struct.page*, %struct.page** %8, align 8
  %77 = load i64, i64* @PAGE_SIZE, align 8
  %78 = call i32 @zero_user_segment(%struct.page* %76, i32 0, i64 %77)
  %79 = load %struct.page*, %struct.page** %8, align 8
  %80 = call i32 @SetPagePrivate(%struct.page* %79)
  %81 = load %struct.page*, %struct.page** %8, align 8
  %82 = load i64, i64* @DUMMY_WRITTEN_PAGE, align 8
  %83 = call i32 @set_page_private(%struct.page* %81, i64 %82)
  %84 = load %struct.page*, %struct.page** %8, align 8
  %85 = call i32 @lock_page(%struct.page* %84)
  %86 = load %struct.bio*, %struct.bio** %5, align 8
  %87 = load %struct.page*, %struct.page** %8, align 8
  %88 = load i64, i64* @PAGE_SIZE, align 8
  %89 = call i64 @bio_add_page(%struct.bio* %86, %struct.page* %87, i64 %88, i32 0)
  %90 = load i64, i64* @PAGE_SIZE, align 8
  %91 = icmp slt i64 %89, %90
  br i1 %91, label %92, label %95

92:                                               ; preds = %62
  %93 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %4, align 8
  %94 = call i32 @f2fs_bug_on(%struct.f2fs_sb_info* %93, i32 1)
  br label %95

95:                                               ; preds = %92, %62
  br label %96

96:                                               ; preds = %95
  %97 = load i32, i32* %7, align 4
  %98 = add i32 %97, 1
  store i32 %98, i32* %7, align 4
  br label %57

99:                                               ; preds = %57
  %100 = load i32, i32* %6, align 4
  %101 = load i32, i32* @NODE, align 4
  %102 = icmp eq i32 %100, %101
  br i1 %102, label %103, label %107

103:                                              ; preds = %99
  %104 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %4, align 8
  %105 = load i32, i32* @SBI_NEED_CP, align 4
  %106 = call i32 @set_sbi_flag(%struct.f2fs_sb_info* %104, i32 %105)
  br label %107

107:                                              ; preds = %103, %99
  br label %108

108:                                              ; preds = %107, %3
  br label %109

109:                                              ; preds = %108, %55, %41, %21
  %110 = load %struct.bio*, %struct.bio** %5, align 8
  %111 = call i32 @bio_op(%struct.bio* %110)
  %112 = call i64 @is_read_io(i32 %111)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %121

114:                                              ; preds = %109
  %115 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %4, align 8
  %116 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = load i32, i32* %6, align 4
  %119 = load %struct.bio*, %struct.bio** %5, align 8
  %120 = call i32 @trace_f2fs_submit_read_bio(i32 %117, i32 %118, %struct.bio* %119)
  br label %128

121:                                              ; preds = %109
  %122 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %4, align 8
  %123 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = load i32, i32* %6, align 4
  %126 = load %struct.bio*, %struct.bio** %5, align 8
  %127 = call i32 @trace_f2fs_submit_write_bio(i32 %124, i32 %125, %struct.bio* %126)
  br label %128

128:                                              ; preds = %121, %114
  %129 = load %struct.bio*, %struct.bio** %5, align 8
  %130 = call i32 @submit_bio(%struct.bio* %129)
  ret void
}

declare dso_local i64 @is_read_io(i32) #1

declare dso_local i32 @bio_op(%struct.bio*) #1

declare dso_local i64 @test_opt(%struct.f2fs_sb_info*, i32) #1

declare dso_local i32 @blk_finish_plug(i64) #1

declare dso_local i64 @F2FS_IO_ALIGNED(%struct.f2fs_sb_info*) #1

declare dso_local i32 @F2FS_IO_SIZE(%struct.f2fs_sb_info*) #1

declare dso_local %struct.page* @mempool_alloc(i32, i32) #1

declare dso_local i32 @f2fs_bug_on(%struct.f2fs_sb_info*, i32) #1

declare dso_local i32 @zero_user_segment(%struct.page*, i32, i64) #1

declare dso_local i32 @SetPagePrivate(%struct.page*) #1

declare dso_local i32 @set_page_private(%struct.page*, i64) #1

declare dso_local i32 @lock_page(%struct.page*) #1

declare dso_local i64 @bio_add_page(%struct.bio*, %struct.page*, i64, i32) #1

declare dso_local i32 @set_sbi_flag(%struct.f2fs_sb_info*, i32) #1

declare dso_local i32 @trace_f2fs_submit_read_bio(i32, i32, %struct.bio*) #1

declare dso_local i32 @trace_f2fs_submit_write_bio(i32, i32, %struct.bio*) #1

declare dso_local i32 @submit_bio(%struct.bio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
