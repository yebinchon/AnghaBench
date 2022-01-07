; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_node.c___get_node_page.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_node.c___get_node_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.f2fs_sb_info = type { i32 }
%struct.page = type { i64 }

@ENOENT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@LOCKED_PAGE = common dso_local global i32 0, align 4
@MAX_RA_NODE = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@EFSBADCRC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [90 x i8] c"inconsistent node block, nid:%lu, node_footer[nid:%u,ino:%u,ofs:%u,cpver:%llu,blkaddr:%u]\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.page* (%struct.f2fs_sb_info*, i64, %struct.page*, i32)* @__get_node_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.page* @__get_node_page(%struct.f2fs_sb_info* %0, i64 %1, %struct.page* %2, i32 %3) #0 {
  %5 = alloca %struct.page*, align 8
  %6 = alloca %struct.f2fs_sb_info*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.page*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.page*, align 8
  %11 = alloca i32, align 4
  store %struct.f2fs_sb_info* %0, %struct.f2fs_sb_info** %6, align 8
  store i64 %1, i64* %7, align 8
  store %struct.page* %2, %struct.page** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load i64, i64* %7, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %18, label %14

14:                                               ; preds = %4
  %15 = load i32, i32* @ENOENT, align 4
  %16 = sub nsw i32 0, %15
  %17 = call %struct.page* @ERR_PTR(i32 %16)
  store %struct.page* %17, %struct.page** %5, align 8
  br label %132

