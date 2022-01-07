; ModuleID = '/home/carl/AnghaBench/linux/sound/i2c/other/extr_ak4xxx-adda.c_snd_akm4xxx_init.c'
source_filename = "/home/carl/AnghaBench/linux/sound/i2c/other/extr_ak4xxx-adda.c_snd_akm4xxx_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_akm4xxx = type { i32, i32, i32, i8*, i32, i32, i32 }

@snd_akm4xxx_init.inits_ak4524 = internal constant [20 x i8] c"\00\07\01\00\02`\03\19\01\03\04\00\05\00\06\00\07\00\FF\FF", align 16
@snd_akm4xxx_init.inits_ak4528 = internal constant [16 x i8] c"\00\07\01\00\02`\03\0D\01\03\04\00\05\00\FF\FF", align 16
@snd_akm4xxx_init.inits_ak4529 = internal constant [28 x i8] c"\09\01\0A?\00\0C\01\00\02\FF\03\FF\04\FF\05\FF\06\FF\07\FF\0B\FF\0C\FF\08U\FF\FF", align 16
@snd_akm4xxx_init.inits_ak4355 = internal constant [26 x i8] c"\01\02\00\06\02\0E\03\01\04\00\05\00\06\00\07\00\08\00\09\00\0A\00\01\01\FF\FF", align 16
@snd_akm4xxx_init.inits_ak4358 = internal constant [30 x i8] c"\01\02\00\06\02N\03\01\04\00\05\00\06\00\07\00\08\00\09\00\0B\00\0C\00\0A\00\01\01\FF\FF", align 16
@snd_akm4xxx_init.inits_ak4381 = internal constant [14 x i8] c"\00\0C\01\02\02\00\03\00\04\00\00\0F\FF\FF", align 1
@snd_akm4xxx_init.inits_ak4620 = internal constant [24 x i8] c"\00\07\01\00\01\02\01\03\01\0F\02`\03\01\04\00\05\00\06\00\07\00\FF\FF", align 16
@.str = private unnamed_addr constant [7 x i8] c"ak4524\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"ak4528\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"ak4529\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"ak4355\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"ak4358\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"ak4381\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"ak5365\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"ak4620\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @snd_akm4xxx_init(%struct.snd_akm4xxx* %0) #0 {
  %2 = alloca %struct.snd_akm4xxx*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  store %struct.snd_akm4xxx* %0, %struct.snd_akm4xxx** %2, align 8
  %8 = load %struct.snd_akm4xxx*, %struct.snd_akm4xxx** %2, align 8
  %9 = getelementptr inbounds %struct.snd_akm4xxx, %struct.snd_akm4xxx* %8, i32 0, i32 6
  %10 = load i32, i32* %9, align 8
  %11 = call i32 @memset(i32 %10, i32 0, i32 4)
  %12 = load %struct.snd_akm4xxx*, %struct.snd_akm4xxx** %2, align 8
  %13 = getelementptr inbounds %struct.snd_akm4xxx, %struct.snd_akm4xxx* %12, i32 0, i32 5
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @memset(i32 %14, i32 0, i32 4)
  %16 = load %struct.snd_akm4xxx*, %struct.snd_akm4xxx** %2, align 8
  %17 = getelementptr inbounds %struct.snd_akm4xxx, %struct.snd_akm4xxx* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  switch i32 %18, label %91 [
    i32 132, label %19
    i32 131, label %30
    i32 130, label %41
    i32 135, label %48
    i32 134, label %55
    i32 133, label %62
    i32 128, label %73
    i32 129, label %80
  ]

19:                                               ; preds = %1
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @snd_akm4xxx_init.inits_ak4524, i64 0, i64 0), i8** %5, align 8
  %20 = load %struct.snd_akm4xxx*, %struct.snd_akm4xxx** %2, align 8
  %21 = getelementptr inbounds %struct.snd_akm4xxx, %struct.snd_akm4xxx* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 8
  %23 = sdiv i32 %22, 2
  %24 = load %struct.snd_akm4xxx*, %struct.snd_akm4xxx** %2, align 8
  %25 = getelementptr inbounds %struct.snd_akm4xxx, %struct.snd_akm4xxx* %24, i32 0, i32 1
  store i32 %23, i32* %25, align 4
  %26 = load %struct.snd_akm4xxx*, %struct.snd_akm4xxx** %2, align 8
  %27 = getelementptr inbounds %struct.snd_akm4xxx, %struct.snd_akm4xxx* %26, i32 0, i32 3
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8** %27, align 8
  %28 = load %struct.snd_akm4xxx*, %struct.snd_akm4xxx** %2, align 8
  %29 = getelementptr inbounds %struct.snd_akm4xxx, %struct.snd_akm4xxx* %28, i32 0, i32 4
  store i32 8, i32* %29, align 8
  br label %93

