; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_module.c_each_symbol_in_section.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_module.c_each_symbol_in_section.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.symsearch = type { i32 }
%struct.module = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.symsearch*, i32, %struct.module*, i32 (%struct.symsearch*, %struct.module*, i8*)*, i8*)* @each_symbol_in_section to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @each_symbol_in_section(%struct.symsearch* %0, i32 %1, %struct.module* %2, i32 (%struct.symsearch*, %struct.module*, i8*)* %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.symsearch*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.module*, align 8
  %10 = alloca i32 (%struct.symsearch*, %struct.module*, i8*)*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  store %struct.symsearch* %0, %struct.symsearch** %7, align 8
  store i32 %1, i32* %8, align 4
  store %struct.module* %2, %struct.module** %9, align 8
  store i32 (%struct.symsearch*, %struct.module*, i8*)* %3, i32 (%struct.symsearch*, %struct.module*, i8*)** %10, align 8
  store i8* %4, i8** %11, align 8
  store i32 0, i32* %12, align 4
  br label %13

13:                                               ; preds = %29, %5
  %14 = load i32, i32* %12, align 4
  %15 = load i32, i32* %8, align 4
  %16 = icmp ult i32 %14, %15
  br i1 %16, label %17, label %32

17:                                               ; preds = %13
  %18 = load i32 (%struct.symsearch*, %struct.module*, i8*)*, i32 (%struct.symsearch*, %struct.module*, i8*)** %10, align 8
  %19 = load %struct.symsearch*, %struct.symsearch** %7, align 8
  %20 = load i32, i32* %12, align 4
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds %struct.symsearch, %struct.symsearch* %19, i64 %21
  %23 = load %struct.module*, %struct.module** %9, align 8
  %24 = load i8*, i8** %11, align 8
  %25 = call i32 %18(%struct.symsearch* %22, %struct.module* %23, i8* %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %17
  store i32 1, i32* %6, align 4
  br label %33

28:                                               ; preds = %17
  br label %29

29:                                               ; preds = %28
  %30 = load i32, i32* %12, align 4
  %31 = add i32 %30, 1
  store i32 %31, i32* %12, align 4
  br label %13

32:                                               ; preds = %13
  store i32 0, i32* %6, align 4
  br label %33

33:                                               ; preds = %32, %27
  %34 = load i32, i32* %6, align 4
  ret i32 %34
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
