; ModuleID = '/home/carl/AnghaBench/linux/fs/gfs2/extr_ops_fstype.c_check_journal_clean.c'
source_filename = "/home/carl/AnghaBench/linux/fs/gfs2/extr_ops_fstype.c_check_journal_clean.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gfs2_sbd = type { i32 }
%struct.gfs2_jdesc = type { i32, i32 }
%struct.gfs2_holder = type { i32 }
%struct.gfs2_log_header_host = type { i32 }
%struct.gfs2_inode = type { i32 }

@LM_ST_SHARED = common dso_local global i32 0, align 4
@LM_FLAG_NOEXP = common dso_local global i32 0, align 4
@GL_EXACT = common dso_local global i32 0, align 4
@GL_NOCACHE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"Error locking journal for spectator mount.\0A\00", align 1
@EPERM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [45 x i8] c"Error checking journal for spectator mount.\0A\00", align 1
@.str.2 = private unnamed_addr constant [44 x i8] c"Error parsing journal for spectator mount.\0A\00", align 1
@GFS2_LOG_HEAD_UNMOUNT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [73 x i8] c"jid=%u: Journal is dirty, so the first mounter must not be a spectator.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gfs2_sbd*, %struct.gfs2_jdesc*)* @check_journal_clean to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_journal_clean(%struct.gfs2_sbd* %0, %struct.gfs2_jdesc* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.gfs2_sbd*, align 8
  %5 = alloca %struct.gfs2_jdesc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.gfs2_holder, align 4
  %8 = alloca %struct.gfs2_log_header_host, align 4
  %9 = alloca %struct.gfs2_inode*, align 8
  store %struct.gfs2_sbd* %0, %struct.gfs2_sbd** %4, align 8
  store %struct.gfs2_jdesc* %1, %struct.gfs2_jdesc** %5, align 8
  %10 = load %struct.gfs2_jdesc*, %struct.gfs2_jdesc** %5, align 8
  %11 = getelementptr inbounds %struct.gfs2_jdesc, %struct.gfs2_jdesc* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.gfs2_inode* @GFS2_I(i32 %12)
  store %struct.gfs2_inode* %13, %struct.gfs2_inode** %9, align 8
  %14 = load %struct.gfs2_inode*, %struct.gfs2_inode** %9, align 8
  %15 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @LM_ST_SHARED, align 4
  %18 = load i32, i32* @LM_FLAG_NOEXP, align 4
  %19 = load i32, i32* @GL_EXACT, align 4
  %20 = or i32 %18, %19
  %21 = load i32, i32* @GL_NOCACHE, align 4
  %22 = or i32 %20, %21
  %23 = call i32 @gfs2_glock_nq_init(i32 %16, i32 %17, i32 %22, %struct.gfs2_holder* %7)
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* %6, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %2
  %27 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %28 = call i32 (%struct.gfs2_sbd*, i8*, ...) @fs_err(%struct.gfs2_sbd* %27, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  %29 = load i32, i32* @EPERM, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %3, align 4
  br label %65

31:                                               ; preds = %2
  %32 = load %struct.gfs2_jdesc*, %struct.gfs2_jdesc** %5, align 8
  %33 = call i32 @gfs2_jdesc_check(%struct.gfs2_jdesc* %32)
  store i32 %33, i32* %6, align 4
  %34 = load i32, i32* %6, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %31
  %37 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %38 = call i32 (%struct.gfs2_sbd*, i8*, ...) @fs_err(%struct.gfs2_sbd* %37, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0))
  br label %62

39:                                               ; preds = %31
  %40 = load %struct.gfs2_jdesc*, %struct.gfs2_jdesc** %5, align 8
  %41 = call i32 @gfs2_find_jhead(%struct.gfs2_jdesc* %40, %struct.gfs2_log_header_host* %8, i32 0)
  store i32 %41, i32* %6, align 4
  %42 = load i32, i32* %6, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %39
  %45 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %46 = call i32 (%struct.gfs2_sbd*, i8*, ...) @fs_err(%struct.gfs2_sbd* %45, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0))
  br label %62

47:                                               ; preds = %39
  %48 = getelementptr inbounds %struct.gfs2_log_header_host, %struct.gfs2_log_header_host* %8, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @GFS2_LOG_HEAD_UNMOUNT, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %61, label %53

53:                                               ; preds = %47
  %54 = load i32, i32* @EPERM, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %6, align 4
  %56 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %57 = load %struct.gfs2_jdesc*, %struct.gfs2_jdesc** %5, align 8
  %58 = getelementptr inbounds %struct.gfs2_jdesc, %struct.gfs2_jdesc* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 (%struct.gfs2_sbd*, i8*, ...) @fs_err(%struct.gfs2_sbd* %56, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.3, i64 0, i64 0), i32 %59)
  br label %61

61:                                               ; preds = %53, %47
  br label %62

62:                                               ; preds = %61, %44, %36
  %63 = call i32 @gfs2_glock_dq_uninit(%struct.gfs2_holder* %7)
  %64 = load i32, i32* %6, align 4
  store i32 %64, i32* %3, align 4
  br label %65

65:                                               ; preds = %62, %26
  %66 = load i32, i32* %3, align 4
  ret i32 %66
}

declare dso_local %struct.gfs2_inode* @GFS2_I(i32) #1

declare dso_local i32 @gfs2_glock_nq_init(i32, i32, i32, %struct.gfs2_holder*) #1

declare dso_local i32 @fs_err(%struct.gfs2_sbd*, i8*, ...) #1

declare dso_local i32 @gfs2_jdesc_check(%struct.gfs2_jdesc*) #1

declare dso_local i32 @gfs2_find_jhead(%struct.gfs2_jdesc*, %struct.gfs2_log_header_host*, i32) #1

declare dso_local i32 @gfs2_glock_dq_uninit(%struct.gfs2_holder*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
