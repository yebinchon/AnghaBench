; ModuleID = '/home/carl/AnghaBench/linux/sound/core/extr_compress_offload.c_snd_compress_check_input.c'
source_filename = "/home/carl/AnghaBench/linux/sound/core/extr_compress_offload.c_snd_compress_check_input.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_compr_params = type { %struct.TYPE_3__, %struct.TYPE_4__ }
%struct.TYPE_3__ = type { i64, i64, i64 }
%struct.TYPE_4__ = type { i32, i32 }

@U32_MAX = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@SND_AUDIOCODEC_MAX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_compr_params*)* @snd_compress_check_input to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_compress_check_input(%struct.snd_compr_params* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_compr_params*, align 8
  store %struct.snd_compr_params* %0, %struct.snd_compr_params** %3, align 8
  %4 = load %struct.snd_compr_params*, %struct.snd_compr_params** %3, align 8
  %5 = getelementptr inbounds %struct.snd_compr_params, %struct.snd_compr_params* %4, i32 0, i32 1
  %6 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %27, label %9

9:                                                ; preds = %1
  %10 = load %struct.snd_compr_params*, %struct.snd_compr_params** %3, align 8
  %11 = getelementptr inbounds %struct.snd_compr_params, %struct.snd_compr_params* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @U32_MAX, align 4
  %15 = load %struct.snd_compr_params*, %struct.snd_compr_params** %3, align 8
  %16 = getelementptr inbounds %struct.snd_compr_params, %struct.snd_compr_params* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = sdiv i32 %14, %18
  %20 = icmp sgt i32 %13, %19
  br i1 %20, label %27, label %21

21:                                               ; preds = %9
  %22 = load %struct.snd_compr_params*, %struct.snd_compr_params** %3, align 8
  %23 = getelementptr inbounds %struct.snd_compr_params, %struct.snd_compr_params* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %21, %9, %1
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %2, align 4
  br label %62

30:                                               ; preds = %21
  %31 = load %struct.snd_compr_params*, %struct.snd_compr_params** %3, align 8
  %32 = getelementptr inbounds %struct.snd_compr_params, %struct.snd_compr_params* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %43, label %36

36:                                               ; preds = %30
  %37 = load %struct.snd_compr_params*, %struct.snd_compr_params** %3, align 8
  %38 = getelementptr inbounds %struct.snd_compr_params, %struct.snd_compr_params* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @SND_AUDIOCODEC_MAX, align 8
  %42 = icmp sgt i64 %40, %41
  br i1 %42, label %43, label %46

43:                                               ; preds = %36, %30
  %44 = load i32, i32* @EINVAL, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %2, align 4
  br label %62

46:                                               ; preds = %36
  %47 = load %struct.snd_compr_params*, %struct.snd_compr_params** %3, align 8
  %48 = getelementptr inbounds %struct.snd_compr_params, %struct.snd_compr_params* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = icmp eq i64 %50, 0
  br i1 %51, label %58, label %52

52:                                               ; preds = %46
  %53 = load %struct.snd_compr_params*, %struct.snd_compr_params** %3, align 8
  %54 = getelementptr inbounds %struct.snd_compr_params, %struct.snd_compr_params* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 2
  %56 = load i64, i64* %55, align 8
  %57 = icmp eq i64 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %52, %46
  %59 = load i32, i32* @EINVAL, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %2, align 4
  br label %62

61:                                               ; preds = %52
  store i32 0, i32* %2, align 4
  br label %62

62:                                               ; preds = %61, %58, %43, %27
  %63 = load i32, i32* %2, align 4
  ret i32 %63
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
