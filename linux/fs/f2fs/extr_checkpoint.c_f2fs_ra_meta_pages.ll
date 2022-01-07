; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_checkpoint.c_f2fs_ra_meta_pages.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_checkpoint.c_f2fs_ra_meta_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.f2fs_sb_info = type { i32 }
%struct.page = type { i32 }
%struct.f2fs_io_info = type { i32, i32, i32, i32, %struct.page*, i32*, i32, i32, %struct.f2fs_sb_info* }
%struct.blk_plug = type { i32 }
%struct.TYPE_2__ = type { i32 }

@REQ_META = common dso_local global i32 0, align 4
@REQ_PRIO = common dso_local global i32 0, align 4
@REQ_RAHEAD = common dso_local global i32 0, align 4
@REQ_OP_READ = common dso_local global i32 0, align 4
@META = common dso_local global i32 0, align 4
@NAT_ENTRY_PER_BLOCK = common dso_local global i32 0, align 4
@SIT_ENTRY_PER_BLOCK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @f2fs_ra_meta_pages(%struct.f2fs_sb_info* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.f2fs_sb_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.page*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.f2fs_io_info, align 8
  %14 = alloca %struct.blk_plug, align 4
  store %struct.f2fs_sb_info* %0, %struct.f2fs_sb_info** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %15 = load i32, i32* %7, align 4
  store i32 %15, i32* %12, align 4
  %16 = getelementptr inbounds %struct.f2fs_io_info, %struct.f2fs_io_info* %13, i32 0, i32 0
  %17 = load i32, i32* %10, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %5
  %20 = load i32, i32* @REQ_META, align 4
  %21 = load i32, i32* @REQ_PRIO, align 4
  %22 = or i32 %20, %21
  br label %25

23:                                               ; preds = %5
  %24 = load i32, i32* @REQ_RAHEAD, align 4
  br label %25

25:                                               ; preds = %23, %19
  %26 = phi i32 [ %22, %19 ], [ %24, %23 ]
  store i32 %26, i32* %16, align 8
  %27 = getelementptr inbounds %struct.f2fs_io_info, %struct.f2fs_io_info* %13, i32 0, i32 1
  store i32 0, i32* %27, align 4
  %28 = getelementptr inbounds %struct.f2fs_io_info, %struct.f2fs_io_info* %13, i32 0, i32 2
  %29 = load i32, i32* %9, align 4
  %30 = icmp eq i32 %29, 130
  %31 = zext i1 %30 to i32
  store i32 %31, i32* %28, align 8
  %32 = getelementptr inbounds %struct.f2fs_io_info, %struct.f2fs_io_info* %13, i32 0, i32 3
  store i32 0, i32* %32, align 4
  %33 = getelementptr inbounds %struct.f2fs_io_info, %struct.f2fs_io_info* %13, i32 0, i32 4
  store %struct.page* null, %struct.page** %33, align 8
  %34 = getelementptr inbounds %struct.f2fs_io_info, %struct.f2fs_io_info* %13, i32 0, i32 5
  store i32* null, i32** %34, align 8
  %35 = getelementptr inbounds %struct.f2fs_io_info, %struct.f2fs_io_info* %13, i32 0, i32 6
  %36 = load i32, i32* @REQ_OP_READ, align 4
  store i32 %36, i32* %35, align 8
  %37 = getelementptr inbounds %struct.f2fs_io_info, %struct.f2fs_io_info* %13, i32 0, i32 7
  %38 = load i32, i32* @META, align 4
  store i32 %38, i32* %37, align 4
  %39 = getelementptr inbounds %struct.f2fs_io_info, %struct.f2fs_io_info* %13, i32 0, i32 8
  %40 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %6, align 8
  store %struct.f2fs_sb_info* %40, %struct.f2fs_sb_info** %39, align 8
  %41 = load i32, i32* %9, align 4
  %42 = icmp eq i32 %41, 130
  %43 = zext i1 %42 to i32
  %44 = call i64 @unlikely(i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %25
  %47 = load i32, i32* @REQ_META, align 4
  %48 = xor i32 %47, -1
  %49 = getelementptr inbounds %struct.f2fs_io_info, %struct.f2fs_io_info* %13, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = and i32 %50, %48
  store i32 %51, i32* %49, align 8
  br label %52

52:                                               ; preds = %46, %25
  %53 = call i32 @blk_start_plug(%struct.blk_plug* %14)
  br label %54

54:                                               ; preds = %120, %52
  %55 = load i32, i32* %8, align 4
  %56 = add nsw i32 %55, -1
  store i32 %56, i32* %8, align 4
  %57 = icmp sgt i32 %55, 0
  br i1 %57, label %58, label %123

58:                                               ; preds = %54
  %59 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %6, align 8
  %60 = load i32, i32* %12, align 4
  %61 = load i32, i32* %9, align 4
  %62 = call i32 @f2fs_is_valid_blkaddr(%struct.f2fs_sb_info* %59, i32 %60, i32 %61)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %65, label %64

64:                                               ; preds = %58
  br label %124

65:                                               ; preds = %58
  %66 = load i32, i32* %9, align 4
  switch i32 %66, label %96 [
    i32 131, label %67
    i32 129, label %86
    i32 128, label %93
    i32 132, label %93
    i32 130, label %93
  ]

67:                                               ; preds = %65
  %68 = load i32, i32* %12, align 4
  %69 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %6, align 8
  %70 = call %struct.TYPE_2__* @NM_I(%struct.f2fs_sb_info* %69)
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @NAT_BLOCK_OFFSET(i32 %72)
  %74 = icmp sge i32 %68, %73
  %75 = zext i1 %74 to i32
  %76 = call i64 @unlikely(i32 %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %67
  store i32 0, i32* %12, align 4
  br label %79

79:                                               ; preds = %78, %67
  %80 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %6, align 8
  %81 = load i32, i32* %12, align 4
  %82 = load i32, i32* @NAT_ENTRY_PER_BLOCK, align 4
  %83 = mul nsw i32 %81, %82
  %84 = call i32 @current_nat_addr(%struct.f2fs_sb_info* %80, i32 %83)
  %85 = getelementptr inbounds %struct.f2fs_io_info, %struct.f2fs_io_info* %13, i32 0, i32 3
  store i32 %84, i32* %85, align 4
  br label %98

86:                                               ; preds = %65
  %87 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %6, align 8
  %88 = load i32, i32* %12, align 4
  %89 = load i32, i32* @SIT_ENTRY_PER_BLOCK, align 4
  %90 = mul nsw i32 %88, %89
  %91 = call i32 @current_sit_addr(%struct.f2fs_sb_info* %87, i32 %90)
  %92 = getelementptr inbounds %struct.f2fs_io_info, %struct.f2fs_io_info* %13, i32 0, i32 3
  store i32 %91, i32* %92, align 4
  br label %98

93:                                               ; preds = %65, %65, %65
  %94 = load i32, i32* %12, align 4
  %95 = getelementptr inbounds %struct.f2fs_io_info, %struct.f2fs_io_info* %13, i32 0, i32 3
  store i32 %94, i32* %95, align 4
  br label %98

96:                                               ; preds = %65
  %97 = call i32 (...) @BUG()
  br label %98

98:                                               ; preds = %96, %93, %86, %79
  %99 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %6, align 8
  %100 = call i32 @META_MAPPING(%struct.f2fs_sb_info* %99)
  %101 = getelementptr inbounds %struct.f2fs_io_info, %struct.f2fs_io_info* %13, i32 0, i32 3
  %102 = load i32, i32* %101, align 4
  %103 = call %struct.page* @f2fs_grab_cache_page(i32 %100, i32 %102, i32 0)
  store %struct.page* %103, %struct.page** %11, align 8
  %104 = load %struct.page*, %struct.page** %11, align 8
  %105 = icmp ne %struct.page* %104, null
  br i1 %105, label %107, label %106

106:                                              ; preds = %98
  br label %120

107:                                              ; preds = %98
  %108 = load %struct.page*, %struct.page** %11, align 8
  %109 = call i64 @PageUptodate(%struct.page* %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %114

111:                                              ; preds = %107
  %112 = load %struct.page*, %struct.page** %11, align 8
  %113 = call i32 @f2fs_put_page(%struct.page* %112, i32 1)
  br label %120

114:                                              ; preds = %107
  %115 = load %struct.page*, %struct.page** %11, align 8
  %116 = getelementptr inbounds %struct.f2fs_io_info, %struct.f2fs_io_info* %13, i32 0, i32 4
  store %struct.page* %115, %struct.page** %116, align 8
  %117 = call i32 @f2fs_submit_page_bio(%struct.f2fs_io_info* %13)
  %118 = load %struct.page*, %struct.page** %11, align 8
  %119 = call i32 @f2fs_put_page(%struct.page* %118, i32 0)
  br label %120

120:                                              ; preds = %114, %111, %106
  %121 = load i32, i32* %12, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %12, align 4
  br label %54

123:                                              ; preds = %54
  br label %124

124:                                              ; preds = %123, %64
  %125 = call i32 @blk_finish_plug(%struct.blk_plug* %14)
  %126 = load i32, i32* %12, align 4
  %127 = load i32, i32* %7, align 4
  %128 = sub nsw i32 %126, %127
  ret i32 %128
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @blk_start_plug(%struct.blk_plug*) #1

declare dso_local i32 @f2fs_is_valid_blkaddr(%struct.f2fs_sb_info*, i32, i32) #1

declare dso_local i32 @NAT_BLOCK_OFFSET(i32) #1

declare dso_local %struct.TYPE_2__* @NM_I(%struct.f2fs_sb_info*) #1

declare dso_local i32 @current_nat_addr(%struct.f2fs_sb_info*, i32) #1

declare dso_local i32 @current_sit_addr(%struct.f2fs_sb_info*, i32) #1

declare dso_local i32 @BUG(...) #1

declare dso_local %struct.page* @f2fs_grab_cache_page(i32, i32, i32) #1

declare dso_local i32 @META_MAPPING(%struct.f2fs_sb_info*) #1

declare dso_local i64 @PageUptodate(%struct.page*) #1

declare dso_local i32 @f2fs_put_page(%struct.page*, i32) #1

declare dso_local i32 @f2fs_submit_page_bio(%struct.f2fs_io_info*) #1

declare dso_local i32 @blk_finish_plug(%struct.blk_plug*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
