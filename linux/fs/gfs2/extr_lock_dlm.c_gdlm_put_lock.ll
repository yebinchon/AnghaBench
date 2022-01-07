; ModuleID = '/home/carl/AnghaBench/linux/fs/gfs2/extr_lock_dlm.c_gdlm_put_lock.c'
source_filename = "/home/carl/AnghaBench/linux/fs/gfs2/extr_lock_dlm.c_gdlm_put_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gfs2_glock = type { i64, %struct.TYPE_4__, %struct.TYPE_3__, i32 }
%struct.TYPE_4__ = type { i64, i32, %struct.gfs2_sbd* }
%struct.gfs2_sbd = type { i32, %struct.lm_lockstruct }
%struct.lm_lockstruct = type { i32 }
%struct.TYPE_3__ = type { i64, i64 }

@GLF_BLOCKING = common dso_local global i32 0, align 4
@GFS2_LKS_DCOUNT = common dso_local global i32 0, align 4
@LM_ST_EXCLUSIVE = common dso_local global i64 0, align 8
@SDF_SKIP_DLM_UNLOCK = common dso_local global i32 0, align 4
@DLM_LKF_VALBLK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"gdlm_unlock %x,%llx err=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gfs2_glock*)* @gdlm_put_lock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gdlm_put_lock(%struct.gfs2_glock* %0) #0 {
  %2 = alloca %struct.gfs2_glock*, align 8
  %3 = alloca %struct.gfs2_sbd*, align 8
  %4 = alloca %struct.lm_lockstruct*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.gfs2_glock* %0, %struct.gfs2_glock** %2, align 8
  %7 = load %struct.gfs2_glock*, %struct.gfs2_glock** %2, align 8
  %8 = getelementptr inbounds %struct.gfs2_glock, %struct.gfs2_glock* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 2
  %10 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %9, align 8
  store %struct.gfs2_sbd* %10, %struct.gfs2_sbd** %3, align 8
  %11 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %3, align 8
  %12 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %11, i32 0, i32 1
  store %struct.lm_lockstruct* %12, %struct.lm_lockstruct** %4, align 8
  store i32 0, i32* %5, align 4
  %13 = load %struct.gfs2_glock*, %struct.gfs2_glock** %2, align 8
  %14 = getelementptr inbounds %struct.gfs2_glock, %struct.gfs2_glock* %13, i32 0, i32 2
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %1
  %19 = load %struct.gfs2_glock*, %struct.gfs2_glock** %2, align 8
  %20 = call i32 @gfs2_glock_free(%struct.gfs2_glock* %19)
  br label %83

21:                                               ; preds = %1
  %22 = load i32, i32* @GLF_BLOCKING, align 4
  %23 = load %struct.gfs2_glock*, %struct.gfs2_glock** %2, align 8
  %24 = getelementptr inbounds %struct.gfs2_glock, %struct.gfs2_glock* %23, i32 0, i32 3
  %25 = call i32 @clear_bit(i32 %22, i32* %24)
  %26 = load %struct.gfs2_glock*, %struct.gfs2_glock** %2, align 8
  %27 = load i32, i32* @GFS2_LKS_DCOUNT, align 4
  %28 = call i32 @gfs2_glstats_inc(%struct.gfs2_glock* %26, i32 %27)
  %29 = load %struct.gfs2_glock*, %struct.gfs2_glock** %2, align 8
  %30 = load i32, i32* @GFS2_LKS_DCOUNT, align 4
  %31 = call i32 @gfs2_sbstats_inc(%struct.gfs2_glock* %29, i32 %30)
  %32 = load %struct.gfs2_glock*, %struct.gfs2_glock** %2, align 8
  %33 = call i32 @gfs2_update_request_times(%struct.gfs2_glock* %32)
  %34 = load %struct.gfs2_glock*, %struct.gfs2_glock** %2, align 8
  %35 = getelementptr inbounds %struct.gfs2_glock, %struct.gfs2_glock* %34, i32 0, i32 2
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %46

39:                                               ; preds = %21
  %40 = load %struct.gfs2_glock*, %struct.gfs2_glock** %2, align 8
  %41 = getelementptr inbounds %struct.gfs2_glock, %struct.gfs2_glock* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @LM_ST_EXCLUSIVE, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %39
  store i32 1, i32* %5, align 4
  br label %46

46:                                               ; preds = %45, %39, %21
  %47 = load i32, i32* @SDF_SKIP_DLM_UNLOCK, align 4
  %48 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %3, align 8
  %49 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %48, i32 0, i32 0
  %50 = call i64 @test_bit(i32 %47, i32* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %58

52:                                               ; preds = %46
  %53 = load i32, i32* %5, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %58, label %55

55:                                               ; preds = %52
  %56 = load %struct.gfs2_glock*, %struct.gfs2_glock** %2, align 8
  %57 = call i32 @gfs2_glock_free(%struct.gfs2_glock* %56)
  br label %83

58:                                               ; preds = %52, %46
  %59 = load %struct.lm_lockstruct*, %struct.lm_lockstruct** %4, align 8
  %60 = getelementptr inbounds %struct.lm_lockstruct, %struct.lm_lockstruct* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.gfs2_glock*, %struct.gfs2_glock** %2, align 8
  %63 = getelementptr inbounds %struct.gfs2_glock, %struct.gfs2_glock* %62, i32 0, i32 2
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i32, i32* @DLM_LKF_VALBLK, align 4
  %67 = load %struct.gfs2_glock*, %struct.gfs2_glock** %2, align 8
  %68 = call i32 @dlm_unlock(i32 %61, i64 %65, i32 %66, i32* null, %struct.gfs2_glock* %67)
  store i32 %68, i32* %6, align 4
  %69 = load i32, i32* %6, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %83

71:                                               ; preds = %58
  %72 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %3, align 8
  %73 = load %struct.gfs2_glock*, %struct.gfs2_glock** %2, align 8
  %74 = getelementptr inbounds %struct.gfs2_glock, %struct.gfs2_glock* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = load %struct.gfs2_glock*, %struct.gfs2_glock** %2, align 8
  %78 = getelementptr inbounds %struct.gfs2_glock, %struct.gfs2_glock* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load i32, i32* %6, align 4
  %82 = call i32 @fs_err(%struct.gfs2_sbd* %72, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %76, i64 %80, i32 %81)
  br label %83

83:                                               ; preds = %18, %55, %71, %58
  ret void
}

declare dso_local i32 @gfs2_glock_free(%struct.gfs2_glock*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @gfs2_glstats_inc(%struct.gfs2_glock*, i32) #1

declare dso_local i32 @gfs2_sbstats_inc(%struct.gfs2_glock*, i32) #1

declare dso_local i32 @gfs2_update_request_times(%struct.gfs2_glock*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @dlm_unlock(i32, i64, i32, i32*, %struct.gfs2_glock*) #1

declare dso_local i32 @fs_err(%struct.gfs2_sbd*, i8*, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
