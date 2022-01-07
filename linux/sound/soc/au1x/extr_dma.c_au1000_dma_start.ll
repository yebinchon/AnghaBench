; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/au1x/extr_dma.c_au1000_dma_start.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/au1x/extr_dma.c_au1000_dma_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.audio_stream = type { i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.audio_stream*)* @au1000_dma_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @au1000_dma_start(%struct.audio_stream* %0) #0 {
  %2 = alloca %struct.audio_stream*, align 8
  store %struct.audio_stream* %0, %struct.audio_stream** %2, align 8
  %3 = load %struct.audio_stream*, %struct.audio_stream** %2, align 8
  %4 = getelementptr inbounds %struct.audio_stream, %struct.audio_stream* %3, i32 0, i32 2
  %5 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %6 = icmp ne %struct.TYPE_4__* %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  br label %109

8:                                                ; preds = %1
  %9 = load %struct.audio_stream*, %struct.audio_stream** %2, align 8
  %10 = getelementptr inbounds %struct.audio_stream, %struct.audio_stream* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @init_dma(i32 %11)
  %13 = load %struct.audio_stream*, %struct.audio_stream** %2, align 8
  %14 = getelementptr inbounds %struct.audio_stream, %struct.audio_stream* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call i64 @get_dma_active_buffer(i32 %15)
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %59

18:                                               ; preds = %8
  %19 = load %struct.audio_stream*, %struct.audio_stream** %2, align 8
  %20 = getelementptr inbounds %struct.audio_stream, %struct.audio_stream* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @clear_dma_done0(i32 %21)
  %23 = load %struct.audio_stream*, %struct.audio_stream** %2, align 8
  %24 = getelementptr inbounds %struct.audio_stream, %struct.audio_stream* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.audio_stream*, %struct.audio_stream** %2, align 8
  %27 = getelementptr inbounds %struct.audio_stream, %struct.audio_stream* %26, i32 0, i32 2
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @set_dma_addr0(i32 %25, i32 %30)
  %32 = load %struct.audio_stream*, %struct.audio_stream** %2, align 8
  %33 = getelementptr inbounds %struct.audio_stream, %struct.audio_stream* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.audio_stream*, %struct.audio_stream** %2, align 8
  %36 = getelementptr inbounds %struct.audio_stream, %struct.audio_stream* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = ashr i32 %37, 1
  %39 = call i32 @set_dma_count0(i32 %34, i32 %38)
  %40 = load %struct.audio_stream*, %struct.audio_stream** %2, align 8
  %41 = getelementptr inbounds %struct.audio_stream, %struct.audio_stream* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.audio_stream*, %struct.audio_stream** %2, align 8
  %44 = getelementptr inbounds %struct.audio_stream, %struct.audio_stream* %43, i32 0, i32 2
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @set_dma_addr1(i32 %42, i32 %49)
  %51 = load %struct.audio_stream*, %struct.audio_stream** %2, align 8
  %52 = getelementptr inbounds %struct.audio_stream, %struct.audio_stream* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.audio_stream*, %struct.audio_stream** %2, align 8
  %55 = getelementptr inbounds %struct.audio_stream, %struct.audio_stream* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = ashr i32 %56, 1
  %58 = call i32 @set_dma_count1(i32 %53, i32 %57)
  br label %100

59:                                               ; preds = %8
  %60 = load %struct.audio_stream*, %struct.audio_stream** %2, align 8
  %61 = getelementptr inbounds %struct.audio_stream, %struct.audio_stream* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @clear_dma_done1(i32 %62)
  %64 = load %struct.audio_stream*, %struct.audio_stream** %2, align 8
  %65 = getelementptr inbounds %struct.audio_stream, %struct.audio_stream* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.audio_stream*, %struct.audio_stream** %2, align 8
  %68 = getelementptr inbounds %struct.audio_stream, %struct.audio_stream* %67, i32 0, i32 2
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @set_dma_addr1(i32 %66, i32 %71)
  %73 = load %struct.audio_stream*, %struct.audio_stream** %2, align 8
  %74 = getelementptr inbounds %struct.audio_stream, %struct.audio_stream* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.audio_stream*, %struct.audio_stream** %2, align 8
  %77 = getelementptr inbounds %struct.audio_stream, %struct.audio_stream* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = ashr i32 %78, 1
  %80 = call i32 @set_dma_count1(i32 %75, i32 %79)
  %81 = load %struct.audio_stream*, %struct.audio_stream** %2, align 8
  %82 = getelementptr inbounds %struct.audio_stream, %struct.audio_stream* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.audio_stream*, %struct.audio_stream** %2, align 8
  %85 = getelementptr inbounds %struct.audio_stream, %struct.audio_stream* %84, i32 0, i32 2
  %86 = load %struct.TYPE_4__*, %struct.TYPE_4__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 0
  %88 = load %struct.TYPE_3__*, %struct.TYPE_3__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @set_dma_addr0(i32 %83, i32 %90)
  %92 = load %struct.audio_stream*, %struct.audio_stream** %2, align 8
  %93 = getelementptr inbounds %struct.audio_stream, %struct.audio_stream* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.audio_stream*, %struct.audio_stream** %2, align 8
  %96 = getelementptr inbounds %struct.audio_stream, %struct.audio_stream* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = ashr i32 %97, 1
  %99 = call i32 @set_dma_count0(i32 %94, i32 %98)
  br label %100

100:                                              ; preds = %59, %18
  %101 = load %struct.audio_stream*, %struct.audio_stream** %2, align 8
  %102 = getelementptr inbounds %struct.audio_stream, %struct.audio_stream* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @enable_dma_buffers(i32 %103)
  %105 = load %struct.audio_stream*, %struct.audio_stream** %2, align 8
  %106 = getelementptr inbounds %struct.audio_stream, %struct.audio_stream* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @start_dma(i32 %107)
  br label %109

109:                                              ; preds = %100, %7
  ret void
}

declare dso_local i32 @init_dma(i32) #1

declare dso_local i64 @get_dma_active_buffer(i32) #1

declare dso_local i32 @clear_dma_done0(i32) #1

declare dso_local i32 @set_dma_addr0(i32, i32) #1

declare dso_local i32 @set_dma_count0(i32, i32) #1

declare dso_local i32 @set_dma_addr1(i32, i32) #1

declare dso_local i32 @set_dma_count1(i32, i32) #1

declare dso_local i32 @clear_dma_done1(i32) #1

declare dso_local i32 @enable_dma_buffers(i32) #1

declare dso_local i32 @start_dma(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
