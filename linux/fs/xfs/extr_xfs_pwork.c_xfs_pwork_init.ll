; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_pwork.c_xfs_pwork_init.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_pwork.c_xfs_pwork_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.xfs_mount = type { i32 }
%struct.xfs_pwork_ctl = type { i32, i32, %struct.xfs_mount*, i64, i32, i32 }

@current = common dso_local global %struct.TYPE_4__* null, align 8
@.str = private unnamed_addr constant [6 x i8] c"%s-%d\00", align 1
@WQ_FREEZABLE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@xfs_globals = common dso_local global %struct.TYPE_3__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xfs_pwork_init(%struct.xfs_mount* %0, %struct.xfs_pwork_ctl* %1, i32 %2, i8* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.xfs_mount*, align 8
  %8 = alloca %struct.xfs_pwork_ctl*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store %struct.xfs_mount* %0, %struct.xfs_mount** %7, align 8
  store %struct.xfs_pwork_ctl* %1, %struct.xfs_pwork_ctl** %8, align 8
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  %12 = load %struct.xfs_mount*, %struct.xfs_mount** %7, align 8
  %13 = load i32, i32* %11, align 4
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @trace_xfs_pwork_init(%struct.xfs_mount* %12, i32 %13, i32 %16)
  %18 = load i32, i32* @WQ_FREEZABLE, align 4
  %19 = load i32, i32* %11, align 4
  %20 = load i8*, i8** %10, align 8
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @alloc_workqueue(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %18, i32 %19, i8* %20, i32 %23)
  %25 = load %struct.xfs_pwork_ctl*, %struct.xfs_pwork_ctl** %8, align 8
  %26 = getelementptr inbounds %struct.xfs_pwork_ctl, %struct.xfs_pwork_ctl* %25, i32 0, i32 5
  store i32 %24, i32* %26, align 4
  %27 = load %struct.xfs_pwork_ctl*, %struct.xfs_pwork_ctl** %8, align 8
  %28 = getelementptr inbounds %struct.xfs_pwork_ctl, %struct.xfs_pwork_ctl* %27, i32 0, i32 5
  %29 = load i32, i32* %28, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %5
  %32 = load i32, i32* @ENOMEM, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %6, align 4
  br label %49

34:                                               ; preds = %5
  %35 = load i32, i32* %9, align 4
  %36 = load %struct.xfs_pwork_ctl*, %struct.xfs_pwork_ctl** %8, align 8
  %37 = getelementptr inbounds %struct.xfs_pwork_ctl, %struct.xfs_pwork_ctl* %36, i32 0, i32 4
  store i32 %35, i32* %37, align 8
  %38 = load %struct.xfs_pwork_ctl*, %struct.xfs_pwork_ctl** %8, align 8
  %39 = getelementptr inbounds %struct.xfs_pwork_ctl, %struct.xfs_pwork_ctl* %38, i32 0, i32 3
  store i64 0, i64* %39, align 8
  %40 = load %struct.xfs_mount*, %struct.xfs_mount** %7, align 8
  %41 = load %struct.xfs_pwork_ctl*, %struct.xfs_pwork_ctl** %8, align 8
  %42 = getelementptr inbounds %struct.xfs_pwork_ctl, %struct.xfs_pwork_ctl* %41, i32 0, i32 2
  store %struct.xfs_mount* %40, %struct.xfs_mount** %42, align 8
  %43 = load %struct.xfs_pwork_ctl*, %struct.xfs_pwork_ctl** %8, align 8
  %44 = getelementptr inbounds %struct.xfs_pwork_ctl, %struct.xfs_pwork_ctl* %43, i32 0, i32 1
  %45 = call i32 @atomic_set(i32* %44, i32 0)
  %46 = load %struct.xfs_pwork_ctl*, %struct.xfs_pwork_ctl** %8, align 8
  %47 = getelementptr inbounds %struct.xfs_pwork_ctl, %struct.xfs_pwork_ctl* %46, i32 0, i32 0
  %48 = call i32 @init_waitqueue_head(i32* %47)
  store i32 0, i32* %6, align 4
  br label %49

49:                                               ; preds = %34, %31
  %50 = load i32, i32* %6, align 4
  ret i32 %50
}

declare dso_local i32 @trace_xfs_pwork_init(%struct.xfs_mount*, i32, i32) #1

declare dso_local i32 @alloc_workqueue(i8*, i32, i32, i8*, i32) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
