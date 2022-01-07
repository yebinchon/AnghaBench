; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_rt5616.c_rt5616_readable_register.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_rt5616.c_rt5616_readable_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }
%struct.device = type { i32 }

@rt5616_ranges = common dso_local global %struct.TYPE_3__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i32)* @rt5616_readable_register to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rt5616_readable_register(%struct.device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %7

7:                                                ; preds = %32, %2
  %8 = load i32, i32* %6, align 4
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** @rt5616_ranges, align 8
  %10 = call i32 @ARRAY_SIZE(%struct.TYPE_3__* %9)
  %11 = icmp slt i32 %8, %10
  br i1 %11, label %12, label %35

12:                                               ; preds = %7
  %13 = load i32, i32* %5, align 4
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** @rt5616_ranges, align 8
  %15 = load i32, i32* %6, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i64 %16
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp uge i32 %13, %19
  br i1 %20, label %21, label %31

21:                                               ; preds = %12
  %22 = load i32, i32* %5, align 4
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** @rt5616_ranges, align 8
  %24 = load i32, i32* %6, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = icmp ule i32 %22, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %21
  store i32 1, i32* %3, align 4
  br label %39

31:                                               ; preds = %21, %12
  br label %32

32:                                               ; preds = %31
  %33 = load i32, i32* %6, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %6, align 4
  br label %7

35:                                               ; preds = %7
  %36 = load i32, i32* %5, align 4
  switch i32 %36, label %38 [
    i32 138, label %37
    i32 129, label %37
    i32 130, label %37
    i32 196, label %37
    i32 179, label %37
    i32 170, label %37
    i32 169, label %37
    i32 177, label %37
    i32 176, label %37
    i32 200, label %37
    i32 210, label %37
    i32 211, label %37
    i32 135, label %37
    i32 205, label %37
    i32 134, label %37
    i32 142, label %37
    i32 141, label %37
    i32 140, label %37
    i32 139, label %37
    i32 183, label %37
    i32 164, label %37
    i32 163, label %37
    i32 162, label %37
    i32 161, label %37
    i32 160, label %37
    i32 159, label %37
    i32 168, label %37
    i32 146, label %37
    i32 145, label %37
    i32 148, label %37
    i32 147, label %37
    i32 144, label %37
    i32 143, label %37
    i32 150, label %37
    i32 151, label %37
    i32 178, label %37
    i32 209, label %37
    i32 208, label %37
    i32 187, label %37
    i32 153, label %37
    i32 152, label %37
    i32 180, label %37
    i32 199, label %37
    i32 198, label %37
    i32 197, label %37
    i32 201, label %37
    i32 149, label %37
    i32 167, label %37
    i32 204, label %37
    i32 203, label %37
    i32 189, label %37
    i32 188, label %37
    i32 128, label %37
    i32 195, label %37
    i32 194, label %37
    i32 193, label %37
    i32 133, label %37
    i32 172, label %37
    i32 171, label %37
    i32 174, label %37
    i32 173, label %37
    i32 175, label %37
    i32 186, label %37
    i32 185, label %37
    i32 184, label %37
    i32 158, label %37
    i32 157, label %37
    i32 156, label %37
    i32 155, label %37
    i32 154, label %37
    i32 136, label %37
    i32 137, label %37
    i32 202, label %37
    i32 166, label %37
    i32 165, label %37
    i32 207, label %37
    i32 206, label %37
    i32 181, label %37
    i32 182, label %37
    i32 132, label %37
    i32 131, label %37
    i32 190, label %37
    i32 192, label %37
    i32 191, label %37
  ]

37:                                               ; preds = %35, %35, %35, %35, %35, %35, %35, %35, %35, %35, %35, %35, %35, %35, %35, %35, %35, %35, %35, %35, %35, %35, %35, %35, %35, %35, %35, %35, %35, %35, %35, %35, %35, %35, %35, %35, %35, %35, %35, %35, %35, %35, %35, %35, %35, %35, %35, %35, %35, %35, %35, %35, %35, %35, %35, %35, %35, %35, %35, %35, %35, %35, %35, %35, %35, %35, %35, %35, %35, %35, %35, %35, %35, %35, %35, %35, %35, %35, %35, %35, %35, %35, %35, %35
  store i32 1, i32* %3, align 4
  br label %39

38:                                               ; preds = %35
  store i32 0, i32* %3, align 4
  br label %39

39:                                               ; preds = %38, %37, %30
  %40 = load i32, i32* %3, align 4
  ret i32 %40
}

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
