; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_madera.c_madera_set_fll_ao_refclk.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_madera.c_madera_set_fll_ao_refclk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, %struct.reg_sequence* }
%struct.reg_sequence = type { i32 }
%struct.madera_fll = type { i32, i32, i32 }

@.str = private unnamed_addr constant [50 x i8] c"Change FLL_AO refclk to fin=%u fout=%u source=%d\0A\00", align 1
@madera_fllao_settings = common dso_local global %struct.TYPE_3__* null, align 8
@.str.1 = private unnamed_addr constant [38 x i8] c"No matching configuration for FLL_AO\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @madera_set_fll_ao_refclk(%struct.madera_fll* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.madera_fll*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.reg_sequence*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.madera_fll* %0, %struct.madera_fll** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store %struct.reg_sequence* null, %struct.reg_sequence** %11, align 8
  store i32 0, i32* %12, align 4
  %14 = load %struct.madera_fll*, %struct.madera_fll** %6, align 8
  %15 = getelementptr inbounds %struct.madera_fll, %struct.madera_fll* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* %7, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %32

19:                                               ; preds = %4
  %20 = load %struct.madera_fll*, %struct.madera_fll** %6, align 8
  %21 = getelementptr inbounds %struct.madera_fll, %struct.madera_fll* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %8, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %32

25:                                               ; preds = %19
  %26 = load %struct.madera_fll*, %struct.madera_fll** %6, align 8
  %27 = getelementptr inbounds %struct.madera_fll, %struct.madera_fll* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* %9, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %25
  store i32 0, i32* %5, align 4
  br label %126

32:                                               ; preds = %25, %19, %4
  %33 = load %struct.madera_fll*, %struct.madera_fll** %6, align 8
  %34 = load i32, i32* %8, align 4
  %35 = load i32, i32* %9, align 4
  %36 = load i32, i32* %7, align 4
  %37 = call i32 @madera_fll_dbg(%struct.madera_fll* %33, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32 %34, i32 %35, i32 %36)
  %38 = load i32, i32* %9, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %104

40:                                               ; preds = %32
  %41 = load %struct.madera_fll*, %struct.madera_fll** %6, align 8
  %42 = getelementptr inbounds %struct.madera_fll, %struct.madera_fll* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* %8, align 4
  %45 = icmp ne i32 %43, %44
  br i1 %45, label %52, label %46

46:                                               ; preds = %40
  %47 = load %struct.madera_fll*, %struct.madera_fll** %6, align 8
  %48 = getelementptr inbounds %struct.madera_fll, %struct.madera_fll* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* %9, align 4
  %51 = icmp ne i32 %49, %50
  br i1 %51, label %52, label %104

52:                                               ; preds = %46, %40
  store i32 0, i32* %13, align 4
  br label %53

53:                                               ; preds = %78, %52
  %54 = load i32, i32* %13, align 4
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** @madera_fllao_settings, align 8
  %56 = call i32 @ARRAY_SIZE(%struct.TYPE_3__* %55)
  %57 = icmp ult i32 %54, %56
  br i1 %57, label %58, label %81

58:                                               ; preds = %53
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** @madera_fllao_settings, align 8
  %60 = load i32, i32* %13, align 4
  %61 = zext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* %8, align 4
  %66 = icmp eq i32 %64, %65
  br i1 %66, label %67, label %77

67:                                               ; preds = %58
  %68 = load %struct.TYPE_3__*, %struct.TYPE_3__** @madera_fllao_settings, align 8
  %69 = load i32, i32* %13, align 4
  %70 = zext i32 %69 to i64
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* %9, align 4
  %75 = icmp eq i32 %73, %74
  br i1 %75, label %76, label %77

76:                                               ; preds = %67
  br label %81

77:                                               ; preds = %67, %58
  br label %78

78:                                               ; preds = %77
  %79 = load i32, i32* %13, align 4
  %80 = add i32 %79, 1
  store i32 %80, i32* %13, align 4
  br label %53

