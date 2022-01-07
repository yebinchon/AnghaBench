; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/extr_es1968.c_apu_index_set.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/extr_es1968.c_apu_index_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.es1968 = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@IDR1_CRAM_POINTER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"APU register select failed. (Timeout)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.es1968*, i64)* @apu_index_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @apu_index_set(%struct.es1968* %0, i64 %1) #0 {
  %3 = alloca %struct.es1968*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.es1968* %0, %struct.es1968** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load %struct.es1968*, %struct.es1968** %3, align 8
  %7 = load i32, i32* @IDR1_CRAM_POINTER, align 4
  %8 = load i64, i64* %4, align 8
  %9 = call i32 @__maestro_write(%struct.es1968* %6, i32 %7, i64 %8)
  store i32 0, i32* %5, align 4
  br label %10

10:                                               ; preds = %21, %2
  %11 = load i32, i32* %5, align 4
  %12 = icmp slt i32 %11, 1000
  br i1 %12, label %13, label %24

13:                                               ; preds = %10
  %14 = load %struct.es1968*, %struct.es1968** %3, align 8
  %15 = load i32, i32* @IDR1_CRAM_POINTER, align 4
  %16 = call i64 @__maestro_read(%struct.es1968* %14, i32 %15)
  %17 = load i64, i64* %4, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %13
  br label %31

20:                                               ; preds = %13
  br label %21

21:                                               ; preds = %20
  %22 = load i32, i32* %5, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %5, align 4
  br label %10

24:                                               ; preds = %10
  %25 = load %struct.es1968*, %struct.es1968** %3, align 8
  %26 = getelementptr inbounds %struct.es1968, %struct.es1968* %25, i32 0, i32 0
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @dev_dbg(i32 %29, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  br label %31

31:                                               ; preds = %24, %19
  ret void
}

declare dso_local i32 @__maestro_write(%struct.es1968*, i32, i64) #1

declare dso_local i64 @__maestro_read(%struct.es1968*, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
