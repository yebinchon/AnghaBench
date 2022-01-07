; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_segment.c_create_discard_cmd_control.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_segment.c_create_discard_cmd_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.f2fs_sb_info = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.discard_cmd_control = type { i32, i32, i32, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32*, i32, i32 }
%struct.TYPE_6__ = type { %struct.discard_cmd_control* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@DEFAULT_DISCARD_GRANULARITY = common dso_local global i32 0, align 4
@MAX_PLIST_NUM = common dso_local global i32 0, align 4
@RB_ROOT_CACHED = common dso_local global i32 0, align 4
@issue_discard_thread = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"f2fs_discard-%u:%u\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.f2fs_sb_info*)* @create_discard_cmd_control to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @create_discard_cmd_control(%struct.f2fs_sb_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.f2fs_sb_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.discard_cmd_control*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.f2fs_sb_info* %0, %struct.f2fs_sb_info** %3, align 8
  %8 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %9 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %8, i32 0, i32 1
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %4, align 4
  store i32 0, i32* %6, align 4
  %15 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %16 = call %struct.TYPE_6__* @SM_I(%struct.f2fs_sb_info* %15)
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = load %struct.discard_cmd_control*, %struct.discard_cmd_control** %17, align 8
  %19 = icmp ne %struct.discard_cmd_control* %18, null
  br i1 %19, label %20, label %25

20:                                               ; preds = %1
  %21 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %22 = call %struct.TYPE_6__* @SM_I(%struct.f2fs_sb_info* %21)
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = load %struct.discard_cmd_control*, %struct.discard_cmd_control** %23, align 8
  store %struct.discard_cmd_control* %24, %struct.discard_cmd_control** %5, align 8
  br label %101

25:                                               ; preds = %1
  %26 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %27 = load i32, i32* @GFP_KERNEL, align 4
  %28 = call %struct.discard_cmd_control* @f2fs_kzalloc(%struct.f2fs_sb_info* %26, i32 88, i32 %27)
  store %struct.discard_cmd_control* %28, %struct.discard_cmd_control** %5, align 8
  %29 = load %struct.discard_cmd_control*, %struct.discard_cmd_control** %5, align 8
  %30 = icmp ne %struct.discard_cmd_control* %29, null
  br i1 %30, label %34, label %31

31:                                               ; preds = %25
  %32 = load i32, i32* @ENOMEM, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %2, align 4
  br label %129

34:                                               ; preds = %25
  %35 = load i32, i32* @DEFAULT_DISCARD_GRANULARITY, align 4
  %36 = load %struct.discard_cmd_control*, %struct.discard_cmd_control** %5, align 8
  %37 = getelementptr inbounds %struct.discard_cmd_control, %struct.discard_cmd_control* %36, i32 0, i32 16
  store i32 %35, i32* %37, align 4
  %38 = load %struct.discard_cmd_control*, %struct.discard_cmd_control** %5, align 8
  %39 = getelementptr inbounds %struct.discard_cmd_control, %struct.discard_cmd_control* %38, i32 0, i32 15
  %40 = call i32 @INIT_LIST_HEAD(i32* %39)
  store i32 0, i32* %7, align 4
  br label %41

41:                                               ; preds = %53, %34
  %42 = load i32, i32* %7, align 4
  %43 = load i32, i32* @MAX_PLIST_NUM, align 4
  %44 = icmp slt i32 %42, %43
  br i1 %44, label %45, label %56

45:                                               ; preds = %41
  %46 = load %struct.discard_cmd_control*, %struct.discard_cmd_control** %5, align 8
  %47 = getelementptr inbounds %struct.discard_cmd_control, %struct.discard_cmd_control* %46, i32 0, i32 14
  %48 = load i32*, i32** %47, align 8
  %49 = load i32, i32* %7, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  %52 = call i32 @INIT_LIST_HEAD(i32* %51)
  br label %53

53:                                               ; preds = %45
  %54 = load i32, i32* %7, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %7, align 4
  br label %41

56:                                               ; preds = %41
  %57 = load %struct.discard_cmd_control*, %struct.discard_cmd_control** %5, align 8
  %58 = getelementptr inbounds %struct.discard_cmd_control, %struct.discard_cmd_control* %57, i32 0, i32 13
  %59 = call i32 @INIT_LIST_HEAD(i32* %58)
  %60 = load %struct.discard_cmd_control*, %struct.discard_cmd_control** %5, align 8
  %61 = getelementptr inbounds %struct.discard_cmd_control, %struct.discard_cmd_control* %60, i32 0, i32 12
  %62 = call i32 @INIT_LIST_HEAD(i32* %61)
  %63 = load %struct.discard_cmd_control*, %struct.discard_cmd_control** %5, align 8
  %64 = getelementptr inbounds %struct.discard_cmd_control, %struct.discard_cmd_control* %63, i32 0, i32 11
  %65 = call i32 @mutex_init(i32* %64)
  %66 = load %struct.discard_cmd_control*, %struct.discard_cmd_control** %5, align 8
  %67 = getelementptr inbounds %struct.discard_cmd_control, %struct.discard_cmd_control* %66, i32 0, i32 10
  %68 = call i32 @atomic_set(i32* %67, i32 0)
  %69 = load %struct.discard_cmd_control*, %struct.discard_cmd_control** %5, align 8
  %70 = getelementptr inbounds %struct.discard_cmd_control, %struct.discard_cmd_control* %69, i32 0, i32 9
  %71 = call i32 @atomic_set(i32* %70, i32 0)
  %72 = load %struct.discard_cmd_control*, %struct.discard_cmd_control** %5, align 8
  %73 = getelementptr inbounds %struct.discard_cmd_control, %struct.discard_cmd_control* %72, i32 0, i32 8
  %74 = call i32 @atomic_set(i32* %73, i32 0)
  %75 = load %struct.discard_cmd_control*, %struct.discard_cmd_control** %5, align 8
  %76 = getelementptr inbounds %struct.discard_cmd_control, %struct.discard_cmd_control* %75, i32 0, i32 7
  store i64 0, i64* %76, align 8
  %77 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %78 = call i32 @MAIN_SEGS(%struct.f2fs_sb_info* %77)
  %79 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %80 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = shl i32 %78, %81
  %83 = load %struct.discard_cmd_control*, %struct.discard_cmd_control** %5, align 8
  %84 = getelementptr inbounds %struct.discard_cmd_control, %struct.discard_cmd_control* %83, i32 0, i32 0
  store i32 %82, i32* %84, align 8
  %85 = load %struct.discard_cmd_control*, %struct.discard_cmd_control** %5, align 8
  %86 = getelementptr inbounds %struct.discard_cmd_control, %struct.discard_cmd_control* %85, i32 0, i32 6
  store i64 0, i64* %86, align 8
  %87 = load %struct.discard_cmd_control*, %struct.discard_cmd_control** %5, align 8
  %88 = getelementptr inbounds %struct.discard_cmd_control, %struct.discard_cmd_control* %87, i32 0, i32 5
  store i64 0, i64* %88, align 8
  %89 = load i32, i32* @RB_ROOT_CACHED, align 4
  %90 = load %struct.discard_cmd_control*, %struct.discard_cmd_control** %5, align 8
  %91 = getelementptr inbounds %struct.discard_cmd_control, %struct.discard_cmd_control* %90, i32 0, i32 4
  store i32 %89, i32* %91, align 8
  %92 = load %struct.discard_cmd_control*, %struct.discard_cmd_control** %5, align 8
  %93 = getelementptr inbounds %struct.discard_cmd_control, %struct.discard_cmd_control* %92, i32 0, i32 1
  store i32 0, i32* %93, align 4
  %94 = load %struct.discard_cmd_control*, %struct.discard_cmd_control** %5, align 8
  %95 = getelementptr inbounds %struct.discard_cmd_control, %struct.discard_cmd_control* %94, i32 0, i32 3
  %96 = call i32 @init_waitqueue_head(i32* %95)
  %97 = load %struct.discard_cmd_control*, %struct.discard_cmd_control** %5, align 8
  %98 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %99 = call %struct.TYPE_6__* @SM_I(%struct.f2fs_sb_info* %98)
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i32 0, i32 0
  store %struct.discard_cmd_control* %97, %struct.discard_cmd_control** %100, align 8
  br label %101

101:                                              ; preds = %56, %20
  %102 = load i32, i32* @issue_discard_thread, align 4
  %103 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %104 = load i32, i32* %4, align 4
  %105 = call i32 @MAJOR(i32 %104)
  %106 = load i32, i32* %4, align 4
  %107 = call i32 @MINOR(i32 %106)
  %108 = call i32 @kthread_run(i32 %102, %struct.f2fs_sb_info* %103, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %105, i32 %107)
  %109 = load %struct.discard_cmd_control*, %struct.discard_cmd_control** %5, align 8
  %110 = getelementptr inbounds %struct.discard_cmd_control, %struct.discard_cmd_control* %109, i32 0, i32 2
  store i32 %108, i32* %110, align 8
  %111 = load %struct.discard_cmd_control*, %struct.discard_cmd_control** %5, align 8
  %112 = getelementptr inbounds %struct.discard_cmd_control, %struct.discard_cmd_control* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 8
  %114 = call i64 @IS_ERR(i32 %113)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %127

116:                                              ; preds = %101
  %117 = load %struct.discard_cmd_control*, %struct.discard_cmd_control** %5, align 8
  %118 = getelementptr inbounds %struct.discard_cmd_control, %struct.discard_cmd_control* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 8
  %120 = call i32 @PTR_ERR(i32 %119)
  store i32 %120, i32* %6, align 4
  %121 = load %struct.discard_cmd_control*, %struct.discard_cmd_control** %5, align 8
  %122 = call i32 @kvfree(%struct.discard_cmd_control* %121)
  %123 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %124 = call %struct.TYPE_6__* @SM_I(%struct.f2fs_sb_info* %123)
  %125 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %124, i32 0, i32 0
  store %struct.discard_cmd_control* null, %struct.discard_cmd_control** %125, align 8
  %126 = load i32, i32* %6, align 4
  store i32 %126, i32* %2, align 4
  br label %129

127:                                              ; preds = %101
  %128 = load i32, i32* %6, align 4
  store i32 %128, i32* %2, align 4
  br label %129

129:                                              ; preds = %127, %116, %31
  %130 = load i32, i32* %2, align 4
  ret i32 %130
}

declare dso_local %struct.TYPE_6__* @SM_I(%struct.f2fs_sb_info*) #1

declare dso_local %struct.discard_cmd_control* @f2fs_kzalloc(%struct.f2fs_sb_info*, i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @MAIN_SEGS(%struct.f2fs_sb_info*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @kthread_run(i32, %struct.f2fs_sb_info*, i8*, i32, i32) #1

declare dso_local i32 @MAJOR(i32) #1

declare dso_local i32 @MINOR(i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @kvfree(%struct.discard_cmd_control*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
