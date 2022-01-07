; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_module.c_find_exported_symbol_in_section.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_module.c_find_exported_symbol_in_section.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.symsearch = type { i32, i32 }
%struct.module = type { i32 }
%struct.find_symbol_arg = type { i32 }
%struct.kernel_symbol = type { i32 }

@cmp_name = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.symsearch*, %struct.module*, i8*)* @find_exported_symbol_in_section to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @find_exported_symbol_in_section(%struct.symsearch* %0, %struct.module* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.symsearch*, align 8
  %6 = alloca %struct.module*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.find_symbol_arg*, align 8
  %9 = alloca %struct.kernel_symbol*, align 8
  store %struct.symsearch* %0, %struct.symsearch** %5, align 8
  store %struct.module* %1, %struct.module** %6, align 8
  store i8* %2, i8** %7, align 8
  %10 = load i8*, i8** %7, align 8
  %11 = bitcast i8* %10 to %struct.find_symbol_arg*
  store %struct.find_symbol_arg* %11, %struct.find_symbol_arg** %8, align 8
  %12 = load %struct.find_symbol_arg*, %struct.find_symbol_arg** %8, align 8
  %13 = getelementptr inbounds %struct.find_symbol_arg, %struct.find_symbol_arg* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.symsearch*, %struct.symsearch** %5, align 8
  %16 = getelementptr inbounds %struct.symsearch, %struct.symsearch* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.symsearch*, %struct.symsearch** %5, align 8
  %19 = getelementptr inbounds %struct.symsearch, %struct.symsearch* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.symsearch*, %struct.symsearch** %5, align 8
  %22 = getelementptr inbounds %struct.symsearch, %struct.symsearch* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = sub nsw i32 %20, %23
  %25 = load i32, i32* @cmp_name, align 4
  %26 = call %struct.kernel_symbol* @bsearch(i32 %14, i32 %17, i32 %24, i32 4, i32 %25)
  store %struct.kernel_symbol* %26, %struct.kernel_symbol** %9, align 8
  %27 = load %struct.kernel_symbol*, %struct.kernel_symbol** %9, align 8
  %28 = icmp ne %struct.kernel_symbol* %27, null
  br i1 %28, label %29, label %43

29:                                               ; preds = %3
  %30 = load %struct.symsearch*, %struct.symsearch** %5, align 8
  %31 = load %struct.module*, %struct.module** %6, align 8
  %32 = load %struct.kernel_symbol*, %struct.kernel_symbol** %9, align 8
  %33 = load %struct.symsearch*, %struct.symsearch** %5, align 8
  %34 = getelementptr inbounds %struct.symsearch, %struct.symsearch* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = sext i32 %35 to i64
  %37 = sub i64 0, %36
  %38 = getelementptr inbounds %struct.kernel_symbol, %struct.kernel_symbol* %32, i64 %37
  %39 = load i8*, i8** %7, align 8
  %40 = call i64 @check_exported_symbol(%struct.symsearch* %30, %struct.module* %31, %struct.kernel_symbol* %38, i8* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %29
  store i32 1, i32* %4, align 4
  br label %44

43:                                               ; preds = %29, %3
  store i32 0, i32* %4, align 4
  br label %44

44:                                               ; preds = %43, %42
  %45 = load i32, i32* %4, align 4
  ret i32 %45
}

declare dso_local %struct.kernel_symbol* @bsearch(i32, i32, i32, i32, i32) #1

declare dso_local i64 @check_exported_symbol(%struct.symsearch*, %struct.module*, %struct.kernel_symbol*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
