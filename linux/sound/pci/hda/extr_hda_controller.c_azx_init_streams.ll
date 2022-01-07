; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/hda/extr_hda_controller.c_azx_init_streams.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/hda/extr_hda_controller.c_azx_init_streams.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.azx = type { i32, i32 }
%struct.azx_dev = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@AZX_DCAPS_SEPARATE_STREAM_TAG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @azx_init_streams(%struct.azx* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.azx*, align 8
  %4 = alloca i32, align 4
  %5 = alloca [2 x i32], align 4
  %6 = alloca %struct.azx_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.azx* %0, %struct.azx** %3, align 8
  %9 = bitcast [2 x i32]* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %9, i8 0, i64 8, i1 false)
  store i32 0, i32* %4, align 4
  br label %10

10:                                               ; preds = %52, %1
  %11 = load i32, i32* %4, align 4
  %12 = load %struct.azx*, %struct.azx** %3, align 8
  %13 = getelementptr inbounds %struct.azx, %struct.azx* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = icmp slt i32 %11, %14
  br i1 %15, label %16, label %55

16:                                               ; preds = %10
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call %struct.azx_dev* @kzalloc(i32 4, i32 %17)
  store %struct.azx_dev* %18, %struct.azx_dev** %6, align 8
  %19 = load %struct.azx_dev*, %struct.azx_dev** %6, align 8
  %20 = icmp ne %struct.azx_dev* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %16
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %2, align 4
  br label %56

24:                                               ; preds = %16
  %25 = load %struct.azx*, %struct.azx** %3, align 8
  %26 = load i32, i32* %4, align 4
  %27 = call i32 @stream_direction(%struct.azx* %25, i32 %26)
  store i32 %27, i32* %7, align 4
  %28 = load %struct.azx*, %struct.azx** %3, align 8
  %29 = getelementptr inbounds %struct.azx, %struct.azx* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @AZX_DCAPS_SEPARATE_STREAM_TAG, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %24
  %35 = load i32, i32* %7, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %37, align 4
  store i32 %39, i32* %8, align 4
  br label %43

40:                                               ; preds = %24
  %41 = load i32, i32* %4, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %8, align 4
  br label %43

43:                                               ; preds = %40, %34
  %44 = load %struct.azx*, %struct.azx** %3, align 8
  %45 = call i32 @azx_bus(%struct.azx* %44)
  %46 = load %struct.azx_dev*, %struct.azx_dev** %6, align 8
  %47 = call i32 @azx_stream(%struct.azx_dev* %46)
  %48 = load i32, i32* %4, align 4
  %49 = load i32, i32* %7, align 4
  %50 = load i32, i32* %8, align 4
  %51 = call i32 @snd_hdac_stream_init(i32 %45, i32 %47, i32 %48, i32 %49, i32 %50)
  br label %52

52:                                               ; preds = %43
  %53 = load i32, i32* %4, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %4, align 4
  br label %10

55:                                               ; preds = %10
  store i32 0, i32* %2, align 4
  br label %56

56:                                               ; preds = %55, %21
  %57 = load i32, i32* %2, align 4
  ret i32 %57
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local %struct.azx_dev* @kzalloc(i32, i32) #2

declare dso_local i32 @stream_direction(%struct.azx*, i32) #2

declare dso_local i32 @snd_hdac_stream_init(i32, i32, i32, i32, i32) #2

declare dso_local i32 @azx_bus(%struct.azx*) #2

declare dso_local i32 @azx_stream(%struct.azx_dev*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
