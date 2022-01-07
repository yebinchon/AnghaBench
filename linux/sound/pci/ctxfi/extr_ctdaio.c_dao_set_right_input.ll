; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/ctxfi/extr_ctdaio.c_dao_set_right_input.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/ctxfi/extr_ctdaio.c_dao_set_right_input.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dao = type { %struct.imapper**, %struct.TYPE_15__*, %struct.TYPE_10__*, %struct.daio }
%struct.imapper = type { i32, i32, i32 }
%struct.TYPE_15__ = type { i32 (%struct.TYPE_15__*, %struct.imapper*)* }
%struct.TYPE_10__ = type { i32 (%struct.dao*)* }
%struct.daio = type { %struct.TYPE_14__, %struct.TYPE_11__ }
%struct.TYPE_14__ = type { i32, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32 (%struct.TYPE_14__*)*, i32 (%struct.TYPE_14__*)*, i32 (%struct.TYPE_14__*)* }
%struct.TYPE_11__ = type { i32 }
%struct.rsc = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32 (%struct.rsc*)*, i32 (%struct.rsc*)*, i32 (%struct.rsc*)* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dao*, %struct.rsc*)* @dao_set_right_input to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dao_set_right_input(%struct.dao* %0, %struct.rsc* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dao*, align 8
  %5 = alloca %struct.rsc*, align 8
  %6 = alloca %struct.imapper*, align 8
  %7 = alloca %struct.daio*, align 8
  %8 = alloca i32, align 4
  store %struct.dao* %0, %struct.dao** %4, align 8
  store %struct.rsc* %1, %struct.rsc** %5, align 8
  %9 = load %struct.dao*, %struct.dao** %4, align 8
  %10 = getelementptr inbounds %struct.dao, %struct.dao* %9, i32 0, i32 3
  store %struct.daio* %10, %struct.daio** %7, align 8
  %11 = load %struct.daio*, %struct.daio** %7, align 8
  %12 = getelementptr inbounds %struct.daio, %struct.daio* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = sext i32 %14 to i64
  %16 = mul i64 12, %15
  %17 = trunc i64 %16 to i32
  %18 = load i32, i32* @GFP_KERNEL, align 4
  %19 = call %struct.imapper* @kzalloc(i32 %17, i32 %18)
  store %struct.imapper* %19, %struct.imapper** %6, align 8
  %20 = load %struct.imapper*, %struct.imapper** %6, align 8
  %21 = icmp ne %struct.imapper* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %2
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %139

25:                                               ; preds = %2
  %26 = load %struct.dao*, %struct.dao** %4, align 8
  %27 = getelementptr inbounds %struct.dao, %struct.dao* %26, i32 0, i32 2
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 0
  %30 = load i32 (%struct.dao*)*, i32 (%struct.dao*)** %29, align 8
  %31 = load %struct.dao*, %struct.dao** %4, align 8
  %32 = call i32 %30(%struct.dao* %31)
  %33 = load %struct.rsc*, %struct.rsc** %5, align 8
  %34 = getelementptr inbounds %struct.rsc, %struct.rsc* %33, i32 0, i32 0
  %35 = load %struct.TYPE_12__*, %struct.TYPE_12__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %35, i32 0, i32 0
  %37 = load i32 (%struct.rsc*)*, i32 (%struct.rsc*)** %36, align 8
  %38 = load %struct.rsc*, %struct.rsc** %5, align 8
  %39 = call i32 %37(%struct.rsc* %38)
  %40 = load %struct.daio*, %struct.daio** %7, align 8
  %41 = getelementptr inbounds %struct.daio, %struct.daio* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %41, i32 0, i32 1
  %43 = load %struct.TYPE_13__*, %struct.TYPE_13__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %43, i32 0, i32 0
  %45 = load i32 (%struct.TYPE_14__*)*, i32 (%struct.TYPE_14__*)** %44, align 8
  %46 = load %struct.daio*, %struct.daio** %7, align 8
  %47 = getelementptr inbounds %struct.daio, %struct.daio* %46, i32 0, i32 0
  %48 = call i32 %45(%struct.TYPE_14__* %47)
  store i32 0, i32* %8, align 4
  br label %49

49:                                               ; preds = %117, %25
  %50 = load i32, i32* %8, align 4
  %51 = load %struct.daio*, %struct.daio** %7, align 8
  %52 = getelementptr inbounds %struct.daio, %struct.daio* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = icmp slt i32 %50, %54
  br i1 %55, label %56, label %122

56:                                               ; preds = %49
  %57 = load %struct.rsc*, %struct.rsc** %5, align 8
  %58 = getelementptr inbounds %struct.rsc, %struct.rsc* %57, i32 0, i32 0
  %59 = load %struct.TYPE_12__*, %struct.TYPE_12__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %59, i32 0, i32 2
  %61 = load i32 (%struct.rsc*)*, i32 (%struct.rsc*)** %60, align 8
  %62 = load %struct.rsc*, %struct.rsc** %5, align 8
  %63 = call i32 %61(%struct.rsc* %62)
  %64 = load %struct.imapper*, %struct.imapper** %6, align 8
  %65 = getelementptr inbounds %struct.imapper, %struct.imapper* %64, i32 0, i32 2
  store i32 %63, i32* %65, align 4
  %66 = load %struct.daio*, %struct.daio** %7, align 8
  %67 = getelementptr inbounds %struct.daio, %struct.daio* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %67, i32 0, i32 1
  %69 = load %struct.TYPE_13__*, %struct.TYPE_13__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %69, i32 0, i32 2
  %71 = load i32 (%struct.TYPE_14__*)*, i32 (%struct.TYPE_14__*)** %70, align 8
  %72 = load %struct.daio*, %struct.daio** %7, align 8
  %73 = getelementptr inbounds %struct.daio, %struct.daio* %72, i32 0, i32 0
  %74 = call i32 %71(%struct.TYPE_14__* %73)
  %75 = load %struct.imapper*, %struct.imapper** %6, align 8
  %76 = getelementptr inbounds %struct.imapper, %struct.imapper* %75, i32 0, i32 0
  store i32 %74, i32* %76, align 4
  %77 = load %struct.imapper*, %struct.imapper** %6, align 8
  %78 = getelementptr inbounds %struct.imapper, %struct.imapper* %77, i32 0, i32 1
  store i32 %74, i32* %78, align 4
  %79 = load %struct.dao*, %struct.dao** %4, align 8
  %80 = getelementptr inbounds %struct.dao, %struct.dao* %79, i32 0, i32 1
  %81 = load %struct.TYPE_15__*, %struct.TYPE_15__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %81, i32 0, i32 0
  %83 = load i32 (%struct.TYPE_15__*, %struct.imapper*)*, i32 (%struct.TYPE_15__*, %struct.imapper*)** %82, align 8
  %84 = load %struct.dao*, %struct.dao** %4, align 8
  %85 = getelementptr inbounds %struct.dao, %struct.dao* %84, i32 0, i32 1
  %86 = load %struct.TYPE_15__*, %struct.TYPE_15__** %85, align 8
  %87 = load %struct.imapper*, %struct.imapper** %6, align 8
  %88 = call i32 %83(%struct.TYPE_15__* %86, %struct.imapper* %87)
  %89 = load %struct.imapper*, %struct.imapper** %6, align 8
  %90 = load %struct.dao*, %struct.dao** %4, align 8
  %91 = getelementptr inbounds %struct.dao, %struct.dao* %90, i32 0, i32 0
  %92 = load %struct.imapper**, %struct.imapper*** %91, align 8
  %93 = load %struct.daio*, %struct.daio** %7, align 8
  %94 = getelementptr inbounds %struct.daio, %struct.daio* %93, i32 0, i32 1
  %95 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = load i32, i32* %8, align 4
  %98 = add nsw i32 %96, %97
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds %struct.imapper*, %struct.imapper** %92, i64 %99
  store %struct.imapper* %89, %struct.imapper** %100, align 8
  %101 = load %struct.rsc*, %struct.rsc** %5, align 8
  %102 = getelementptr inbounds %struct.rsc, %struct.rsc* %101, i32 0, i32 0
  %103 = load %struct.TYPE_12__*, %struct.TYPE_12__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %103, i32 0, i32 1
  %105 = load i32 (%struct.rsc*)*, i32 (%struct.rsc*)** %104, align 8
  %106 = load %struct.rsc*, %struct.rsc** %5, align 8
  %107 = call i32 %105(%struct.rsc* %106)
  %108 = load %struct.daio*, %struct.daio** %7, align 8
  %109 = getelementptr inbounds %struct.daio, %struct.daio* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %109, i32 0, i32 1
  %111 = load %struct.TYPE_13__*, %struct.TYPE_13__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %111, i32 0, i32 1
  %113 = load i32 (%struct.TYPE_14__*)*, i32 (%struct.TYPE_14__*)** %112, align 8
  %114 = load %struct.daio*, %struct.daio** %7, align 8
  %115 = getelementptr inbounds %struct.daio, %struct.daio* %114, i32 0, i32 0
  %116 = call i32 %113(%struct.TYPE_14__* %115)
  br label %117

117:                                              ; preds = %56
  %118 = load i32, i32* %8, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %8, align 4
  %120 = load %struct.imapper*, %struct.imapper** %6, align 8
  %121 = getelementptr inbounds %struct.imapper, %struct.imapper* %120, i32 1
  store %struct.imapper* %121, %struct.imapper** %6, align 8
  br label %49

122:                                              ; preds = %49
  %123 = load %struct.rsc*, %struct.rsc** %5, align 8
  %124 = getelementptr inbounds %struct.rsc, %struct.rsc* %123, i32 0, i32 0
  %125 = load %struct.TYPE_12__*, %struct.TYPE_12__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %125, i32 0, i32 0
  %127 = load i32 (%struct.rsc*)*, i32 (%struct.rsc*)** %126, align 8
  %128 = load %struct.rsc*, %struct.rsc** %5, align 8
  %129 = call i32 %127(%struct.rsc* %128)
  %130 = load %struct.daio*, %struct.daio** %7, align 8
  %131 = getelementptr inbounds %struct.daio, %struct.daio* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %131, i32 0, i32 1
  %133 = load %struct.TYPE_13__*, %struct.TYPE_13__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %133, i32 0, i32 0
  %135 = load i32 (%struct.TYPE_14__*)*, i32 (%struct.TYPE_14__*)** %134, align 8
  %136 = load %struct.daio*, %struct.daio** %7, align 8
  %137 = getelementptr inbounds %struct.daio, %struct.daio* %136, i32 0, i32 0
  %138 = call i32 %135(%struct.TYPE_14__* %137)
  store i32 0, i32* %3, align 4
  br label %139

139:                                              ; preds = %122, %22
  %140 = load i32, i32* %3, align 4
  ret i32 %140
}

declare dso_local %struct.imapper* @kzalloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
