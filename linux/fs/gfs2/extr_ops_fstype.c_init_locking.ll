; ModuleID = '/home/carl/AnghaBench/linux/fs/gfs2/extr_ops_fstype.c_init_locking.c'
source_filename = "/home/carl/AnghaBench/linux/fs/gfs2/extr_ops_fstype.c_init_locking.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gfs2_sbd = type { %struct.gfs2_holder, i32, i32 }
%struct.gfs2_holder = type { i32 }

@GFS2_MOUNT_LOCK = common dso_local global i32 0, align 4
@gfs2_nondisk_glops = common dso_local global i32 0, align 4
@LM_ST_EXCLUSIVE = common dso_local global i32 0, align 4
@LM_FLAG_NOEXP = common dso_local global i32 0, align 4
@GL_NOCACHE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"can't acquire mount glock: %d\0A\00", align 1
@GFS2_LIVE_LOCK = common dso_local global i32 0, align 4
@LM_ST_SHARED = common dso_local global i32 0, align 4
@GL_EXACT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"can't acquire live glock: %d\0A\00", align 1
@GFS2_RENAME_LOCK = common dso_local global i32 0, align 4
@CREATE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"can't create rename glock: %d\0A\00", align 1
@GFS2_FREEZE_LOCK = common dso_local global i32 0, align 4
@gfs2_freeze_glops = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [36 x i8] c"can't create transaction glock: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gfs2_sbd*, %struct.gfs2_holder*, i32)* @init_locking to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_locking(%struct.gfs2_sbd* %0, %struct.gfs2_holder* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.gfs2_sbd*, align 8
  %6 = alloca %struct.gfs2_holder*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.gfs2_sbd* %0, %struct.gfs2_sbd** %5, align 8
  store %struct.gfs2_holder* %1, %struct.gfs2_holder** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %9 = load i32, i32* %7, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %3
  br label %70

12:                                               ; preds = %3
  %13 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %5, align 8
  %14 = load i32, i32* @GFS2_MOUNT_LOCK, align 4
  %15 = load i32, i32* @LM_ST_EXCLUSIVE, align 4
  %16 = load i32, i32* @LM_FLAG_NOEXP, align 4
  %17 = load i32, i32* @GL_NOCACHE, align 4
  %18 = or i32 %16, %17
  %19 = load %struct.gfs2_holder*, %struct.gfs2_holder** %6, align 8
  %20 = call i32 @gfs2_glock_nq_num(%struct.gfs2_sbd* %13, i32 %14, i32* @gfs2_nondisk_glops, i32 %15, i32 %18, %struct.gfs2_holder* %19)
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* %8, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %12
  %24 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %5, align 8
  %25 = load i32, i32* %8, align 4
  %26 = call i32 @fs_err(%struct.gfs2_sbd* %24, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %25)
  br label %87

27:                                               ; preds = %12
  %28 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %5, align 8
  %29 = load i32, i32* @GFS2_LIVE_LOCK, align 4
  %30 = load i32, i32* @LM_ST_SHARED, align 4
  %31 = load i32, i32* @LM_FLAG_NOEXP, align 4
  %32 = load i32, i32* @GL_EXACT, align 4
  %33 = or i32 %31, %32
  %34 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %5, align 8
  %35 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %34, i32 0, i32 0
  %36 = call i32 @gfs2_glock_nq_num(%struct.gfs2_sbd* %28, i32 %29, i32* @gfs2_nondisk_glops, i32 %30, i32 %33, %struct.gfs2_holder* %35)
  store i32 %36, i32* %8, align 4
  %37 = load i32, i32* %8, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %27
  %40 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %5, align 8
  %41 = load i32, i32* %8, align 4
  %42 = call i32 @fs_err(%struct.gfs2_sbd* %40, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %41)
  br label %84

43:                                               ; preds = %27
  %44 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %5, align 8
  %45 = load i32, i32* @GFS2_RENAME_LOCK, align 4
  %46 = load i32, i32* @CREATE, align 4
  %47 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %5, align 8
  %48 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %47, i32 0, i32 1
  %49 = call i32 @gfs2_glock_get(%struct.gfs2_sbd* %44, i32 %45, i32* @gfs2_nondisk_glops, i32 %46, i32* %48)
  store i32 %49, i32* %8, align 4
  %50 = load i32, i32* %8, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %43
  %53 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %5, align 8
  %54 = load i32, i32* %8, align 4
  %55 = call i32 @fs_err(%struct.gfs2_sbd* %53, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %54)
  br label %80

56:                                               ; preds = %43
  %57 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %5, align 8
  %58 = load i32, i32* @GFS2_FREEZE_LOCK, align 4
  %59 = load i32, i32* @CREATE, align 4
  %60 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %5, align 8
  %61 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %60, i32 0, i32 2
  %62 = call i32 @gfs2_glock_get(%struct.gfs2_sbd* %57, i32 %58, i32* @gfs2_freeze_glops, i32 %59, i32* %61)
  store i32 %62, i32* %8, align 4
  %63 = load i32, i32* %8, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %56
  %66 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %5, align 8
  %67 = load i32, i32* %8, align 4
  %68 = call i32 @fs_err(%struct.gfs2_sbd* %66, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0), i32 %67)
  br label %75

69:                                               ; preds = %56
  store i32 0, i32* %4, align 4
  br label %89

70:                                               ; preds = %11
  %71 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %5, align 8
  %72 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @gfs2_glock_put(i32 %73)
  br label %75

75:                                               ; preds = %70, %65
  %76 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %5, align 8
  %77 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @gfs2_glock_put(i32 %78)
  br label %80

80:                                               ; preds = %75, %52
  %81 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %5, align 8
  %82 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %81, i32 0, i32 0
  %83 = call i32 @gfs2_glock_dq_uninit(%struct.gfs2_holder* %82)
  br label %84

84:                                               ; preds = %80, %39
  %85 = load %struct.gfs2_holder*, %struct.gfs2_holder** %6, align 8
  %86 = call i32 @gfs2_glock_dq_uninit(%struct.gfs2_holder* %85)
  br label %87

87:                                               ; preds = %84, %23
  %88 = load i32, i32* %8, align 4
  store i32 %88, i32* %4, align 4
  br label %89

89:                                               ; preds = %87, %69
  %90 = load i32, i32* %4, align 4
  ret i32 %90
}

declare dso_local i32 @gfs2_glock_nq_num(%struct.gfs2_sbd*, i32, i32*, i32, i32, %struct.gfs2_holder*) #1

declare dso_local i32 @fs_err(%struct.gfs2_sbd*, i8*, i32) #1

declare dso_local i32 @gfs2_glock_get(%struct.gfs2_sbd*, i32, i32*, i32, i32*) #1

declare dso_local i32 @gfs2_glock_put(i32) #1

declare dso_local i32 @gfs2_glock_dq_uninit(%struct.gfs2_holder*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
