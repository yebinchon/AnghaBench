; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4proc.c_nfs4_proc_lock.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4proc.c_nfs4_proc_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.file_lock = type { i32, i32 }
%struct.nfs_open_context = type { %struct.nfs4_state* }
%struct.nfs4_state = type { i32 }

@F_GETLK = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@F_UNLCK = common dso_local global i32 0, align 4
@ENOLCK = common dso_local global i32 0, align 4
@FL_POSIX = common dso_local global i32 0, align 4
@NFS_STATE_POSIX_LOCKS = common dso_local global i32 0, align 4
@FMODE_READ = common dso_local global i32 0, align 4
@EBADF = common dso_local global i32 0, align 4
@FMODE_WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i32, %struct.file_lock*)* @nfs4_proc_lock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfs4_proc_lock(%struct.file* %0, i32 %1, %struct.file_lock* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.file_lock*, align 8
  %8 = alloca %struct.nfs_open_context*, align 8
  %9 = alloca %struct.nfs4_state*, align 8
  %10 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.file_lock* %2, %struct.file_lock** %7, align 8
  %11 = load %struct.file*, %struct.file** %5, align 8
  %12 = call %struct.nfs_open_context* @nfs_file_open_context(%struct.file* %11)
  store %struct.nfs_open_context* %12, %struct.nfs_open_context** %8, align 8
  %13 = load %struct.nfs_open_context*, %struct.nfs_open_context** %8, align 8
  %14 = getelementptr inbounds %struct.nfs_open_context, %struct.nfs_open_context* %13, i32 0, i32 0
  %15 = load %struct.nfs4_state*, %struct.nfs4_state** %14, align 8
  store %struct.nfs4_state* %15, %struct.nfs4_state** %9, align 8
  %16 = load i32, i32* %6, align 4
  %17 = call i64 @IS_GETLK(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %28

19:                                               ; preds = %3
  %20 = load %struct.nfs4_state*, %struct.nfs4_state** %9, align 8
  %21 = icmp ne %struct.nfs4_state* %20, null
  br i1 %21, label %22, label %27

22:                                               ; preds = %19
  %23 = load %struct.nfs4_state*, %struct.nfs4_state** %9, align 8
  %24 = load i32, i32* @F_GETLK, align 4
  %25 = load %struct.file_lock*, %struct.file_lock** %7, align 8
  %26 = call i32 @nfs4_proc_getlk(%struct.nfs4_state* %23, i32 %24, %struct.file_lock* %25)
  store i32 %26, i32* %4, align 4
  br label %115

27:                                               ; preds = %19
  store i32 0, i32* %4, align 4
  br label %115

28:                                               ; preds = %3
  %29 = load i32, i32* %6, align 4
  %30 = call i64 @IS_SETLK(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %39, label %32

32:                                               ; preds = %28
  %33 = load i32, i32* %6, align 4
  %34 = call i64 @IS_SETLKW(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %39, label %36

36:                                               ; preds = %32
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %4, align 4
  br label %115

39:                                               ; preds = %32, %28
  %40 = load %struct.file_lock*, %struct.file_lock** %7, align 8
  %41 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @F_UNLCK, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %45, label %54

45:                                               ; preds = %39
  %46 = load %struct.nfs4_state*, %struct.nfs4_state** %9, align 8
  %47 = icmp ne %struct.nfs4_state* %46, null
  br i1 %47, label %48, label %53

48:                                               ; preds = %45
  %49 = load %struct.nfs4_state*, %struct.nfs4_state** %9, align 8
  %50 = load i32, i32* %6, align 4
  %51 = load %struct.file_lock*, %struct.file_lock** %7, align 8
  %52 = call i32 @nfs4_proc_unlck(%struct.nfs4_state* %49, i32 %50, %struct.file_lock* %51)
  store i32 %52, i32* %4, align 4
  br label %115

53:                                               ; preds = %45
  store i32 0, i32* %4, align 4
  br label %115

54:                                               ; preds = %39
  %55 = load %struct.nfs4_state*, %struct.nfs4_state** %9, align 8
  %56 = icmp eq %struct.nfs4_state* %55, null
  br i1 %56, label %57, label %60

57:                                               ; preds = %54
  %58 = load i32, i32* @ENOLCK, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %4, align 4
  br label %115

60:                                               ; preds = %54
  %61 = load %struct.file_lock*, %struct.file_lock** %7, align 8
  %62 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @FL_POSIX, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %76

67:                                               ; preds = %60
  %68 = load i32, i32* @NFS_STATE_POSIX_LOCKS, align 4
  %69 = load %struct.nfs4_state*, %struct.nfs4_state** %9, align 8
  %70 = getelementptr inbounds %struct.nfs4_state, %struct.nfs4_state* %69, i32 0, i32 0
  %71 = call i32 @test_bit(i32 %68, i32* %70)
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %76, label %73

73:                                               ; preds = %67
  %74 = load i32, i32* @ENOLCK, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %4, align 4
  br label %115

76:                                               ; preds = %67, %60
  %77 = load %struct.file_lock*, %struct.file_lock** %7, align 8
  %78 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  switch i32 %79, label %102 [
    i32 129, label %80
    i32 128, label %91
  ]

80:                                               ; preds = %76
  %81 = load %struct.file*, %struct.file** %5, align 8
  %82 = getelementptr inbounds %struct.file, %struct.file* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* @FMODE_READ, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %90, label %87

87:                                               ; preds = %80
  %88 = load i32, i32* @EBADF, align 4
  %89 = sub nsw i32 0, %88
  store i32 %89, i32* %4, align 4
  br label %115

90:                                               ; preds = %80
  br label %102

91:                                               ; preds = %76
  %92 = load %struct.file*, %struct.file** %5, align 8
  %93 = getelementptr inbounds %struct.file, %struct.file* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* @FMODE_WRITE, align 4
  %96 = and i32 %94, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %101, label %98

98:                                               ; preds = %91
  %99 = load i32, i32* @EBADF, align 4
  %100 = sub nsw i32 0, %99
  store i32 %100, i32* %4, align 4
  br label %115

101:                                              ; preds = %91
  br label %102

102:                                              ; preds = %101, %76, %90
  %103 = load %struct.nfs4_state*, %struct.nfs4_state** %9, align 8
  %104 = load %struct.file_lock*, %struct.file_lock** %7, align 8
  %105 = call i32 @nfs4_set_lock_state(%struct.nfs4_state* %103, %struct.file_lock* %104)
  store i32 %105, i32* %10, align 4
  %106 = load i32, i32* %10, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %110

108:                                              ; preds = %102
  %109 = load i32, i32* %10, align 4
  store i32 %109, i32* %4, align 4
  br label %115

110:                                              ; preds = %102
  %111 = load %struct.nfs4_state*, %struct.nfs4_state** %9, align 8
  %112 = load i32, i32* %6, align 4
  %113 = load %struct.file_lock*, %struct.file_lock** %7, align 8
  %114 = call i32 @nfs4_retry_setlk(%struct.nfs4_state* %111, i32 %112, %struct.file_lock* %113)
  store i32 %114, i32* %4, align 4
  br label %115

115:                                              ; preds = %110, %108, %98, %87, %73, %57, %53, %48, %36, %27, %22
  %116 = load i32, i32* %4, align 4
  ret i32 %116
}

declare dso_local %struct.nfs_open_context* @nfs_file_open_context(%struct.file*) #1

declare dso_local i64 @IS_GETLK(i32) #1

declare dso_local i32 @nfs4_proc_getlk(%struct.nfs4_state*, i32, %struct.file_lock*) #1

declare dso_local i64 @IS_SETLK(i32) #1

declare dso_local i64 @IS_SETLKW(i32) #1

declare dso_local i32 @nfs4_proc_unlck(%struct.nfs4_state*, i32, %struct.file_lock*) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @nfs4_set_lock_state(%struct.nfs4_state*, %struct.file_lock*) #1

declare dso_local i32 @nfs4_retry_setlk(%struct.nfs4_state*, i32, %struct.file_lock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
