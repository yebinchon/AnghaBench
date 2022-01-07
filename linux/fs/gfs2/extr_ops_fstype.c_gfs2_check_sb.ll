; ModuleID = '/home/carl/AnghaBench/linux/fs/gfs2/extr_ops_fstype.c_gfs2_check_sb.c'
source_filename = "/home/carl/AnghaBench/linux/fs/gfs2/extr_ops_fstype.c_gfs2_check_sb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gfs2_sbd = type { %struct.gfs2_sb_host }
%struct.gfs2_sb_host = type { i64, i64, i64, i64 }

@GFS2_MAGIC = common dso_local global i64 0, align 8
@GFS2_METATYPE_SB = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [23 x i8] c"not a GFS2 filesystem\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@GFS2_FORMAT_FS = common dso_local global i64 0, align 8
@GFS2_FORMAT_MULTI = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [41 x i8] c"Unknown on-disk format, unable to mount\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gfs2_sbd*, i32)* @gfs2_check_sb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gfs2_check_sb(%struct.gfs2_sbd* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.gfs2_sbd*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.gfs2_sb_host*, align 8
  store %struct.gfs2_sbd* %0, %struct.gfs2_sbd** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %8 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %7, i32 0, i32 0
  store %struct.gfs2_sb_host* %8, %struct.gfs2_sb_host** %6, align 8
  %9 = load %struct.gfs2_sb_host*, %struct.gfs2_sb_host** %6, align 8
  %10 = getelementptr inbounds %struct.gfs2_sb_host, %struct.gfs2_sb_host* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @GFS2_MAGIC, align 8
  %13 = icmp ne i64 %11, %12
  br i1 %13, label %20, label %14

14:                                               ; preds = %2
  %15 = load %struct.gfs2_sb_host*, %struct.gfs2_sb_host** %6, align 8
  %16 = getelementptr inbounds %struct.gfs2_sb_host, %struct.gfs2_sb_host* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @GFS2_METATYPE_SB, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %28

20:                                               ; preds = %14, %2
  %21 = load i32, i32* %5, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %20
  %24 = call i32 @pr_warn(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %25

25:                                               ; preds = %23, %20
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %3, align 4
  br label %46

28:                                               ; preds = %14
  %29 = load %struct.gfs2_sb_host*, %struct.gfs2_sb_host** %6, align 8
  %30 = getelementptr inbounds %struct.gfs2_sb_host, %struct.gfs2_sb_host* %29, i32 0, i32 2
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @GFS2_FORMAT_FS, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %41

34:                                               ; preds = %28
  %35 = load %struct.gfs2_sb_host*, %struct.gfs2_sb_host** %6, align 8
  %36 = getelementptr inbounds %struct.gfs2_sb_host, %struct.gfs2_sb_host* %35, i32 0, i32 3
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @GFS2_FORMAT_MULTI, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %34
  store i32 0, i32* %3, align 4
  br label %46

41:                                               ; preds = %34, %28
  %42 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %43 = call i32 @fs_warn(%struct.gfs2_sbd* %42, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  %44 = load i32, i32* @EINVAL, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %3, align 4
  br label %46

46:                                               ; preds = %41, %40, %25
  %47 = load i32, i32* %3, align 4
  ret i32 %47
}

declare dso_local i32 @pr_warn(i8*) #1

declare dso_local i32 @fs_warn(%struct.gfs2_sbd*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
