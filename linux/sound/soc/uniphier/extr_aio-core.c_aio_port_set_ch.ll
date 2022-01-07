; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/uniphier/extr_aio-core.c_aio_port_set_ch.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/uniphier/extr_aio-core.c_aio_port_set_ch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uniphier_aio_sub = type { %struct.TYPE_6__*, i32, %struct.TYPE_8__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.regmap* }
%struct.regmap = type { i32 }

@OPORTMXTYSLOTCTR_SLOTSEL_SLOT0 = common dso_local global i32 0, align 4
@OPORTMXTYSLOTCTR_SLOTSEL_SLOT1 = common dso_local global i32 0, align 4
@OPORTMXTYSLOTCTR_SLOTSEL_SLOT2 = common dso_local global i32 0, align 4
@OPORTMXTYSLOTCTR_SLOTSEL_SLOT3 = common dso_local global i32 0, align 4
@OPORTMXTYSLOTCTR_SLOTSEL_SLOT4 = common dso_local global i32 0, align 4
@OPORTMXTYSLOTCTR_MODE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@AUD_MAX_SLOTSEL = common dso_local global i32 0, align 4
@OPORTMXTYSLOTCTR_SLOTSEL_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uniphier_aio_sub*)* @aio_port_set_ch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aio_port_set_ch(%struct.uniphier_aio_sub* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.uniphier_aio_sub*, align 8
  %4 = alloca %struct.regmap*, align 8
  %5 = alloca [5 x i32], align 16
  %6 = alloca [5 x i32], align 16
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store %struct.uniphier_aio_sub* %0, %struct.uniphier_aio_sub** %3, align 8
  %10 = load %struct.uniphier_aio_sub*, %struct.uniphier_aio_sub** %3, align 8
  %11 = getelementptr inbounds %struct.uniphier_aio_sub, %struct.uniphier_aio_sub* %10, i32 0, i32 2
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 0
  %16 = load %struct.regmap*, %struct.regmap** %15, align 8
  store %struct.regmap* %16, %struct.regmap** %4, align 8
  %17 = bitcast [5 x i32]* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %17, i8 0, i64 20, i1 false)
  %18 = getelementptr inbounds [5 x i32], [5 x i32]* %6, i64 0, i64 0
  %19 = load i32, i32* @OPORTMXTYSLOTCTR_SLOTSEL_SLOT0, align 4
  store i32 %19, i32* %18, align 4
  %20 = getelementptr inbounds i32, i32* %18, i64 1
  %21 = load i32, i32* @OPORTMXTYSLOTCTR_SLOTSEL_SLOT1, align 4
  store i32 %21, i32* %20, align 4
  %22 = getelementptr inbounds i32, i32* %20, i64 1
  %23 = load i32, i32* @OPORTMXTYSLOTCTR_SLOTSEL_SLOT2, align 4
  store i32 %23, i32* %22, align 4
  %24 = getelementptr inbounds i32, i32* %22, i64 1
  %25 = load i32, i32* @OPORTMXTYSLOTCTR_SLOTSEL_SLOT3, align 4
  store i32 %25, i32* %24, align 4
  %26 = getelementptr inbounds i32, i32* %24, i64 1
  %27 = load i32, i32* @OPORTMXTYSLOTCTR_SLOTSEL_SLOT4, align 4
  store i32 %27, i32* %26, align 4
  %28 = load %struct.uniphier_aio_sub*, %struct.uniphier_aio_sub** %3, align 8
  %29 = getelementptr inbounds %struct.uniphier_aio_sub, %struct.uniphier_aio_sub* %28, i32 0, i32 1
  %30 = call i32 @params_channels(i32* %29)
  switch i32 %30, label %36 [
    i32 8, label %31
    i32 6, label %31
    i32 2, label %34
  ]

31:                                               ; preds = %1, %1
  %32 = load i32, i32* @OPORTMXTYSLOTCTR_MODE, align 4
  store i32 %32, i32* %7, align 4
  %33 = getelementptr inbounds [5 x i32], [5 x i32]* %6, i64 0, i64 0
  store i32* %33, i32** %8, align 8
  br label %39

34:                                               ; preds = %1
  store i32 0, i32* %7, align 4
  %35 = getelementptr inbounds [5 x i32], [5 x i32]* %5, i64 0, i64 0
  store i32* %35, i32** %8, align 8
  br label %39

36:                                               ; preds = %1
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %2, align 4
  br label %77

39:                                               ; preds = %34, %31
  store i32 0, i32* %9, align 4
  br label %40

40:                                               ; preds = %73, %39
  %41 = load i32, i32* %9, align 4
  %42 = load i32, i32* @AUD_MAX_SLOTSEL, align 4
  %43 = icmp slt i32 %41, %42
  br i1 %43, label %44, label %76

44:                                               ; preds = %40
  %45 = load %struct.regmap*, %struct.regmap** %4, align 8
  %46 = load %struct.uniphier_aio_sub*, %struct.uniphier_aio_sub** %3, align 8
  %47 = getelementptr inbounds %struct.uniphier_aio_sub, %struct.uniphier_aio_sub* %46, i32 0, i32 0
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* %9, align 4
  %53 = call i32 @OPORTMXTYSLOTCTR(i32 %51, i32 %52)
  %54 = load i32, i32* @OPORTMXTYSLOTCTR_MODE, align 4
  %55 = load i32, i32* %7, align 4
  %56 = call i32 @regmap_update_bits(%struct.regmap* %45, i32 %53, i32 %54, i32 %55)
  %57 = load %struct.regmap*, %struct.regmap** %4, align 8
  %58 = load %struct.uniphier_aio_sub*, %struct.uniphier_aio_sub** %3, align 8
  %59 = getelementptr inbounds %struct.uniphier_aio_sub, %struct.uniphier_aio_sub* %58, i32 0, i32 0
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* %9, align 4
  %65 = call i32 @OPORTMXTYSLOTCTR(i32 %63, i32 %64)
  %66 = load i32, i32* @OPORTMXTYSLOTCTR_SLOTSEL_MASK, align 4
  %67 = load i32*, i32** %8, align 8
  %68 = load i32, i32* %9, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %67, i64 %69
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @regmap_update_bits(%struct.regmap* %57, i32 %65, i32 %66, i32 %71)
  br label %73

73:                                               ; preds = %44
  %74 = load i32, i32* %9, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %9, align 4
  br label %40

76:                                               ; preds = %40
  store i32 0, i32* %2, align 4
  br label %77

77:                                               ; preds = %76, %36
  %78 = load i32, i32* %2, align 4
  ret i32 %78
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @params_channels(i32*) #2

declare dso_local i32 @regmap_update_bits(%struct.regmap*, i32, i32, i32) #2

declare dso_local i32 @OPORTMXTYSLOTCTR(i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