81:                                               ; preds = %76, %53
  %82 = load i32, i32* %13, align 4
  %83 = load %struct.TYPE_3__*, %struct.TYPE_3__** @madera_fllao_settings, align 8
  %84 = call i32 @ARRAY_SIZE(%struct.TYPE_3__* %83)
  %85 = icmp eq i32 %82, %84
  br i1 %85, label %86, label %91

86:                                               ; preds = %81
  %87 = load %struct.madera_fll*, %struct.madera_fll** %6, align 8
  %88 = call i32 @madera_fll_err(%struct.madera_fll* %87, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  %89 = load i32, i32* @EINVAL, align 4
  %90 = sub nsw i32 0, %89
  store i32 %90, i32* %5, align 4
  br label %126

91:                                               ; preds = %81
  %92 = load %struct.TYPE_3__*, %struct.TYPE_3__** @madera_fllao_settings, align 8
  %93 = load i32, i32* %13, align 4
  %94 = zext i32 %93 to i64
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i64 %94
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i32 0, i32 3
  %97 = load %struct.reg_sequence*, %struct.reg_sequence** %96, align 8
  store %struct.reg_sequence* %97, %struct.reg_sequence** %11, align 8
  %98 = load %struct.TYPE_3__*, %struct.TYPE_3__** @madera_fllao_settings, align 8
  %99 = load i32, i32* %13, align 4
  %100 = zext i32 %99 to i64
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i64 %100
  %102 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 8
  store i32 %103, i32* %12, align 4
  br label %104

104:                                              ; preds = %91, %46, %32
  %105 = load i32, i32* %7, align 4
  %106 = load %struct.madera_fll*, %struct.madera_fll** %6, align 8
  %107 = getelementptr inbounds %struct.madera_fll, %struct.madera_fll* %106, i32 0, i32 0
  store i32 %105, i32* %107, align 4
  %108 = load i32, i32* %8, align 4
  %109 = load %struct.madera_fll*, %struct.madera_fll** %6, align 8
  %110 = getelementptr inbounds %struct.madera_fll, %struct.madera_fll* %109, i32 0, i32 1
  store i32 %108, i32* %110, align 4
  %111 = load i32, i32* %9, align 4
  %112 = load %struct.madera_fll*, %struct.madera_fll** %6, align 8
  %113 = getelementptr inbounds %struct.madera_fll, %struct.madera_fll* %112, i32 0, i32 2
  store i32 %111, i32* %113, align 4
  %114 = load i32, i32* %9, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %121

116:                                              ; preds = %104
  %117 = load %struct.madera_fll*, %struct.madera_fll** %6, align 8
  %118 = load %struct.reg_sequence*, %struct.reg_sequence** %11, align 8
  %119 = load i32, i32* %12, align 4
  %120 = call i32 @madera_enable_fll_ao(%struct.madera_fll* %117, %struct.reg_sequence* %118, i32 %119)
  store i32 %120, i32* %10, align 4
  br label %124

121:                                              ; preds = %104
  %122 = load %struct.madera_fll*, %struct.madera_fll** %6, align 8
  %123 = call i32 @madera_disable_fll_ao(%struct.madera_fll* %122)
  br label %124

124:                                              ; preds = %121, %116
  %125 = load i32, i32* %10, align 4
  store i32 %125, i32* %5, align 4
  br label %126

126:                                              ; preds = %124, %86, %31
  %127 = load i32, i32* %5, align 4
  ret i32 %127
}

declare dso_local i32 @madera_fll_dbg(%struct.madera_fll*, i8*, i32, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_3__*) #1

declare dso_local i32 @madera_fll_err(%struct.madera_fll*, i8*) #1

declare dso_local i32 @madera_enable_fll_ao(%struct.madera_fll*, %struct.reg_sequence*, i32) #1

declare dso_local i32 @madera_disable_fll_ao(%struct.madera_fll*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
