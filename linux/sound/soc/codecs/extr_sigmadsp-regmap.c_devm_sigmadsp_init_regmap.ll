; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_sigmadsp-regmap.c_devm_sigmadsp_init_regmap.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_sigmadsp-regmap.c_devm_sigmadsp_init_regmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sigmadsp = type { i32, i32, %struct.regmap* }
%struct.device = type { i32 }
%struct.regmap = type { i32 }
%struct.sigmadsp_ops = type { i32 }

@sigmadsp_write_regmap = common dso_local global i32 0, align 4
@sigmadsp_read_regmap = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.sigmadsp* @devm_sigmadsp_init_regmap(%struct.device* %0, %struct.regmap* %1, %struct.sigmadsp_ops* %2, i8* %3) #0 {
  %5 = alloca %struct.sigmadsp*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.regmap*, align 8
  %8 = alloca %struct.sigmadsp_ops*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.sigmadsp*, align 8
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.regmap* %1, %struct.regmap** %7, align 8
  store %struct.sigmadsp_ops* %2, %struct.sigmadsp_ops** %8, align 8
  store i8* %3, i8** %9, align 8
  %11 = load %struct.device*, %struct.device** %6, align 8
  %12 = load %struct.sigmadsp_ops*, %struct.sigmadsp_ops** %8, align 8
  %13 = load i8*, i8** %9, align 8
  %14 = call %struct.sigmadsp* @devm_sigmadsp_init(%struct.device* %11, %struct.sigmadsp_ops* %12, i8* %13)
  store %struct.sigmadsp* %14, %struct.sigmadsp** %10, align 8
  %15 = load %struct.sigmadsp*, %struct.sigmadsp** %10, align 8
  %16 = call i64 @IS_ERR(%struct.sigmadsp* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %4
  %19 = load %struct.sigmadsp*, %struct.sigmadsp** %10, align 8
  store %struct.sigmadsp* %19, %struct.sigmadsp** %5, align 8
  br label %31

20:                                               ; preds = %4
  %21 = load %struct.regmap*, %struct.regmap** %7, align 8
  %22 = load %struct.sigmadsp*, %struct.sigmadsp** %10, align 8
  %23 = getelementptr inbounds %struct.sigmadsp, %struct.sigmadsp* %22, i32 0, i32 2
  store %struct.regmap* %21, %struct.regmap** %23, align 8
  %24 = load i32, i32* @sigmadsp_write_regmap, align 4
  %25 = load %struct.sigmadsp*, %struct.sigmadsp** %10, align 8
  %26 = getelementptr inbounds %struct.sigmadsp, %struct.sigmadsp* %25, i32 0, i32 1
  store i32 %24, i32* %26, align 4
  %27 = load i32, i32* @sigmadsp_read_regmap, align 4
  %28 = load %struct.sigmadsp*, %struct.sigmadsp** %10, align 8
  %29 = getelementptr inbounds %struct.sigmadsp, %struct.sigmadsp* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 8
  %30 = load %struct.sigmadsp*, %struct.sigmadsp** %10, align 8
  store %struct.sigmadsp* %30, %struct.sigmadsp** %5, align 8
  br label %31

31:                                               ; preds = %20, %18
  %32 = load %struct.sigmadsp*, %struct.sigmadsp** %5, align 8
  ret %struct.sigmadsp* %32
}

declare dso_local %struct.sigmadsp* @devm_sigmadsp_init(%struct.device*, %struct.sigmadsp_ops*, i8*) #1

declare dso_local i64 @IS_ERR(%struct.sigmadsp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
