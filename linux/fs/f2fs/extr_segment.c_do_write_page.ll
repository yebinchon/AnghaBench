; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_segment.c_do_write_page.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_segment.c_do_write_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.f2fs_summary = type { i32 }
%struct.f2fs_io_info = type { %struct.TYPE_5__*, i32, i32, i64, i32 }
%struct.TYPE_5__ = type { i32 }

@LFS = common dso_local global i32 0, align 4
@CURSEG_COLD_DATA = common dso_local global i32 0, align 4
@NULL_SEGNO = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.f2fs_summary*, %struct.f2fs_io_info*)* @do_write_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_write_page(%struct.f2fs_summary* %0, %struct.f2fs_io_info* %1) #0 {
  %3 = alloca %struct.f2fs_summary*, align 8
  %4 = alloca %struct.f2fs_io_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.f2fs_summary* %0, %struct.f2fs_summary** %3, align 8
  store %struct.f2fs_io_info* %1, %struct.f2fs_io_info** %4, align 8
  %7 = load %struct.f2fs_io_info*, %struct.f2fs_io_info** %4, align 8
  %8 = call i32 @__get_segment_type(%struct.f2fs_io_info* %7)
  store i32 %8, i32* %5, align 4
  %9 = load %struct.f2fs_io_info*, %struct.f2fs_io_info** %4, align 8
  %10 = getelementptr inbounds %struct.f2fs_io_info, %struct.f2fs_io_info* %9, i32 0, i32 0
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %12 = load i32, i32* @LFS, align 4
  %13 = call i64 @test_opt(%struct.TYPE_5__* %11, i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %2
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* @CURSEG_COLD_DATA, align 4
  %18 = icmp eq i32 %16, %17
  br label %19

19:                                               ; preds = %15, %2
  %20 = phi i1 [ false, %2 ], [ %18, %15 ]
  %21 = zext i1 %20 to i32
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %6, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %19
  %25 = load %struct.f2fs_io_info*, %struct.f2fs_io_info** %4, align 8
  %26 = getelementptr inbounds %struct.f2fs_io_info, %struct.f2fs_io_info* %25, i32 0, i32 0
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = call i32 @down_read(i32* %28)
  br label %30

30:                                               ; preds = %24, %19
  br label %31

31:                                               ; preds = %75, %30
  %32 = load %struct.f2fs_io_info*, %struct.f2fs_io_info** %4, align 8
  %33 = getelementptr inbounds %struct.f2fs_io_info, %struct.f2fs_io_info* %32, i32 0, i32 0
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %33, align 8
  %35 = load %struct.f2fs_io_info*, %struct.f2fs_io_info** %4, align 8
  %36 = getelementptr inbounds %struct.f2fs_io_info, %struct.f2fs_io_info* %35, i32 0, i32 4
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.f2fs_io_info*, %struct.f2fs_io_info** %4, align 8
  %39 = getelementptr inbounds %struct.f2fs_io_info, %struct.f2fs_io_info* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.f2fs_io_info*, %struct.f2fs_io_info** %4, align 8
  %42 = getelementptr inbounds %struct.f2fs_io_info, %struct.f2fs_io_info* %41, i32 0, i32 1
  %43 = load %struct.f2fs_summary*, %struct.f2fs_summary** %3, align 8
  %44 = load i32, i32* %5, align 4
  %45 = load %struct.f2fs_io_info*, %struct.f2fs_io_info** %4, align 8
  %46 = call i32 @f2fs_allocate_data_block(%struct.TYPE_5__* %34, i32 %37, i32 %40, i32* %42, %struct.f2fs_summary* %43, i32 %44, %struct.f2fs_io_info* %45, i32 1)
  %47 = load %struct.f2fs_io_info*, %struct.f2fs_io_info** %4, align 8
  %48 = getelementptr inbounds %struct.f2fs_io_info, %struct.f2fs_io_info* %47, i32 0, i32 0
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %48, align 8
  %50 = load %struct.f2fs_io_info*, %struct.f2fs_io_info** %4, align 8
  %51 = getelementptr inbounds %struct.f2fs_io_info, %struct.f2fs_io_info* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = call i64 @GET_SEGNO(%struct.TYPE_5__* %49, i32 %52)
  %54 = load i64, i64* @NULL_SEGNO, align 8
  %55 = icmp ne i64 %53, %54
  br i1 %55, label %56, label %68

56:                                               ; preds = %31
  %57 = load %struct.f2fs_io_info*, %struct.f2fs_io_info** %4, align 8
  %58 = getelementptr inbounds %struct.f2fs_io_info, %struct.f2fs_io_info* %57, i32 0, i32 0
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %58, align 8
  %60 = call i32 @META_MAPPING(%struct.TYPE_5__* %59)
  %61 = load %struct.f2fs_io_info*, %struct.f2fs_io_info** %4, align 8
  %62 = getelementptr inbounds %struct.f2fs_io_info, %struct.f2fs_io_info* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.f2fs_io_info*, %struct.f2fs_io_info** %4, align 8
  %65 = getelementptr inbounds %struct.f2fs_io_info, %struct.f2fs_io_info* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @invalidate_mapping_pages(i32 %60, i32 %63, i32 %66)
  br label %68

68:                                               ; preds = %56, %31
  %69 = load %struct.f2fs_io_info*, %struct.f2fs_io_info** %4, align 8
  %70 = call i32 @f2fs_submit_page_write(%struct.f2fs_io_info* %69)
  %71 = load %struct.f2fs_io_info*, %struct.f2fs_io_info** %4, align 8
  %72 = getelementptr inbounds %struct.f2fs_io_info, %struct.f2fs_io_info* %71, i32 0, i32 3
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %81

75:                                               ; preds = %68
  %76 = load %struct.f2fs_io_info*, %struct.f2fs_io_info** %4, align 8
  %77 = getelementptr inbounds %struct.f2fs_io_info, %struct.f2fs_io_info* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 8
  %79 = load %struct.f2fs_io_info*, %struct.f2fs_io_info** %4, align 8
  %80 = getelementptr inbounds %struct.f2fs_io_info, %struct.f2fs_io_info* %79, i32 0, i32 2
  store i32 %78, i32* %80, align 4
  br label %31

81:                                               ; preds = %68
  %82 = load %struct.f2fs_io_info*, %struct.f2fs_io_info** %4, align 8
  %83 = call i32 @update_device_state(%struct.f2fs_io_info* %82)
  %84 = load i32, i32* %6, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %92

86:                                               ; preds = %81
  %87 = load %struct.f2fs_io_info*, %struct.f2fs_io_info** %4, align 8
  %88 = getelementptr inbounds %struct.f2fs_io_info, %struct.f2fs_io_info* %87, i32 0, i32 0
  %89 = load %struct.TYPE_5__*, %struct.TYPE_5__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 0
  %91 = call i32 @up_read(i32* %90)
  br label %92

92:                                               ; preds = %86, %81
  ret void
}

declare dso_local i32 @__get_segment_type(%struct.f2fs_io_info*) #1

declare dso_local i64 @test_opt(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @down_read(i32*) #1

declare dso_local i32 @f2fs_allocate_data_block(%struct.TYPE_5__*, i32, i32, i32*, %struct.f2fs_summary*, i32, %struct.f2fs_io_info*, i32) #1

declare dso_local i64 @GET_SEGNO(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @invalidate_mapping_pages(i32, i32, i32) #1

declare dso_local i32 @META_MAPPING(%struct.TYPE_5__*) #1

declare dso_local i32 @f2fs_submit_page_write(%struct.f2fs_io_info*) #1

declare dso_local i32 @update_device_state(%struct.f2fs_io_info*) #1

declare dso_local i32 @up_read(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
