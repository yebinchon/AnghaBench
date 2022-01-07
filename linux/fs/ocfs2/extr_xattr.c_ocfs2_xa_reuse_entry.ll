; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_xattr.c_ocfs2_xa_reuse_entry.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_xattr.c_ocfs2_xa_reuse_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_xa_loc = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.ocfs2_xattr_info = type { i64, i32 }
%struct.ocfs2_xattr_set_ctxt = type { i32 }

@OCFS2_XATTR_INLINE_SIZE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [8 x i8] c"reusing\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ocfs2_xa_loc*, %struct.ocfs2_xattr_info*, %struct.ocfs2_xattr_set_ctxt*)* @ocfs2_xa_reuse_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_xa_reuse_entry(%struct.ocfs2_xa_loc* %0, %struct.ocfs2_xattr_info* %1, %struct.ocfs2_xattr_set_ctxt* %2) #0 {
  %4 = alloca %struct.ocfs2_xa_loc*, align 8
  %5 = alloca %struct.ocfs2_xattr_info*, align 8
  %6 = alloca %struct.ocfs2_xattr_set_ctxt*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.ocfs2_xa_loc* %0, %struct.ocfs2_xa_loc** %4, align 8
  store %struct.ocfs2_xattr_info* %1, %struct.ocfs2_xattr_info** %5, align 8
  store %struct.ocfs2_xattr_set_ctxt* %2, %struct.ocfs2_xattr_set_ctxt** %6, align 8
  store i32 0, i32* %7, align 4
  %13 = load %struct.ocfs2_xattr_info*, %struct.ocfs2_xattr_info** %5, align 8
  %14 = getelementptr inbounds %struct.ocfs2_xattr_info, %struct.ocfs2_xattr_info* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @OCFS2_XATTR_SIZE(i32 %15)
  store i32 %16, i32* %8, align 4
  %17 = load %struct.ocfs2_xa_loc*, %struct.ocfs2_xa_loc** %4, align 8
  %18 = getelementptr inbounds %struct.ocfs2_xa_loc, %struct.ocfs2_xa_loc* %17, i32 0, i32 0
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = call i32 @ocfs2_xattr_is_local(%struct.TYPE_4__* %19)
  store i32 %20, i32* %11, align 4
  %21 = load %struct.ocfs2_xattr_info*, %struct.ocfs2_xattr_info** %5, align 8
  %22 = getelementptr inbounds %struct.ocfs2_xattr_info, %struct.ocfs2_xattr_info* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @OCFS2_XATTR_INLINE_SIZE, align 8
  %25 = icmp sle i64 %23, %24
  %26 = zext i1 %25 to i32
  store i32 %26, i32* %12, align 4
  %27 = load %struct.ocfs2_xa_loc*, %struct.ocfs2_xa_loc** %4, align 8
  %28 = getelementptr inbounds %struct.ocfs2_xa_loc, %struct.ocfs2_xa_loc* %27, i32 0, i32 0
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @OCFS2_XATTR_SIZE(i32 %31)
  %33 = load i32, i32* %8, align 4
  %34 = icmp ne i32 %32, %33
  %35 = zext i1 %34 to i32
  %36 = call i32 @BUG_ON(i32 %35)
  %37 = load %struct.ocfs2_xa_loc*, %struct.ocfs2_xa_loc** %4, align 8
  %38 = load %struct.ocfs2_xa_loc*, %struct.ocfs2_xa_loc** %4, align 8
  %39 = getelementptr inbounds %struct.ocfs2_xa_loc, %struct.ocfs2_xa_loc* %38, i32 0, i32 0
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @le16_to_cpu(i32 %42)
  %44 = call i8* @ocfs2_xa_offset_pointer(%struct.ocfs2_xa_loc* %37, i32 %43)
  store i8* %44, i8** %10, align 8
  %45 = load i32, i32* %11, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %66

