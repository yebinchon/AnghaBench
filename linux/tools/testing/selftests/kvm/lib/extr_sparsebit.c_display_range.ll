; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/kvm/lib/extr_sparsebit.c_display_range.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/kvm/lib/extr_sparsebit.c_display_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [8 x i8] c", 0x%lx\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"0x%lx\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c", 0x%lx:0x%lx\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"0x%lx:0x%lx\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, i32, i32, i32)* @display_range to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @display_range(i32* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load i32, i32* %6, align 4
  %12 = load i32, i32* %7, align 4
  %13 = icmp eq i32 %11, %12
  br i1 %13, label %14, label %19

14:                                               ; preds = %4
  %15 = load i32, i32* %8, align 4
  %16 = icmp ne i32 %15, 0
  %17 = zext i1 %16 to i64
  %18 = select i1 %16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0)
  store i8* %18, i8** %9, align 8
  br label %24

19:                                               ; preds = %4
  %20 = load i32, i32* %8, align 4
  %21 = icmp ne i32 %20, 0
  %22 = zext i1 %21 to i64
  %23 = select i1 %21, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0)
  store i8* %23, i8** %9, align 8
  br label %24

24:                                               ; preds = %19, %14
  %25 = load i32*, i32** %5, align 8
  %26 = icmp ne i32* %25, null
  br i1 %26, label %32, label %27

27:                                               ; preds = %24
  %28 = load i8*, i8** %9, align 8
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* %7, align 4
  %31 = call i64 @snprintf(i32* null, i32 0, i8* %28, i32 %29, i32 %30)
  store i64 %31, i64* %10, align 8
  br label %38

32:                                               ; preds = %24
  %33 = load i32*, i32** %5, align 8
  %34 = load i8*, i8** %9, align 8
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* %7, align 4
  %37 = call i64 @fprintf(i32* %33, i8* %34, i32 %35, i32 %36)
  store i64 %37, i64* %10, align 8
  br label %38

38:                                               ; preds = %32, %27
  %39 = load i64, i64* %10, align 8
  ret i64 %39
}

declare dso_local i64 @snprintf(i32*, i32, i8*, i32, i32) #1

declare dso_local i64 @fprintf(i32*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
