; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_block_dev.c_blkdev_get.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_block_dev.c_blkdev_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.block_device = type { i32, i32, %struct.gendisk* }
%struct.gendisk = type { i32 }

@FMODE_EXCL = common dso_local global i32 0, align 4
@FMODE_WRITE = common dso_local global i32 0, align 4
@GENHD_FL_BLOCK_EVENTS_ON_EXCL_WRITE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @blkdev_get(%struct.block_device* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.block_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.block_device*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.gendisk*, align 8
  store %struct.block_device* %0, %struct.block_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store %struct.block_device* null, %struct.block_device** %8, align 8
  %11 = load i32, i32* %6, align 4
  %12 = load i32, i32* @FMODE_EXCL, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %3
  %16 = load i8*, i8** %7, align 8
  %17 = icmp ne i8* %16, null
  %18 = xor i1 %17, true
  br label %19

19:                                               ; preds = %15, %3
  %20 = phi i1 [ false, %3 ], [ %18, %15 ]
  %21 = zext i1 %20 to i32
  %22 = call i32 @WARN_ON_ONCE(i32 %21)
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* @FMODE_EXCL, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %43

27:                                               ; preds = %19
  %28 = load i8*, i8** %7, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %30, label %43

30:                                               ; preds = %27
  %31 = load %struct.block_device*, %struct.block_device** %5, align 8
  %32 = load i8*, i8** %7, align 8
  %33 = call %struct.block_device* @bd_start_claiming(%struct.block_device* %31, i8* %32)
  store %struct.block_device* %33, %struct.block_device** %8, align 8
  %34 = load %struct.block_device*, %struct.block_device** %8, align 8
  %35 = call i64 @IS_ERR(%struct.block_device* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %30
  %38 = load %struct.block_device*, %struct.block_device** %5, align 8
  %39 = call i32 @bdput(%struct.block_device* %38)
  %40 = load %struct.block_device*, %struct.block_device** %8, align 8
  %41 = call i32 @PTR_ERR(%struct.block_device* %40)
  store i32 %41, i32* %4, align 4
  br label %101

42:                                               ; preds = %30
  br label %43

43:                                               ; preds = %42, %27, %19
  %44 = load %struct.block_device*, %struct.block_device** %5, align 8
  %45 = load i32, i32* %6, align 4
  %46 = call i32 @__blkdev_get(%struct.block_device* %44, i32 %45, i32 0)
  store i32 %46, i32* %9, align 4
  %47 = load %struct.block_device*, %struct.block_device** %8, align 8
  %48 = icmp ne %struct.block_device* %47, null
  br i1 %48, label %49, label %99

49:                                               ; preds = %43
  %50 = load %struct.block_device*, %struct.block_device** %8, align 8
  %51 = getelementptr inbounds %struct.block_device, %struct.block_device* %50, i32 0, i32 2
  %52 = load %struct.gendisk*, %struct.gendisk** %51, align 8
  store %struct.gendisk* %52, %struct.gendisk** %10, align 8
  %53 = load %struct.block_device*, %struct.block_device** %5, align 8
  %54 = getelementptr inbounds %struct.block_device, %struct.block_device* %53, i32 0, i32 1
  %55 = call i32 @mutex_lock(i32* %54)
  %56 = load i32, i32* %9, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %63, label %58

58:                                               ; preds = %49
  %59 = load %struct.block_device*, %struct.block_device** %5, align 8
  %60 = load %struct.block_device*, %struct.block_device** %8, align 8
  %61 = load i8*, i8** %7, align 8
  %62 = call i32 @bd_finish_claiming(%struct.block_device* %59, %struct.block_device* %60, i8* %61)
  br label %68

63:                                               ; preds = %49
  %64 = load %struct.block_device*, %struct.block_device** %5, align 8
  %65 = load %struct.block_device*, %struct.block_device** %8, align 8
  %66 = load i8*, i8** %7, align 8
  %67 = call i32 @bd_abort_claiming(%struct.block_device* %64, %struct.block_device* %65, i8* %66)
  br label %68

68:                                               ; preds = %63, %58
  %69 = load i32, i32* %9, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %93, label %71

71:                                               ; preds = %68
  %72 = load i32, i32* %6, align 4
  %73 = load i32, i32* @FMODE_WRITE, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %93

76:                                               ; preds = %71
  %77 = load %struct.block_device*, %struct.block_device** %5, align 8
  %78 = getelementptr inbounds %struct.block_device, %struct.block_device* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %93, label %81

81:                                               ; preds = %76
  %82 = load %struct.gendisk*, %struct.gendisk** %10, align 8
  %83 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* @GENHD_FL_BLOCK_EVENTS_ON_EXCL_WRITE, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %93

88:                                               ; preds = %81
  %89 = load %struct.block_device*, %struct.block_device** %5, align 8
  %90 = getelementptr inbounds %struct.block_device, %struct.block_device* %89, i32 0, i32 0
  store i32 1, i32* %90, align 8
  %91 = load %struct.gendisk*, %struct.gendisk** %10, align 8
  %92 = call i32 @disk_block_events(%struct.gendisk* %91)
  br label %93

93:                                               ; preds = %88, %81, %76, %71, %68
  %94 = load %struct.block_device*, %struct.block_device** %5, align 8
  %95 = getelementptr inbounds %struct.block_device, %struct.block_device* %94, i32 0, i32 1
  %96 = call i32 @mutex_unlock(i32* %95)
  %97 = load %struct.block_device*, %struct.block_device** %8, align 8
  %98 = call i32 @bdput(%struct.block_device* %97)
  br label %99

99:                                               ; preds = %93, %43
  %100 = load i32, i32* %9, align 4
  store i32 %100, i32* %4, align 4
  br label %101

101:                                              ; preds = %99, %37
  %102 = load i32, i32* %4, align 4
  ret i32 %102
}

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local %struct.block_device* @bd_start_claiming(%struct.block_device*, i8*) #1

declare dso_local i64 @IS_ERR(%struct.block_device*) #1

declare dso_local i32 @bdput(%struct.block_device*) #1

declare dso_local i32 @PTR_ERR(%struct.block_device*) #1

declare dso_local i32 @__blkdev_get(%struct.block_device*, i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @bd_finish_claiming(%struct.block_device*, %struct.block_device*, i8*) #1

declare dso_local i32 @bd_abort_claiming(%struct.block_device*, %struct.block_device*, i8*) #1

declare dso_local i32 @disk_block_events(%struct.gendisk*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