47:                                               ; preds = %3
  %48 = load i8*, i8** %10, align 8
  %49 = load i32, i32* %8, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i8, i8* %48, i64 %50
  %52 = load %struct.ocfs2_xa_loc*, %struct.ocfs2_xa_loc** %4, align 8
  %53 = getelementptr inbounds %struct.ocfs2_xa_loc, %struct.ocfs2_xa_loc* %52, i32 0, i32 0
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %53, align 8
  %55 = call i64 @namevalue_size_xe(%struct.TYPE_4__* %54)
  %56 = load i32, i32* %8, align 4
  %57 = sext i32 %56 to i64
  %58 = sub nsw i64 %55, %57
  %59 = call i32 @memset(i8* %51, i32 0, i64 %58)
  %60 = load i32, i32* %12, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %65, label %62

62:                                               ; preds = %47
  %63 = load %struct.ocfs2_xa_loc*, %struct.ocfs2_xa_loc** %4, align 8
  %64 = call i32 @ocfs2_xa_install_value_root(%struct.ocfs2_xa_loc* %63)
  br label %65

65:                                               ; preds = %62, %47
  br label %127

66:                                               ; preds = %3
  %67 = load %struct.ocfs2_xa_loc*, %struct.ocfs2_xa_loc** %4, align 8
  %68 = call i32 @ocfs2_xa_value_clusters(%struct.ocfs2_xa_loc* %67)
  store i32 %68, i32* %9, align 4
  %69 = load i32, i32* %12, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %94

71:                                               ; preds = %66
  %72 = load %struct.ocfs2_xa_loc*, %struct.ocfs2_xa_loc** %4, align 8
  %73 = load %struct.ocfs2_xattr_set_ctxt*, %struct.ocfs2_xattr_set_ctxt** %6, align 8
  %74 = call i32 @ocfs2_xa_value_truncate(%struct.ocfs2_xa_loc* %72, i64 0, %struct.ocfs2_xattr_set_ctxt* %73)
  store i32 %74, i32* %7, align 4
  %75 = load i32, i32* %7, align 4
  %76 = icmp slt i32 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %71
  %78 = load i32, i32* %7, align 4
  %79 = call i32 @mlog_errno(i32 %78)
  br label %93

80:                                               ; preds = %71
  %81 = load i8*, i8** %10, align 8
  %82 = load i32, i32* %8, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i8, i8* %81, i64 %83
  %85 = load %struct.ocfs2_xa_loc*, %struct.ocfs2_xa_loc** %4, align 8
  %86 = getelementptr inbounds %struct.ocfs2_xa_loc, %struct.ocfs2_xa_loc* %85, i32 0, i32 0
  %87 = load %struct.TYPE_4__*, %struct.TYPE_4__** %86, align 8
  %88 = call i64 @namevalue_size_xe(%struct.TYPE_4__* %87)
  %89 = load i32, i32* %8, align 4
  %90 = sext i32 %89 to i64
  %91 = sub nsw i64 %88, %90
  %92 = call i32 @memset(i8* %84, i32 0, i64 %91)
  br label %93

93:                                               ; preds = %80, %77
  br label %119

94:                                               ; preds = %66
  %95 = load %struct.ocfs2_xa_loc*, %struct.ocfs2_xa_loc** %4, align 8
  %96 = getelementptr inbounds %struct.ocfs2_xa_loc, %struct.ocfs2_xa_loc* %95, i32 0, i32 0
  %97 = load %struct.TYPE_4__*, %struct.TYPE_4__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = call i64 @le64_to_cpu(i32 %99)
  %101 = load %struct.ocfs2_xattr_info*, %struct.ocfs2_xattr_info** %5, align 8
  %102 = getelementptr inbounds %struct.ocfs2_xattr_info, %struct.ocfs2_xattr_info* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = icmp sgt i64 %100, %103
  br i1 %104, label %105, label %118

