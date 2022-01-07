; ModuleID = '/home/carl/AnghaBench/linux/sound/i2c/extr_cs8427.c_snd_cs8427_spdif_put.c'
source_filename = "/home/carl/AnghaBench/linux/sound/i2c/extr_cs8427.c_snd_cs8427_spdif_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i64 }
%struct.snd_ctl_elem_value = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.snd_i2c_device = type { i32, %struct.cs8427* }
%struct.cs8427 = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i8*, i8*, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.snd_pcm_runtime* }
%struct.snd_pcm_runtime = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)* @snd_cs8427_spdif_put to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_cs8427_spdif_put(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
  %3 = alloca %struct.snd_kcontrol*, align 8
  %4 = alloca %struct.snd_ctl_elem_value*, align 8
  %5 = alloca %struct.snd_i2c_device*, align 8
  %6 = alloca %struct.cs8427*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.snd_pcm_runtime*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %3, align 8
  store %struct.snd_ctl_elem_value* %1, %struct.snd_ctl_elem_value** %4, align 8
  %11 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %12 = call %struct.snd_i2c_device* @snd_kcontrol_chip(%struct.snd_kcontrol* %11)
  store %struct.snd_i2c_device* %12, %struct.snd_i2c_device** %5, align 8
  %13 = load %struct.snd_i2c_device*, %struct.snd_i2c_device** %5, align 8
  %14 = getelementptr inbounds %struct.snd_i2c_device, %struct.snd_i2c_device* %13, i32 0, i32 1
  %15 = load %struct.cs8427*, %struct.cs8427** %14, align 8
  store %struct.cs8427* %15, %struct.cs8427** %6, align 8
  %16 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %17 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %2
  %21 = load %struct.cs8427*, %struct.cs8427** %6, align 8
  %22 = getelementptr inbounds %struct.cs8427, %struct.cs8427* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = load i8*, i8** %23, align 8
  br label %30

25:                                               ; preds = %2
  %26 = load %struct.cs8427*, %struct.cs8427** %6, align 8
  %27 = getelementptr inbounds %struct.cs8427, %struct.cs8427* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 1
  %29 = load i8*, i8** %28, align 8
  br label %30

30:                                               ; preds = %25, %20
  %31 = phi i8* [ %24, %20 ], [ %29, %25 ]
  store i8* %31, i8** %7, align 8
  %32 = load %struct.cs8427*, %struct.cs8427** %6, align 8
  %33 = getelementptr inbounds %struct.cs8427, %struct.cs8427* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 2
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %34, align 8
  %36 = icmp ne %struct.TYPE_5__* %35, null
  br i1 %36, label %37, label %44

37:                                               ; preds = %30
  %38 = load %struct.cs8427*, %struct.cs8427** %6, align 8
  %39 = getelementptr inbounds %struct.cs8427, %struct.cs8427* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 2
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  %43 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %42, align 8
  br label %45

44:                                               ; preds = %30
  br label %45

45:                                               ; preds = %44, %37
  %46 = phi %struct.snd_pcm_runtime* [ %43, %37 ], [ null, %44 ]
  store %struct.snd_pcm_runtime* %46, %struct.snd_pcm_runtime** %8, align 8
  %47 = load %struct.snd_i2c_device*, %struct.snd_i2c_device** %5, align 8
  %48 = getelementptr inbounds %struct.snd_i2c_device, %struct.snd_i2c_device* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @snd_i2c_lock(i32 %49)
  %51 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %52 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i8*, i8** %7, align 8
  %57 = call i64 @memcmp(i32 %55, i8* %56, i32 24)
  %58 = icmp ne i64 %57, 0
  %59 = zext i1 %58 to i32
  store i32 %59, i32* %10, align 4
  %60 = load i8*, i8** %7, align 8
  %61 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %62 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @memcpy(i8* %60, i32 %65, i32 24)
  %67 = load i32, i32* %10, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %89

69:                                               ; preds = %45
  %70 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %71 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %69
  %75 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %8, align 8
  %76 = icmp ne %struct.snd_pcm_runtime* %75, null
  br i1 %76, label %80, label %89

77:                                               ; preds = %69
  %78 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %8, align 8
  %79 = icmp eq %struct.snd_pcm_runtime* %78, null
  br i1 %79, label %80, label %89

80:                                               ; preds = %77, %74
  %81 = load %struct.snd_i2c_device*, %struct.snd_i2c_device** %5, align 8
  %82 = load i8*, i8** %7, align 8
  %83 = call i32 @snd_cs8427_send_corudata(%struct.snd_i2c_device* %81, i32 0, i8* %82, i32 24)
  store i32 %83, i32* %9, align 4
  %84 = load i32, i32* %9, align 4
  %85 = icmp slt i32 %84, 0
  br i1 %85, label %86, label %88

86:                                               ; preds = %80
  %87 = load i32, i32* %9, align 4
  store i32 %87, i32* %10, align 4
  br label %88

88:                                               ; preds = %86, %80
  br label %89

89:                                               ; preds = %88, %77, %74, %45
  %90 = load %struct.snd_i2c_device*, %struct.snd_i2c_device** %5, align 8
  %91 = getelementptr inbounds %struct.snd_i2c_device, %struct.snd_i2c_device* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = call i32 @snd_i2c_unlock(i32 %92)
  %94 = load i32, i32* %10, align 4
  ret i32 %94
}

declare dso_local %struct.snd_i2c_device* @snd_kcontrol_chip(%struct.snd_kcontrol*) #1

declare dso_local i32 @snd_i2c_lock(i32) #1

declare dso_local i64 @memcmp(i32, i8*, i32) #1

declare dso_local i32 @memcpy(i8*, i32, i32) #1

declare dso_local i32 @snd_cs8427_send_corudata(%struct.snd_i2c_device*, i32, i8*, i32) #1

declare dso_local i32 @snd_i2c_unlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