18:                                               ; preds = %4
  %19 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %6, align 8
  %20 = load i64, i64* %7, align 8
  %21 = call i64 @f2fs_check_nid_range(%struct.f2fs_sb_info* %19, i64 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %18
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  %26 = call %struct.page* @ERR_PTR(i32 %25)
  store %struct.page* %26, %struct.page** %5, align 8
  br label %132

27:                                               ; preds = %18
  br label %28

28:                                               ; preds = %76, %27
  %29 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %6, align 8
  %30 = call i64 @NODE_MAPPING(%struct.f2fs_sb_info* %29)
  %31 = load i64, i64* %7, align 8
  %32 = call %struct.page* @f2fs_grab_cache_page(i64 %30, i64 %31, i32 0)
  store %struct.page* %32, %struct.page** %10, align 8
  %33 = load %struct.page*, %struct.page** %10, align 8
  %34 = icmp ne %struct.page* %33, null
  br i1 %34, label %39, label %35

35:                                               ; preds = %28
  %36 = load i32, i32* @ENOMEM, align 4
  %37 = sub nsw i32 0, %36
  %38 = call %struct.page* @ERR_PTR(i32 %37)
  store %struct.page* %38, %struct.page** %5, align 8
  br label %132

39:                                               ; preds = %28
  %40 = load %struct.page*, %struct.page** %10, align 8
  %41 = call i32 @read_node_page(%struct.page* %40, i32 0)
  store i32 %41, i32* %11, align 4
  %42 = load i32, i32* %11, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %39
  %45 = load %struct.page*, %struct.page** %10, align 8
  %46 = call i32 @f2fs_put_page(%struct.page* %45, i32 1)
  %47 = load i32, i32* %11, align 4
  %48 = call %struct.page* @ERR_PTR(i32 %47)
  store %struct.page* %48, %struct.page** %5, align 8
  br label %132

49:                                               ; preds = %39
  %50 = load i32, i32* %11, align 4
  %51 = load i32, i32* @LOCKED_PAGE, align 4
  %52 = icmp eq i32 %50, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %49
  store i32 0, i32* %11, align 4
  br label %99

54:                                               ; preds = %49
  br label %55

55:                                               ; preds = %54
  %56 = load %struct.page*, %struct.page** %8, align 8
  %57 = icmp ne %struct.page* %56, null
  br i1 %57, label %58, label %64

58:                                               ; preds = %55
  %59 = load %struct.page*, %struct.page** %8, align 8
  %60 = load i32, i32* %9, align 4
  %61 = add nsw i32 %60, 1
  %62 = load i32, i32* @MAX_RA_NODE, align 4
  %63 = call i32 @f2fs_ra_node_pages(%struct.page* %59, i32 %61, i32 %62)
  br label %64

64:                                               ; preds = %58, %55
  %65 = load %struct.page*, %struct.page** %10, align 8
  %66 = call i32 @lock_page(%struct.page* %65)
  %67 = load %struct.page*, %struct.page** %10, align 8
  %68 = getelementptr inbounds %struct.page, %struct.page* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %6, align 8
  %71 = call i64 @NODE_MAPPING(%struct.f2fs_sb_info* %70)
  %72 = icmp ne i64 %69, %71
  %73 = zext i1 %72 to i32
  %74 = call i64 @unlikely(i32 %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %64
  %77 = load %struct.page*, %struct.page** %10, align 8
  %78 = call i32 @f2fs_put_page(%struct.page* %77, i32 1)
  br label %28

79:                                               ; preds = %64
  %80 = load %struct.page*, %struct.page** %10, align 8
  %81 = call i32 @PageUptodate(%struct.page* %80)
  %82 = icmp ne i32 %81, 0
  %83 = xor i1 %82, true
  %84 = zext i1 %83 to i32
  %85 = call i64 @unlikely(i32 %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %79
  %88 = load i32, i32* @EIO, align 4
  %89 = sub nsw i32 0, %88
  store i32 %89, i32* %11, align 4
  br label %123

90:                                               ; preds = %79
  %91 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %6, align 8
  %92 = load %struct.page*, %struct.page** %10, align 8
  %93 = call i32 @f2fs_inode_chksum_verify(%struct.f2fs_sb_info* %91, %struct.page* %92)
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %98, label %95

95:                                               ; preds = %90
  %96 = load i32, i32* @EFSBADCRC, align 4
  %97 = sub nsw i32 0, %96
  store i32 %97, i32* %11, align 4
  br label %123

98:                                               ; preds = %90
  br label %99

99:                                               ; preds = %98, %53
  %100 = load i64, i64* %7, align 8
  %101 = load %struct.page*, %struct.page** %10, align 8
  %102 = call i64 @nid_of_node(%struct.page* %101)
  %103 = icmp ne i64 %100, %102
  %104 = zext i1 %103 to i32
  %105 = call i64 @unlikely(i32 %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %130

107:                                              ; preds = %99
  %108 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %6, align 8
  %109 = load i64, i64* %7, align 8
  %110 = load %struct.page*, %struct.page** %10, align 8
  %111 = call i64 @nid_of_node(%struct.page* %110)
  %112 = load %struct.page*, %struct.page** %10, align 8
  %113 = call i32 @ino_of_node(%struct.page* %112)
  %114 = load %struct.page*, %struct.page** %10, align 8
  %115 = call i32 @ofs_of_node(%struct.page* %114)
  %116 = load %struct.page*, %struct.page** %10, align 8
  %117 = call i32 @cpver_of_node(%struct.page* %116)
  %118 = load %struct.page*, %struct.page** %10, align 8
  %119 = call i32 @next_blkaddr_of_node(%struct.page* %118)
  %120 = call i32 @f2fs_warn(%struct.f2fs_sb_info* %108, i8* getelementptr inbounds ([90 x i8], [90 x i8]* @.str, i64 0, i64 0), i64 %109, i64 %111, i32 %113, i32 %115, i32 %117, i32 %119)
  %121 = load i32, i32* @EINVAL, align 4
  %122 = sub nsw i32 0, %121
  store i32 %122, i32* %11, align 4
  br label %123

123:                                              ; preds = %107, %95, %87
  %124 = load %struct.page*, %struct.page** %10, align 8
  %125 = call i32 @ClearPageUptodate(%struct.page* %124)
  %126 = load %struct.page*, %struct.page** %10, align 8
  %127 = call i32 @f2fs_put_page(%struct.page* %126, i32 1)
  %128 = load i32, i32* %11, align 4
  %129 = call %struct.page* @ERR_PTR(i32 %128)
  store %struct.page* %129, %struct.page** %5, align 8
  br label %132

130:                                              ; preds = %99
  %131 = load %struct.page*, %struct.page** %10, align 8
  store %struct.page* %131, %struct.page** %5, align 8
  br label %132

132:                                              ; preds = %130, %123, %44, %35, %23, %14
  %133 = load %struct.page*, %struct.page** %5, align 8
  ret %struct.page* %133
}

declare dso_local %struct.page* @ERR_PTR(i32) #1

declare dso_local i64 @f2fs_check_nid_range(%struct.f2fs_sb_info*, i64) #1

declare dso_local %struct.page* @f2fs_grab_cache_page(i64, i64, i32) #1

declare dso_local i64 @NODE_MAPPING(%struct.f2fs_sb_info*) #1

declare dso_local i32 @read_node_page(%struct.page*, i32) #1

declare dso_local i32 @f2fs_put_page(%struct.page*, i32) #1

declare dso_local i32 @f2fs_ra_node_pages(%struct.page*, i32, i32) #1

declare dso_local i32 @lock_page(%struct.page*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @PageUptodate(%struct.page*) #1

declare dso_local i32 @f2fs_inode_chksum_verify(%struct.f2fs_sb_info*, %struct.page*) #1

declare dso_local i64 @nid_of_node(%struct.page*) #1

declare dso_local i32 @f2fs_warn(%struct.f2fs_sb_info*, i8*, i64, i64, i32, i32, i32, i32) #1

declare dso_local i32 @ino_of_node(%struct.page*) #1

declare dso_local i32 @ofs_of_node(%struct.page*) #1

declare dso_local i32 @cpver_of_node(%struct.page*) #1

declare dso_local i32 @next_blkaddr_of_node(%struct.page*) #1

declare dso_local i32 @ClearPageUptodate(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
