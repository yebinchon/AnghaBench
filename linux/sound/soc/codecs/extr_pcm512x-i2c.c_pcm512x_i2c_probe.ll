; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_pcm512x-i2c.c_pcm512x_i2c_probe.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_pcm512x-i2c.c_pcm512x_i2c_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regmap_config = type { i32, i32 }
%struct.i2c_client = type { i32 }
%struct.i2c_device_id = type { i32 }
%struct.regmap = type { i32 }

@pcm512x_regmap = common dso_local global %struct.regmap_config zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @pcm512x_i2c_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcm512x_i2c_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.regmap*, align 8
  %7 = alloca %struct.regmap_config, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %8 = bitcast %struct.regmap_config* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %8, i8* align 4 bitcast (%struct.regmap_config* @pcm512x_regmap to i8*), i64 8, i1 false)
  %9 = getelementptr inbounds %struct.regmap_config, %struct.regmap_config* %7, i32 0, i32 0
  store i32 128, i32* %9, align 4
  %10 = getelementptr inbounds %struct.regmap_config, %struct.regmap_config* %7, i32 0, i32 1
  store i32 128, i32* %10, align 4
  %11 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %12 = call %struct.regmap* @devm_regmap_init_i2c(%struct.i2c_client* %11, %struct.regmap_config* %7)
  store %struct.regmap* %12, %struct.regmap** %6, align 8
  %13 = load %struct.regmap*, %struct.regmap** %6, align 8
  %14 = call i64 @IS_ERR(%struct.regmap* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = load %struct.regmap*, %struct.regmap** %6, align 8
  %18 = call i32 @PTR_ERR(%struct.regmap* %17)
  store i32 %18, i32* %3, align 4
  br label %24

19:                                               ; preds = %2
  %20 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %21 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %20, i32 0, i32 0
  %22 = load %struct.regmap*, %struct.regmap** %6, align 8
  %23 = call i32 @pcm512x_probe(i32* %21, %struct.regmap* %22)
  store i32 %23, i32* %3, align 4
  br label %24

24:                                               ; preds = %19, %16
  %25 = load i32, i32* %3, align 4
  ret i32 %25
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local %struct.regmap* @devm_regmap_init_i2c(%struct.i2c_client*, %struct.regmap_config*) #2

declare dso_local i64 @IS_ERR(%struct.regmap*) #2

declare dso_local i32 @PTR_ERR(%struct.regmap*) #2

declare dso_local i32 @pcm512x_probe(i32*, %struct.regmap*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
