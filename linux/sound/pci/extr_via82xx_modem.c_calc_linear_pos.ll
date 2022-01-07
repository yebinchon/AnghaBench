; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/extr_via82xx_modem.c_calc_linear_pos.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/extr_via82xx_modem.c_calc_linear_pos.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.via82xx_modem = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.viadev = type { i32, i32, %struct.TYPE_3__*, i32, i32 }
%struct.TYPE_3__ = type { i32, i32 }

@.str = private unnamed_addr constant [49 x i8] c"invalid via82xx_cur_ptr (size = %d, count = %d)\0A\00", align 1
@.str.1 = private unnamed_addr constant [51 x i8] c"invalid via82xx_cur_ptr, using last valid pointer\0A\00", align 1
@.str.2 = private unnamed_addr constant [55 x i8] c"invalid via82xx_cur_ptr (2), using last valid pointer\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.via82xx_modem*, %struct.viadev*, i32, i32)* @calc_linear_pos to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @calc_linear_pos(%struct.via82xx_modem* %0, %struct.viadev* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.via82xx_modem*, align 8
  %6 = alloca %struct.viadev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.via82xx_modem* %0, %struct.via82xx_modem** %5, align 8
  store %struct.viadev* %1, %struct.viadev** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load %struct.viadev*, %struct.viadev** %6, align 8
  %12 = getelementptr inbounds %struct.viadev, %struct.viadev* %11, i32 0, i32 2
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %14 = load i32, i32* %7, align 4
  %15 = zext i32 %14 to i64
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i64 %15
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %9, align 4
  %19 = load %struct.viadev*, %struct.viadev** %6, align 8
  %20 = getelementptr inbounds %struct.viadev, %struct.viadev* %19, i32 0, i32 2
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  %22 = load i32, i32* %7, align 4
  %23 = zext i32 %22 to i64
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* %9, align 4
  %28 = add i32 %26, %27
  %29 = load i32, i32* %8, align 4
  %30 = sub i32 %28, %29
  store i32 %30, i32* %10, align 4
  %31 = load i32, i32* %9, align 4
  %32 = load i32, i32* %8, align 4
  %33 = icmp ult i32 %31, %32
  br i1 %33, label %34, label %46

34:                                               ; preds = %4
  %35 = load %struct.via82xx_modem*, %struct.via82xx_modem** %5, align 8
  %36 = getelementptr inbounds %struct.via82xx_modem, %struct.via82xx_modem* %35, i32 0, i32 0
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* %9, align 4
  %41 = load i32, i32* %8, align 4
  %42 = call i32 @dev_err(i32 %39, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %40, i32 %41)
  %43 = load %struct.viadev*, %struct.viadev** %6, align 8
  %44 = getelementptr inbounds %struct.viadev, %struct.viadev* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  store i32 %45, i32* %10, align 4
  br label %109

46:                                               ; preds = %4
  %47 = load %struct.viadev*, %struct.viadev** %6, align 8
  %48 = load i32, i32* %10, align 4
  %49 = call i64 @check_invalid_pos(%struct.viadev* %47, i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %108

51:                                               ; preds = %46
  %52 = load i32, i32* %8, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %68

54:                                               ; preds = %51
  %55 = load i32, i32* %9, align 4
  %56 = load i32, i32* %8, align 4
  %57 = icmp ult i32 %55, %56
  br i1 %57, label %58, label %68

58:                                               ; preds = %54
  %59 = load %struct.via82xx_modem*, %struct.via82xx_modem** %5, align 8
  %60 = getelementptr inbounds %struct.via82xx_modem, %struct.via82xx_modem* %59, i32 0, i32 0
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 (i32, i8*, ...) @dev_dbg(i32 %63, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0))
  %65 = load %struct.viadev*, %struct.viadev** %6, align 8
  %66 = getelementptr inbounds %struct.viadev, %struct.viadev* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  store i32 %67, i32* %10, align 4
  br label %107

68:                                               ; preds = %54, %51
  %69 = load i32, i32* %8, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %80, label %71

71:                                               ; preds = %68
  %72 = load %struct.viadev*, %struct.viadev** %6, align 8
  %73 = getelementptr inbounds %struct.viadev, %struct.viadev* %72, i32 0, i32 2
  %74 = load %struct.TYPE_3__*, %struct.TYPE_3__** %73, align 8
  %75 = load i32, i32* %7, align 4
  %76 = zext i32 %75 to i64
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i64 %76
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  store i32 %79, i32* %10, align 4
  br label %91

80:                                               ; preds = %68
  %81 = load %struct.viadev*, %struct.viadev** %6, align 8
  %82 = getelementptr inbounds %struct.viadev, %struct.viadev* %81, i32 0, i32 2
  %83 = load %struct.TYPE_3__*, %struct.TYPE_3__** %82, align 8
  %84 = load i32, i32* %7, align 4
  %85 = zext i32 %84 to i64
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i64 %85
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* %9, align 4
  %90 = add i32 %88, %89
  store i32 %90, i32* %10, align 4
  br label %91

91:                                               ; preds = %80, %71
  %92 = load %struct.viadev*, %struct.viadev** %6, align 8
  %93 = load i32, i32* %10, align 4
  %94 = call i64 @check_invalid_pos(%struct.viadev* %92, i32 %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %106

96:                                               ; preds = %91
  %97 = load %struct.via82xx_modem*, %struct.via82xx_modem** %5, align 8
  %98 = getelementptr inbounds %struct.via82xx_modem, %struct.via82xx_modem* %97, i32 0, i32 0
  %99 = load %struct.TYPE_4__*, %struct.TYPE_4__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = call i32 (i32, i8*, ...) @dev_dbg(i32 %101, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.2, i64 0, i64 0))
  %103 = load %struct.viadev*, %struct.viadev** %6, align 8
  %104 = getelementptr inbounds %struct.viadev, %struct.viadev* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  store i32 %105, i32* %10, align 4
  br label %106

106:                                              ; preds = %96, %91
  br label %107

107:                                              ; preds = %106, %58
  br label %108

108:                                              ; preds = %107, %46
  br label %109

109:                                              ; preds = %108, %34
  %110 = load i32, i32* %10, align 4
  %111 = load %struct.viadev*, %struct.viadev** %6, align 8
  %112 = getelementptr inbounds %struct.viadev, %struct.viadev* %111, i32 0, i32 0
  store i32 %110, i32* %112, align 8
  %113 = load i32, i32* %10, align 4
  %114 = load %struct.viadev*, %struct.viadev** %6, align 8
  %115 = getelementptr inbounds %struct.viadev, %struct.viadev* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = icmp uge i32 %113, %116
  br i1 %117, label %118, label %124

118:                                              ; preds = %109
  %119 = load %struct.viadev*, %struct.viadev** %6, align 8
  %120 = getelementptr inbounds %struct.viadev, %struct.viadev* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = load i32, i32* %10, align 4
  %123 = sub i32 %122, %121
  store i32 %123, i32* %10, align 4
  br label %124

124:                                              ; preds = %118, %109
  %125 = load i32, i32* %10, align 4
  ret i32 %125
}

declare dso_local i32 @dev_err(i32, i8*, i32, i32) #1

declare dso_local i64 @check_invalid_pos(%struct.viadev*, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
