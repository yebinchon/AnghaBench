; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/ctxfi/extr_ctdaio.c_daio_rsc_init.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/ctxfi/extr_ctdaio.c_daio_rsc_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.daio = type { i64, %struct.TYPE_5__, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32* }
%struct.daio_desc = type { i64, i32 }
%struct.hw = type { i32 }

@idx_20k1 = common dso_local global %struct.TYPE_7__* null, align 8
@idx_20k2 = common dso_local global %struct.TYPE_6__* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@DAIO = common dso_local global i32 0, align 4
@DAIO_OUT_MAX = common dso_local global i64 0, align 8
@daio_out_rsc_ops = common dso_local global i32 0, align 4
@daio_in_rsc_ops_20k1 = common dso_local global i32 0, align 4
@daio_in_rsc_ops_20k2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.daio*, %struct.daio_desc*, %struct.hw*)* @daio_rsc_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @daio_rsc_init(%struct.daio* %0, %struct.daio_desc* %1, %struct.hw* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.daio*, align 8
  %6 = alloca %struct.daio_desc*, align 8
  %7 = alloca %struct.hw*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.daio* %0, %struct.daio** %5, align 8
  store %struct.daio_desc* %1, %struct.daio_desc** %6, align 8
  store %struct.hw* %2, %struct.hw** %7, align 8
  %11 = load %struct.hw*, %struct.hw** %7, align 8
  %12 = getelementptr inbounds %struct.hw, %struct.hw* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  switch i32 %13, label %44 [
    i32 129, label %14
    i32 128, label %29
  ]

14:                                               ; preds = %3
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** @idx_20k1, align 8
  %16 = load %struct.daio_desc*, %struct.daio_desc** %6, align 8
  %17 = getelementptr inbounds %struct.daio_desc, %struct.daio_desc* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i64 %18
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %9, align 4
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** @idx_20k1, align 8
  %23 = load %struct.daio_desc*, %struct.daio_desc** %6, align 8
  %24 = getelementptr inbounds %struct.daio_desc, %struct.daio_desc* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %10, align 4
  br label %47

29:                                               ; preds = %3
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** @idx_20k2, align 8
  %31 = load %struct.daio_desc*, %struct.daio_desc** %6, align 8
  %32 = getelementptr inbounds %struct.daio_desc, %struct.daio_desc* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %9, align 4
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** @idx_20k2, align 8
  %38 = load %struct.daio_desc*, %struct.daio_desc** %6, align 8
  %39 = getelementptr inbounds %struct.daio_desc, %struct.daio_desc* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  store i32 %43, i32* %10, align 4
  br label %47

44:                                               ; preds = %3
  %45 = load i32, i32* @EINVAL, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %4, align 4
  br label %118

47:                                               ; preds = %29, %14
  %48 = load %struct.daio*, %struct.daio** %5, align 8
  %49 = getelementptr inbounds %struct.daio, %struct.daio* %48, i32 0, i32 1
  %50 = load i32, i32* %9, align 4
  %51 = load i32, i32* @DAIO, align 4
  %52 = load %struct.daio_desc*, %struct.daio_desc** %6, align 8
  %53 = getelementptr inbounds %struct.daio_desc, %struct.daio_desc* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.hw*, %struct.hw** %7, align 8
  %56 = call i32 @rsc_init(%struct.TYPE_5__* %49, i32 %50, i32 %51, i32 %54, %struct.hw* %55)
  store i32 %56, i32* %8, align 4
  %57 = load i32, i32* %8, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %47
  %60 = load i32, i32* %8, align 4
  store i32 %60, i32* %4, align 4
  br label %118

61:                                               ; preds = %47
  %62 = load %struct.daio*, %struct.daio** %5, align 8
  %63 = getelementptr inbounds %struct.daio, %struct.daio* %62, i32 0, i32 2
  %64 = load i32, i32* %10, align 4
  %65 = load i32, i32* @DAIO, align 4
  %66 = load %struct.daio_desc*, %struct.daio_desc** %6, align 8
  %67 = getelementptr inbounds %struct.daio_desc, %struct.daio_desc* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.hw*, %struct.hw** %7, align 8
  %70 = call i32 @rsc_init(%struct.TYPE_5__* %63, i32 %64, i32 %65, i32 %68, %struct.hw* %69)
  store i32 %70, i32* %8, align 4
  %71 = load i32, i32* %8, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %61
  br label %113

74:                                               ; preds = %61
  %75 = load %struct.daio_desc*, %struct.daio_desc** %6, align 8
  %76 = getelementptr inbounds %struct.daio_desc, %struct.daio_desc* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @DAIO_OUT_MAX, align 8
  %79 = icmp ule i64 %77, %78
  br i1 %79, label %80, label %87

80:                                               ; preds = %74
  %81 = load %struct.daio*, %struct.daio** %5, align 8
  %82 = getelementptr inbounds %struct.daio, %struct.daio* %81, i32 0, i32 2
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 0
  store i32* @daio_out_rsc_ops, i32** %83, align 8
  %84 = load %struct.daio*, %struct.daio** %5, align 8
  %85 = getelementptr inbounds %struct.daio, %struct.daio* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 0
  store i32* @daio_out_rsc_ops, i32** %86, align 8
  br label %107

87:                                               ; preds = %74
  %88 = load %struct.hw*, %struct.hw** %7, align 8
  %89 = getelementptr inbounds %struct.hw, %struct.hw* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  switch i32 %90, label %105 [
    i32 129, label %91
    i32 128, label %98
  ]

91:                                               ; preds = %87
  %92 = load %struct.daio*, %struct.daio** %5, align 8
  %93 = getelementptr inbounds %struct.daio, %struct.daio* %92, i32 0, i32 2
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i32 0, i32 0
  store i32* @daio_in_rsc_ops_20k1, i32** %94, align 8
  %95 = load %struct.daio*, %struct.daio** %5, align 8
  %96 = getelementptr inbounds %struct.daio, %struct.daio* %95, i32 0, i32 1
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %96, i32 0, i32 0
  store i32* @daio_in_rsc_ops_20k1, i32** %97, align 8
  br label %106

98:                                               ; preds = %87
  %99 = load %struct.daio*, %struct.daio** %5, align 8
  %100 = getelementptr inbounds %struct.daio, %struct.daio* %99, i32 0, i32 2
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %100, i32 0, i32 0
  store i32* @daio_in_rsc_ops_20k2, i32** %101, align 8
  %102 = load %struct.daio*, %struct.daio** %5, align 8
  %103 = getelementptr inbounds %struct.daio, %struct.daio* %102, i32 0, i32 1
  %104 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %103, i32 0, i32 0
  store i32* @daio_in_rsc_ops_20k2, i32** %104, align 8
  br label %106

105:                                              ; preds = %87
  br label %106

106:                                              ; preds = %105, %98, %91
  br label %107

107:                                              ; preds = %106, %80
  %108 = load %struct.daio_desc*, %struct.daio_desc** %6, align 8
  %109 = getelementptr inbounds %struct.daio_desc, %struct.daio_desc* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = load %struct.daio*, %struct.daio** %5, align 8
  %112 = getelementptr inbounds %struct.daio, %struct.daio* %111, i32 0, i32 0
  store i64 %110, i64* %112, align 8
  store i32 0, i32* %4, align 4
  br label %118

113:                                              ; preds = %73
  %114 = load %struct.daio*, %struct.daio** %5, align 8
  %115 = getelementptr inbounds %struct.daio, %struct.daio* %114, i32 0, i32 1
  %116 = call i32 @rsc_uninit(%struct.TYPE_5__* %115)
  %117 = load i32, i32* %8, align 4
  store i32 %117, i32* %4, align 4
  br label %118

118:                                              ; preds = %113, %107, %59, %44
  %119 = load i32, i32* %4, align 4
  ret i32 %119
}

declare dso_local i32 @rsc_init(%struct.TYPE_5__*, i32, i32, i32, %struct.hw*) #1

declare dso_local i32 @rsc_uninit(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
