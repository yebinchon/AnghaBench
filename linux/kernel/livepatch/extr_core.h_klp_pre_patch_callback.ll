; ModuleID = '/home/carl/AnghaBench/linux/kernel/livepatch/extr_core.h_klp_pre_patch_callback.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/livepatch/extr_core.h_klp_pre_patch_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.klp_object = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 (%struct.klp_object.0*)*, i32 }
%struct.klp_object.0 = type opaque

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.klp_object*)* @klp_pre_patch_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @klp_pre_patch_callback(%struct.klp_object* %0) #0 {
  %2 = alloca %struct.klp_object*, align 8
  %3 = alloca i32, align 4
  store %struct.klp_object* %0, %struct.klp_object** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = load %struct.klp_object*, %struct.klp_object** %2, align 8
  %5 = getelementptr inbounds %struct.klp_object, %struct.klp_object* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = load i32 (%struct.klp_object.0*)*, i32 (%struct.klp_object.0*)** %6, align 8
  %8 = icmp ne i32 (%struct.klp_object.0*)* %7, null
  br i1 %8, label %9, label %17

9:                                                ; preds = %1
  %10 = load %struct.klp_object*, %struct.klp_object** %2, align 8
  %11 = getelementptr inbounds %struct.klp_object, %struct.klp_object* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32 (%struct.klp_object.0*)*, i32 (%struct.klp_object.0*)** %12, align 8
  %14 = load %struct.klp_object*, %struct.klp_object** %2, align 8
  %15 = bitcast %struct.klp_object* %14 to %struct.klp_object.0*
  %16 = call i32 %13(%struct.klp_object.0* %15)
  store i32 %16, i32* %3, align 4
  br label %17

17:                                               ; preds = %9, %1
  %18 = load i32, i32* %3, align 4
  %19 = icmp ne i32 %18, 0
  %20 = xor i1 %19, true
  %21 = zext i1 %20 to i32
  %22 = load %struct.klp_object*, %struct.klp_object** %2, align 8
  %23 = getelementptr inbounds %struct.klp_object, %struct.klp_object* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 1
  store i32 %21, i32* %24, align 8
  %25 = load i32, i32* %3, align 4
  ret i32 %25
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
