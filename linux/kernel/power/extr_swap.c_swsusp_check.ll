; ModuleID = '/home/carl/AnghaBench/linux/kernel/power/extr_swap.c_swsusp_check.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/power/extr_swap.c_swsusp_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }

@swsusp_resume_device = common dso_local global i32 0, align 4
@FMODE_READ = common dso_local global i32 0, align 4
@hib_resume_bdev = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@swsusp_header = common dso_local global %struct.TYPE_4__* null, align 8
@REQ_OP_READ = common dso_local global i32 0, align 4
@swsusp_resume_block = common dso_local global i32 0, align 4
@HIBERNATE_SIG = common dso_local global i32 0, align 4
@REQ_OP_WRITE = common dso_local global i32 0, align 4
@REQ_SYNC = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Image signature found, resuming\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"Image not found (code %d)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @swsusp_check() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @swsusp_resume_device, align 4
  %3 = load i32, i32* @FMODE_READ, align 4
  %4 = call i32 @blkdev_get_by_dev(i32 %2, i32 %3, i32* null)
  store i32 %4, i32* @hib_resume_bdev, align 4
  %5 = load i32, i32* @hib_resume_bdev, align 4
  %6 = call i32 @IS_ERR(i32 %5)
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %55, label %8

8:                                                ; preds = %0
  %9 = load i32, i32* @hib_resume_bdev, align 4
  %10 = load i32, i32* @PAGE_SIZE, align 4
  %11 = call i32 @set_blocksize(i32 %9, i32 %10)
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** @swsusp_header, align 8
  %13 = call i32 @clear_page(%struct.TYPE_4__* %12)
  %14 = load i32, i32* @REQ_OP_READ, align 4
  %15 = load i32, i32* @swsusp_resume_block, align 4
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** @swsusp_header, align 8
  %17 = call i32 @hib_submit_io(i32 %14, i32 0, i32 %15, %struct.TYPE_4__* %16, i32* null)
  store i32 %17, i32* %1, align 4
  %18 = load i32, i32* %1, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %8
  br label %45

21:                                               ; preds = %8
  %22 = load i32, i32* @HIBERNATE_SIG, align 4
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** @swsusp_header, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @memcmp(i32 %22, i32 %25, i32 10)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %41, label %28

28:                                               ; preds = %21
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** @swsusp_header, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** @swsusp_header, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @memcpy(i32 %31, i32 %34, i32 10)
  %36 = load i32, i32* @REQ_OP_WRITE, align 4
  %37 = load i32, i32* @REQ_SYNC, align 4
  %38 = load i32, i32* @swsusp_resume_block, align 4
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** @swsusp_header, align 8
  %40 = call i32 @hib_submit_io(i32 %36, i32 %37, i32 %38, %struct.TYPE_4__* %39, i32* null)
  store i32 %40, i32* %1, align 4
  br label %44

41:                                               ; preds = %21
  %42 = load i32, i32* @EINVAL, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %1, align 4
  br label %44

44:                                               ; preds = %41, %28
  br label %45

45:                                               ; preds = %44, %20
  %46 = load i32, i32* %1, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %45
  %49 = load i32, i32* @hib_resume_bdev, align 4
  %50 = load i32, i32* @FMODE_READ, align 4
  %51 = call i32 @blkdev_put(i32 %49, i32 %50)
  br label %54

52:                                               ; preds = %45
  %53 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  br label %54

54:                                               ; preds = %52, %48
  br label %58

55:                                               ; preds = %0
  %56 = load i32, i32* @hib_resume_bdev, align 4
  %57 = call i32 @PTR_ERR(i32 %56)
  store i32 %57, i32* %1, align 4
  br label %58

58:                                               ; preds = %55, %54
  %59 = load i32, i32* %1, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %58
  %62 = load i32, i32* %1, align 4
  %63 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %62)
  br label %64

64:                                               ; preds = %61, %58
  %65 = load i32, i32* %1, align 4
  ret i32 %65
}

declare dso_local i32 @blkdev_get_by_dev(i32, i32, i32*) #1

declare dso_local i32 @IS_ERR(i32) #1

declare dso_local i32 @set_blocksize(i32, i32) #1

declare dso_local i32 @clear_page(%struct.TYPE_4__*) #1

declare dso_local i32 @hib_submit_io(i32, i32, i32, %struct.TYPE_4__*, i32*) #1

declare dso_local i32 @memcmp(i32, i32, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @blkdev_put(i32, i32) #1

declare dso_local i32 @pr_debug(i8*, ...) #1

declare dso_local i32 @PTR_ERR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
