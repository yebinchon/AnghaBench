; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_node.c_read_node_page.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_node.c_read_node_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }
%struct.f2fs_sb_info = type { i32 }
%struct.node_info = type { i64 }
%struct.f2fs_io_info = type { i32, i64, i64, i32*, %struct.page*, i32, i32, %struct.f2fs_sb_info* }

@REQ_OP_READ = common dso_local global i32 0, align 4
@NODE = common dso_local global i32 0, align 4
@EFSBADCRC = common dso_local global i32 0, align 4
@LOCKED_PAGE = common dso_local global i32 0, align 4
@NULL_ADDR = common dso_local global i64 0, align 8
@SBI_IS_SHUTDOWN = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.page*, i32)* @read_node_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_node_page(%struct.page* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.page*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.f2fs_sb_info*, align 8
  %7 = alloca %struct.node_info, align 8
  %8 = alloca %struct.f2fs_io_info, align 8
  %9 = alloca i32, align 4
  store %struct.page* %0, %struct.page** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.page*, %struct.page** %4, align 8
  %11 = call %struct.f2fs_sb_info* @F2FS_P_SB(%struct.page* %10)
  store %struct.f2fs_sb_info* %11, %struct.f2fs_sb_info** %6, align 8
  %12 = getelementptr inbounds %struct.f2fs_io_info, %struct.f2fs_io_info* %8, i32 0, i32 0
  %13 = load i32, i32* %5, align 4
  store i32 %13, i32* %12, align 8
  %14 = getelementptr inbounds %struct.f2fs_io_info, %struct.f2fs_io_info* %8, i32 0, i32 1
  store i64 0, i64* %14, align 8
  %15 = getelementptr inbounds %struct.f2fs_io_info, %struct.f2fs_io_info* %8, i32 0, i32 2
  store i64 0, i64* %15, align 8
  %16 = getelementptr inbounds %struct.f2fs_io_info, %struct.f2fs_io_info* %8, i32 0, i32 3
  store i32* null, i32** %16, align 8
  %17 = getelementptr inbounds %struct.f2fs_io_info, %struct.f2fs_io_info* %8, i32 0, i32 4
  %18 = load %struct.page*, %struct.page** %4, align 8
  store %struct.page* %18, %struct.page** %17, align 8
  %19 = getelementptr inbounds %struct.f2fs_io_info, %struct.f2fs_io_info* %8, i32 0, i32 5
  %20 = load i32, i32* @REQ_OP_READ, align 4
  store i32 %20, i32* %19, align 8
  %21 = getelementptr inbounds %struct.f2fs_io_info, %struct.f2fs_io_info* %8, i32 0, i32 6
  %22 = load i32, i32* @NODE, align 4
  store i32 %22, i32* %21, align 4
  %23 = getelementptr inbounds %struct.f2fs_io_info, %struct.f2fs_io_info* %8, i32 0, i32 7
  %24 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %6, align 8
  store %struct.f2fs_sb_info* %24, %struct.f2fs_sb_info** %23, align 8
  %25 = load %struct.page*, %struct.page** %4, align 8
  %26 = call i64 @PageUptodate(%struct.page* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %40

28:                                               ; preds = %2
  %29 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %6, align 8
  %30 = load %struct.page*, %struct.page** %4, align 8
  %31 = call i32 @f2fs_inode_chksum_verify(%struct.f2fs_sb_info* %29, %struct.page* %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %38, label %33

33:                                               ; preds = %28
  %34 = load %struct.page*, %struct.page** %4, align 8
  %35 = call i32 @ClearPageUptodate(%struct.page* %34)
  %36 = load i32, i32* @EFSBADCRC, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %3, align 4
  br label %74

38:                                               ; preds = %28
  %39 = load i32, i32* @LOCKED_PAGE, align 4
  store i32 %39, i32* %3, align 4
  br label %74

40:                                               ; preds = %2
  %41 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %6, align 8
  %42 = load %struct.page*, %struct.page** %4, align 8
  %43 = getelementptr inbounds %struct.page, %struct.page* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @f2fs_get_node_info(%struct.f2fs_sb_info* %41, i32 %44, %struct.node_info* %7)
  store i32 %45, i32* %9, align 4
  %46 = load i32, i32* %9, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %40
  %49 = load i32, i32* %9, align 4
  store i32 %49, i32* %3, align 4
  br label %74

50:                                               ; preds = %40
  %51 = getelementptr inbounds %struct.node_info, %struct.node_info* %7, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @NULL_ADDR, align 8
  %54 = icmp eq i64 %52, %53
  %55 = zext i1 %54 to i32
  %56 = call i64 @unlikely(i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %63, label %58

58:                                               ; preds = %50
  %59 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %6, align 8
  %60 = load i32, i32* @SBI_IS_SHUTDOWN, align 4
  %61 = call i64 @is_sbi_flag_set(%struct.f2fs_sb_info* %59, i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %68

63:                                               ; preds = %58, %50
  %64 = load %struct.page*, %struct.page** %4, align 8
  %65 = call i32 @ClearPageUptodate(%struct.page* %64)
  %66 = load i32, i32* @ENOENT, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %3, align 4
  br label %74

68:                                               ; preds = %58
  %69 = getelementptr inbounds %struct.node_info, %struct.node_info* %7, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = getelementptr inbounds %struct.f2fs_io_info, %struct.f2fs_io_info* %8, i32 0, i32 2
  store i64 %70, i64* %71, align 8
  %72 = getelementptr inbounds %struct.f2fs_io_info, %struct.f2fs_io_info* %8, i32 0, i32 1
  store i64 %70, i64* %72, align 8
  %73 = call i32 @f2fs_submit_page_bio(%struct.f2fs_io_info* %8)
  store i32 %73, i32* %3, align 4
  br label %74

74:                                               ; preds = %68, %63, %48, %38, %33
  %75 = load i32, i32* %3, align 4
  ret i32 %75
}

declare dso_local %struct.f2fs_sb_info* @F2FS_P_SB(%struct.page*) #1

declare dso_local i64 @PageUptodate(%struct.page*) #1

declare dso_local i32 @f2fs_inode_chksum_verify(%struct.f2fs_sb_info*, %struct.page*) #1

declare dso_local i32 @ClearPageUptodate(%struct.page*) #1

declare dso_local i32 @f2fs_get_node_info(%struct.f2fs_sb_info*, i32, %struct.node_info*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @is_sbi_flag_set(%struct.f2fs_sb_info*, i32) #1

declare dso_local i32 @f2fs_submit_page_bio(%struct.f2fs_io_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
