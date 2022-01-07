; ModuleID = '/home/carl/AnghaBench/linux/sound/core/extr_compress_offload.c_snd_compress_dev_register.c'
source_filename = "/home/carl/AnghaBench/linux/sound/core/extr_compress_offload.c_snd_compress_dev_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_device = type { %struct.snd_compr* }
%struct.snd_compr = type { i32, i32, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@EBADFD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"reg device %s, direction %d\0A\00", align 1
@SNDRV_DEVICE_TYPE_COMPRESS = common dso_local global i32 0, align 4
@snd_compr_file_ops = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"snd_register_device failed %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_device*)* @snd_compress_dev_register to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_compress_dev_register(%struct.snd_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_compr*, align 8
  store %struct.snd_device* %0, %struct.snd_device** %3, align 8
  %6 = load i32, i32* @EINVAL, align 4
  %7 = sub nsw i32 0, %6
  store i32 %7, i32* %4, align 4
  %8 = load %struct.snd_device*, %struct.snd_device** %3, align 8
  %9 = icmp ne %struct.snd_device* %8, null
  br i1 %9, label %10, label %16

10:                                               ; preds = %1
  %11 = load %struct.snd_device*, %struct.snd_device** %3, align 8
  %12 = getelementptr inbounds %struct.snd_device, %struct.snd_device* %11, i32 0, i32 0
  %13 = load %struct.snd_compr*, %struct.snd_compr** %12, align 8
  %14 = icmp ne %struct.snd_compr* %13, null
  %15 = xor i1 %14, true
  br label %16

16:                                               ; preds = %10, %1
  %17 = phi i1 [ true, %1 ], [ %15, %10 ]
  %18 = zext i1 %17 to i32
  %19 = call i64 @snd_BUG_ON(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %16
  %22 = load i32, i32* @EBADFD, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %2, align 4
  br label %54

24:                                               ; preds = %16
  %25 = load %struct.snd_device*, %struct.snd_device** %3, align 8
  %26 = getelementptr inbounds %struct.snd_device, %struct.snd_device* %25, i32 0, i32 0
  %27 = load %struct.snd_compr*, %struct.snd_compr** %26, align 8
  store %struct.snd_compr* %27, %struct.snd_compr** %5, align 8
  %28 = load %struct.snd_compr*, %struct.snd_compr** %5, align 8
  %29 = getelementptr inbounds %struct.snd_compr, %struct.snd_compr* %28, i32 0, i32 4
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.snd_compr*, %struct.snd_compr** %5, align 8
  %32 = getelementptr inbounds %struct.snd_compr, %struct.snd_compr* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @pr_debug(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %30, i32 %33)
  %35 = load i32, i32* @SNDRV_DEVICE_TYPE_COMPRESS, align 4
  %36 = load %struct.snd_compr*, %struct.snd_compr** %5, align 8
  %37 = getelementptr inbounds %struct.snd_compr, %struct.snd_compr* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.snd_compr*, %struct.snd_compr** %5, align 8
  %40 = getelementptr inbounds %struct.snd_compr, %struct.snd_compr* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.snd_compr*, %struct.snd_compr** %5, align 8
  %43 = load %struct.snd_compr*, %struct.snd_compr** %5, align 8
  %44 = getelementptr inbounds %struct.snd_compr, %struct.snd_compr* %43, i32 0, i32 0
  %45 = call i32 @snd_register_device(i32 %35, i32 %38, i32 %41, i32* @snd_compr_file_ops, %struct.snd_compr* %42, i32* %44)
  store i32 %45, i32* %4, align 4
  %46 = load i32, i32* %4, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %24
  %49 = load i32, i32* %4, align 4
  %50 = call i32 @pr_err(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %49)
  %51 = load i32, i32* %4, align 4
  store i32 %51, i32* %2, align 4
  br label %54

52:                                               ; preds = %24
  %53 = load i32, i32* %4, align 4
  store i32 %53, i32* %2, align 4
  br label %54

54:                                               ; preds = %52, %48, %21
  %55 = load i32, i32* %2, align 4
  ret i32 %55
}

declare dso_local i64 @snd_BUG_ON(i32) #1

declare dso_local i32 @pr_debug(i8*, i32, i32) #1

declare dso_local i32 @snd_register_device(i32, i32, i32, i32*, %struct.snd_compr*, i32*) #1

declare dso_local i32 @pr_err(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
