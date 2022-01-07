; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/uniphier/extr_aio-cpu.c_find_spec.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/uniphier/extr_aio-cpu.c_find_spec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uniphier_aio_spec = type { i32 }
%struct.uniphier_aio = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.uniphier_aio_chip_spec* }
%struct.uniphier_aio_chip_spec = type { i32, %struct.uniphier_aio_spec* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.uniphier_aio_spec* (%struct.uniphier_aio*, i8*, i32)* @find_spec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.uniphier_aio_spec* @find_spec(%struct.uniphier_aio* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.uniphier_aio_spec*, align 8
  %5 = alloca %struct.uniphier_aio*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.uniphier_aio_chip_spec*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.uniphier_aio_spec*, align 8
  store %struct.uniphier_aio* %0, %struct.uniphier_aio** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.uniphier_aio*, %struct.uniphier_aio** %5, align 8
  %12 = getelementptr inbounds %struct.uniphier_aio, %struct.uniphier_aio* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load %struct.uniphier_aio_chip_spec*, %struct.uniphier_aio_chip_spec** %14, align 8
  store %struct.uniphier_aio_chip_spec* %15, %struct.uniphier_aio_chip_spec** %8, align 8
  store i32 0, i32* %9, align 4
  br label %16

16:                                               ; preds = %37, %3
  %17 = load i32, i32* %9, align 4
  %18 = load %struct.uniphier_aio_chip_spec*, %struct.uniphier_aio_chip_spec** %8, align 8
  %19 = getelementptr inbounds %struct.uniphier_aio_chip_spec, %struct.uniphier_aio_chip_spec* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp slt i32 %17, %20
  br i1 %21, label %22, label %40

22:                                               ; preds = %16
  %23 = load %struct.uniphier_aio_chip_spec*, %struct.uniphier_aio_chip_spec** %8, align 8
  %24 = getelementptr inbounds %struct.uniphier_aio_chip_spec, %struct.uniphier_aio_chip_spec* %23, i32 0, i32 1
  %25 = load %struct.uniphier_aio_spec*, %struct.uniphier_aio_spec** %24, align 8
  %26 = load i32, i32* %9, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.uniphier_aio_spec, %struct.uniphier_aio_spec* %25, i64 %27
  store %struct.uniphier_aio_spec* %28, %struct.uniphier_aio_spec** %10, align 8
  %29 = load %struct.uniphier_aio_spec*, %struct.uniphier_aio_spec** %10, align 8
  %30 = load i8*, i8** %6, align 8
  %31 = load i32, i32* %7, align 4
  %32 = call i64 @match_spec(%struct.uniphier_aio_spec* %29, i8* %30, i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %22
  %35 = load %struct.uniphier_aio_spec*, %struct.uniphier_aio_spec** %10, align 8
  store %struct.uniphier_aio_spec* %35, %struct.uniphier_aio_spec** %4, align 8
  br label %41

36:                                               ; preds = %22
  br label %37

37:                                               ; preds = %36
  %38 = load i32, i32* %9, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %9, align 4
  br label %16

40:                                               ; preds = %16
  store %struct.uniphier_aio_spec* null, %struct.uniphier_aio_spec** %4, align 8
  br label %41

41:                                               ; preds = %40, %34
  %42 = load %struct.uniphier_aio_spec*, %struct.uniphier_aio_spec** %4, align 8
  ret %struct.uniphier_aio_spec* %42
}

declare dso_local i64 @match_spec(%struct.uniphier_aio_spec*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
