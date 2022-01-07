; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_sigmadsp.c_sigmadsp_ctrl_write.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_sigmadsp.c_sigmadsp_ctrl_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sigmadsp = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.sigmadsp*, i32, i8*, i32)* }
%struct.sigmadsp_control = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sigmadsp*, %struct.sigmadsp_control*, i8*)* @sigmadsp_ctrl_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sigmadsp_ctrl_write(%struct.sigmadsp* %0, %struct.sigmadsp_control* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sigmadsp*, align 8
  %6 = alloca %struct.sigmadsp_control*, align 8
  %7 = alloca i8*, align 8
  store %struct.sigmadsp* %0, %struct.sigmadsp** %5, align 8
  store %struct.sigmadsp_control* %1, %struct.sigmadsp_control** %6, align 8
  store i8* %2, i8** %7, align 8
  %8 = load %struct.sigmadsp_control*, %struct.sigmadsp_control** %6, align 8
  %9 = getelementptr inbounds %struct.sigmadsp_control, %struct.sigmadsp_control* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = icmp sle i32 %10, 20
  br i1 %11, label %12, label %39

12:                                               ; preds = %3
  %13 = load %struct.sigmadsp*, %struct.sigmadsp** %5, align 8
  %14 = getelementptr inbounds %struct.sigmadsp, %struct.sigmadsp* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = icmp ne %struct.TYPE_2__* %15, null
  br i1 %16, label %17, label %39

17:                                               ; preds = %12
  %18 = load %struct.sigmadsp*, %struct.sigmadsp** %5, align 8
  %19 = getelementptr inbounds %struct.sigmadsp, %struct.sigmadsp* %18, i32 0, i32 0
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32 (%struct.sigmadsp*, i32, i8*, i32)*, i32 (%struct.sigmadsp*, i32, i8*, i32)** %21, align 8
  %23 = icmp ne i32 (%struct.sigmadsp*, i32, i8*, i32)* %22, null
  br i1 %23, label %24, label %39

24:                                               ; preds = %17
  %25 = load %struct.sigmadsp*, %struct.sigmadsp** %5, align 8
  %26 = getelementptr inbounds %struct.sigmadsp, %struct.sigmadsp* %25, i32 0, i32 0
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32 (%struct.sigmadsp*, i32, i8*, i32)*, i32 (%struct.sigmadsp*, i32, i8*, i32)** %28, align 8
  %30 = load %struct.sigmadsp*, %struct.sigmadsp** %5, align 8
  %31 = load %struct.sigmadsp_control*, %struct.sigmadsp_control** %6, align 8
  %32 = getelementptr inbounds %struct.sigmadsp_control, %struct.sigmadsp_control* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load i8*, i8** %7, align 8
  %35 = load %struct.sigmadsp_control*, %struct.sigmadsp_control** %6, align 8
  %36 = getelementptr inbounds %struct.sigmadsp_control, %struct.sigmadsp_control* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 %29(%struct.sigmadsp* %30, i32 %33, i8* %34, i32 %37)
  store i32 %38, i32* %4, align 4
  br label %49

39:                                               ; preds = %17, %12, %3
  %40 = load %struct.sigmadsp*, %struct.sigmadsp** %5, align 8
  %41 = load %struct.sigmadsp_control*, %struct.sigmadsp_control** %6, align 8
  %42 = getelementptr inbounds %struct.sigmadsp_control, %struct.sigmadsp_control* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load i8*, i8** %7, align 8
  %45 = load %struct.sigmadsp_control*, %struct.sigmadsp_control** %6, align 8
  %46 = getelementptr inbounds %struct.sigmadsp_control, %struct.sigmadsp_control* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @sigmadsp_write(%struct.sigmadsp* %40, i32 %43, i8* %44, i32 %47)
  store i32 %48, i32* %4, align 4
  br label %49

49:                                               ; preds = %39, %24
  %50 = load i32, i32* %4, align 4
  ret i32 %50
}

declare dso_local i32 @sigmadsp_write(%struct.sigmadsp*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
