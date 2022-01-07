; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4proc.c_nfs_clear_open_stateid_locked.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4proc.c_nfs_clear_open_stateid_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs4_state = type { i32, i32, i32, i32 }

@NFS_O_RDWR_STATE = common dso_local global i32 0, align 4
@NFS_O_RDONLY_STATE = common dso_local global i32 0, align 4
@NFS_O_WRONLY_STATE = common dso_local global i32 0, align 4
@NFS_OPEN_STATE = common dso_local global i32 0, align 4
@NFS_DELEGATED_STATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nfs4_state*, i32*, i32)* @nfs_clear_open_stateid_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nfs_clear_open_stateid_locked(%struct.nfs4_state* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.nfs4_state*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store %struct.nfs4_state* %0, %struct.nfs4_state** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* @NFS_O_RDWR_STATE, align 4
  %8 = load %struct.nfs4_state*, %struct.nfs4_state** %4, align 8
  %9 = getelementptr inbounds %struct.nfs4_state, %struct.nfs4_state* %8, i32 0, i32 3
  %10 = call i32 @clear_bit(i32 %7, i32* %9)
  %11 = load i32, i32* %6, align 4
  %12 = and i32 %11, 129
  switch i32 %12, label %36 [
    i32 128, label %13
    i32 129, label %18
    i32 0, label %23
  ]

13:                                               ; preds = %3
  %14 = load i32, i32* @NFS_O_RDONLY_STATE, align 4
  %15 = load %struct.nfs4_state*, %struct.nfs4_state** %4, align 8
  %16 = getelementptr inbounds %struct.nfs4_state, %struct.nfs4_state* %15, i32 0, i32 3
  %17 = call i32 @clear_bit(i32 %14, i32* %16)
  br label %36

18:                                               ; preds = %3
  %19 = load i32, i32* @NFS_O_WRONLY_STATE, align 4
  %20 = load %struct.nfs4_state*, %struct.nfs4_state** %4, align 8
  %21 = getelementptr inbounds %struct.nfs4_state, %struct.nfs4_state* %20, i32 0, i32 3
  %22 = call i32 @clear_bit(i32 %19, i32* %21)
  br label %36

23:                                               ; preds = %3
  %24 = load i32, i32* @NFS_O_RDONLY_STATE, align 4
  %25 = load %struct.nfs4_state*, %struct.nfs4_state** %4, align 8
  %26 = getelementptr inbounds %struct.nfs4_state, %struct.nfs4_state* %25, i32 0, i32 3
  %27 = call i32 @clear_bit(i32 %24, i32* %26)
  %28 = load i32, i32* @NFS_O_WRONLY_STATE, align 4
  %29 = load %struct.nfs4_state*, %struct.nfs4_state** %4, align 8
  %30 = getelementptr inbounds %struct.nfs4_state, %struct.nfs4_state* %29, i32 0, i32 3
  %31 = call i32 @clear_bit(i32 %28, i32* %30)
  %32 = load i32, i32* @NFS_OPEN_STATE, align 4
  %33 = load %struct.nfs4_state*, %struct.nfs4_state** %4, align 8
  %34 = getelementptr inbounds %struct.nfs4_state, %struct.nfs4_state* %33, i32 0, i32 3
  %35 = call i32 @clear_bit(i32 %32, i32* %34)
  br label %36

36:                                               ; preds = %23, %3, %18, %13
  %37 = load i32*, i32** %5, align 8
  %38 = icmp eq i32* %37, null
  br i1 %38, label %39, label %40

39:                                               ; preds = %36
  br label %79

40:                                               ; preds = %36
  %41 = load i32*, i32** %5, align 8
  %42 = load %struct.nfs4_state*, %struct.nfs4_state** %4, align 8
  %43 = getelementptr inbounds %struct.nfs4_state, %struct.nfs4_state* %42, i32 0, i32 1
  %44 = call i64 @nfs4_stateid_match_other(i32* %41, i32* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %55

46:                                               ; preds = %40
  %47 = load i32*, i32** %5, align 8
  %48 = load %struct.nfs4_state*, %struct.nfs4_state** %4, align 8
  %49 = getelementptr inbounds %struct.nfs4_state, %struct.nfs4_state* %48, i32 0, i32 1
  %50 = call i32 @nfs4_stateid_is_newer(i32* %47, i32* %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %55, label %52

52:                                               ; preds = %46
  %53 = load %struct.nfs4_state*, %struct.nfs4_state** %4, align 8
  %54 = call i32 @nfs_resync_open_stateid_locked(%struct.nfs4_state* %53)
  br label %76

55:                                               ; preds = %46, %40
  %56 = load i32, i32* @NFS_DELEGATED_STATE, align 4
  %57 = load %struct.nfs4_state*, %struct.nfs4_state** %4, align 8
  %58 = getelementptr inbounds %struct.nfs4_state, %struct.nfs4_state* %57, i32 0, i32 3
  %59 = call i64 @test_bit(i32 %56, i32* %58)
  %60 = icmp eq i64 %59, 0
  br i1 %60, label %61, label %66

61:                                               ; preds = %55
  %62 = load %struct.nfs4_state*, %struct.nfs4_state** %4, align 8
  %63 = getelementptr inbounds %struct.nfs4_state, %struct.nfs4_state* %62, i32 0, i32 2
  %64 = load i32*, i32** %5, align 8
  %65 = call i32 @nfs4_stateid_copy(i32* %63, i32* %64)
  br label %66

66:                                               ; preds = %61, %55
  %67 = load %struct.nfs4_state*, %struct.nfs4_state** %4, align 8
  %68 = getelementptr inbounds %struct.nfs4_state, %struct.nfs4_state* %67, i32 0, i32 1
  %69 = load i32*, i32** %5, align 8
  %70 = call i32 @nfs4_stateid_copy(i32* %68, i32* %69)
  %71 = load %struct.nfs4_state*, %struct.nfs4_state** %4, align 8
  %72 = getelementptr inbounds %struct.nfs4_state, %struct.nfs4_state* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load i32*, i32** %5, align 8
  %75 = call i32 @trace_nfs4_open_stateid_update(i32 %73, i32* %74, i32 0)
  br label %76

76:                                               ; preds = %66, %52
  %77 = load %struct.nfs4_state*, %struct.nfs4_state** %4, align 8
  %78 = call i32 @nfs_state_log_update_open_stateid(%struct.nfs4_state* %77)
  br label %79

79:                                               ; preds = %76, %39
  ret void
}

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i64 @nfs4_stateid_match_other(i32*, i32*) #1

declare dso_local i32 @nfs4_stateid_is_newer(i32*, i32*) #1

declare dso_local i32 @nfs_resync_open_stateid_locked(%struct.nfs4_state*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @nfs4_stateid_copy(i32*, i32*) #1

declare dso_local i32 @trace_nfs4_open_stateid_update(i32, i32*, i32) #1

declare dso_local i32 @nfs_state_log_update_open_stateid(%struct.nfs4_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
