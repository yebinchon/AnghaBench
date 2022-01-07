; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_alloc.c_ocfs2_trim_fs.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_alloc.c_ocfs2_trim_fs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.fstrim_range = type { i64, i64, i64 }
%struct.ocfs2_super = type { i32, i32 }
%struct.ocfs2_trim_fs_info = type { i32, i64, i64, i64, i64, i32, i64 }

@EAGAIN = common dso_local global i32 0, align 4
@ML_NOTICE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [77 x i8] c"Wait for trim on device (%s) to finish, which is running from another node.\0A\00", align 1
@.str.1 = private unnamed_addr constant [68 x i8] c"The same trim on device (%s) was just done from node (%u), return.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ocfs2_trim_fs(%struct.super_block* %0, %struct.fstrim_range* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.super_block*, align 8
  %5 = alloca %struct.fstrim_range*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ocfs2_super*, align 8
  %8 = alloca %struct.ocfs2_trim_fs_info, align 8
  %9 = alloca %struct.ocfs2_trim_fs_info*, align 8
  store %struct.super_block* %0, %struct.super_block** %4, align 8
  store %struct.fstrim_range* %1, %struct.fstrim_range** %5, align 8
  %10 = load %struct.super_block*, %struct.super_block** %4, align 8
  %11 = call %struct.ocfs2_super* @OCFS2_SB(%struct.super_block* %10)
  store %struct.ocfs2_super* %11, %struct.ocfs2_super** %7, align 8
  store %struct.ocfs2_trim_fs_info* null, %struct.ocfs2_trim_fs_info** %9, align 8
  %12 = load %struct.ocfs2_super*, %struct.ocfs2_super** %7, align 8
  %13 = call i32 @ocfs2_trim_fs_lock_res_init(%struct.ocfs2_super* %12)
  %14 = load %struct.fstrim_range*, %struct.fstrim_range** %5, align 8
  %15 = getelementptr inbounds %struct.fstrim_range, %struct.fstrim_range* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.fstrim_range*, %struct.fstrim_range** %5, align 8
  %18 = getelementptr inbounds %struct.fstrim_range, %struct.fstrim_range* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.fstrim_range*, %struct.fstrim_range** %5, align 8
  %21 = getelementptr inbounds %struct.fstrim_range, %struct.fstrim_range* %20, i32 0, i32 2
  %22 = load i64, i64* %21, align 8
  %23 = call i32 @trace_ocfs2_trim_fs(i64 %16, i64 %19, i64 %22)
  %24 = load %struct.ocfs2_super*, %struct.ocfs2_super** %7, align 8
  %25 = call i32 @ocfs2_trim_fs_lock(%struct.ocfs2_super* %24, %struct.ocfs2_trim_fs_info* null, i32 1)
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* %6, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %97

28:                                               ; preds = %2
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* @EAGAIN, align 4
  %31 = sub nsw i32 0, %30
  %32 = icmp ne i32 %29, %31
  br i1 %32, label %33, label %39

33:                                               ; preds = %28
  %34 = load i32, i32* %6, align 4
  %35 = call i32 @mlog_errno(i32 %34)
  %36 = load %struct.ocfs2_super*, %struct.ocfs2_super** %7, align 8
  %37 = call i32 @ocfs2_trim_fs_lock_res_uninit(%struct.ocfs2_super* %36)
  %38 = load i32, i32* %6, align 4
  store i32 %38, i32* %3, align 4
  br label %133

39:                                               ; preds = %28
  %40 = load i32, i32* @ML_NOTICE, align 4
  %41 = load %struct.ocfs2_super*, %struct.ocfs2_super** %7, align 8
  %42 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = call i32 (i32, i8*, i32, ...) @mlog(i32 %40, i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str, i64 0, i64 0), i32 %43)
  %45 = load %struct.ocfs2_super*, %struct.ocfs2_super** %7, align 8
  %46 = call i32 @ocfs2_trim_fs_lock(%struct.ocfs2_super* %45, %struct.ocfs2_trim_fs_info* %8, i32 0)
  store i32 %46, i32* %6, align 4
  %47 = load i32, i32* %6, align 4
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %55

