; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_smp.c_get_auth_method.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_smp.c_get_auth_method.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smp_chan = type { i32 }

@SMP_IO_KEYBOARD_DISPLAY = common dso_local global i64 0, align 8
@JUST_CFM = common dso_local global i64 0, align 8
@SMP_FLAG_SC = common dso_local global i32 0, align 4
@sc_method = common dso_local global i64** null, align 8
@gen_method = common dso_local global i64** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.smp_chan*, i64, i64)* @get_auth_method to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @get_auth_method(%struct.smp_chan* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.smp_chan*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.smp_chan* %0, %struct.smp_chan** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %8 = load i64, i64* %6, align 8
  %9 = load i64, i64* @SMP_IO_KEYBOARD_DISPLAY, align 8
  %10 = icmp ugt i64 %8, %9
  br i1 %10, label %15, label %11

11:                                               ; preds = %3
  %12 = load i64, i64* %7, align 8
  %13 = load i64, i64* @SMP_IO_KEYBOARD_DISPLAY, align 8
  %14 = icmp ugt i64 %12, %13
  br i1 %14, label %15, label %17

15:                                               ; preds = %11, %3
  %16 = load i64, i64* @JUST_CFM, align 8
  store i64 %16, i64* %4, align 8
  br label %39

17:                                               ; preds = %11
  %18 = load i32, i32* @SMP_FLAG_SC, align 4
  %19 = load %struct.smp_chan*, %struct.smp_chan** %5, align 8
  %20 = getelementptr inbounds %struct.smp_chan, %struct.smp_chan* %19, i32 0, i32 0
  %21 = call i64 @test_bit(i32 %18, i32* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %31

23:                                               ; preds = %17
  %24 = load i64**, i64*** @sc_method, align 8
  %25 = load i64, i64* %7, align 8
  %26 = getelementptr inbounds i64*, i64** %24, i64 %25
  %27 = load i64*, i64** %26, align 8
  %28 = load i64, i64* %6, align 8
  %29 = getelementptr inbounds i64, i64* %27, i64 %28
  %30 = load i64, i64* %29, align 8
  store i64 %30, i64* %4, align 8
  br label %39

31:                                               ; preds = %17
  %32 = load i64**, i64*** @gen_method, align 8
  %33 = load i64, i64* %7, align 8
  %34 = getelementptr inbounds i64*, i64** %32, i64 %33
  %35 = load i64*, i64** %34, align 8
  %36 = load i64, i64* %6, align 8
  %37 = getelementptr inbounds i64, i64* %35, i64 %36
  %38 = load i64, i64* %37, align 8
  store i64 %38, i64* %4, align 8
  br label %39

39:                                               ; preds = %31, %23, %15
  %40 = load i64, i64* %4, align 8
  ret i64 %40
}

declare dso_local i64 @test_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
