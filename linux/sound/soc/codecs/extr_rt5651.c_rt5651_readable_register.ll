; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_rt5651.c_rt5651_readable_register.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_rt5651.c_rt5651_readable_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32 }
%struct.device = type { i32 }

@rt5651_ranges = common dso_local global %struct.TYPE_3__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i32)* @rt5651_readable_register to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rt5651_readable_register(%struct.device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %7

7:                                                ; preds = %57, %2
  %8 = load i32, i32* %6, align 4
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** @rt5651_ranges, align 8
  %10 = call i32 @ARRAY_SIZE(%struct.TYPE_3__* %9)
  %11 = icmp slt i32 %8, %10
  br i1 %11, label %12, label %60

12:                                               ; preds = %7
  %13 = load i32, i32* %5, align 4
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** @rt5651_ranges, align 8
  %15 = load i32, i32* %6, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i64 %16
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp uge i32 %13, %19
  br i1 %20, label %21, label %37

21:                                               ; preds = %12
  %22 = load i32, i32* %5, align 4
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** @rt5651_ranges, align 8
  %24 = load i32, i32* %6, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** @rt5651_ranges, align 8
  %30 = load i32, i32* %6, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = add i32 %28, %34
  %36 = icmp ule i32 %22, %35
  br i1 %36, label %55, label %37

37:                                               ; preds = %21, %12
  %38 = load i32, i32* %5, align 4
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** @rt5651_ranges, align 8
  %40 = load i32, i32* %6, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = icmp uge i32 %38, %44
  br i1 %45, label %46, label %56

46:                                               ; preds = %37
  %47 = load i32, i32* %5, align 4
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** @rt5651_ranges, align 8
  %49 = load i32, i32* %6, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 4
  %54 = icmp ule i32 %47, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %46, %21
  store i32 1, i32* %3, align 4
  br label %64

56:                                               ; preds = %46, %37
  br label %57

57:                                               ; preds = %56
  %58 = load i32, i32* %6, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %6, align 4
  br label %7

60:                                               ; preds = %7
  %61 = load i32, i32* %5, align 4
  switch i32 %61, label %63 [
    i32 140, label %62
    i32 128, label %62
    i32 129, label %62
    i32 206, label %62
    i32 191, label %62
    i32 179, label %62
    i32 178, label %62
    i32 188, label %62
    i32 187, label %62
    i32 186, label %62
    i32 185, label %62
    i32 213, label %62
    i32 211, label %62
    i32 212, label %62
    i32 225, label %62
    i32 226, label %62
    i32 227, label %62
    i32 137, label %62
    i32 136, label %62
    i32 220, label %62
    i32 135, label %62
    i32 210, label %62
    i32 205, label %62
    i32 167, label %62
    i32 144, label %62
    i32 143, label %62
    i32 142, label %62
    i32 141, label %62
    i32 194, label %62
    i32 173, label %62
    i32 172, label %62
    i32 171, label %62
    i32 170, label %62
    i32 169, label %62
    i32 168, label %62
    i32 177, label %62
    i32 148, label %62
    i32 147, label %62
    i32 150, label %62
    i32 149, label %62
    i32 146, label %62
    i32 145, label %62
    i32 151, label %62
    i32 152, label %62
    i32 190, label %62
    i32 189, label %62
    i32 224, label %62
    i32 223, label %62
    i32 204, label %62
    i32 132, label %62
    i32 131, label %62
    i32 130, label %62
    i32 198, label %62
    i32 161, label %62
    i32 160, label %62
    i32 159, label %62
    i32 158, label %62
    i32 157, label %62
    i32 156, label %62
    i32 155, label %62
    i32 154, label %62
    i32 153, label %62
    i32 209, label %62
    i32 208, label %62
    i32 207, label %62
    i32 214, label %62
    i32 176, label %62
    i32 216, label %62
    i32 200, label %62
    i32 199, label %62
    i32 219, label %62
    i32 218, label %62
    i32 217, label %62
    i32 181, label %62
    i32 180, label %62
    i32 183, label %62
    i32 182, label %62
    i32 184, label %62
    i32 197, label %62
    i32 196, label %62
    i32 195, label %62
    i32 166, label %62
    i32 165, label %62
    i32 164, label %62
    i32 163, label %62
    i32 162, label %62
    i32 138, label %62
    i32 139, label %62
    i32 215, label %62
    i32 175, label %62
    i32 174, label %62
    i32 222, label %62
    i32 221, label %62
    i32 192, label %62
    i32 193, label %62
    i32 134, label %62
    i32 133, label %62
    i32 201, label %62
    i32 203, label %62
    i32 202, label %62
  ]

62:                                               ; preds = %60, %60, %60, %60, %60, %60, %60, %60, %60, %60, %60, %60, %60, %60, %60, %60, %60, %60, %60, %60, %60, %60, %60, %60, %60, %60, %60, %60, %60, %60, %60, %60, %60, %60, %60, %60, %60, %60, %60, %60, %60, %60, %60, %60, %60, %60, %60, %60, %60, %60, %60, %60, %60, %60, %60, %60, %60, %60, %60, %60, %60, %60, %60, %60, %60, %60, %60, %60, %60, %60, %60, %60, %60, %60, %60, %60, %60, %60, %60, %60, %60, %60, %60, %60, %60, %60, %60, %60, %60, %60, %60, %60, %60, %60, %60, %60, %60, %60, %60, %60
  store i32 1, i32* %3, align 4
  br label %64

63:                                               ; preds = %60
  store i32 0, i32* %3, align 4
  br label %64

64:                                               ; preds = %63, %62, %55
  %65 = load i32, i32* %3, align 4
  ret i32 %65
}

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