105:                                              ; preds = %94
  %106 = load %struct.ocfs2_xa_loc*, %struct.ocfs2_xa_loc** %4, align 8
  %107 = load %struct.ocfs2_xattr_info*, %struct.ocfs2_xattr_info** %5, align 8
  %108 = getelementptr inbounds %struct.ocfs2_xattr_info, %struct.ocfs2_xattr_info* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = load %struct.ocfs2_xattr_set_ctxt*, %struct.ocfs2_xattr_set_ctxt** %6, align 8
  %111 = call i32 @ocfs2_xa_value_truncate(%struct.ocfs2_xa_loc* %106, i64 %109, %struct.ocfs2_xattr_set_ctxt* %110)
  store i32 %111, i32* %7, align 4
  %112 = load i32, i32* %7, align 4
  %113 = icmp slt i32 %112, 0
  br i1 %113, label %114, label %117

114:                                              ; preds = %105
  %115 = load i32, i32* %7, align 4
  %116 = call i32 @mlog_errno(i32 %115)
  br label %117

117:                                              ; preds = %114, %105
  br label %118

118:                                              ; preds = %117, %94
  br label %119

119:                                              ; preds = %118, %93
  %120 = load i32, i32* %7, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %126

122:                                              ; preds = %119
  %123 = load %struct.ocfs2_xa_loc*, %struct.ocfs2_xa_loc** %4, align 8
  %124 = load i32, i32* %9, align 4
  %125 = call i32 @ocfs2_xa_cleanup_value_truncate(%struct.ocfs2_xa_loc* %123, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %124)
  br label %141

126:                                              ; preds = %119
  br label %127

127:                                              ; preds = %126, %65
  %128 = load %struct.ocfs2_xattr_info*, %struct.ocfs2_xattr_info** %5, align 8
  %129 = getelementptr inbounds %struct.ocfs2_xattr_info, %struct.ocfs2_xattr_info* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = call i32 @cpu_to_le64(i64 %130)
  %132 = load %struct.ocfs2_xa_loc*, %struct.ocfs2_xa_loc** %4, align 8
  %133 = getelementptr inbounds %struct.ocfs2_xa_loc, %struct.ocfs2_xa_loc* %132, i32 0, i32 0
  %134 = load %struct.TYPE_4__*, %struct.TYPE_4__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %134, i32 0, i32 0
  store i32 %131, i32* %135, align 4
  %136 = load %struct.ocfs2_xa_loc*, %struct.ocfs2_xa_loc** %4, align 8
  %137 = getelementptr inbounds %struct.ocfs2_xa_loc, %struct.ocfs2_xa_loc* %136, i32 0, i32 0
  %138 = load %struct.TYPE_4__*, %struct.TYPE_4__** %137, align 8
  %139 = load i32, i32* %12, align 4
  %140 = call i32 @ocfs2_xattr_set_local(%struct.TYPE_4__* %138, i32 %139)
  br label %141

141:                                              ; preds = %127, %122
  %142 = load i32, i32* %7, align 4
  ret i32 %142
}

declare dso_local i32 @OCFS2_XATTR_SIZE(i32) #1

declare dso_local i32 @ocfs2_xattr_is_local(%struct.TYPE_4__*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i8* @ocfs2_xa_offset_pointer(%struct.ocfs2_xa_loc*, i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @memset(i8*, i32, i64) #1

declare dso_local i64 @namevalue_size_xe(%struct.TYPE_4__*) #1

declare dso_local i32 @ocfs2_xa_install_value_root(%struct.ocfs2_xa_loc*) #1

declare dso_local i32 @ocfs2_xa_value_clusters(%struct.ocfs2_xa_loc*) #1

declare dso_local i32 @ocfs2_xa_value_truncate(%struct.ocfs2_xa_loc*, i64, %struct.ocfs2_xattr_set_ctxt*) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i64 @le64_to_cpu(i32) #1

declare dso_local i32 @ocfs2_xa_cleanup_value_truncate(%struct.ocfs2_xa_loc*, i8*, i32) #1

declare dso_local i32 @cpu_to_le64(i64) #1

declare dso_local i32 @ocfs2_xattr_set_local(%struct.TYPE_4__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
