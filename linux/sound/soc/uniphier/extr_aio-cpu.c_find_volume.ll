; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/uniphier/extr_aio-cpu.c_find_volume.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/uniphier/extr_aio-cpu.c_find_volume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uniphier_aio_sub = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.uniphier_aio_chip = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.uniphier_aio_sub* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.uniphier_aio_sub* (%struct.uniphier_aio_chip*, i32)* @find_volume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.uniphier_aio_sub* @find_volume(%struct.uniphier_aio_chip* %0, i32 %1) #0 {
  %3 = alloca %struct.uniphier_aio_sub*, align 8
  %4 = alloca %struct.uniphier_aio_chip*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.uniphier_aio_sub*, align 8
  store %struct.uniphier_aio_chip* %0, %struct.uniphier_aio_chip** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %8

8:                                                ; preds = %41, %2
  %9 = load i32, i32* %6, align 4
  %10 = load %struct.uniphier_aio_chip*, %struct.uniphier_aio_chip** %4, align 8
  %11 = getelementptr inbounds %struct.uniphier_aio_chip, %struct.uniphier_aio_chip* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp slt i32 %9, %12
  br i1 %13, label %14, label %44

14:                                               ; preds = %8
  %15 = load %struct.uniphier_aio_chip*, %struct.uniphier_aio_chip** %4, align 8
  %16 = getelementptr inbounds %struct.uniphier_aio_chip, %struct.uniphier_aio_chip* %15, i32 0, i32 1
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = load i32, i32* %6, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i64 %19
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load %struct.uniphier_aio_sub*, %struct.uniphier_aio_sub** %21, align 8
  %23 = getelementptr inbounds %struct.uniphier_aio_sub, %struct.uniphier_aio_sub* %22, i64 0
  store %struct.uniphier_aio_sub* %23, %struct.uniphier_aio_sub** %7, align 8
  %24 = load %struct.uniphier_aio_sub*, %struct.uniphier_aio_sub** %7, align 8
  %25 = getelementptr inbounds %struct.uniphier_aio_sub, %struct.uniphier_aio_sub* %24, i32 0, i32 0
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %25, align 8
  %27 = icmp ne %struct.TYPE_6__* %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %14
  br label %41

29:                                               ; preds = %14
  %30 = load %struct.uniphier_aio_sub*, %struct.uniphier_aio_sub** %7, align 8
  %31 = getelementptr inbounds %struct.uniphier_aio_sub, %struct.uniphier_aio_sub* %30, i32 0, i32 0
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* %5, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %40

38:                                               ; preds = %29
  %39 = load %struct.uniphier_aio_sub*, %struct.uniphier_aio_sub** %7, align 8
  store %struct.uniphier_aio_sub* %39, %struct.uniphier_aio_sub** %3, align 8
  br label %45

40:                                               ; preds = %29
  br label %41

41:                                               ; preds = %40, %28
  %42 = load i32, i32* %6, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %6, align 4
  br label %8

44:                                               ; preds = %8
  store %struct.uniphier_aio_sub* null, %struct.uniphier_aio_sub** %3, align 8
  br label %45

45:                                               ; preds = %44, %38
  %46 = load %struct.uniphier_aio_sub*, %struct.uniphier_aio_sub** %3, align 8
  ret %struct.uniphier_aio_sub* %46
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
