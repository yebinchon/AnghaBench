; ModuleID = '/home/carl/AnghaBench/linux/samples/mic/mpssd/extr_mpssd.c_change_virtblk_backend.c'
source_filename = "/home/carl/AnghaBench/linux/samples/mic/mpssd/extr_mpssd.c_change_virtblk_backend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.mic_info* }
%struct.mic_info = type { %struct.TYPE_3__, %struct.mic_info* }
%struct.TYPE_3__ = type { i32 }

@mic_list = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32*, i8*)* @change_virtblk_backend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @change_virtblk_backend(i32 %0, i32* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.mic_info*, align 8
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  store i8* %2, i8** %6, align 8
  %8 = load %struct.mic_info*, %struct.mic_info** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @mic_list, i32 0, i32 0), align 8
  store %struct.mic_info* %8, %struct.mic_info** %7, align 8
  br label %9

9:                                                ; preds = %16, %3
  %10 = load %struct.mic_info*, %struct.mic_info** %7, align 8
  %11 = icmp ne %struct.mic_info* %10, null
  br i1 %11, label %12, label %20

12:                                               ; preds = %9
  %13 = load %struct.mic_info*, %struct.mic_info** %7, align 8
  %14 = getelementptr inbounds %struct.mic_info, %struct.mic_info* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  store i32 1, i32* %15, align 8
  br label %16

16:                                               ; preds = %12
  %17 = load %struct.mic_info*, %struct.mic_info** %7, align 8
  %18 = getelementptr inbounds %struct.mic_info, %struct.mic_info* %17, i32 0, i32 1
  %19 = load %struct.mic_info*, %struct.mic_info** %18, align 8
  store %struct.mic_info* %19, %struct.mic_info** %7, align 8
  br label %9

20:                                               ; preds = %9
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
