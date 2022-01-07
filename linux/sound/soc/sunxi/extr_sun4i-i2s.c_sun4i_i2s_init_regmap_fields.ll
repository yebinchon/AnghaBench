; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/sunxi/extr_sun4i-i2s.c_sun4i_i2s_init_regmap_fields.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/sunxi/extr_sun4i-i2s.c_sun4i_i2s_init_regmap_fields.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.sun4i_i2s = type { i8*, %struct.TYPE_2__*, i32, i8*, i8* }
%struct.TYPE_2__ = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.sun4i_i2s*)* @sun4i_i2s_init_regmap_fields to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sun4i_i2s_init_regmap_fields(%struct.device* %0, %struct.sun4i_i2s* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.sun4i_i2s*, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.sun4i_i2s* %1, %struct.sun4i_i2s** %5, align 8
  %6 = load %struct.device*, %struct.device** %4, align 8
  %7 = load %struct.sun4i_i2s*, %struct.sun4i_i2s** %5, align 8
  %8 = getelementptr inbounds %struct.sun4i_i2s, %struct.sun4i_i2s* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 8
  %10 = load %struct.sun4i_i2s*, %struct.sun4i_i2s** %5, align 8
  %11 = getelementptr inbounds %struct.sun4i_i2s, %struct.sun4i_i2s* %10, i32 0, i32 1
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = call i8* @devm_regmap_field_alloc(%struct.device* %6, i32 %9, i32 %14)
  %16 = load %struct.sun4i_i2s*, %struct.sun4i_i2s** %5, align 8
  %17 = getelementptr inbounds %struct.sun4i_i2s, %struct.sun4i_i2s* %16, i32 0, i32 4
  store i8* %15, i8** %17, align 8
  %18 = load %struct.sun4i_i2s*, %struct.sun4i_i2s** %5, align 8
  %19 = getelementptr inbounds %struct.sun4i_i2s, %struct.sun4i_i2s* %18, i32 0, i32 4
  %20 = load i8*, i8** %19, align 8
  %21 = call i64 @IS_ERR(i8* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %2
  %24 = load %struct.sun4i_i2s*, %struct.sun4i_i2s** %5, align 8
  %25 = getelementptr inbounds %struct.sun4i_i2s, %struct.sun4i_i2s* %24, i32 0, i32 4
  %26 = load i8*, i8** %25, align 8
  %27 = call i32 @PTR_ERR(i8* %26)
  store i32 %27, i32* %3, align 4
  br label %75

28:                                               ; preds = %2
  %29 = load %struct.device*, %struct.device** %4, align 8
  %30 = load %struct.sun4i_i2s*, %struct.sun4i_i2s** %5, align 8
  %31 = getelementptr inbounds %struct.sun4i_i2s, %struct.sun4i_i2s* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.sun4i_i2s*, %struct.sun4i_i2s** %5, align 8
  %34 = getelementptr inbounds %struct.sun4i_i2s, %struct.sun4i_i2s* %33, i32 0, i32 1
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i8* @devm_regmap_field_alloc(%struct.device* %29, i32 %32, i32 %37)
  %39 = load %struct.sun4i_i2s*, %struct.sun4i_i2s** %5, align 8
  %40 = getelementptr inbounds %struct.sun4i_i2s, %struct.sun4i_i2s* %39, i32 0, i32 3
  store i8* %38, i8** %40, align 8
  %41 = load %struct.sun4i_i2s*, %struct.sun4i_i2s** %5, align 8
  %42 = getelementptr inbounds %struct.sun4i_i2s, %struct.sun4i_i2s* %41, i32 0, i32 3
  %43 = load i8*, i8** %42, align 8
  %44 = call i64 @IS_ERR(i8* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %28
  %47 = load %struct.sun4i_i2s*, %struct.sun4i_i2s** %5, align 8
  %48 = getelementptr inbounds %struct.sun4i_i2s, %struct.sun4i_i2s* %47, i32 0, i32 3
  %49 = load i8*, i8** %48, align 8
  %50 = call i32 @PTR_ERR(i8* %49)
  store i32 %50, i32* %3, align 4
  br label %75

51:                                               ; preds = %28
  %52 = load %struct.device*, %struct.device** %4, align 8
  %53 = load %struct.sun4i_i2s*, %struct.sun4i_i2s** %5, align 8
  %54 = getelementptr inbounds %struct.sun4i_i2s, %struct.sun4i_i2s* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.sun4i_i2s*, %struct.sun4i_i2s** %5, align 8
  %57 = getelementptr inbounds %struct.sun4i_i2s, %struct.sun4i_i2s* %56, i32 0, i32 1
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i8* @devm_regmap_field_alloc(%struct.device* %52, i32 %55, i32 %60)
  %62 = load %struct.sun4i_i2s*, %struct.sun4i_i2s** %5, align 8
  %63 = getelementptr inbounds %struct.sun4i_i2s, %struct.sun4i_i2s* %62, i32 0, i32 0
  store i8* %61, i8** %63, align 8
  %64 = load %struct.sun4i_i2s*, %struct.sun4i_i2s** %5, align 8
  %65 = getelementptr inbounds %struct.sun4i_i2s, %struct.sun4i_i2s* %64, i32 0, i32 0
  %66 = load i8*, i8** %65, align 8
  %67 = call i64 @IS_ERR(i8* %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %74

69:                                               ; preds = %51
  %70 = load %struct.sun4i_i2s*, %struct.sun4i_i2s** %5, align 8
  %71 = getelementptr inbounds %struct.sun4i_i2s, %struct.sun4i_i2s* %70, i32 0, i32 0
  %72 = load i8*, i8** %71, align 8
  %73 = call i32 @PTR_ERR(i8* %72)
  store i32 %73, i32* %3, align 4
  br label %75

74:                                               ; preds = %51
  store i32 0, i32* %3, align 4
  br label %75

75:                                               ; preds = %74, %69, %46, %23
  %76 = load i32, i32* %3, align 4
  ret i32 %76
}

declare dso_local i8* @devm_regmap_field_alloc(%struct.device*, i32, i32) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @PTR_ERR(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
