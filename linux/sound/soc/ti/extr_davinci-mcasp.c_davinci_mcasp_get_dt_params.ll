; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/ti/extr_davinci-mcasp.c_davinci_mcasp_get_dt_params.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/ti/extr_davinci-mcasp.c_davinci_mcasp_get_dt_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.davinci_mcasp = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.device_node* }
%struct.device_node = type { i32 }

@.str = private unnamed_addr constant [16 x i8] c"auxclk-fs-ratio\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.davinci_mcasp*)* @davinci_mcasp_get_dt_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @davinci_mcasp_get_dt_params(%struct.davinci_mcasp* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.davinci_mcasp*, align 8
  %4 = alloca %struct.device_node*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.davinci_mcasp* %0, %struct.davinci_mcasp** %3, align 8
  %7 = load %struct.davinci_mcasp*, %struct.davinci_mcasp** %3, align 8
  %8 = getelementptr inbounds %struct.davinci_mcasp, %struct.davinci_mcasp* %7, i32 0, i32 1
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load %struct.device_node*, %struct.device_node** %10, align 8
  store %struct.device_node* %11, %struct.device_node** %4, align 8
  %12 = load %struct.device_node*, %struct.device_node** %4, align 8
  %13 = icmp ne %struct.device_node* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %25

15:                                               ; preds = %1
  %16 = load %struct.device_node*, %struct.device_node** %4, align 8
  %17 = call i32 @of_property_read_u32(%struct.device_node* %16, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32* %6)
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* %5, align 4
  %19 = icmp sge i32 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %15
  %21 = load i32, i32* %6, align 4
  %22 = load %struct.davinci_mcasp*, %struct.davinci_mcasp** %3, align 8
  %23 = getelementptr inbounds %struct.davinci_mcasp, %struct.davinci_mcasp* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 8
  br label %24

24:                                               ; preds = %20, %15
  store i32 0, i32* %2, align 4
  br label %25

25:                                               ; preds = %24, %14
  %26 = load i32, i32* %2, align 4
  ret i32 %26
}

declare dso_local i32 @of_property_read_u32(%struct.device_node*, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