30:                                               ; preds = %1
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @snd_akm4xxx_init.inits_ak4528, i64 0, i64 0), i8** %5, align 8
  %31 = load %struct.snd_akm4xxx*, %struct.snd_akm4xxx** %2, align 8
  %32 = getelementptr inbounds %struct.snd_akm4xxx, %struct.snd_akm4xxx* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = sdiv i32 %33, 2
  %35 = load %struct.snd_akm4xxx*, %struct.snd_akm4xxx** %2, align 8
  %36 = getelementptr inbounds %struct.snd_akm4xxx, %struct.snd_akm4xxx* %35, i32 0, i32 1
  store i32 %34, i32* %36, align 4
  %37 = load %struct.snd_akm4xxx*, %struct.snd_akm4xxx** %2, align 8
  %38 = getelementptr inbounds %struct.snd_akm4xxx, %struct.snd_akm4xxx* %37, i32 0, i32 3
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8** %38, align 8
  %39 = load %struct.snd_akm4xxx*, %struct.snd_akm4xxx** %2, align 8
  %40 = getelementptr inbounds %struct.snd_akm4xxx, %struct.snd_akm4xxx* %39, i32 0, i32 4
  store i32 6, i32* %40, align 8
  br label %93

41:                                               ; preds = %1
  store i8* getelementptr inbounds ([28 x i8], [28 x i8]* @snd_akm4xxx_init.inits_ak4529, i64 0, i64 0), i8** %5, align 8
  %42 = load %struct.snd_akm4xxx*, %struct.snd_akm4xxx** %2, align 8
  %43 = getelementptr inbounds %struct.snd_akm4xxx, %struct.snd_akm4xxx* %42, i32 0, i32 1
  store i32 1, i32* %43, align 4
  %44 = load %struct.snd_akm4xxx*, %struct.snd_akm4xxx** %2, align 8
  %45 = getelementptr inbounds %struct.snd_akm4xxx, %struct.snd_akm4xxx* %44, i32 0, i32 3
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8** %45, align 8
  %46 = load %struct.snd_akm4xxx*, %struct.snd_akm4xxx** %2, align 8
  %47 = getelementptr inbounds %struct.snd_akm4xxx, %struct.snd_akm4xxx* %46, i32 0, i32 4
  store i32 13, i32* %47, align 8
  br label %93

48:                                               ; preds = %1
  store i8* getelementptr inbounds ([26 x i8], [26 x i8]* @snd_akm4xxx_init.inits_ak4355, i64 0, i64 0), i8** %5, align 8
  %49 = load %struct.snd_akm4xxx*, %struct.snd_akm4xxx** %2, align 8
  %50 = getelementptr inbounds %struct.snd_akm4xxx, %struct.snd_akm4xxx* %49, i32 0, i32 1
  store i32 1, i32* %50, align 4
  %51 = load %struct.snd_akm4xxx*, %struct.snd_akm4xxx** %2, align 8
  %52 = getelementptr inbounds %struct.snd_akm4xxx, %struct.snd_akm4xxx* %51, i32 0, i32 3
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8** %52, align 8
  %53 = load %struct.snd_akm4xxx*, %struct.snd_akm4xxx** %2, align 8
  %54 = getelementptr inbounds %struct.snd_akm4xxx, %struct.snd_akm4xxx* %53, i32 0, i32 4
  store i32 11, i32* %54, align 8
  br label %93

55:                                               ; preds = %1
  store i8* getelementptr inbounds ([30 x i8], [30 x i8]* @snd_akm4xxx_init.inits_ak4358, i64 0, i64 0), i8** %5, align 8
  %56 = load %struct.snd_akm4xxx*, %struct.snd_akm4xxx** %2, align 8
  %57 = getelementptr inbounds %struct.snd_akm4xxx, %struct.snd_akm4xxx* %56, i32 0, i32 1
  store i32 1, i32* %57, align 4
  %58 = load %struct.snd_akm4xxx*, %struct.snd_akm4xxx** %2, align 8
  %59 = getelementptr inbounds %struct.snd_akm4xxx, %struct.snd_akm4xxx* %58, i32 0, i32 3
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i8** %59, align 8
  %60 = load %struct.snd_akm4xxx*, %struct.snd_akm4xxx** %2, align 8
  %61 = getelementptr inbounds %struct.snd_akm4xxx, %struct.snd_akm4xxx* %60, i32 0, i32 4
  store i32 16, i32* %61, align 8
  br label %93

62:                                               ; preds = %1
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @snd_akm4xxx_init.inits_ak4381, i64 0, i64 0), i8** %5, align 8
  %63 = load %struct.snd_akm4xxx*, %struct.snd_akm4xxx** %2, align 8
  %64 = getelementptr inbounds %struct.snd_akm4xxx, %struct.snd_akm4xxx* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = sdiv i32 %65, 2
  %67 = load %struct.snd_akm4xxx*, %struct.snd_akm4xxx** %2, align 8
  %68 = getelementptr inbounds %struct.snd_akm4xxx, %struct.snd_akm4xxx* %67, i32 0, i32 1
  store i32 %66, i32* %68, align 4
  %69 = load %struct.snd_akm4xxx*, %struct.snd_akm4xxx** %2, align 8
  %70 = getelementptr inbounds %struct.snd_akm4xxx, %struct.snd_akm4xxx* %69, i32 0, i32 3
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i8** %70, align 8
  %71 = load %struct.snd_akm4xxx*, %struct.snd_akm4xxx** %2, align 8
  %72 = getelementptr inbounds %struct.snd_akm4xxx, %struct.snd_akm4xxx* %71, i32 0, i32 4
  store i32 5, i32* %72, align 8
  br label %93

