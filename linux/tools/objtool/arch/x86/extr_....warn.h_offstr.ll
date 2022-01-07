; ModuleID = '/home/carl/AnghaBench/linux/tools/objtool/arch/x86/extr_....warn.h_offstr.c'
source_filename = "/home/carl/AnghaBench/linux/tools/objtool/arch/x86/extr_....warn.h_offstr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.section = type { i8* }
%struct.symbol = type { i8*, i64 }

@.str = private unnamed_addr constant [11 x i8] c"%s()+0x%lx\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"%s+0x%lx\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.section*, i64)* @offstr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @offstr(%struct.section* %0, i64 %1) #0 {
  %3 = alloca %struct.section*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.symbol*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  store %struct.section* %0, %struct.section** %3, align 8
  store i64 %1, i64* %4, align 8
  %9 = load %struct.section*, %struct.section** %3, align 8
  %10 = load i64, i64* %4, align 8
  %11 = call %struct.symbol* @find_containing_func(%struct.section* %9, i64 %10)
  store %struct.symbol* %11, %struct.symbol** %5, align 8
  %12 = load %struct.symbol*, %struct.symbol** %5, align 8
  %13 = icmp ne %struct.symbol* %12, null
  br i1 %13, label %14, label %23

14:                                               ; preds = %2
  %15 = load %struct.symbol*, %struct.symbol** %5, align 8
  %16 = getelementptr inbounds %struct.symbol, %struct.symbol* %15, i32 0, i32 0
  %17 = load i8*, i8** %16, align 8
  store i8* %17, i8** %6, align 8
  %18 = load i64, i64* %4, align 8
  %19 = load %struct.symbol*, %struct.symbol** %5, align 8
  %20 = getelementptr inbounds %struct.symbol, %struct.symbol* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = sub i64 %18, %21
  store i64 %22, i64* %8, align 8
  br label %28

23:                                               ; preds = %2
  %24 = load %struct.section*, %struct.section** %3, align 8
  %25 = getelementptr inbounds %struct.section, %struct.section* %24, i32 0, i32 0
  %26 = load i8*, i8** %25, align 8
  store i8* %26, i8** %6, align 8
  %27 = load i64, i64* %4, align 8
  store i64 %27, i64* %8, align 8
  br label %28

28:                                               ; preds = %23, %14
  %29 = load i8*, i8** %6, align 8
  %30 = call i64 @strlen(i8* %29)
  %31 = add nsw i64 %30, 20
  %32 = call i8* @malloc(i64 %31)
  store i8* %32, i8** %7, align 8
  %33 = load %struct.symbol*, %struct.symbol** %5, align 8
  %34 = icmp ne %struct.symbol* %33, null
  br i1 %34, label %35, label %40

35:                                               ; preds = %28
  %36 = load i8*, i8** %7, align 8
  %37 = load i8*, i8** %6, align 8
  %38 = load i64, i64* %8, align 8
  %39 = call i32 @sprintf(i8* %36, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8* %37, i64 %38)
  br label %45

40:                                               ; preds = %28
  %41 = load i8*, i8** %7, align 8
  %42 = load i8*, i8** %6, align 8
  %43 = load i64, i64* %8, align 8
  %44 = call i32 @sprintf(i8* %41, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* %42, i64 %43)
  br label %45

45:                                               ; preds = %40, %35
  %46 = load i8*, i8** %7, align 8
  ret i8* %46
}

declare dso_local %struct.symbol* @find_containing_func(%struct.section*, i64) #1

declare dso_local i8* @malloc(i64) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @sprintf(i8*, i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
