; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_checkpoint.c___f2fs_write_meta_page.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_checkpoint.c___f2fs_write_meta_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i64 }
%struct.writeback_control = type { i64 }
%struct.f2fs_sb_info = type { i32 }

@META = common dso_local global i32 0, align 4
@SBI_POR_DOING = common dso_local global i32 0, align 4
@F2FS_DIRTY_META = common dso_local global i32 0, align 4
@AOP_WRITEPAGE_ACTIVATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.page*, %struct.writeback_control*, i32)* @__f2fs_write_meta_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__f2fs_write_meta_page(%struct.page* %0, %struct.writeback_control* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.page*, align 8
  %6 = alloca %struct.writeback_control*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.f2fs_sb_info*, align 8
  store %struct.page* %0, %struct.page** %5, align 8
  store %struct.writeback_control* %1, %struct.writeback_control** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.page*, %struct.page** %5, align 8
  %10 = call %struct.f2fs_sb_info* @F2FS_P_SB(%struct.page* %9)
  store %struct.f2fs_sb_info* %10, %struct.f2fs_sb_info** %8, align 8
  %11 = load %struct.page*, %struct.page** %5, align 8
  %12 = load i32, i32* @META, align 4
  %13 = call i32 @trace_f2fs_writepage(%struct.page* %11, i32 %12)
  %14 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %8, align 8
  %15 = call i32 @f2fs_cp_error(%struct.f2fs_sb_info* %14)
  %16 = call i64 @unlikely(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %3
  br label %68

19:                                               ; preds = %3
  %20 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %8, align 8
  %21 = load i32, i32* @SBI_POR_DOING, align 4
  %22 = call i32 @is_sbi_flag_set(%struct.f2fs_sb_info* %20, i32 %21)
  %23 = call i64 @unlikely(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %19
  br label %68

26:                                               ; preds = %19
  %27 = load %struct.writeback_control*, %struct.writeback_control** %6, align 8
  %28 = getelementptr inbounds %struct.writeback_control, %struct.writeback_control* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %39

31:                                               ; preds = %26
  %32 = load %struct.page*, %struct.page** %5, align 8
  %33 = getelementptr inbounds %struct.page, %struct.page* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %8, align 8
  %36 = call i64 @GET_SUM_BLOCK(%struct.f2fs_sb_info* %35, i32 0)
  %37 = icmp slt i64 %34, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %31
  br label %68

39:                                               ; preds = %31, %26
  %40 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %8, align 8
  %41 = load %struct.page*, %struct.page** %5, align 8
  %42 = load i32, i32* %7, align 4
  %43 = call i32 @f2fs_do_write_meta_page(%struct.f2fs_sb_info* %40, %struct.page* %41, i32 %42)
  %44 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %8, align 8
  %45 = load i32, i32* @F2FS_DIRTY_META, align 4
  %46 = call i32 @dec_page_count(%struct.f2fs_sb_info* %44, i32 %45)
  %47 = load %struct.writeback_control*, %struct.writeback_control** %6, align 8
  %48 = getelementptr inbounds %struct.writeback_control, %struct.writeback_control* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %39
  %52 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %8, align 8
  %53 = load %struct.page*, %struct.page** %5, align 8
  %54 = load i32, i32* @META, align 4
  %55 = call i32 @f2fs_submit_merged_write_cond(%struct.f2fs_sb_info* %52, i32* null, %struct.page* %53, i32 0, i32 %54)
  br label %56

56:                                               ; preds = %51, %39
  %57 = load %struct.page*, %struct.page** %5, align 8
  %58 = call i32 @unlock_page(%struct.page* %57)
  %59 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %8, align 8
  %60 = call i32 @f2fs_cp_error(%struct.f2fs_sb_info* %59)
  %61 = call i64 @unlikely(i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %56
  %64 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %8, align 8
  %65 = load i32, i32* @META, align 4
  %66 = call i32 @f2fs_submit_merged_write(%struct.f2fs_sb_info* %64, i32 %65)
  br label %67

67:                                               ; preds = %63, %56
  store i32 0, i32* %4, align 4
  br label %73

68:                                               ; preds = %38, %25, %18
  %69 = load %struct.writeback_control*, %struct.writeback_control** %6, align 8
  %70 = load %struct.page*, %struct.page** %5, align 8
  %71 = call i32 @redirty_page_for_writepage(%struct.writeback_control* %69, %struct.page* %70)
  %72 = load i32, i32* @AOP_WRITEPAGE_ACTIVATE, align 4
  store i32 %72, i32* %4, align 4
  br label %73

73:                                               ; preds = %68, %67
  %74 = load i32, i32* %4, align 4
  ret i32 %74
}

declare dso_local %struct.f2fs_sb_info* @F2FS_P_SB(%struct.page*) #1

declare dso_local i32 @trace_f2fs_writepage(%struct.page*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @f2fs_cp_error(%struct.f2fs_sb_info*) #1

declare dso_local i32 @is_sbi_flag_set(%struct.f2fs_sb_info*, i32) #1

declare dso_local i64 @GET_SUM_BLOCK(%struct.f2fs_sb_info*, i32) #1

declare dso_local i32 @f2fs_do_write_meta_page(%struct.f2fs_sb_info*, %struct.page*, i32) #1

declare dso_local i32 @dec_page_count(%struct.f2fs_sb_info*, i32) #1

declare dso_local i32 @f2fs_submit_merged_write_cond(%struct.f2fs_sb_info*, i32*, %struct.page*, i32, i32) #1

declare dso_local i32 @unlock_page(%struct.page*) #1

declare dso_local i32 @f2fs_submit_merged_write(%struct.f2fs_sb_info*, i32) #1

declare dso_local i32 @redirty_page_for_writepage(%struct.writeback_control*, %struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
