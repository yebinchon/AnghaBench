; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/extr_intel8x0m.c_get_ich_codec_bit.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/extr_intel8x0m.c_get_ich_codec_bit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel8x0m = type { i32 }

@get_ich_codec_bit.codec_bit = internal global [3 x i32] [i32 130, i32 129, i32 128], align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel8x0m*, i32)* @get_ich_codec_bit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_ich_codec_bit(%struct.intel8x0m* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.intel8x0m*, align 8
  %5 = alloca i32, align 4
  store %struct.intel8x0m* %0, %struct.intel8x0m** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  %7 = icmp uge i32 %6, 3
  %8 = zext i1 %7 to i32
  %9 = call i64 @snd_BUG_ON(i32 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  store i32 130, i32* %3, align 4
  br label %17

12:                                               ; preds = %2
  %13 = load i32, i32* %5, align 4
  %14 = zext i32 %13 to i64
  %15 = getelementptr inbounds [3 x i32], [3 x i32]* @get_ich_codec_bit.codec_bit, i64 0, i64 %14
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %3, align 4
  br label %17

17:                                               ; preds = %12, %11
  %18 = load i32, i32* %3, align 4
  ret i32 %18
}

declare dso_local i64 @snd_BUG_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
