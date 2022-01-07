; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/lx6464es/extr_lx_core.c_lx_level_peaks.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/lx6464es/extr_lx_core.c_lx_level_peaks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lx6464es = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32*, i32* }

@CMD_12_GET_PEAK = common dso_local global i32 0, align 4
@peak_map = common dso_local global i64* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lx_level_peaks(%struct.lx6464es* %0, i32 %1, i32 %2, i64* %3) #0 {
  %5 = alloca %struct.lx6464es*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store %struct.lx6464es* %0, %struct.lx6464es** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i64* %3, i64** %8, align 8
  store i32 0, i32* %9, align 4
  %15 = load %struct.lx6464es*, %struct.lx6464es** %5, align 8
  %16 = getelementptr inbounds %struct.lx6464es, %struct.lx6464es* %15, i32 0, i32 0
  %17 = call i32 @mutex_lock(i32* %16)
  store i32 0, i32* %10, align 4
  br label %18

18:                                               ; preds = %107, %4
  %19 = load i32, i32* %10, align 4
  %20 = load i32, i32* %7, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %110

22:                                               ; preds = %18
  %23 = load %struct.lx6464es*, %struct.lx6464es** %5, align 8
  %24 = getelementptr inbounds %struct.lx6464es, %struct.lx6464es* %23, i32 0, i32 1
  %25 = load i32, i32* @CMD_12_GET_PEAK, align 4
  %26 = call i32 @lx_message_init(%struct.TYPE_3__* %24, i32 %25)
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* %10, align 4
  %29 = call i32 @PIPE_INFO_TO_CMD(i32 %27, i32 %28)
  %30 = load %struct.lx6464es*, %struct.lx6464es** %5, align 8
  %31 = getelementptr inbounds %struct.lx6464es, %struct.lx6464es* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 1
  %33 = load i32*, i32** %32, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 0
  %35 = load i32, i32* %34, align 4
  %36 = or i32 %35, %29
  store i32 %36, i32* %34, align 4
  %37 = load %struct.lx6464es*, %struct.lx6464es** %5, align 8
  %38 = load %struct.lx6464es*, %struct.lx6464es** %5, align 8
  %39 = getelementptr inbounds %struct.lx6464es, %struct.lx6464es* %38, i32 0, i32 1
  %40 = call i32 @lx_message_send_atomic(%struct.lx6464es* %37, %struct.TYPE_3__* %39)
  store i32 %40, i32* %9, align 4
  %41 = load i32, i32* %9, align 4
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %91

43:                                               ; preds = %22
  %44 = load i64*, i64** @peak_map, align 8
  %45 = load %struct.lx6464es*, %struct.lx6464es** %5, align 8
  %46 = getelementptr inbounds %struct.lx6464es, %struct.lx6464es* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 0
  %50 = load i32, i32* %49, align 4
  %51 = and i32 %50, 15
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i64, i64* %44, i64 %52
  %54 = load i64, i64* %53, align 8
  store i64 %54, i64* %11, align 8
  %55 = load i64*, i64** @peak_map, align 8
  %56 = load %struct.lx6464es*, %struct.lx6464es** %5, align 8
  %57 = getelementptr inbounds %struct.lx6464es, %struct.lx6464es* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 0
  %59 = load i32*, i32** %58, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 0
  %61 = load i32, i32* %60, align 4
  %62 = ashr i32 %61, 4
  %63 = and i32 %62, 15
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i64, i64* %55, i64 %64
  %66 = load i64, i64* %65, align 8
  store i64 %66, i64* %12, align 8
  %67 = load i64*, i64** @peak_map, align 8
  %68 = load %struct.lx6464es*, %struct.lx6464es** %5, align 8
  %69 = getelementptr inbounds %struct.lx6464es, %struct.lx6464es* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 0
  %71 = load i32*, i32** %70, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 0
  %73 = load i32, i32* %72, align 4
  %74 = ashr i32 %73, 8
  %75 = and i32 %74, 15
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i64, i64* %67, i64 %76
  %78 = load i64, i64* %77, align 8
  store i64 %78, i64* %13, align 8
  %79 = load i64*, i64** @peak_map, align 8
  %80 = load %struct.lx6464es*, %struct.lx6464es** %5, align 8
  %81 = getelementptr inbounds %struct.lx6464es, %struct.lx6464es* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 0
  %83 = load i32*, i32** %82, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 0
  %85 = load i32, i32* %84, align 4
  %86 = ashr i32 %85, 12
  %87 = and i32 %86, 15
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i64, i64* %79, i64 %88
  %90 = load i64, i64* %89, align 8
  store i64 %90, i64* %14, align 8
  br label %92

91:                                               ; preds = %22
  store i64 0, i64* %14, align 8
  store i64 0, i64* %13, align 8
  store i64 0, i64* %12, align 8
  store i64 0, i64* %11, align 8
  br label %92

92:                                               ; preds = %91, %43
  %93 = load i64, i64* %11, align 8
  %94 = load i64*, i64** %8, align 8
  %95 = getelementptr inbounds i64, i64* %94, i64 0
  store i64 %93, i64* %95, align 8
  %96 = load i64, i64* %12, align 8
  %97 = load i64*, i64** %8, align 8
  %98 = getelementptr inbounds i64, i64* %97, i64 1
  store i64 %96, i64* %98, align 8
  %99 = load i64, i64* %13, align 8
  %100 = load i64*, i64** %8, align 8
  %101 = getelementptr inbounds i64, i64* %100, i64 2
  store i64 %99, i64* %101, align 8
  %102 = load i64, i64* %14, align 8
  %103 = load i64*, i64** %8, align 8
  %104 = getelementptr inbounds i64, i64* %103, i64 3
  store i64 %102, i64* %104, align 8
  %105 = load i64*, i64** %8, align 8
  %106 = getelementptr inbounds i64, i64* %105, i64 4
  store i64* %106, i64** %8, align 8
  br label %107

107:                                              ; preds = %92
  %108 = load i32, i32* %10, align 4
  %109 = add nsw i32 %108, 4
  store i32 %109, i32* %10, align 4
  br label %18

110:                                              ; preds = %18
  %111 = load %struct.lx6464es*, %struct.lx6464es** %5, align 8
  %112 = getelementptr inbounds %struct.lx6464es, %struct.lx6464es* %111, i32 0, i32 0
  %113 = call i32 @mutex_unlock(i32* %112)
  %114 = load i32, i32* %9, align 4
  ret i32 %114
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @lx_message_init(%struct.TYPE_3__*, i32) #1

declare dso_local i32 @PIPE_INFO_TO_CMD(i32, i32) #1

declare dso_local i32 @lx_message_send_atomic(%struct.lx6464es*, %struct.TYPE_3__*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