73:                                               ; preds = %1
  %74 = load %struct.snd_akm4xxx*, %struct.snd_akm4xxx** %2, align 8
  %75 = getelementptr inbounds %struct.snd_akm4xxx, %struct.snd_akm4xxx* %74, i32 0, i32 1
  store i32 1, i32* %75, align 4
  %76 = load %struct.snd_akm4xxx*, %struct.snd_akm4xxx** %2, align 8
  %77 = getelementptr inbounds %struct.snd_akm4xxx, %struct.snd_akm4xxx* %76, i32 0, i32 3
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i8** %77, align 8
  %78 = load %struct.snd_akm4xxx*, %struct.snd_akm4xxx** %2, align 8
  %79 = getelementptr inbounds %struct.snd_akm4xxx, %struct.snd_akm4xxx* %78, i32 0, i32 4
  store i32 8, i32* %79, align 8
  br label %124

80:                                               ; preds = %1
  store i8* getelementptr inbounds ([24 x i8], [24 x i8]* @snd_akm4xxx_init.inits_ak4620, i64 0, i64 0), i8** %5, align 8
  %81 = load %struct.snd_akm4xxx*, %struct.snd_akm4xxx** %2, align 8
  %82 = getelementptr inbounds %struct.snd_akm4xxx, %struct.snd_akm4xxx* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 8
  %84 = sdiv i32 %83, 2
  %85 = load %struct.snd_akm4xxx*, %struct.snd_akm4xxx** %2, align 8
  %86 = getelementptr inbounds %struct.snd_akm4xxx, %struct.snd_akm4xxx* %85, i32 0, i32 1
  store i32 %84, i32* %86, align 4
  %87 = load %struct.snd_akm4xxx*, %struct.snd_akm4xxx** %2, align 8
  %88 = getelementptr inbounds %struct.snd_akm4xxx, %struct.snd_akm4xxx* %87, i32 0, i32 3
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i8** %88, align 8
  %89 = load %struct.snd_akm4xxx*, %struct.snd_akm4xxx** %2, align 8
  %90 = getelementptr inbounds %struct.snd_akm4xxx, %struct.snd_akm4xxx* %89, i32 0, i32 4
  store i32 8, i32* %90, align 8
  br label %93

91:                                               ; preds = %1
  %92 = call i32 (...) @snd_BUG()
  br label %124

93:                                               ; preds = %80, %62, %55, %48, %41, %30, %19
  store i32 0, i32* %3, align 4
  br label %94

94:                                               ; preds = %121, %93
  %95 = load i32, i32* %3, align 4
  %96 = load %struct.snd_akm4xxx*, %struct.snd_akm4xxx** %2, align 8
  %97 = getelementptr inbounds %struct.snd_akm4xxx, %struct.snd_akm4xxx* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = icmp slt i32 %95, %98
  br i1 %99, label %100, label %124

100:                                              ; preds = %94
  %101 = load i8*, i8** %5, align 8
  store i8* %101, i8** %4, align 8
  br label %102

102:                                              ; preds = %107, %100
  %103 = load i8*, i8** %4, align 8
  %104 = load i8, i8* %103, align 1
  %105 = zext i8 %104 to i32
  %106 = icmp ne i32 %105, 255
  br i1 %106, label %107, label %120

107:                                              ; preds = %102
  %108 = load i8*, i8** %4, align 8
  %109 = getelementptr inbounds i8, i8* %108, i32 1
  store i8* %109, i8** %4, align 8
  %110 = load i8, i8* %108, align 1
  store i8 %110, i8* %6, align 1
  %111 = load i8*, i8** %4, align 8
  %112 = getelementptr inbounds i8, i8* %111, i32 1
  store i8* %112, i8** %4, align 8
  %113 = load i8, i8* %111, align 1
  store i8 %113, i8* %7, align 1
  %114 = load %struct.snd_akm4xxx*, %struct.snd_akm4xxx** %2, align 8
  %115 = load i32, i32* %3, align 4
  %116 = load i8, i8* %6, align 1
  %117 = load i8, i8* %7, align 1
  %118 = call i32 @snd_akm4xxx_write(%struct.snd_akm4xxx* %114, i32 %115, i8 zeroext %116, i8 zeroext %117)
  %119 = call i32 @udelay(i32 10)
  br label %102

120:                                              ; preds = %102
  br label %121

121:                                              ; preds = %120
  %122 = load i32, i32* %3, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %3, align 4
  br label %94

124:                                              ; preds = %73, %91, %94
  ret void
}

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @snd_BUG(...) #1

declare dso_local i32 @snd_akm4xxx_write(%struct.snd_akm4xxx*, i32, i8 zeroext, i8 zeroext) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
