; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_6lowpan.c_lowpan_enable_set.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_6lowpan.c_lowpan_enable_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.set_enable = type { i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@do_enable_set = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32)* @lowpan_enable_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lowpan_enable_set(i8* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.set_enable*, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* @GFP_KERNEL, align 4
  %8 = call %struct.set_enable* @kzalloc(i32 8, i32 %7)
  store %struct.set_enable* %8, %struct.set_enable** %6, align 8
  %9 = load %struct.set_enable*, %struct.set_enable** %6, align 8
  %10 = icmp ne %struct.set_enable* %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %2
  %12 = load i32, i32* @ENOMEM, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %3, align 4
  br label %29

14:                                               ; preds = %2
  %15 = load i32, i32* %5, align 4
  %16 = icmp ne i32 %15, 0
  %17 = xor i1 %16, true
  %18 = xor i1 %17, true
  %19 = zext i1 %18 to i32
  %20 = load %struct.set_enable*, %struct.set_enable** %6, align 8
  %21 = getelementptr inbounds %struct.set_enable, %struct.set_enable* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 4
  %22 = load %struct.set_enable*, %struct.set_enable** %6, align 8
  %23 = getelementptr inbounds %struct.set_enable, %struct.set_enable* %22, i32 0, i32 1
  %24 = load i32, i32* @do_enable_set, align 4
  %25 = call i32 @INIT_WORK(i32* %23, i32 %24)
  %26 = load %struct.set_enable*, %struct.set_enable** %6, align 8
  %27 = getelementptr inbounds %struct.set_enable, %struct.set_enable* %26, i32 0, i32 1
  %28 = call i32 @schedule_work(i32* %27)
  store i32 0, i32* %3, align 4
  br label %29

29:                                               ; preds = %14, %11
  %30 = load i32, i32* %3, align 4
  ret i32 %30
}

declare dso_local %struct.set_enable* @kzalloc(i32, i32) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @schedule_work(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
