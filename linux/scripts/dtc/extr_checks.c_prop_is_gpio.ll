; ModuleID = '/home/carl/AnghaBench/linux/scripts/dtc/extr_checks.c_prop_is_gpio.c'
source_filename = "/home/carl/AnghaBench/linux/scripts/dtc/extr_checks.c_prop_is_gpio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.property = type { i8* }

@.str = private unnamed_addr constant [8 x i8] c"nr-gpio\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"gpios\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"gpio\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.property*)* @prop_is_gpio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @prop_is_gpio(%struct.property* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.property*, align 8
  %4 = alloca i8*, align 8
  store %struct.property* %0, %struct.property** %3, align 8
  %5 = load %struct.property*, %struct.property** %3, align 8
  %6 = getelementptr inbounds %struct.property, %struct.property* %5, i32 0, i32 0
  %7 = load i8*, i8** %6, align 8
  %8 = call i64 @strstr(i8* %7, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %35

11:                                               ; preds = %1
  %12 = load %struct.property*, %struct.property** %3, align 8
  %13 = getelementptr inbounds %struct.property, %struct.property* %12, i32 0, i32 0
  %14 = load i8*, i8** %13, align 8
  %15 = call i8* @strrchr(i8* %14, i8 signext 45)
  store i8* %15, i8** %4, align 8
  %16 = load i8*, i8** %4, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %11
  %19 = load i8*, i8** %4, align 8
  %20 = getelementptr inbounds i8, i8* %19, i32 1
  store i8* %20, i8** %4, align 8
  br label %25

21:                                               ; preds = %11
  %22 = load %struct.property*, %struct.property** %3, align 8
  %23 = getelementptr inbounds %struct.property, %struct.property* %22, i32 0, i32 0
  %24 = load i8*, i8** %23, align 8
  store i8* %24, i8** %4, align 8
  br label %25

25:                                               ; preds = %21, %18
  %26 = load i8*, i8** %4, align 8
  %27 = call i64 @streq(i8* %26, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %34, label %29

29:                                               ; preds = %25
  %30 = load i8*, i8** %4, align 8
  %31 = call i64 @streq(i8* %30, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %29
  store i32 0, i32* %2, align 4
  br label %35

34:                                               ; preds = %29, %25
  store i32 1, i32* %2, align 4
  br label %35

35:                                               ; preds = %34, %33, %10
  %36 = load i32, i32* %2, align 4
  ret i32 %36
}

declare dso_local i64 @strstr(i8*, i8*) #1

declare dso_local i8* @strrchr(i8*, i8 signext) #1

declare dso_local i64 @streq(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
