; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_aops.c_ocfs2_try_to_write_inline_data.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_aops.c_ocfs2_try_to_write_inline_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.address_space = type { i32 }
%struct.inode = type { i32 }
%struct.page = type { i32 }
%struct.ocfs2_write_ctxt = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }
%struct.ocfs2_inode_info = type { i32, i64, i64 }
%struct.ocfs2_dinode = type { i32 }

@OCFS2_INLINE_DATA_FL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.address_space*, %struct.inode*, i32, i32, %struct.page*, %struct.ocfs2_write_ctxt*)* @ocfs2_try_to_write_inline_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_try_to_write_inline_data(%struct.address_space* %0, %struct.inode* %1, i32 %2, i32 %3, %struct.page* %4, %struct.ocfs2_write_ctxt* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.address_space*, align 8
  %9 = alloca %struct.inode*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.page*, align 8
  %13 = alloca %struct.ocfs2_write_ctxt*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.ocfs2_inode_info*, align 8
  %18 = alloca %struct.ocfs2_dinode*, align 8
  store %struct.address_space* %0, %struct.address_space** %8, align 8
  store %struct.inode* %1, %struct.inode** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store %struct.page* %4, %struct.page** %12, align 8
  store %struct.ocfs2_write_ctxt* %5, %struct.ocfs2_write_ctxt** %13, align 8
  store i32 0, i32* %15, align 4
  %19 = load i32, i32* %10, align 4
  %20 = load i32, i32* %11, align 4
  %21 = add i32 %19, %20
  store i32 %21, i32* %16, align 4
  %22 = load %struct.inode*, %struct.inode** %9, align 8
  %23 = call %struct.ocfs2_inode_info* @OCFS2_I(%struct.inode* %22)
  store %struct.ocfs2_inode_info* %23, %struct.ocfs2_inode_info** %17, align 8
  store %struct.ocfs2_dinode* null, %struct.ocfs2_dinode** %18, align 8
  %24 = load %struct.ocfs2_inode_info*, %struct.ocfs2_inode_info** %17, align 8
  %25 = getelementptr inbounds %struct.ocfs2_inode_info, %struct.ocfs2_inode_info* %24, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = load i32, i32* %11, align 4
  %28 = load i32, i32* %10, align 4
  %29 = zext i32 %28 to i64
  %30 = load %struct.ocfs2_inode_info*, %struct.ocfs2_inode_info** %17, align 8
  %31 = getelementptr inbounds %struct.ocfs2_inode_info, %struct.ocfs2_inode_info* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @trace_ocfs2_try_to_write_inline_data(i64 %26, i32 %27, i64 %29, i32 %32)
  %34 = load %struct.ocfs2_inode_info*, %struct.ocfs2_inode_info** %17, align 8
  %35 = getelementptr inbounds %struct.ocfs2_inode_info, %struct.ocfs2_inode_info* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @OCFS2_INLINE_DATA_FL, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %63

40:                                               ; preds = %6
  %41 = load %struct.page*, %struct.page** %12, align 8
  %42 = icmp eq %struct.page* %41, null
  br i1 %42, label %43, label %51

43:                                               ; preds = %40
  %44 = load %struct.ocfs2_write_ctxt*, %struct.ocfs2_write_ctxt** %13, align 8
  %45 = getelementptr inbounds %struct.ocfs2_write_ctxt, %struct.ocfs2_write_ctxt* %44, i32 0, i32 0
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %45, align 8
  %47 = load i32, i32* %16, align 4
  %48 = call i64 @ocfs2_size_fits_inline_data(%struct.TYPE_3__* %46, i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %43
  br label %92

51:                                               ; preds = %43, %40
  %52 = load %struct.inode*, %struct.inode** %9, align 8
  %53 = load %struct.ocfs2_write_ctxt*, %struct.ocfs2_write_ctxt** %13, align 8
  %54 = getelementptr inbounds %struct.ocfs2_write_ctxt, %struct.ocfs2_write_ctxt* %53, i32 0, i32 0
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %54, align 8
  %56 = call i32 @ocfs2_convert_inline_data_to_extents(%struct.inode* %52, %struct.TYPE_3__* %55)
  store i32 %56, i32* %14, align 4
  %57 = load i32, i32* %14, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %51
  %60 = load i32, i32* %14, align 4
  %61 = call i32 @mlog_errno(i32 %60)
  br label %62

62:                                               ; preds = %59, %51
  br label %103

63:                                               ; preds = %6
  %64 = load %struct.ocfs2_inode_info*, %struct.ocfs2_inode_info** %17, align 8
  %65 = getelementptr inbounds %struct.ocfs2_inode_info, %struct.ocfs2_inode_info* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %72, label %68

68:                                               ; preds = %63
  %69 = load %struct.inode*, %struct.inode** %9, align 8
  %70 = call i64 @i_size_read(%struct.inode* %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %68, %63
  store i32 0, i32* %7, align 4
  br label %112

73:                                               ; preds = %68
  %74 = load %struct.ocfs2_write_ctxt*, %struct.ocfs2_write_ctxt** %13, align 8
  %75 = getelementptr inbounds %struct.ocfs2_write_ctxt, %struct.ocfs2_write_ctxt* %74, i32 0, i32 0
  %76 = load %struct.TYPE_3__*, %struct.TYPE_3__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = inttoptr i64 %78 to %struct.ocfs2_dinode*
  store %struct.ocfs2_dinode* %79, %struct.ocfs2_dinode** %18, align 8
  %80 = load %struct.page*, %struct.page** %12, align 8
  %81 = icmp ne %struct.page* %80, null
  br i1 %81, label %90, label %82

82:                                               ; preds = %73
  %83 = load i32, i32* %16, align 4
  %84 = load %struct.inode*, %struct.inode** %9, align 8
  %85 = getelementptr inbounds %struct.inode, %struct.inode* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %18, align 8
  %88 = call i32 @ocfs2_max_inline_data_with_xattr(i32 %86, %struct.ocfs2_dinode* %87)
  %89 = icmp ugt i32 %83, %88
  br i1 %89, label %90, label %91

90:                                               ; preds = %82, %73
  store i32 0, i32* %7, align 4
  br label %112

91:                                               ; preds = %82
  br label %92

92:                                               ; preds = %91, %50
  %93 = load %struct.address_space*, %struct.address_space** %8, align 8
  %94 = load %struct.inode*, %struct.inode** %9, align 8
  %95 = load %struct.ocfs2_write_ctxt*, %struct.ocfs2_write_ctxt** %13, align 8
  %96 = call i32 @ocfs2_write_begin_inline(%struct.address_space* %93, %struct.inode* %94, %struct.ocfs2_write_ctxt* %95)
  store i32 %96, i32* %14, align 4
  %97 = load i32, i32* %14, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %102

99:                                               ; preds = %92
  %100 = load i32, i32* %14, align 4
  %101 = call i32 @mlog_errno(i32 %100)
  br label %103

102:                                              ; preds = %92
  store i32 1, i32* %15, align 4
  br label %103

103:                                              ; preds = %102, %99, %62
  %104 = load i32, i32* %15, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %108

106:                                              ; preds = %103
  %107 = load i32, i32* %15, align 4
  br label %110

108:                                              ; preds = %103
  %109 = load i32, i32* %14, align 4
  br label %110

110:                                              ; preds = %108, %106
  %111 = phi i32 [ %107, %106 ], [ %109, %108 ]
  store i32 %111, i32* %7, align 4
  br label %112

112:                                              ; preds = %110, %90, %72
  %113 = load i32, i32* %7, align 4
  ret i32 %113
}

declare dso_local %struct.ocfs2_inode_info* @OCFS2_I(%struct.inode*) #1

declare dso_local i32 @trace_ocfs2_try_to_write_inline_data(i64, i32, i64, i32) #1

declare dso_local i64 @ocfs2_size_fits_inline_data(%struct.TYPE_3__*, i32) #1

declare dso_local i32 @ocfs2_convert_inline_data_to_extents(%struct.inode*, %struct.TYPE_3__*) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i64 @i_size_read(%struct.inode*) #1

declare dso_local i32 @ocfs2_max_inline_data_with_xattr(i32, %struct.ocfs2_dinode*) #1

declare dso_local i32 @ocfs2_write_begin_inline(%struct.address_space*, %struct.inode*, %struct.ocfs2_write_ctxt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
