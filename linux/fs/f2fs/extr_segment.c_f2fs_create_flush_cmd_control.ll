; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_segment.c_f2fs_create_flush_cmd_control.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_segment.c_f2fs_create_flush_cmd_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.f2fs_sb_info = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.flush_cmd_control = type { i64, i32, i32, i32, i32 }
%struct.TYPE_6__ = type { %struct.flush_cmd_control* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@FLUSH_MERGE = common dso_local global i32 0, align 4
@issue_flush_thread = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"f2fs_flush-%u:%u\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @f2fs_create_flush_cmd_control(%struct.f2fs_sb_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.f2fs_sb_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.flush_cmd_control*, align 8
  %6 = alloca i32, align 4
  store %struct.f2fs_sb_info* %0, %struct.f2fs_sb_info** %3, align 8
  %7 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %8 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %7, i32 0, i32 0
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %4, align 4
  store i32 0, i32* %6, align 4
  %14 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %15 = call %struct.TYPE_6__* @SM_I(%struct.f2fs_sb_info* %14)
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = load %struct.flush_cmd_control*, %struct.flush_cmd_control** %16, align 8
  %18 = icmp ne %struct.flush_cmd_control* %17, null
  br i1 %18, label %19, label %31

19:                                               ; preds = %1
  %20 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %21 = call %struct.TYPE_6__* @SM_I(%struct.f2fs_sb_info* %20)
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = load %struct.flush_cmd_control*, %struct.flush_cmd_control** %22, align 8
  store %struct.flush_cmd_control* %23, %struct.flush_cmd_control** %5, align 8
  %24 = load %struct.flush_cmd_control*, %struct.flush_cmd_control** %5, align 8
  %25 = getelementptr inbounds %struct.flush_cmd_control, %struct.flush_cmd_control* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %19
  %29 = load i32, i32* %6, align 4
  store i32 %29, i32* %2, align 4
  br label %92

30:                                               ; preds = %19
  br label %64

31:                                               ; preds = %1
  %32 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %33 = load i32, i32* @GFP_KERNEL, align 4
  %34 = call %struct.flush_cmd_control* @f2fs_kzalloc(%struct.f2fs_sb_info* %32, i32 24, i32 %33)
  store %struct.flush_cmd_control* %34, %struct.flush_cmd_control** %5, align 8
  %35 = load %struct.flush_cmd_control*, %struct.flush_cmd_control** %5, align 8
  %36 = icmp ne %struct.flush_cmd_control* %35, null
  br i1 %36, label %40, label %37

37:                                               ; preds = %31
  %38 = load i32, i32* @ENOMEM, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %2, align 4
  br label %92

40:                                               ; preds = %31
  %41 = load %struct.flush_cmd_control*, %struct.flush_cmd_control** %5, align 8
  %42 = getelementptr inbounds %struct.flush_cmd_control, %struct.flush_cmd_control* %41, i32 0, i32 4
  %43 = call i32 @atomic_set(i32* %42, i32 0)
  %44 = load %struct.flush_cmd_control*, %struct.flush_cmd_control** %5, align 8
  %45 = getelementptr inbounds %struct.flush_cmd_control, %struct.flush_cmd_control* %44, i32 0, i32 3
  %46 = call i32 @atomic_set(i32* %45, i32 0)
  %47 = load %struct.flush_cmd_control*, %struct.flush_cmd_control** %5, align 8
  %48 = getelementptr inbounds %struct.flush_cmd_control, %struct.flush_cmd_control* %47, i32 0, i32 2
  %49 = call i32 @init_waitqueue_head(i32* %48)
  %50 = load %struct.flush_cmd_control*, %struct.flush_cmd_control** %5, align 8
  %51 = getelementptr inbounds %struct.flush_cmd_control, %struct.flush_cmd_control* %50, i32 0, i32 1
  %52 = call i32 @init_llist_head(i32* %51)
  %53 = load %struct.flush_cmd_control*, %struct.flush_cmd_control** %5, align 8
  %54 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %55 = call %struct.TYPE_6__* @SM_I(%struct.f2fs_sb_info* %54)
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  store %struct.flush_cmd_control* %53, %struct.flush_cmd_control** %56, align 8
  %57 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %58 = load i32, i32* @FLUSH_MERGE, align 4
  %59 = call i32 @test_opt(%struct.f2fs_sb_info* %57, i32 %58)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %63, label %61

61:                                               ; preds = %40
  %62 = load i32, i32* %6, align 4
  store i32 %62, i32* %2, align 4
  br label %92

63:                                               ; preds = %40
  br label %64

64:                                               ; preds = %63, %30
  %65 = load i32, i32* @issue_flush_thread, align 4
  %66 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %67 = load i32, i32* %4, align 4
  %68 = call i32 @MAJOR(i32 %67)
  %69 = load i32, i32* %4, align 4
  %70 = call i32 @MINOR(i32 %69)
  %71 = call i64 @kthread_run(i32 %65, %struct.f2fs_sb_info* %66, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %68, i32 %70)
  %72 = load %struct.flush_cmd_control*, %struct.flush_cmd_control** %5, align 8
  %73 = getelementptr inbounds %struct.flush_cmd_control, %struct.flush_cmd_control* %72, i32 0, i32 0
  store i64 %71, i64* %73, align 8
  %74 = load %struct.flush_cmd_control*, %struct.flush_cmd_control** %5, align 8
  %75 = getelementptr inbounds %struct.flush_cmd_control, %struct.flush_cmd_control* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = call i64 @IS_ERR(i64 %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %90

79:                                               ; preds = %64
  %80 = load %struct.flush_cmd_control*, %struct.flush_cmd_control** %5, align 8
  %81 = getelementptr inbounds %struct.flush_cmd_control, %struct.flush_cmd_control* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = call i32 @PTR_ERR(i64 %82)
  store i32 %83, i32* %6, align 4
  %84 = load %struct.flush_cmd_control*, %struct.flush_cmd_control** %5, align 8
  %85 = call i32 @kvfree(%struct.flush_cmd_control* %84)
  %86 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %87 = call %struct.TYPE_6__* @SM_I(%struct.f2fs_sb_info* %86)
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 0
  store %struct.flush_cmd_control* null, %struct.flush_cmd_control** %88, align 8
  %89 = load i32, i32* %6, align 4
  store i32 %89, i32* %2, align 4
  br label %92

90:                                               ; preds = %64
  %91 = load i32, i32* %6, align 4
  store i32 %91, i32* %2, align 4
  br label %92

92:                                               ; preds = %90, %79, %61, %37, %28
  %93 = load i32, i32* %2, align 4
  ret i32 %93
}

declare dso_local %struct.TYPE_6__* @SM_I(%struct.f2fs_sb_info*) #1

declare dso_local %struct.flush_cmd_control* @f2fs_kzalloc(%struct.f2fs_sb_info*, i32, i32) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @init_llist_head(i32*) #1

declare dso_local i32 @test_opt(%struct.f2fs_sb_info*, i32) #1

declare dso_local i64 @kthread_run(i32, %struct.f2fs_sb_info*, i8*, i32, i32) #1

declare dso_local i32 @MAJOR(i32) #1

declare dso_local i32 @MINOR(i32) #1

declare dso_local i64 @IS_ERR(i64) #1

declare dso_local i32 @PTR_ERR(i64) #1

declare dso_local i32 @kvfree(%struct.flush_cmd_control*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
