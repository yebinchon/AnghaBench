; ModuleID = '/home/carl/AnghaBench/linux/samples/vfio-mdev/extr_mbochs.c_mbochs_get_gfx_dmabuf.c'
source_filename = "/home/carl/AnghaBench/linux/samples/vfio-mdev/extr_mbochs.c_mbochs_get_gfx_dmabuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mdev_device = type { i32 }
%struct.mdev_state = type { i32 }
%struct.mbochs_dmabuf = type { i32 }

@ENOENT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mdev_device*, i32)* @mbochs_get_gfx_dmabuf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mbochs_get_gfx_dmabuf(%struct.mdev_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mdev_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.mdev_state*, align 8
  %7 = alloca %struct.mbochs_dmabuf*, align 8
  store %struct.mdev_device* %0, %struct.mdev_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.mdev_device*, %struct.mdev_device** %4, align 8
  %9 = call %struct.mdev_state* @mdev_get_drvdata(%struct.mdev_device* %8)
  store %struct.mdev_state* %9, %struct.mdev_state** %6, align 8
  %10 = load %struct.mdev_state*, %struct.mdev_state** %6, align 8
  %11 = getelementptr inbounds %struct.mdev_state, %struct.mdev_state* %10, i32 0, i32 0
  %12 = call i32 @mutex_lock(i32* %11)
  %13 = load %struct.mdev_state*, %struct.mdev_state** %6, align 8
  %14 = load i32, i32* %5, align 4
  %15 = call %struct.mbochs_dmabuf* @mbochs_dmabuf_find_by_id(%struct.mdev_state* %13, i32 %14)
  store %struct.mbochs_dmabuf* %15, %struct.mbochs_dmabuf** %7, align 8
  %16 = load %struct.mbochs_dmabuf*, %struct.mbochs_dmabuf** %7, align 8
  %17 = icmp ne %struct.mbochs_dmabuf* %16, null
  br i1 %17, label %24, label %18

18:                                               ; preds = %2
  %19 = load %struct.mdev_state*, %struct.mdev_state** %6, align 8
  %20 = getelementptr inbounds %struct.mdev_state, %struct.mdev_state* %19, i32 0, i32 0
  %21 = call i32 @mutex_unlock(i32* %20)
  %22 = load i32, i32* @ENOENT, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %48

24:                                               ; preds = %2
  %25 = load %struct.mbochs_dmabuf*, %struct.mbochs_dmabuf** %7, align 8
  %26 = getelementptr inbounds %struct.mbochs_dmabuf, %struct.mbochs_dmabuf* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %24
  %30 = load %struct.mbochs_dmabuf*, %struct.mbochs_dmabuf** %7, align 8
  %31 = call i32 @mbochs_dmabuf_export(%struct.mbochs_dmabuf* %30)
  br label %32

32:                                               ; preds = %29, %24
  %33 = load %struct.mdev_state*, %struct.mdev_state** %6, align 8
  %34 = getelementptr inbounds %struct.mdev_state, %struct.mdev_state* %33, i32 0, i32 0
  %35 = call i32 @mutex_unlock(i32* %34)
  %36 = load %struct.mbochs_dmabuf*, %struct.mbochs_dmabuf** %7, align 8
  %37 = getelementptr inbounds %struct.mbochs_dmabuf, %struct.mbochs_dmabuf* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %43, label %40

40:                                               ; preds = %32
  %41 = load i32, i32* @EINVAL, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %3, align 4
  br label %48

43:                                               ; preds = %32
  %44 = load %struct.mbochs_dmabuf*, %struct.mbochs_dmabuf** %7, align 8
  %45 = getelementptr inbounds %struct.mbochs_dmabuf, %struct.mbochs_dmabuf* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @dma_buf_fd(i32 %46, i32 0)
  store i32 %47, i32* %3, align 4
  br label %48

48:                                               ; preds = %43, %40, %18
  %49 = load i32, i32* %3, align 4
  ret i32 %49
}

declare dso_local %struct.mdev_state* @mdev_get_drvdata(%struct.mdev_device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.mbochs_dmabuf* @mbochs_dmabuf_find_by_id(%struct.mdev_state*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @mbochs_dmabuf_export(%struct.mbochs_dmabuf*) #1

declare dso_local i32 @dma_buf_fd(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
