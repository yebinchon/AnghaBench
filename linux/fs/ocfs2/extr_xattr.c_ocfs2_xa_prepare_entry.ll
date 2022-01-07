; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_xattr.c_ocfs2_xa_prepare_entry.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_xattr.c_ocfs2_xa_prepare_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_xa_loc = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.ocfs2_xattr_info = type { i64 }
%struct.ocfs2_xattr_set_ctxt = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"overwriting\00", align 1
@OCFS2_XATTR_INLINE_SIZE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [8 x i8] c"growing\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ocfs2_xa_loc*, %struct.ocfs2_xattr_info*, i32, %struct.ocfs2_xattr_set_ctxt*)* @ocfs2_xa_prepare_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_xa_prepare_entry(%struct.ocfs2_xa_loc* %0, %struct.ocfs2_xattr_info* %1, i32 %2, %struct.ocfs2_xattr_set_ctxt* %3) #0 {
  %5 = alloca %struct.ocfs2_xa_loc*, align 8
  %6 = alloca %struct.ocfs2_xattr_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ocfs2_xattr_set_ctxt*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store %struct.ocfs2_xa_loc* %0, %struct.ocfs2_xa_loc** %5, align 8
  store %struct.ocfs2_xattr_info* %1, %struct.ocfs2_xattr_info** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.ocfs2_xattr_set_ctxt* %3, %struct.ocfs2_xattr_set_ctxt** %8, align 8
  store i32 0, i32* %9, align 4
  store i64 0, i64* %11, align 8
  %12 = load %struct.ocfs2_xa_loc*, %struct.ocfs2_xa_loc** %5, align 8
  %13 = load %struct.ocfs2_xattr_info*, %struct.ocfs2_xattr_info** %6, align 8
  %14 = call i32 @ocfs2_xa_check_space(%struct.ocfs2_xa_loc* %12, %struct.ocfs2_xattr_info* %13)
  store i32 %14, i32* %9, align 4
  %15 = load i32, i32* %9, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %4
  br label %124

18:                                               ; preds = %4
  %19 = load %struct.ocfs2_xa_loc*, %struct.ocfs2_xa_loc** %5, align 8
  %20 = getelementptr inbounds %struct.ocfs2_xa_loc, %struct.ocfs2_xa_loc* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = icmp ne %struct.TYPE_2__* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %18
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %9, align 4
  br label %124