49:                                               ; preds = %39
  %50 = load i32, i32* %6, align 4
  %51 = call i32 @mlog_errno(i32 %50)
  %52 = load %struct.ocfs2_super*, %struct.ocfs2_super** %7, align 8
  %53 = call i32 @ocfs2_trim_fs_lock_res_uninit(%struct.ocfs2_super* %52)
  %54 = load i32, i32* %6, align 4
  store i32 %54, i32* %3, align 4
  br label %133

55:                                               ; preds = %39
  %56 = getelementptr inbounds %struct.ocfs2_trim_fs_info, %struct.ocfs2_trim_fs_info* %8, i32 0, i32 6
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %96

59:                                               ; preds = %55
  %60 = getelementptr inbounds %struct.ocfs2_trim_fs_info, %struct.ocfs2_trim_fs_info* %8, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %96

63:                                               ; preds = %59
  %64 = getelementptr inbounds %struct.ocfs2_trim_fs_info, %struct.ocfs2_trim_fs_info* %8, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = load %struct.fstrim_range*, %struct.fstrim_range** %5, align 8
  %67 = getelementptr inbounds %struct.fstrim_range, %struct.fstrim_range* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = icmp eq i64 %65, %68
  br i1 %69, label %70, label %96

70:                                               ; preds = %63
  %71 = getelementptr inbounds %struct.ocfs2_trim_fs_info, %struct.ocfs2_trim_fs_info* %8, i32 0, i32 2
  %72 = load i64, i64* %71, align 8
  %73 = load %struct.fstrim_range*, %struct.fstrim_range** %5, align 8
  %74 = getelementptr inbounds %struct.fstrim_range, %struct.fstrim_range* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = icmp eq i64 %72, %75
  br i1 %76, label %77, label %96

77:                                               ; preds = %70
  %78 = getelementptr inbounds %struct.ocfs2_trim_fs_info, %struct.ocfs2_trim_fs_info* %8, i32 0, i32 3
  %79 = load i64, i64* %78, align 8
  %80 = load %struct.fstrim_range*, %struct.fstrim_range** %5, align 8
  %81 = getelementptr inbounds %struct.fstrim_range, %struct.fstrim_range* %80, i32 0, i32 2
  %82 = load i64, i64* %81, align 8
  %83 = icmp eq i64 %79, %82
  br i1 %83, label %84, label %96

84:                                               ; preds = %77
  %85 = load i32, i32* @ML_NOTICE, align 4
  %86 = load %struct.ocfs2_super*, %struct.ocfs2_super** %7, align 8
  %87 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = getelementptr inbounds %struct.ocfs2_trim_fs_info, %struct.ocfs2_trim_fs_info* %8, i32 0, i32 5
  %90 = load i32, i32* %89, align 8
  %91 = call i32 (i32, i8*, i32, ...) @mlog(i32 %85, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.1, i64 0, i64 0), i32 %88, i32 %90)
  %92 = getelementptr inbounds %struct.ocfs2_trim_fs_info, %struct.ocfs2_trim_fs_info* %8, i32 0, i32 4
  %93 = load i64, i64* %92, align 8
  %94 = load %struct.fstrim_range*, %struct.fstrim_range** %5, align 8
  %95 = getelementptr inbounds %struct.fstrim_range, %struct.fstrim_range* %94, i32 0, i32 1
  store i64 %93, i64* %95, align 8
  br label %126

96:                                               ; preds = %77, %70, %63, %59, %55
  br label %97

