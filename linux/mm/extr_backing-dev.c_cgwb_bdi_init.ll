; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_backing-dev.c_cgwb_bdi_init.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_backing-dev.c_cgwb_bdi_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.backing_dev_info = type { %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.backing_dev_info*)* @cgwb_bdi_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cgwb_bdi_init(%struct.backing_dev_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.backing_dev_info*, align 8
  %4 = alloca i32, align 4
  store %struct.backing_dev_info* %0, %struct.backing_dev_info** %3, align 8
  %5 = load i32, i32* @GFP_KERNEL, align 4
  %6 = call %struct.TYPE_3__* @kzalloc(i32 4, i32 %5)
  %7 = load %struct.backing_dev_info*, %struct.backing_dev_info** %3, align 8
  %8 = getelementptr inbounds %struct.backing_dev_info, %struct.backing_dev_info* %7, i32 0, i32 0
  store %struct.TYPE_3__* %6, %struct.TYPE_3__** %8, align 8
  %9 = load %struct.backing_dev_info*, %struct.backing_dev_info** %3, align 8
  %10 = getelementptr inbounds %struct.backing_dev_info, %struct.backing_dev_info* %9, i32 0, i32 0
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %12 = icmp ne %struct.TYPE_3__* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %36

16:                                               ; preds = %1
  %17 = load %struct.backing_dev_info*, %struct.backing_dev_info** %3, align 8
  %18 = getelementptr inbounds %struct.backing_dev_info, %struct.backing_dev_info* %17, i32 0, i32 0
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = call i32 @refcount_set(i32* %20, i32 1)
  %22 = load %struct.backing_dev_info*, %struct.backing_dev_info** %3, align 8
  %23 = getelementptr inbounds %struct.backing_dev_info, %struct.backing_dev_info* %22, i32 0, i32 1
  %24 = load %struct.backing_dev_info*, %struct.backing_dev_info** %3, align 8
  %25 = load i32, i32* @GFP_KERNEL, align 4
  %26 = call i32 @wb_init(i32* %23, %struct.backing_dev_info* %24, i32 1, i32 %25)
  store i32 %26, i32* %4, align 4
  %27 = load i32, i32* %4, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %16
  %30 = load %struct.backing_dev_info*, %struct.backing_dev_info** %3, align 8
  %31 = getelementptr inbounds %struct.backing_dev_info, %struct.backing_dev_info* %30, i32 0, i32 0
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %31, align 8
  %33 = call i32 @wb_congested_put(%struct.TYPE_3__* %32)
  %34 = load i32, i32* %4, align 4
  store i32 %34, i32* %2, align 4
  br label %36

35:                                               ; preds = %16
  store i32 0, i32* %2, align 4
  br label %36

36:                                               ; preds = %35, %29, %13
  %37 = load i32, i32* %2, align 4
  ret i32 %37
}

declare dso_local %struct.TYPE_3__* @kzalloc(i32, i32) #1

declare dso_local i32 @refcount_set(i32*, i32) #1

declare dso_local i32 @wb_init(i32*, %struct.backing_dev_info*, i32, i32) #1

declare dso_local i32 @wb_congested_put(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
