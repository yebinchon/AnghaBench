; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_bch.c_gf_sqr.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_bch.c_gf_sqr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bch_control = type { i32*, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bch_control*, i32)* @gf_sqr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gf_sqr(%struct.bch_control* %0, i32 %1) #0 {
  %3 = alloca %struct.bch_control*, align 8
  %4 = alloca i32, align 4
  store %struct.bch_control* %0, %struct.bch_control** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %23

7:                                                ; preds = %2
  %8 = load %struct.bch_control*, %struct.bch_control** %3, align 8
  %9 = getelementptr inbounds %struct.bch_control, %struct.bch_control* %8, i32 0, i32 0
  %10 = load i32*, i32** %9, align 8
  %11 = load %struct.bch_control*, %struct.bch_control** %3, align 8
  %12 = load %struct.bch_control*, %struct.bch_control** %3, align 8
  %13 = getelementptr inbounds %struct.bch_control, %struct.bch_control* %12, i32 0, i32 1
  %14 = load i32*, i32** %13, align 8
  %15 = load i32, i32* %4, align 4
  %16 = zext i32 %15 to i64
  %17 = getelementptr inbounds i32, i32* %14, i64 %16
  %18 = load i32, i32* %17, align 4
  %19 = mul nsw i32 2, %18
  %20 = call i64 @mod_s(%struct.bch_control* %11, i32 %19)
  %21 = getelementptr inbounds i32, i32* %10, i64 %20
  %22 = load i32, i32* %21, align 4
  br label %24

23:                                               ; preds = %2
  br label %24

24:                                               ; preds = %23, %7
  %25 = phi i32 [ %22, %7 ], [ 0, %23 ]
  ret i32 %25
}

declare dso_local i64 @mod_s(%struct.bch_control*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
