; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/rockchip/extr_rk3399_gru_sound.c_rockchip_sound_codec_node_match.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/rockchip/extr_rk3399_gru_sound.c_rockchip_sound_codec_node_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32 }
%struct.device_node = type { i32 }
%struct.device = type { i32 }

@dailink_match = common dso_local global %struct.TYPE_3__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device_node*)* @rockchip_sound_codec_node_match to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rockchip_sound_codec_node_match(%struct.device_node* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.device_node*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca i32, align 4
  store %struct.device_node* %0, %struct.device_node** %3, align 8
  store i32 0, i32* %5, align 4
  br label %6

6:                                                ; preds = %47, %1
  %7 = load i32, i32* %5, align 4
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** @dailink_match, align 8
  %9 = call i32 @ARRAY_SIZE(%struct.TYPE_3__* %8)
  %10 = icmp slt i32 %7, %9
  br i1 %10, label %11, label %50

11:                                               ; preds = %6
  %12 = load %struct.device_node*, %struct.device_node** %3, align 8
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** @dailink_match, align 8
  %14 = load i32, i32* %5, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i64 %15
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @of_device_is_compatible(%struct.device_node* %12, i32 %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %11
  br label %47

22:                                               ; preds = %11
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** @dailink_match, align 8
  %24 = load i32, i32* %5, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %45

30:                                               ; preds = %22
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** @dailink_match, align 8
  %32 = load i32, i32* %5, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.device_node*, %struct.device_node** %3, align 8
  %38 = call %struct.device* @bus_find_device_by_of_node(i64 %36, %struct.device_node* %37)
  store %struct.device* %38, %struct.device** %4, align 8
  %39 = load %struct.device*, %struct.device** %4, align 8
  %40 = icmp ne %struct.device* %39, null
  br i1 %40, label %42, label %41

41:                                               ; preds = %30
  br label %47

42:                                               ; preds = %30
  %43 = load %struct.device*, %struct.device** %4, align 8
  %44 = call i32 @put_device(%struct.device* %43)
  br label %45

45:                                               ; preds = %42, %22
  %46 = load i32, i32* %5, align 4
  store i32 %46, i32* %2, align 4
  br label %51

47:                                               ; preds = %41, %21
  %48 = load i32, i32* %5, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %5, align 4
  br label %6

50:                                               ; preds = %6
  store i32 -1, i32* %2, align 4
  br label %51

51:                                               ; preds = %50, %45
  %52 = load i32, i32* %2, align 4
  ret i32 %52
}

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_3__*) #1

declare dso_local i32 @of_device_is_compatible(%struct.device_node*, i32) #1

declare dso_local %struct.device* @bus_find_device_by_of_node(i64, %struct.device_node*) #1

declare dso_local i32 @put_device(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
