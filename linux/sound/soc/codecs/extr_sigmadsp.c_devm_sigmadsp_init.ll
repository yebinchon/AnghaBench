; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_sigmadsp.c_devm_sigmadsp_init.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_sigmadsp.c_devm_sigmadsp_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sigmadsp = type { i32 }
%struct.device = type { i32 }
%struct.sigmadsp_ops = type { i32 }

@devm_sigmadsp_release = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.sigmadsp* @devm_sigmadsp_init(%struct.device* %0, %struct.sigmadsp_ops* %1, i8* %2) #0 {
  %4 = alloca %struct.sigmadsp*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.sigmadsp_ops*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.sigmadsp*, align 8
  %9 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.sigmadsp_ops* %1, %struct.sigmadsp_ops** %6, align 8
  store i8* %2, i8** %7, align 8
  %10 = load i32, i32* @devm_sigmadsp_release, align 4
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.sigmadsp* @devres_alloc(i32 %10, i32 4, i32 %11)
  store %struct.sigmadsp* %12, %struct.sigmadsp** %8, align 8
  %13 = load %struct.sigmadsp*, %struct.sigmadsp** %8, align 8
  %14 = icmp ne %struct.sigmadsp* %13, null
  br i1 %14, label %19, label %15

15:                                               ; preds = %3
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  %18 = call %struct.sigmadsp* @ERR_PTR(i32 %17)
  store %struct.sigmadsp* %18, %struct.sigmadsp** %4, align 8
  br label %37

19:                                               ; preds = %3
  %20 = load %struct.sigmadsp*, %struct.sigmadsp** %8, align 8
  %21 = load %struct.device*, %struct.device** %5, align 8
  %22 = load %struct.sigmadsp_ops*, %struct.sigmadsp_ops** %6, align 8
  %23 = load i8*, i8** %7, align 8
  %24 = call i32 @sigmadsp_init(%struct.sigmadsp* %20, %struct.device* %21, %struct.sigmadsp_ops* %22, i8* %23)
  store i32 %24, i32* %9, align 4
  %25 = load i32, i32* %9, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %19
  %28 = load %struct.sigmadsp*, %struct.sigmadsp** %8, align 8
  %29 = call i32 @devres_free(%struct.sigmadsp* %28)
  %30 = load i32, i32* %9, align 4
  %31 = call %struct.sigmadsp* @ERR_PTR(i32 %30)
  store %struct.sigmadsp* %31, %struct.sigmadsp** %4, align 8
  br label %37

32:                                               ; preds = %19
  %33 = load %struct.device*, %struct.device** %5, align 8
  %34 = load %struct.sigmadsp*, %struct.sigmadsp** %8, align 8
  %35 = call i32 @devres_add(%struct.device* %33, %struct.sigmadsp* %34)
  %36 = load %struct.sigmadsp*, %struct.sigmadsp** %8, align 8
  store %struct.sigmadsp* %36, %struct.sigmadsp** %4, align 8
  br label %37

37:                                               ; preds = %32, %27, %15
  %38 = load %struct.sigmadsp*, %struct.sigmadsp** %4, align 8
  ret %struct.sigmadsp* %38
}

declare dso_local %struct.sigmadsp* @devres_alloc(i32, i32, i32) #1

declare dso_local %struct.sigmadsp* @ERR_PTR(i32) #1

declare dso_local i32 @sigmadsp_init(%struct.sigmadsp*, %struct.device*, %struct.sigmadsp_ops*, i8*) #1

declare dso_local i32 @devres_free(%struct.sigmadsp*) #1

declare dso_local i32 @devres_add(%struct.device*, %struct.sigmadsp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
