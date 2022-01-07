; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/intel/skylake/extr_skl-debug.c_skl_print_pins.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/intel/skylake/extr_skl-debug.c_skl_print_pins.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.skl_module_pin = type { i32, i64, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@MOD_BUF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [72 x i8] c"%s %d\0A\09Module %d\0A\09Instance %d\0A\09In-used %s\0A\09Type %s\0A\09State %d\0A\09Index %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"Input Pin:\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"Output Pin:\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"Used\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"Unused\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"Dynamic\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"Static\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.skl_module_pin*, i8*, i32, i32, i32)* @skl_print_pins to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @skl_print_pins(%struct.skl_module_pin* %0, i8* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.skl_module_pin*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.skl_module_pin* %0, %struct.skl_module_pin** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %11, align 4
  br label %13

13:                                               ; preds = %74, %5
  %14 = load i32, i32* %11, align 4
  %15 = load i32, i32* %8, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %77

17:                                               ; preds = %13
  %18 = load i8*, i8** %7, align 8
  %19 = load i32, i32* %9, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i8, i8* %18, i64 %20
  %22 = load i32, i32* @MOD_BUF, align 4
  %23 = load i32, i32* %9, align 4
  %24 = sub nsw i32 %22, %23
  %25 = load i32, i32* %10, align 4
  %26 = icmp ne i32 %25, 0
  %27 = zext i1 %26 to i64
  %28 = select i1 %26, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0)
  %29 = load i32, i32* %11, align 4
  %30 = load %struct.skl_module_pin*, %struct.skl_module_pin** %6, align 8
  %31 = load i32, i32* %11, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.skl_module_pin, %struct.skl_module_pin* %30, i64 %32
  %34 = getelementptr inbounds %struct.skl_module_pin, %struct.skl_module_pin* %33, i32 0, i32 3
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.skl_module_pin*, %struct.skl_module_pin** %6, align 8
  %38 = load i32, i32* %11, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.skl_module_pin, %struct.skl_module_pin* %37, i64 %39
  %41 = getelementptr inbounds %struct.skl_module_pin, %struct.skl_module_pin* %40, i32 0, i32 3
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.skl_module_pin*, %struct.skl_module_pin** %6, align 8
  %45 = load i32, i32* %11, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.skl_module_pin, %struct.skl_module_pin* %44, i64 %46
  %48 = getelementptr inbounds %struct.skl_module_pin, %struct.skl_module_pin* %47, i32 0, i32 2
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  %51 = zext i1 %50 to i64
  %52 = select i1 %50, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0)
  %53 = load %struct.skl_module_pin*, %struct.skl_module_pin** %6, align 8
  %54 = load i32, i32* %11, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.skl_module_pin, %struct.skl_module_pin* %53, i64 %55
  %57 = getelementptr inbounds %struct.skl_module_pin, %struct.skl_module_pin* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  %60 = zext i1 %59 to i64
  %61 = select i1 %59, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0)
  %62 = load %struct.skl_module_pin*, %struct.skl_module_pin** %6, align 8
  %63 = load i32, i32* %11, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.skl_module_pin, %struct.skl_module_pin* %62, i64 %64
  %66 = getelementptr inbounds %struct.skl_module_pin, %struct.skl_module_pin* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* %11, align 4
  %69 = call i64 @snprintf(i8* %21, i32 %24, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str, i64 0, i64 0), i8* %28, i32 %29, i32 %36, i32 %43, i8* %52, i8* %61, i32 %67, i32 %68)
  %70 = load i32, i32* %12, align 4
  %71 = sext i32 %70 to i64
  %72 = add nsw i64 %71, %69
  %73 = trunc i64 %72 to i32
  store i32 %73, i32* %12, align 4
  br label %74

74:                                               ; preds = %17
  %75 = load i32, i32* %11, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %11, align 4
  br label %13

77:                                               ; preds = %13
  %78 = load i32, i32* %12, align 4
  ret i32 %78
}

declare dso_local i64 @snprintf(i8*, i32, i8*, i8*, i32, i32, i32, i8*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
