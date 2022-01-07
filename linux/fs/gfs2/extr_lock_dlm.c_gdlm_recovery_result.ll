; ModuleID = '/home/carl/AnghaBench/linux/fs/gfs2/extr_lock_dlm.c_gdlm_recovery_result.c'
source_filename = "/home/carl/AnghaBench/linux/fs/gfs2/extr_lock_dlm.c_gdlm_recovery_result.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gfs2_sbd = type { i32, %struct.lm_lockstruct }
%struct.lm_lockstruct = type { i32, i32, i32*, i32, i32 }

@DFL_NO_DLM_OPS = common dso_local global i32 0, align 4
@DFL_FIRST_MOUNT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"recovery_result jid %d short size %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"recover jid %d result %s\0A\00", align 1
@LM_RD_GAVEUP = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"busy\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"success\00", align 1
@DFL_UNMOUNT = common dso_local global i32 0, align 4
@gfs2_control_wq = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gfs2_sbd*, i32, i32)* @gdlm_recovery_result to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gdlm_recovery_result(%struct.gfs2_sbd* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.gfs2_sbd*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.lm_lockstruct*, align 8
  store %struct.gfs2_sbd* %0, %struct.gfs2_sbd** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %9 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %8, i32 0, i32 1
  store %struct.lm_lockstruct* %9, %struct.lm_lockstruct** %7, align 8
  %10 = load i32, i32* @DFL_NO_DLM_OPS, align 4
  %11 = load %struct.lm_lockstruct*, %struct.lm_lockstruct** %7, align 8
  %12 = getelementptr inbounds %struct.lm_lockstruct, %struct.lm_lockstruct* %11, i32 0, i32 4
  %13 = call i64 @test_bit(i32 %10, i32* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %3
  br label %91

16:                                               ; preds = %3
  %17 = load i32, i32* %5, align 4
  %18 = load %struct.lm_lockstruct*, %struct.lm_lockstruct** %7, align 8
  %19 = getelementptr inbounds %struct.lm_lockstruct, %struct.lm_lockstruct* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp eq i32 %17, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %16
  br label %91

23:                                               ; preds = %16
  %24 = load %struct.lm_lockstruct*, %struct.lm_lockstruct** %7, align 8
  %25 = getelementptr inbounds %struct.lm_lockstruct, %struct.lm_lockstruct* %24, i32 0, i32 3
  %26 = call i32 @spin_lock(i32* %25)
  %27 = load i32, i32* @DFL_FIRST_MOUNT, align 4
  %28 = load %struct.lm_lockstruct*, %struct.lm_lockstruct** %7, align 8
  %29 = getelementptr inbounds %struct.lm_lockstruct, %struct.lm_lockstruct* %28, i32 0, i32 4
  %30 = call i64 @test_bit(i32 %27, i32* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %23
  %33 = load %struct.lm_lockstruct*, %struct.lm_lockstruct** %7, align 8
  %34 = getelementptr inbounds %struct.lm_lockstruct, %struct.lm_lockstruct* %33, i32 0, i32 3
  %35 = call i32 @spin_unlock(i32* %34)
  br label %91

36:                                               ; preds = %23
  %37 = load %struct.lm_lockstruct*, %struct.lm_lockstruct** %7, align 8
  %38 = getelementptr inbounds %struct.lm_lockstruct, %struct.lm_lockstruct* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* %5, align 4
  %41 = add i32 %40, 1
  %42 = icmp ult i32 %39, %41
  br i1 %42, label %43, label %53

43:                                               ; preds = %36
  %44 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %45 = load i32, i32* %5, align 4
  %46 = load %struct.lm_lockstruct*, %struct.lm_lockstruct** %7, align 8
  %47 = getelementptr inbounds %struct.lm_lockstruct, %struct.lm_lockstruct* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @fs_err(%struct.gfs2_sbd* %44, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %45, i32 %48)
  %50 = load %struct.lm_lockstruct*, %struct.lm_lockstruct** %7, align 8
  %51 = getelementptr inbounds %struct.lm_lockstruct, %struct.lm_lockstruct* %50, i32 0, i32 3
  %52 = call i32 @spin_unlock(i32* %51)
  br label %91

53:                                               ; preds = %36
  %54 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %55 = load i32, i32* %5, align 4
  %56 = load i32, i32* %6, align 4
  %57 = load i32, i32* @LM_RD_GAVEUP, align 4
  %58 = icmp eq i32 %56, %57
  %59 = zext i1 %58 to i64
  %60 = select i1 %58, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0)
  %61 = call i32 @fs_info(%struct.gfs2_sbd* %54, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %55, i8* %60)
  %62 = load i32, i32* %6, align 4
  %63 = load %struct.lm_lockstruct*, %struct.lm_lockstruct** %7, align 8
  %64 = getelementptr inbounds %struct.lm_lockstruct, %struct.lm_lockstruct* %63, i32 0, i32 2
  %65 = load i32*, i32** %64, align 8
  %66 = load i32, i32* %5, align 4
  %67 = zext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %65, i64 %67
  store i32 %62, i32* %68, align 4
  %69 = load i32, i32* @DFL_UNMOUNT, align 4
  %70 = load %struct.lm_lockstruct*, %struct.lm_lockstruct** %7, align 8
  %71 = getelementptr inbounds %struct.lm_lockstruct, %struct.lm_lockstruct* %70, i32 0, i32 4
  %72 = call i64 @test_bit(i32 %69, i32* %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %87, label %74

74:                                               ; preds = %53
  %75 = load i32, i32* @gfs2_control_wq, align 4
  %76 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %77 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %76, i32 0, i32 0
  %78 = load i32, i32* %6, align 4
  %79 = load i32, i32* @LM_RD_GAVEUP, align 4
  %80 = icmp eq i32 %78, %79
  br i1 %80, label %81, label %83

81:                                               ; preds = %74
  %82 = load i32, i32* @HZ, align 4
  br label %84

83:                                               ; preds = %74
  br label %84

84:                                               ; preds = %83, %81
  %85 = phi i32 [ %82, %81 ], [ 0, %83 ]
  %86 = call i32 @queue_delayed_work(i32 %75, i32* %77, i32 %85)
  br label %87

87:                                               ; preds = %84, %53
  %88 = load %struct.lm_lockstruct*, %struct.lm_lockstruct** %7, align 8
  %89 = getelementptr inbounds %struct.lm_lockstruct, %struct.lm_lockstruct* %88, i32 0, i32 3
  %90 = call i32 @spin_unlock(i32* %89)
  br label %91

91:                                               ; preds = %87, %43, %32, %22, %15
  ret void
}

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @fs_err(%struct.gfs2_sbd*, i8*, i32, i32) #1

declare dso_local i32 @fs_info(%struct.gfs2_sbd*, i8*, i32, i8*) #1

declare dso_local i32 @queue_delayed_work(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
