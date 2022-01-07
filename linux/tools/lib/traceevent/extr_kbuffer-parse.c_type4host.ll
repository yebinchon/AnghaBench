; ModuleID = '/home/carl/AnghaBench/linux/tools/lib/traceevent/extr_kbuffer-parse.c_type4host.c'
source_filename = "/home/carl/AnghaBench/linux/tools/lib/traceevent/extr_kbuffer-parse.c_type4host.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kbuffer = type { i32 }

@KBUFFER_FL_BIG_ENDIAN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kbuffer*, i32)* @type4host to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @type4host(%struct.kbuffer* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.kbuffer*, align 8
  %5 = alloca i32, align 4
  store %struct.kbuffer* %0, %struct.kbuffer** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.kbuffer*, %struct.kbuffer** %4, align 8
  %7 = getelementptr inbounds %struct.kbuffer, %struct.kbuffer* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @KBUFFER_FL_BIG_ENDIAN, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %2
  %13 = load i32, i32* %5, align 4
  %14 = lshr i32 %13, 29
  %15 = and i32 %14, 3
  store i32 %15, i32* %3, align 4
  br label %19

16:                                               ; preds = %2
  %17 = load i32, i32* %5, align 4
  %18 = and i32 %17, 3
  store i32 %18, i32* %3, align 4
  br label %19

19:                                               ; preds = %16, %12
  %20 = load i32, i32* %3, align 4
  ret i32 %20
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
