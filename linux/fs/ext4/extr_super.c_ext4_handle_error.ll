; ModuleID = '/home/carl/AnghaBench/linux/fs/ext4/extr_super.c_ext4_handle_error.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext4/extr_super.c_ext4_handle_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__*, i32 }

@WARN_ON_ERROR = common dso_local global i32 0, align 4
@ERRORS_CONT = common dso_local global i32 0, align 4
@EXT4_MF_FS_ABORTED = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@ERRORS_RO = common dso_local global i32 0, align 4
@KERN_CRIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Remounting filesystem read-only\00", align 1
@SB_RDONLY = common dso_local global i32 0, align 4
@ERRORS_PANIC = common dso_local global i32 0, align 4
@JBD2_REC_ERR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [47 x i8] c"EXT4-fs (device %s): panic forced after error\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.super_block*)* @ext4_handle_error to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ext4_handle_error(%struct.super_block* %0) #0 {
  %2 = alloca %struct.super_block*, align 8
  %3 = alloca %struct.TYPE_4__*, align 8
  store %struct.super_block* %0, %struct.super_block** %2, align 8
  %4 = load %struct.super_block*, %struct.super_block** %2, align 8
  %5 = load i32, i32* @WARN_ON_ERROR, align 4
  %6 = call i64 @test_opt(%struct.super_block* %4, i32 %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %1
  %9 = call i32 @WARN_ON_ONCE(i32 1)
  br label %10

10:                                               ; preds = %8, %1
  %11 = load %struct.super_block*, %struct.super_block** %2, align 8
  %12 = call i64 @sb_rdonly(%struct.super_block* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %10
  br label %85

15:                                               ; preds = %10
  %16 = load %struct.super_block*, %struct.super_block** %2, align 8
  %17 = load i32, i32* @ERRORS_CONT, align 4
  %18 = call i64 @test_opt(%struct.super_block* %16, i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %39, label %20

20:                                               ; preds = %15
  %21 = load %struct.super_block*, %struct.super_block** %2, align 8
  %22 = call %struct.TYPE_5__* @EXT4_SB(%struct.super_block* %21)
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  store %struct.TYPE_4__* %24, %struct.TYPE_4__** %3, align 8
  %25 = load i32, i32* @EXT4_MF_FS_ABORTED, align 4
  %26 = load %struct.super_block*, %struct.super_block** %2, align 8
  %27 = call %struct.TYPE_5__* @EXT4_SB(%struct.super_block* %26)
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = or i32 %29, %25
  store i32 %30, i32* %28, align 8
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %32 = icmp ne %struct.TYPE_4__* %31, null
  br i1 %32, label %33, label %38

33:                                               ; preds = %20
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %35 = load i32, i32* @EIO, align 4
  %36 = sub nsw i32 0, %35
  %37 = call i32 @jbd2_journal_abort(%struct.TYPE_4__* %34, i32 %36)
  br label %38

38:                                               ; preds = %33, %20
  br label %39

39:                                               ; preds = %38, %15
  %40 = load %struct.super_block*, %struct.super_block** %2, align 8
  %41 = load i32, i32* @ERRORS_RO, align 4
  %42 = call i64 @test_opt(%struct.super_block* %40, i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %47, label %44

44:                                               ; preds = %39
  %45 = call i64 (...) @system_going_down()
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %57

47:                                               ; preds = %44, %39
  %48 = load %struct.super_block*, %struct.super_block** %2, align 8
  %49 = load i32, i32* @KERN_CRIT, align 4
  %50 = call i32 @ext4_msg(%struct.super_block* %48, i32 %49, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %51 = call i32 (...) @smp_wmb()
  %52 = load i32, i32* @SB_RDONLY, align 4
  %53 = load %struct.super_block*, %struct.super_block** %2, align 8
  %54 = getelementptr inbounds %struct.super_block, %struct.super_block* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = or i32 %55, %52
  store i32 %56, i32* %54, align 4
  br label %85

57:                                               ; preds = %44
  %58 = load %struct.super_block*, %struct.super_block** %2, align 8
  %59 = load i32, i32* @ERRORS_PANIC, align 4
  %60 = call i64 @test_opt(%struct.super_block* %58, i32 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %84

62:                                               ; preds = %57
  %63 = load %struct.super_block*, %struct.super_block** %2, align 8
  %64 = call %struct.TYPE_5__* @EXT4_SB(%struct.super_block* %63)
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 0
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %65, align 8
  %67 = icmp ne %struct.TYPE_4__* %66, null
  br i1 %67, label %68, label %79

68:                                               ; preds = %62
  %69 = load %struct.super_block*, %struct.super_block** %2, align 8
  %70 = call %struct.TYPE_5__* @EXT4_SB(%struct.super_block* %69)
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 0
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* @JBD2_REC_ERR, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %79, label %78

78:                                               ; preds = %68
  br label %85

79:                                               ; preds = %68, %62
  %80 = load %struct.super_block*, %struct.super_block** %2, align 8
  %81 = getelementptr inbounds %struct.super_block, %struct.super_block* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @panic(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i32 %82)
  br label %84

84:                                               ; preds = %79, %57
  br label %85

85:                                               ; preds = %14, %78, %84, %47
  ret void
}

declare dso_local i64 @test_opt(%struct.super_block*, i32) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i64 @sb_rdonly(%struct.super_block*) #1

declare dso_local %struct.TYPE_5__* @EXT4_SB(%struct.super_block*) #1

declare dso_local i32 @jbd2_journal_abort(%struct.TYPE_4__*, i32) #1

declare dso_local i64 @system_going_down(...) #1

declare dso_local i32 @ext4_msg(%struct.super_block*, i32, i8*) #1

declare dso_local i32 @smp_wmb(...) #1

declare dso_local i32 @panic(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
