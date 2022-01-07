; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/lola/extr_lola_pcm.c_lola_cleanup_slave_streams.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/lola/extr_lola_pcm.c_lola_cleanup_slave_streams.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lola_pcm = type { i32, %struct.lola_stream* }
%struct.lola_stream = type { i32, i64, %struct.lola_stream* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lola_pcm*, %struct.lola_stream*)* @lola_cleanup_slave_streams to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lola_cleanup_slave_streams(%struct.lola_pcm* %0, %struct.lola_stream* %1) #0 {
  %3 = alloca %struct.lola_pcm*, align 8
  %4 = alloca %struct.lola_stream*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.lola_stream*, align 8
  store %struct.lola_pcm* %0, %struct.lola_pcm** %3, align 8
  store %struct.lola_stream* %1, %struct.lola_stream** %4, align 8
  %7 = load %struct.lola_stream*, %struct.lola_stream** %4, align 8
  %8 = getelementptr inbounds %struct.lola_stream, %struct.lola_stream* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = add nsw i32 %9, 1
  store i32 %10, i32* %5, align 4
  br label %11

11:                                               ; preds = %35, %2
  %12 = load i32, i32* %5, align 4
  %13 = load %struct.lola_pcm*, %struct.lola_pcm** %3, align 8
  %14 = getelementptr inbounds %struct.lola_pcm, %struct.lola_pcm* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp slt i32 %12, %15
  br i1 %16, label %17, label %38

17:                                               ; preds = %11
  %18 = load %struct.lola_pcm*, %struct.lola_pcm** %3, align 8
  %19 = getelementptr inbounds %struct.lola_pcm, %struct.lola_pcm* %18, i32 0, i32 1
  %20 = load %struct.lola_stream*, %struct.lola_stream** %19, align 8
  %21 = load i32, i32* %5, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.lola_stream, %struct.lola_stream* %20, i64 %22
  store %struct.lola_stream* %23, %struct.lola_stream** %6, align 8
  %24 = load %struct.lola_stream*, %struct.lola_stream** %6, align 8
  %25 = getelementptr inbounds %struct.lola_stream, %struct.lola_stream* %24, i32 0, i32 2
  %26 = load %struct.lola_stream*, %struct.lola_stream** %25, align 8
  %27 = load %struct.lola_stream*, %struct.lola_stream** %4, align 8
  %28 = icmp ne %struct.lola_stream* %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %17
  br label %38

30:                                               ; preds = %17
  %31 = load %struct.lola_stream*, %struct.lola_stream** %6, align 8
  %32 = getelementptr inbounds %struct.lola_stream, %struct.lola_stream* %31, i32 0, i32 2
  store %struct.lola_stream* null, %struct.lola_stream** %32, align 8
  %33 = load %struct.lola_stream*, %struct.lola_stream** %6, align 8
  %34 = getelementptr inbounds %struct.lola_stream, %struct.lola_stream* %33, i32 0, i32 1
  store i64 0, i64* %34, align 8
  br label %35

35:                                               ; preds = %30
  %36 = load i32, i32* %5, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %5, align 4
  br label %11

38:                                               ; preds = %29, %11
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