26:                                               ; preds = %18
  %27 = load %struct.ocfs2_xa_loc*, %struct.ocfs2_xa_loc** %5, align 8
  %28 = load %struct.ocfs2_xattr_info*, %struct.ocfs2_xattr_info** %6, align 8
  %29 = call i64 @ocfs2_xa_can_reuse_entry(%struct.ocfs2_xa_loc* %27, %struct.ocfs2_xattr_info* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %45

31:                                               ; preds = %26
  %32 = load %struct.ocfs2_xa_loc*, %struct.ocfs2_xa_loc** %5, align 8
  %33 = getelementptr inbounds %struct.ocfs2_xa_loc, %struct.ocfs2_xa_loc* %32, i32 0, i32 0
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  store i64 %36, i64* %11, align 8
  %37 = load %struct.ocfs2_xa_loc*, %struct.ocfs2_xa_loc** %5, align 8
  %38 = load %struct.ocfs2_xattr_info*, %struct.ocfs2_xattr_info** %6, align 8
  %39 = load %struct.ocfs2_xattr_set_ctxt*, %struct.ocfs2_xattr_set_ctxt** %8, align 8
  %40 = call i32 @ocfs2_xa_reuse_entry(%struct.ocfs2_xa_loc* %37, %struct.ocfs2_xattr_info* %38, %struct.ocfs2_xattr_set_ctxt* %39)
  store i32 %40, i32* %9, align 4
  %41 = load i32, i32* %9, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %31
  br label %124

44:                                               ; preds = %31
  br label %81

45:                                               ; preds = %26
  %46 = load %struct.ocfs2_xa_loc*, %struct.ocfs2_xa_loc** %5, align 8
  %47 = getelementptr inbounds %struct.ocfs2_xa_loc, %struct.ocfs2_xa_loc* %46, i32 0, i32 0
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = call i32 @ocfs2_xattr_is_local(%struct.TYPE_2__* %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %66, label %51

51:                                               ; preds = %45
  %52 = load %struct.ocfs2_xa_loc*, %struct.ocfs2_xa_loc** %5, align 8
  %53 = call i32 @ocfs2_xa_value_clusters(%struct.ocfs2_xa_loc* %52)
  store i32 %53, i32* %10, align 4
  %54 = load %struct.ocfs2_xa_loc*, %struct.ocfs2_xa_loc** %5, align 8
  %55 = load %struct.ocfs2_xattr_set_ctxt*, %struct.ocfs2_xattr_set_ctxt** %8, align 8
  %56 = call i32 @ocfs2_xa_value_truncate(%struct.ocfs2_xa_loc* %54, i64 0, %struct.ocfs2_xattr_set_ctxt* %55)
  store i32 %56, i32* %9, align 4
  %57 = load i32, i32* %9, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %65

59:                                               ; preds = %51
  %60 = load i32, i32* %9, align 4
  %61 = call i32 @mlog_errno(i32 %60)
  %62 = load %struct.ocfs2_xa_loc*, %struct.ocfs2_xa_loc** %5, align 8
  %63 = load i32, i32* %10, align 4
  %64 = call i32 @ocfs2_xa_cleanup_value_truncate(%struct.ocfs2_xa_loc* %62, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %63)
  br label %124

65:                                               ; preds = %51
  br label %66

66:                                               ; preds = %65, %45
  %67 = load %struct.ocfs2_xa_loc*, %struct.ocfs2_xa_loc** %5, align 8
  %68 = call i32 @ocfs2_xa_wipe_namevalue(%struct.ocfs2_xa_loc* %67)
  %69 = load %struct.ocfs2_xa_loc*, %struct.ocfs2_xa_loc** %5, align 8
  %70 = load %struct.ocfs2_xattr_info*, %struct.ocfs2_xattr_info** %6, align 8
  %71 = call i32 @ocfs2_xa_add_namevalue(%struct.ocfs2_xa_loc* %69, %struct.ocfs2_xattr_info* %70)
  %72 = load %struct.ocfs2_xattr_info*, %struct.ocfs2_xattr_info** %6, align 8
  %73 = getelementptr inbounds %struct.ocfs2_xattr_info, %struct.ocfs2_xattr_info* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @OCFS2_XATTR_INLINE_SIZE, align 8
  %76 = icmp sgt i64 %74, %75
  br i1 %76, label %77, label %80

77:                                               ; preds = %66
  %78 = load %struct.ocfs2_xa_loc*, %struct.ocfs2_xa_loc** %5, align 8
  %79 = call i32 @ocfs2_xa_install_value_root(%struct.ocfs2_xa_loc* %78)
  br label %80

80:                                               ; preds = %77, %66
  br label %81

81:                                               ; preds = %80, %44
  %82 = load %struct.ocfs2_xattr_info*, %struct.ocfs2_xattr_info** %6, align 8
  %83 = getelementptr inbounds %struct.ocfs2_xattr_info, %struct.ocfs2_xattr_info* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @OCFS2_XATTR_INLINE_SIZE, align 8
  %86 = icmp sgt i64 %84, %85
  br i1 %86, label %87, label %123

87:                                               ; preds = %81
  %88 = load %struct.ocfs2_xa_loc*, %struct.ocfs2_xa_loc** %5, align 8
  %89 = call i32 @ocfs2_xa_value_clusters(%struct.ocfs2_xa_loc* %88)
  store i32 %89, i32* %10, align 4
  %90 = load %struct.ocfs2_xa_loc*, %struct.ocfs2_xa_loc** %5, align 8
  %91 = load %struct.ocfs2_xattr_info*, %struct.ocfs2_xattr_info** %6, align 8
  %92 = getelementptr inbounds %struct.ocfs2_xattr_info, %struct.ocfs2_xattr_info* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = load %struct.ocfs2_xattr_set_ctxt*, %struct.ocfs2_xattr_set_ctxt** %8, align 8
  %95 = call i32 @ocfs2_xa_value_truncate(%struct.ocfs2_xa_loc* %90, i64 %93, %struct.ocfs2_xattr_set_ctxt* %94)
  store i32 %95, i32* %9, align 4
  %96 = load i32, i32* %9, align 4
  %97 = icmp slt i32 %96, 0
  br i1 %97, label %98, label %122

98:                                               ; preds = %87
  %99 = load %struct.ocfs2_xattr_set_ctxt*, %struct.ocfs2_xattr_set_ctxt** %8, align 8
  %100 = getelementptr inbounds %struct.ocfs2_xattr_set_ctxt, %struct.ocfs2_xattr_set_ctxt* %99, i32 0, i32 0
  store i32 1, i32* %100, align 4
  %101 = load %struct.ocfs2_xa_loc*, %struct.ocfs2_xa_loc** %5, align 8
  %102 = load i32, i32* %10, align 4
  %103 = call i32 @ocfs2_xa_cleanup_value_truncate(%struct.ocfs2_xa_loc* %101, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %102)
  %104 = load %struct.ocfs2_xa_loc*, %struct.ocfs2_xa_loc** %5, align 8
  %105 = getelementptr inbounds %struct.ocfs2_xa_loc, %struct.ocfs2_xa_loc* %104, i32 0, i32 0
  %106 = load %struct.TYPE_2__*, %struct.TYPE_2__** %105, align 8
  %107 = icmp ne %struct.TYPE_2__* %106, null
  br i1 %107, label %108, label %119

108:                                              ; preds = %98
  %109 = load i64, i64* %11, align 8
  %110 = icmp ne i64 %109, 0
  %111 = xor i1 %110, true
  %112 = zext i1 %111 to i32
  %113 = call i32 @BUG_ON(i32 %112)
  %114 = load i64, i64* %11, align 8
  %115 = load %struct.ocfs2_xa_loc*, %struct.ocfs2_xa_loc** %5, align 8
  %116 = getelementptr inbounds %struct.ocfs2_xa_loc, %struct.ocfs2_xa_loc* %115, i32 0, i32 0
  %117 = load %struct.TYPE_2__*, %struct.TYPE_2__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %117, i32 0, i32 0
  store i64 %114, i64* %118, align 8
  br label %119

119:                                              ; preds = %108, %98
  %120 = load i32, i32* %9, align 4
  %121 = call i32 @mlog_errno(i32 %120)
  br label %122

122:                                              ; preds = %119, %87
  br label %123

123:                                              ; preds = %122, %81
  br label %124

124:                                              ; preds = %123, %59, %43, %23, %17
  %125 = load i32, i32* %9, align 4
  ret i32 %125
}

declare dso_local i32 @ocfs2_xa_check_space(%struct.ocfs2_xa_loc*, %struct.ocfs2_xattr_info*) #1

declare dso_local i64 @ocfs2_xa_can_reuse_entry(%struct.ocfs2_xa_loc*, %struct.ocfs2_xattr_info*) #1

declare dso_local i32 @ocfs2_xa_reuse_entry(%struct.ocfs2_xa_loc*, %struct.ocfs2_xattr_info*, %struct.ocfs2_xattr_set_ctxt*) #1

declare dso_local i32 @ocfs2_xattr_is_local(%struct.TYPE_2__*) #1

declare dso_local i32 @ocfs2_xa_value_clusters(%struct.ocfs2_xa_loc*) #1

declare dso_local i32 @ocfs2_xa_value_truncate(%struct.ocfs2_xa_loc*, i64, %struct.ocfs2_xattr_set_ctxt*) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @ocfs2_xa_cleanup_value_truncate(%struct.ocfs2_xa_loc*, i8*, i32) #1

declare dso_local i32 @ocfs2_xa_wipe_namevalue(%struct.ocfs2_xa_loc*) #1

declare dso_local i32 @ocfs2_xa_add_namevalue(%struct.ocfs2_xa_loc*, %struct.ocfs2_xattr_info*) #1

declare dso_local i32 @ocfs2_xa_install_value_root(%struct.ocfs2_xa_loc*) #1

declare dso_local i32 @BUG_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