97:                                               ; preds = %96, %2
  %98 = load %struct.ocfs2_super*, %struct.ocfs2_super** %7, align 8
  %99 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = getelementptr inbounds %struct.ocfs2_trim_fs_info, %struct.ocfs2_trim_fs_info* %8, i32 0, i32 5
  store i32 %100, i32* %101, align 8
  %102 = load %struct.fstrim_range*, %struct.fstrim_range** %5, align 8
  %103 = getelementptr inbounds %struct.fstrim_range, %struct.fstrim_range* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = getelementptr inbounds %struct.ocfs2_trim_fs_info, %struct.ocfs2_trim_fs_info* %8, i32 0, i32 1
  store i64 %104, i64* %105, align 8
  %106 = load %struct.fstrim_range*, %struct.fstrim_range** %5, align 8
  %107 = getelementptr inbounds %struct.fstrim_range, %struct.fstrim_range* %106, i32 0, i32 1
  %108 = load i64, i64* %107, align 8
  %109 = getelementptr inbounds %struct.ocfs2_trim_fs_info, %struct.ocfs2_trim_fs_info* %8, i32 0, i32 2
  store i64 %108, i64* %109, align 8
  %110 = load %struct.fstrim_range*, %struct.fstrim_range** %5, align 8
  %111 = getelementptr inbounds %struct.fstrim_range, %struct.fstrim_range* %110, i32 0, i32 2
  %112 = load i64, i64* %111, align 8
  %113 = getelementptr inbounds %struct.ocfs2_trim_fs_info, %struct.ocfs2_trim_fs_info* %8, i32 0, i32 3
  store i64 %112, i64* %113, align 8
  %114 = load %struct.super_block*, %struct.super_block** %4, align 8
  %115 = load %struct.fstrim_range*, %struct.fstrim_range** %5, align 8
  %116 = call i32 @ocfs2_trim_mainbm(%struct.super_block* %114, %struct.fstrim_range* %115)
  store i32 %116, i32* %6, align 4
  %117 = load %struct.fstrim_range*, %struct.fstrim_range** %5, align 8
  %118 = getelementptr inbounds %struct.fstrim_range, %struct.fstrim_range* %117, i32 0, i32 1
  %119 = load i64, i64* %118, align 8
  %120 = getelementptr inbounds %struct.ocfs2_trim_fs_info, %struct.ocfs2_trim_fs_info* %8, i32 0, i32 4
  store i64 %119, i64* %120, align 8
  %121 = load i32, i32* %6, align 4
  %122 = icmp slt i32 %121, 0
  %123 = zext i1 %122 to i64
  %124 = select i1 %122, i32 0, i32 1
  %125 = getelementptr inbounds %struct.ocfs2_trim_fs_info, %struct.ocfs2_trim_fs_info* %8, i32 0, i32 0
  store i32 %124, i32* %125, align 8
  store %struct.ocfs2_trim_fs_info* %8, %struct.ocfs2_trim_fs_info** %9, align 8
  br label %126

126:                                              ; preds = %97, %84
  %127 = load %struct.ocfs2_super*, %struct.ocfs2_super** %7, align 8
  %128 = load %struct.ocfs2_trim_fs_info*, %struct.ocfs2_trim_fs_info** %9, align 8
  %129 = call i32 @ocfs2_trim_fs_unlock(%struct.ocfs2_super* %127, %struct.ocfs2_trim_fs_info* %128)
  %130 = load %struct.ocfs2_super*, %struct.ocfs2_super** %7, align 8
  %131 = call i32 @ocfs2_trim_fs_lock_res_uninit(%struct.ocfs2_super* %130)
  %132 = load i32, i32* %6, align 4
  store i32 %132, i32* %3, align 4
  br label %133

133:                                              ; preds = %126, %49, %33
  %134 = load i32, i32* %3, align 4
  ret i32 %134
}

declare dso_local %struct.ocfs2_super* @OCFS2_SB(%struct.super_block*) #1

declare dso_local i32 @ocfs2_trim_fs_lock_res_init(%struct.ocfs2_super*) #1

declare dso_local i32 @trace_ocfs2_trim_fs(i64, i64, i64) #1

declare dso_local i32 @ocfs2_trim_fs_lock(%struct.ocfs2_super*, %struct.ocfs2_trim_fs_info*, i32) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @ocfs2_trim_fs_lock_res_uninit(%struct.ocfs2_super*) #1

declare dso_local i32 @mlog(i32, i8*, i32, ...) #1

declare dso_local i32 @ocfs2_trim_mainbm(%struct.super_block*, %struct.fstrim_range*) #1

declare dso_local i32 @ocfs2_trim_fs_unlock(%struct.ocfs2_super*, %struct.ocfs2_trim_fs_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
