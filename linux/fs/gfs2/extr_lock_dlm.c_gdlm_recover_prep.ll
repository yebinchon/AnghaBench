; ModuleID = '/home/carl/AnghaBench/linux/fs/gfs2/extr_lock_dlm.c_gdlm_recover_prep.c'
source_filename = "/home/carl/AnghaBench/linux/fs/gfs2/extr_lock_dlm.c_gdlm_recover_prep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gfs2_sbd = type { %struct.lm_lockstruct }
%struct.lm_lockstruct = type { i32, i32, i32, i32 }

@DFL_DLM_RECOVERY = common dso_local global i32 0, align 4
@DFL_MOUNT_DONE = common dso_local global i32 0, align 4
@DFL_FIRST_MOUNT = common dso_local global i32 0, align 4
@DFL_BLOCK_LOCKS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @gdlm_recover_prep to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gdlm_recover_prep(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.gfs2_sbd*, align 8
  %4 = alloca %struct.lm_lockstruct*, align 8
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = bitcast i8* %5 to %struct.gfs2_sbd*
  store %struct.gfs2_sbd* %6, %struct.gfs2_sbd** %3, align 8
  %7 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %3, align 8
  %8 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %7, i32 0, i32 0
  store %struct.lm_lockstruct* %8, %struct.lm_lockstruct** %4, align 8
  %9 = load %struct.lm_lockstruct*, %struct.lm_lockstruct** %4, align 8
  %10 = getelementptr inbounds %struct.lm_lockstruct, %struct.lm_lockstruct* %9, i32 0, i32 0
  %11 = call i32 @spin_lock(i32* %10)
  %12 = load %struct.lm_lockstruct*, %struct.lm_lockstruct** %4, align 8
  %13 = getelementptr inbounds %struct.lm_lockstruct, %struct.lm_lockstruct* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.lm_lockstruct*, %struct.lm_lockstruct** %4, align 8
  %16 = getelementptr inbounds %struct.lm_lockstruct, %struct.lm_lockstruct* %15, i32 0, i32 3
  store i32 %14, i32* %16, align 4
  %17 = load i32, i32* @DFL_DLM_RECOVERY, align 4
  %18 = load %struct.lm_lockstruct*, %struct.lm_lockstruct** %4, align 8
  %19 = getelementptr inbounds %struct.lm_lockstruct, %struct.lm_lockstruct* %18, i32 0, i32 1
  %20 = call i32 @set_bit(i32 %17, i32* %19)
  %21 = load i32, i32* @DFL_MOUNT_DONE, align 4
  %22 = load %struct.lm_lockstruct*, %struct.lm_lockstruct** %4, align 8
  %23 = getelementptr inbounds %struct.lm_lockstruct, %struct.lm_lockstruct* %22, i32 0, i32 1
  %24 = call i64 @test_bit(i32 %21, i32* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %1
  %27 = load i32, i32* @DFL_FIRST_MOUNT, align 4
  %28 = load %struct.lm_lockstruct*, %struct.lm_lockstruct** %4, align 8
  %29 = getelementptr inbounds %struct.lm_lockstruct, %struct.lm_lockstruct* %28, i32 0, i32 1
  %30 = call i64 @test_bit(i32 %27, i32* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %26, %1
  %33 = load %struct.lm_lockstruct*, %struct.lm_lockstruct** %4, align 8
  %34 = getelementptr inbounds %struct.lm_lockstruct, %struct.lm_lockstruct* %33, i32 0, i32 0
  %35 = call i32 @spin_unlock(i32* %34)
  br label %44

36:                                               ; preds = %26
  %37 = load i32, i32* @DFL_BLOCK_LOCKS, align 4
  %38 = load %struct.lm_lockstruct*, %struct.lm_lockstruct** %4, align 8
  %39 = getelementptr inbounds %struct.lm_lockstruct, %struct.lm_lockstruct* %38, i32 0, i32 1
  %40 = call i32 @set_bit(i32 %37, i32* %39)
  %41 = load %struct.lm_lockstruct*, %struct.lm_lockstruct** %4, align 8
  %42 = getelementptr inbounds %struct.lm_lockstruct, %struct.lm_lockstruct* %41, i32 0, i32 0
  %43 = call i32 @spin_unlock(i32* %42)
  br label %44

44:                                               ; preds = %36, %32
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
