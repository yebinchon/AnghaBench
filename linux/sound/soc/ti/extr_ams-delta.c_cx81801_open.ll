; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/ti/extr_ams-delta.c_cx81801_open.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/ti/extr_ams-delta.c_cx81801_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (%struct.tty_struct*)* }
%struct.tty_struct = type { i32* }

@cx20442_codec = common dso_local global i32* null, align 8
@ENODEV = common dso_local global i32 0, align 4
@v253_ops = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tty_struct*)* @cx81801_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cx81801_open(%struct.tty_struct* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tty_struct*, align 8
  %4 = alloca i32, align 4
  store %struct.tty_struct* %0, %struct.tty_struct** %3, align 8
  %5 = load i32*, i32** @cx20442_codec, align 8
  %6 = icmp ne i32* %5, null
  br i1 %6, label %10, label %7

7:                                                ; preds = %1
  %8 = load i32, i32* @ENODEV, align 4
  %9 = sub nsw i32 0, %8
  store i32 %9, i32* %2, align 4
  br label %24

10:                                               ; preds = %1
  %11 = load i32*, i32** @cx20442_codec, align 8
  %12 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %13 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %12, i32 0, i32 0
  store i32* %11, i32** %13, align 8
  %14 = load i32 (%struct.tty_struct*)*, i32 (%struct.tty_struct*)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @v253_ops, i32 0, i32 0), align 8
  %15 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %16 = call i32 %14(%struct.tty_struct* %15)
  store i32 %16, i32* %4, align 4
  %17 = load i32, i32* %4, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %10
  %20 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %21 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %20, i32 0, i32 0
  store i32* null, i32** %21, align 8
  br label %22

22:                                               ; preds = %19, %10
  %23 = load i32, i32* %4, align 4
  store i32 %23, i32* %2, align 4
  br label %24

24:                                               ; preds = %22, %7
  %25 = load i32, i32* %2, align 4
  ret i32 %25
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
