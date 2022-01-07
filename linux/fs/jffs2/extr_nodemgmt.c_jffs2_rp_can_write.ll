; ModuleID = '/home/carl/AnghaBench/linux/fs/jffs2/extr_nodemgmt.c_jffs2_rp_can_write.c'
source_filename = "/home/carl/AnghaBench/linux/fs/jffs2/extr_nodemgmt.c_jffs2_rp_can_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jffs2_sb_info = type { i32, i32, i32, i32, i32, i32, i64, i64, %struct.jffs2_mount_opts }
%struct.jffs2_mount_opts = type { i32 }

@.str = private unnamed_addr constant [118 x i8] c"rpsize %u, dirty_size %u, free_size %u, erasing_size %u, unchecked_size %u, nr_erasing_blocks %u, avail %u, resrv %u\0A\00", align 1
@CAP_SYS_RESOURCE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"forbid writing\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.jffs2_sb_info*)* @jffs2_rp_can_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jffs2_rp_can_write(%struct.jffs2_sb_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.jffs2_sb_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.jffs2_mount_opts*, align 8
  store %struct.jffs2_sb_info* %0, %struct.jffs2_sb_info** %3, align 8
  %6 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %3, align 8
  %7 = getelementptr inbounds %struct.jffs2_sb_info, %struct.jffs2_sb_info* %6, i32 0, i32 8
  store %struct.jffs2_mount_opts* %7, %struct.jffs2_mount_opts** %5, align 8
  %8 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %3, align 8
  %9 = getelementptr inbounds %struct.jffs2_sb_info, %struct.jffs2_sb_info* %8, i32 0, i32 7
  %10 = load i64, i64* %9, align 8
  %11 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %3, align 8
  %12 = getelementptr inbounds %struct.jffs2_sb_info, %struct.jffs2_sb_info* %11, i32 0, i32 6
  %13 = load i64, i64* %12, align 8
  %14 = add nsw i64 %10, %13
  %15 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %3, align 8
  %16 = getelementptr inbounds %struct.jffs2_sb_info, %struct.jffs2_sb_info* %15, i32 0, i32 4
  %17 = load i32, i32* %16, align 8
  %18 = sext i32 %17 to i64
  %19 = add nsw i64 %14, %18
  %20 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %3, align 8
  %21 = getelementptr inbounds %struct.jffs2_sb_info, %struct.jffs2_sb_info* %20, i32 0, i32 5
  %22 = load i32, i32* %21, align 4
  %23 = sext i32 %22 to i64
  %24 = add nsw i64 %19, %23
  %25 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %3, align 8
  %26 = getelementptr inbounds %struct.jffs2_sb_info, %struct.jffs2_sb_info* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %3, align 8
  %29 = getelementptr inbounds %struct.jffs2_sb_info, %struct.jffs2_sb_info* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = mul nsw i32 %27, %30
  %32 = sext i32 %31 to i64
  %33 = sub nsw i64 %24, %32
  %34 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %3, align 8
  %35 = getelementptr inbounds %struct.jffs2_sb_info, %struct.jffs2_sb_info* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = sext i32 %36 to i64
  %38 = sub nsw i64 %33, %37
  %39 = trunc i64 %38 to i32
  store i32 %39, i32* %4, align 4
  %40 = load i32, i32* %4, align 4
  %41 = load %struct.jffs2_mount_opts*, %struct.jffs2_mount_opts** %5, align 8
  %42 = getelementptr inbounds %struct.jffs2_mount_opts, %struct.jffs2_mount_opts* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = mul nsw i32 2, %43
  %45 = icmp slt i32 %40, %44
  br i1 %45, label %46, label %70

46:                                               ; preds = %1
  %47 = load %struct.jffs2_mount_opts*, %struct.jffs2_mount_opts** %5, align 8
  %48 = getelementptr inbounds %struct.jffs2_mount_opts, %struct.jffs2_mount_opts* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %3, align 8
  %51 = getelementptr inbounds %struct.jffs2_sb_info, %struct.jffs2_sb_info* %50, i32 0, i32 7
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %3, align 8
  %54 = getelementptr inbounds %struct.jffs2_sb_info, %struct.jffs2_sb_info* %53, i32 0, i32 6
  %55 = load i64, i64* %54, align 8
  %56 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %3, align 8
  %57 = getelementptr inbounds %struct.jffs2_sb_info, %struct.jffs2_sb_info* %56, i32 0, i32 5
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %3, align 8
  %60 = getelementptr inbounds %struct.jffs2_sb_info, %struct.jffs2_sb_info* %59, i32 0, i32 4
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %3, align 8
  %63 = getelementptr inbounds %struct.jffs2_sb_info, %struct.jffs2_sb_info* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* %4, align 4
  %66 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %3, align 8
  %67 = getelementptr inbounds %struct.jffs2_sb_info, %struct.jffs2_sb_info* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  %69 = call i32 (i32, i8*, ...) @jffs2_dbg(i32 1, i8* getelementptr inbounds ([118 x i8], [118 x i8]* @.str, i64 0, i64 0), i32 %49, i64 %52, i64 %55, i32 %58, i32 %61, i32 %64, i32 %65, i32 %68)
  br label %70

70:                                               ; preds = %46, %1
  %71 = load i32, i32* %4, align 4
  %72 = load %struct.jffs2_mount_opts*, %struct.jffs2_mount_opts** %5, align 8
  %73 = getelementptr inbounds %struct.jffs2_mount_opts, %struct.jffs2_mount_opts* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = icmp sgt i32 %71, %74
  br i1 %75, label %76, label %77

76:                                               ; preds = %70
  store i32 1, i32* %2, align 4
  br label %84

77:                                               ; preds = %70
  %78 = load i32, i32* @CAP_SYS_RESOURCE, align 4
  %79 = call i64 @capable(i32 %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %77
  store i32 1, i32* %2, align 4
  br label %84

82:                                               ; preds = %77
  %83 = call i32 (i32, i8*, ...) @jffs2_dbg(i32 1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %84

84:                                               ; preds = %82, %81, %76
  %85 = load i32, i32* %2, align 4
  ret i32 %85
}

declare dso_local i32 @jffs2_dbg(i32, i8*, ...) #1

declare dso_local i64 @capable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
