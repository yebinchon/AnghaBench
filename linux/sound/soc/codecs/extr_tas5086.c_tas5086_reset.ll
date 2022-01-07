; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_tas5086.c_tas5086_reset.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_tas5086.c_tas5086_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tas5086_private = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tas5086_private*)* @tas5086_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tas5086_reset(%struct.tas5086_private* %0) #0 {
  %2 = alloca %struct.tas5086_private*, align 8
  store %struct.tas5086_private* %0, %struct.tas5086_private** %2, align 8
  %3 = load %struct.tas5086_private*, %struct.tas5086_private** %2, align 8
  %4 = getelementptr inbounds %struct.tas5086_private, %struct.tas5086_private* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  %6 = call i64 @gpio_is_valid(i32 %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %19

8:                                                ; preds = %1
  %9 = load %struct.tas5086_private*, %struct.tas5086_private** %2, align 8
  %10 = getelementptr inbounds %struct.tas5086_private, %struct.tas5086_private* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @gpio_direction_output(i32 %11, i32 0)
  %13 = call i32 @udelay(i32 1)
  %14 = load %struct.tas5086_private*, %struct.tas5086_private** %2, align 8
  %15 = getelementptr inbounds %struct.tas5086_private, %struct.tas5086_private* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @gpio_set_value(i32 %16, i32 1)
  %18 = call i32 @msleep(i32 15)
  br label %19

19:                                               ; preds = %8, %1
  ret void
}

declare dso_local i64 @gpio_is_valid(i32) #1

declare dso_local i32 @gpio_direction_output(i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @gpio_set_value(i32, i32) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
