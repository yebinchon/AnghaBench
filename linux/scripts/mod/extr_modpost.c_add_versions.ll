; ModuleID = '/home/carl/AnghaBench/linux/scripts/mod/extr_modpost.c_add_versions.c'
source_filename = "/home/carl/AnghaBench/linux/scripts/mod/extr_modpost.c_add_versions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buffer = type { i32 }
%struct.module = type { i32, %struct.symbol* }
%struct.symbol = type { i32, i32, i32, %struct.module*, %struct.symbol* }

@modversions = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.1 = private unnamed_addr constant [52 x i8] c"static const struct modversion_info ____versions[]\0A\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"__used __section(__versions) = {\0A\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"\22%s\22 [%s.ko] has no CRC!\0A\00", align 1
@MODULE_NAME_LEN = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [30 x i8] c"too long symbol \22%s\22 [%s.ko]\0A\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"\09{ %#8x, \22%s\22 },\0A\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"};\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.buffer*, %struct.module*)* @add_versions to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_versions(%struct.buffer* %0, %struct.module* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.buffer*, align 8
  %5 = alloca %struct.module*, align 8
  %6 = alloca %struct.symbol*, align 8
  %7 = alloca %struct.symbol*, align 8
  %8 = alloca i32, align 4
  store %struct.buffer* %0, %struct.buffer** %4, align 8
  store %struct.module* %1, %struct.module** %5, align 8
  store i32 0, i32* %8, align 4
  %9 = load %struct.module*, %struct.module** %5, align 8
  %10 = getelementptr inbounds %struct.module, %struct.module* %9, i32 0, i32 1
  %11 = load %struct.symbol*, %struct.symbol** %10, align 8
  store %struct.symbol* %11, %struct.symbol** %6, align 8
  br label %12

12:                                               ; preds = %45, %2
  %13 = load %struct.symbol*, %struct.symbol** %6, align 8
  %14 = icmp ne %struct.symbol* %13, null
  br i1 %14, label %15, label %49

15:                                               ; preds = %12
  %16 = load %struct.symbol*, %struct.symbol** %6, align 8
  %17 = getelementptr inbounds %struct.symbol, %struct.symbol* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = call %struct.symbol* @find_symbol(i32 %18)
  store %struct.symbol* %19, %struct.symbol** %7, align 8
  %20 = load %struct.symbol*, %struct.symbol** %7, align 8
  %21 = icmp ne %struct.symbol* %20, null
  br i1 %21, label %22, label %28

22:                                               ; preds = %15
  %23 = load %struct.symbol*, %struct.symbol** %7, align 8
  %24 = getelementptr inbounds %struct.symbol, %struct.symbol* %23, i32 0, i32 3
  %25 = load %struct.module*, %struct.module** %24, align 8
  %26 = load %struct.module*, %struct.module** %5, align 8
  %27 = icmp eq %struct.module* %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %22, %15
  br label %45

29:                                               ; preds = %22
  %30 = load %struct.symbol*, %struct.symbol** %7, align 8
  %31 = getelementptr inbounds %struct.symbol, %struct.symbol* %30, i32 0, i32 3
  %32 = load %struct.module*, %struct.module** %31, align 8
  %33 = load %struct.symbol*, %struct.symbol** %6, align 8
  %34 = getelementptr inbounds %struct.symbol, %struct.symbol* %33, i32 0, i32 3
  store %struct.module* %32, %struct.module** %34, align 8
  %35 = load %struct.symbol*, %struct.symbol** %7, align 8
  %36 = getelementptr inbounds %struct.symbol, %struct.symbol* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.symbol*, %struct.symbol** %6, align 8
  %39 = getelementptr inbounds %struct.symbol, %struct.symbol* %38, i32 0, i32 2
  store i32 %37, i32* %39, align 8
  %40 = load %struct.symbol*, %struct.symbol** %7, align 8
  %41 = getelementptr inbounds %struct.symbol, %struct.symbol* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.symbol*, %struct.symbol** %6, align 8
  %44 = getelementptr inbounds %struct.symbol, %struct.symbol* %43, i32 0, i32 1
  store i32 %42, i32* %44, align 4
  br label %45

45:                                               ; preds = %29, %28
  %46 = load %struct.symbol*, %struct.symbol** %6, align 8
  %47 = getelementptr inbounds %struct.symbol, %struct.symbol* %46, i32 0, i32 4
  %48 = load %struct.symbol*, %struct.symbol** %47, align 8
  store %struct.symbol* %48, %struct.symbol** %6, align 8
  br label %12

49:                                               ; preds = %12
  %50 = load i32, i32* @modversions, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %54, label %52

52:                                               ; preds = %49
  %53 = load i32, i32* %8, align 4
  store i32 %53, i32* %3, align 4
  br label %118

54:                                               ; preds = %49
  %55 = load %struct.buffer*, %struct.buffer** %4, align 8
  %56 = call i32 (%struct.buffer*, i8*, ...) @buf_printf(%struct.buffer* %55, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %57 = load %struct.buffer*, %struct.buffer** %4, align 8
  %58 = call i32 (%struct.buffer*, i8*, ...) @buf_printf(%struct.buffer* %57, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0))
  %59 = load %struct.buffer*, %struct.buffer** %4, align 8
  %60 = call i32 (%struct.buffer*, i8*, ...) @buf_printf(%struct.buffer* %59, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  %61 = load %struct.module*, %struct.module** %5, align 8
  %62 = getelementptr inbounds %struct.module, %struct.module* %61, i32 0, i32 1
  %63 = load %struct.symbol*, %struct.symbol** %62, align 8
  store %struct.symbol* %63, %struct.symbol** %6, align 8
  br label %64

64:                                               ; preds = %110, %54
  %65 = load %struct.symbol*, %struct.symbol** %6, align 8
  %66 = icmp ne %struct.symbol* %65, null
  br i1 %66, label %67, label %114

67:                                               ; preds = %64
  %68 = load %struct.symbol*, %struct.symbol** %6, align 8
  %69 = getelementptr inbounds %struct.symbol, %struct.symbol* %68, i32 0, i32 3
  %70 = load %struct.module*, %struct.module** %69, align 8
  %71 = icmp ne %struct.module* %70, null
  br i1 %71, label %73, label %72

72:                                               ; preds = %67
  br label %110

73:                                               ; preds = %67
  %74 = load %struct.symbol*, %struct.symbol** %6, align 8
  %75 = getelementptr inbounds %struct.symbol, %struct.symbol* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 8
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %86, label %78

78:                                               ; preds = %73
  %79 = load %struct.symbol*, %struct.symbol** %6, align 8
  %80 = getelementptr inbounds %struct.symbol, %struct.symbol* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = load %struct.module*, %struct.module** %5, align 8
  %83 = getelementptr inbounds %struct.module, %struct.module* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = call i32 @warn(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i32 %81, i32 %84)
  br label %110

86:                                               ; preds = %73
  %87 = load %struct.symbol*, %struct.symbol** %6, align 8
  %88 = getelementptr inbounds %struct.symbol, %struct.symbol* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = call i64 @strlen(i32 %89)
  %91 = load i64, i64* @MODULE_NAME_LEN, align 8
  %92 = icmp sge i64 %90, %91
  br i1 %92, label %93, label %101

93:                                               ; preds = %86
  %94 = load %struct.symbol*, %struct.symbol** %6, align 8
  %95 = getelementptr inbounds %struct.symbol, %struct.symbol* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = load %struct.module*, %struct.module** %5, align 8
  %98 = getelementptr inbounds %struct.module, %struct.module* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = call i32 @merror(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0), i32 %96, i32 %99)
  store i32 1, i32* %8, align 4
  br label %114

101:                                              ; preds = %86
  %102 = load %struct.buffer*, %struct.buffer** %4, align 8
  %103 = load %struct.symbol*, %struct.symbol** %6, align 8
  %104 = getelementptr inbounds %struct.symbol, %struct.symbol* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.symbol*, %struct.symbol** %6, align 8
  %107 = getelementptr inbounds %struct.symbol, %struct.symbol* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = call i32 (%struct.buffer*, i8*, ...) @buf_printf(%struct.buffer* %102, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0), i32 %105, i32 %108)
  br label %110

110:                                              ; preds = %101, %78, %72
  %111 = load %struct.symbol*, %struct.symbol** %6, align 8
  %112 = getelementptr inbounds %struct.symbol, %struct.symbol* %111, i32 0, i32 4
  %113 = load %struct.symbol*, %struct.symbol** %112, align 8
  store %struct.symbol* %113, %struct.symbol** %6, align 8
  br label %64

114:                                              ; preds = %93, %64
  %115 = load %struct.buffer*, %struct.buffer** %4, align 8
  %116 = call i32 (%struct.buffer*, i8*, ...) @buf_printf(%struct.buffer* %115, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0))
  %117 = load i32, i32* %8, align 4
  store i32 %117, i32* %3, align 4
  br label %118

118:                                              ; preds = %114, %52
  %119 = load i32, i32* %3, align 4
  ret i32 %119
}

declare dso_local %struct.symbol* @find_symbol(i32) #1

declare dso_local i32 @buf_printf(%struct.buffer*, i8*, ...) #1

declare dso_local i32 @warn(i8*, i32, i32) #1

declare dso_local i64 @strlen(i32) #1

declare dso_local i32 @merror(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
