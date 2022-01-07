; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/au88x0/extr_au88x0_synth.c_vortex_wt_allocroute.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/au88x0/extr_au88x0_synth.c_vortex_wt_allocroute.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, %struct.TYPE_9__*, %struct.TYPE_10__* }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_10__ = type { i32, i32 }

@.str = private unnamed_addr constant [14 x i8] c"WT PARM3: %x\0A\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"WT GMODE: %x\0A\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"WT GMODE 2 : %x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__*, i32, i32)* @vortex_wt_allocroute to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vortex_wt_allocroute(%struct.TYPE_11__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %9, i32 0, i32 2
  %11 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %12 = load i32, i32* %5, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i64 %13
  store %struct.TYPE_10__* %14, %struct.TYPE_10__** %7, align 8
  %15 = load i32, i32* %6, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %29

17:                                               ; preds = %3
  %18 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %19 = load i32, i32* %5, align 4
  %20 = call i32 @vortex_fifo_wtinitialize(%struct.TYPE_11__* %18, i32 %19, i32 1)
  %21 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %22 = load i32, i32* %5, align 4
  %23 = call i32 @vortex_fifo_setwtvalid(%struct.TYPE_11__* %21, i32 %22, i32 1)
  %24 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* %6, align 4
  %27 = sub nsw i32 %26, 1
  %28 = call i32 @vortex_wt_setstereo(%struct.TYPE_11__* %24, i32 %25, i32 %27)
  br label %33

29:                                               ; preds = %3
  %30 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %31 = load i32, i32* %5, align 4
  %32 = call i32 @vortex_fifo_setwtvalid(%struct.TYPE_11__* %30, i32 %31, i32 0)
  br label %33

33:                                               ; preds = %29, %17
  %34 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %35 = load i32, i32* %5, align 4
  %36 = call i32 @vortex_wt_setdsout(%struct.TYPE_11__* %34, i32 %35, i32 1)
  %37 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @WT_SRAMP(i32 0)
  %41 = call i32 @hwwrite(i32 %39, i32 %40, i32 8912896)
  %42 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* %5, align 4
  %46 = call i32 @WT_PARM(i32 %45, i32 0)
  %47 = call i32 @hwwrite(i32 %44, i32 %46, i32 0)
  %48 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* %5, align 4
  %52 = call i32 @WT_PARM(i32 %51, i32 1)
  %53 = call i32 @hwwrite(i32 %50, i32 %52, i32 0)
  %54 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* %5, align 4
  %58 = call i32 @WT_PARM(i32 %57, i32 2)
  %59 = call i32 @hwwrite(i32 %56, i32 %58, i32 0)
  %60 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* %5, align 4
  %64 = call i32 @WT_PARM(i32 %63, i32 3)
  %65 = call i32 @hwread(i32 %62, i32 %64)
  store i32 %65, i32* %8, align 4
  %66 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %67 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %66, i32 0, i32 1
  %68 = load %struct.TYPE_9__*, %struct.TYPE_9__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* %8, align 4
  %72 = call i32 @dev_dbg(i32 %70, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %71)
  %73 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %74 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* %5, align 4
  %77 = call i32 @WT_DELAY(i32 %76, i32 0)
  %78 = call i32 @hwwrite(i32 %75, i32 %77, i32 0)
  %79 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %80 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = load i32, i32* %5, align 4
  %83 = call i32 @WT_DELAY(i32 %82, i32 1)
  %84 = call i32 @hwwrite(i32 %81, i32 %83, i32 0)
  %85 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %86 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = load i32, i32* %5, align 4
  %89 = call i32 @WT_DELAY(i32 %88, i32 2)
  %90 = call i32 @hwwrite(i32 %87, i32 %89, i32 0)
  %91 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %92 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = load i32, i32* %5, align 4
  %95 = call i32 @WT_DELAY(i32 %94, i32 3)
  %96 = call i32 @hwwrite(i32 %93, i32 %95, i32 0)
  %97 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %98 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %97, i32 0, i32 1
  %99 = load %struct.TYPE_9__*, %struct.TYPE_9__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %103 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = load i32, i32* %5, align 4
  %106 = call i32 @WT_GMODE(i32 %105)
  %107 = call i32 @hwread(i32 %104, i32 %106)
  %108 = call i32 @dev_dbg(i32 %101, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 %107)
  %109 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %110 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = load i32, i32* %5, align 4
  %113 = call i32 @WT_PARM(i32 %112, i32 2)
  %114 = call i32 @hwwrite(i32 %111, i32 %113, i32 -1)
  %115 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %116 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = load i32, i32* %5, align 4
  %119 = call i32 @WT_PARM(i32 %118, i32 3)
  %120 = call i32 @hwwrite(i32 %117, i32 %119, i32 -806238192)
  %121 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %122 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %121, i32 0, i32 1
  store i32 -810402257, i32* %122, align 4
  %123 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %124 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %123, i32 0, i32 0
  store i32 -810402257, i32* %124, align 4
  %125 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %126 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = load i32, i32* %5, align 4
  %129 = call i32 @WT_PARM(i32 %128, i32 0)
  %130 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %131 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = call i32 @hwwrite(i32 %127, i32 %129, i32 %132)
  %134 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %135 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = load i32, i32* %5, align 4
  %138 = call i32 @WT_PARM(i32 %137, i32 1)
  %139 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %140 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 4
  %142 = call i32 @hwwrite(i32 %136, i32 %138, i32 %141)
  %143 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %144 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %143, i32 0, i32 1
  %145 = load %struct.TYPE_9__*, %struct.TYPE_9__** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  %148 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %149 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = load i32, i32* %5, align 4
  %152 = call i32 @WT_GMODE(i32 %151)
  %153 = call i32 @hwread(i32 %150, i32 %152)
  %154 = call i32 @dev_dbg(i32 %147, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i32 %153)
  ret i32 0
}

declare dso_local i32 @vortex_fifo_wtinitialize(%struct.TYPE_11__*, i32, i32) #1

declare dso_local i32 @vortex_fifo_setwtvalid(%struct.TYPE_11__*, i32, i32) #1

declare dso_local i32 @vortex_wt_setstereo(%struct.TYPE_11__*, i32, i32) #1

declare dso_local i32 @vortex_wt_setdsout(%struct.TYPE_11__*, i32, i32) #1

declare dso_local i32 @hwwrite(i32, i32, i32) #1

declare dso_local i32 @WT_SRAMP(i32) #1

declare dso_local i32 @WT_PARM(i32, i32) #1

declare dso_local i32 @hwread(i32, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

declare dso_local i32 @WT_DELAY(i32, i32) #1

declare dso_local i32 @WT_GMODE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
