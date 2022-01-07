; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/extr_via82xx.c_calc_linear_pos.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/extr_via82xx.c_calc_linear_pos.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.via82xx = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.viadev = type { i32, i32, i32, %struct.TYPE_3__*, i32, i32 }
%struct.TYPE_3__ = type { i32, i32 }

@.str = private unnamed_addr constant [49 x i8] c"invalid via82xx_cur_ptr (size = %d, count = %d)\0A\00", align 1
@.str.1 = private unnamed_addr constant [55 x i8] c"invalid via82xx_cur_ptr (2), using last valid pointer\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.via82xx*, %struct.viadev*, i32, i32)* @calc_linear_pos to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @calc_linear_pos(%struct.via82xx* %0, %struct.viadev* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.via82xx*, align 8
  %6 = alloca %struct.viadev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.via82xx* %0, %struct.via82xx** %5, align 8
  store %struct.viadev* %1, %struct.viadev** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %13 = load %struct.viadev*, %struct.viadev** %6, align 8
  %14 = getelementptr inbounds %struct.viadev, %struct.viadev* %13, i32 0, i32 3
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %16 = load i32, i32* %7, align 4
  %17 = zext i32 %16 to i64
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i64 %17
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %9, align 4
  %21 = load %struct.viadev*, %struct.viadev** %6, align 8
  %22 = getelementptr inbounds %struct.viadev, %struct.viadev* %21, i32 0, i32 3
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %22, align 8
  %24 = load i32, i32* %7, align 4
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %10, align 4
  %29 = load i32, i32* %10, align 4
  %30 = load i32, i32* %9, align 4
  %31 = add i32 %29, %30
  %32 = load i32, i32* %8, align 4
  %33 = sub i32 %31, %32
  store i32 %33, i32* %11, align 4
  %34 = load i32, i32* %11, align 4
  %35 = load %struct.viadev*, %struct.viadev** %6, align 8
  %36 = getelementptr inbounds %struct.viadev, %struct.viadev* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = icmp uge i32 %34, %37
  br i1 %38, label %39, label %45

39:                                               ; preds = %4
  %40 = load %struct.viadev*, %struct.viadev** %6, align 8
  %41 = getelementptr inbounds %struct.viadev, %struct.viadev* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* %11, align 4
  %44 = sub i32 %43, %42
  store i32 %44, i32* %11, align 4
  br label %45

45:                                               ; preds = %39, %4
  %46 = load i32, i32* %9, align 4
  %47 = load i32, i32* %8, align 4
  %48 = icmp ult i32 %46, %47
  br i1 %48, label %49, label %61

49:                                               ; preds = %45
  %50 = load %struct.via82xx*, %struct.via82xx** %5, align 8
  %51 = getelementptr inbounds %struct.via82xx, %struct.via82xx* %50, i32 0, i32 0
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* %9, align 4
  %56 = load i32, i32* %8, align 4
  %57 = call i32 (i32, i8*, ...) @dev_dbg(i32 %54, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %55, i32 %56)
  %58 = load %struct.viadev*, %struct.viadev** %6, align 8
  %59 = getelementptr inbounds %struct.viadev, %struct.viadev* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  store i32 %60, i32* %11, align 4
  br label %112

61:                                               ; preds = %45
  %62 = load i32, i32* %8, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %87, label %64

64:                                               ; preds = %61
  %65 = load i32, i32* %11, align 4
  %66 = load %struct.viadev*, %struct.viadev** %6, align 8
  %67 = getelementptr inbounds %struct.viadev, %struct.viadev* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = sub i32 %65, %68
  store i32 %69, i32* %12, align 4
  %70 = load i32, i32* %12, align 4
  %71 = icmp slt i32 %70, 0
  br i1 %71, label %72, label %78

72:                                               ; preds = %64
  %73 = load %struct.viadev*, %struct.viadev** %6, align 8
  %74 = getelementptr inbounds %struct.viadev, %struct.viadev* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* %12, align 4
  %77 = add i32 %76, %75
  store i32 %77, i32* %12, align 4
  br label %78

78:                                               ; preds = %72, %64
  %79 = load i32, i32* %12, align 4
  %80 = load %struct.viadev*, %struct.viadev** %6, align 8
  %81 = getelementptr inbounds %struct.viadev, %struct.viadev* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 8
  %83 = icmp ugt i32 %79, %82
  br i1 %83, label %84, label %86

84:                                               ; preds = %78
  %85 = load i32, i32* %10, align 4
  store i32 %85, i32* %11, align 4
  br label %86

86:                                               ; preds = %84, %78
  br label %87

87:                                               ; preds = %86, %61
  %88 = load %struct.viadev*, %struct.viadev** %6, align 8
  %89 = load i32, i32* %11, align 4
  %90 = call i64 @check_invalid_pos(%struct.viadev* %88, i32 %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %111

92:                                               ; preds = %87
  %93 = load i32, i32* %10, align 4
  %94 = load i32, i32* %9, align 4
  %95 = add i32 %93, %94
  store i32 %95, i32* %11, align 4
  %96 = load %struct.viadev*, %struct.viadev** %6, align 8
  %97 = load i32, i32* %11, align 4
  %98 = call i64 @check_invalid_pos(%struct.viadev* %96, i32 %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %110

100:                                              ; preds = %92
  %101 = load %struct.via82xx*, %struct.via82xx** %5, align 8
  %102 = getelementptr inbounds %struct.via82xx, %struct.via82xx* %101, i32 0, i32 0
  %103 = load %struct.TYPE_4__*, %struct.TYPE_4__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = call i32 (i32, i8*, ...) @dev_dbg(i32 %105, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.1, i64 0, i64 0))
  %107 = load %struct.viadev*, %struct.viadev** %6, align 8
  %108 = getelementptr inbounds %struct.viadev, %struct.viadev* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  store i32 %109, i32* %11, align 4
  br label %110

110:                                              ; preds = %100, %92
  br label %111

111:                                              ; preds = %110, %87
  br label %112

112:                                              ; preds = %111, %49
  %113 = load i32, i32* %11, align 4
  ret i32 %113
}

declare dso_local i32 @dev_dbg(i32, i8*, ...) #1

declare dso_local i64 @check_invalid_pos(%struct.viadev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
