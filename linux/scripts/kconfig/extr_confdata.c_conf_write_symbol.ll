; ModuleID = '/home/carl/AnghaBench/linux/scripts/kconfig/extr_confdata.c_conf_write_symbol.c'
source_filename = "/home/carl/AnghaBench/linux/scripts/kconfig/extr_confdata.c_conf_write_symbol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.symbol = type { i32 }
%struct.conf_printer = type { i32 (i32*, %struct.symbol*, i8*, i8*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.symbol*, %struct.conf_printer*, i8*)* @conf_write_symbol to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @conf_write_symbol(i32* %0, %struct.symbol* %1, %struct.conf_printer* %2, i8* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.symbol*, align 8
  %7 = alloca %struct.conf_printer*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store i32* %0, i32** %5, align 8
  store %struct.symbol* %1, %struct.symbol** %6, align 8
  store %struct.conf_printer* %2, %struct.conf_printer** %7, align 8
  store i8* %3, i8** %8, align 8
  %10 = load %struct.symbol*, %struct.symbol** %6, align 8
  %11 = getelementptr inbounds %struct.symbol, %struct.symbol* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  switch i32 %12, label %29 [
    i32 128, label %13
    i32 129, label %14
  ]

13:                                               ; preds = %4
  br label %40

14:                                               ; preds = %4
  %15 = load %struct.symbol*, %struct.symbol** %6, align 8
  %16 = call i8* @sym_get_string_value(%struct.symbol* %15)
  store i8* %16, i8** %9, align 8
  %17 = load i8*, i8** %9, align 8
  %18 = call i8* @sym_escape_string_value(i8* %17)
  store i8* %18, i8** %9, align 8
  %19 = load %struct.conf_printer*, %struct.conf_printer** %7, align 8
  %20 = getelementptr inbounds %struct.conf_printer, %struct.conf_printer* %19, i32 0, i32 0
  %21 = load i32 (i32*, %struct.symbol*, i8*, i8*)*, i32 (i32*, %struct.symbol*, i8*, i8*)** %20, align 8
  %22 = load i32*, i32** %5, align 8
  %23 = load %struct.symbol*, %struct.symbol** %6, align 8
  %24 = load i8*, i8** %9, align 8
  %25 = load i8*, i8** %8, align 8
  %26 = call i32 %21(i32* %22, %struct.symbol* %23, i8* %24, i8* %25)
  %27 = load i8*, i8** %9, align 8
  %28 = call i32 @free(i8* %27)
  br label %40

29:                                               ; preds = %4
  %30 = load %struct.symbol*, %struct.symbol** %6, align 8
  %31 = call i8* @sym_get_string_value(%struct.symbol* %30)
  store i8* %31, i8** %9, align 8
  %32 = load %struct.conf_printer*, %struct.conf_printer** %7, align 8
  %33 = getelementptr inbounds %struct.conf_printer, %struct.conf_printer* %32, i32 0, i32 0
  %34 = load i32 (i32*, %struct.symbol*, i8*, i8*)*, i32 (i32*, %struct.symbol*, i8*, i8*)** %33, align 8
  %35 = load i32*, i32** %5, align 8
  %36 = load %struct.symbol*, %struct.symbol** %6, align 8
  %37 = load i8*, i8** %9, align 8
  %38 = load i8*, i8** %8, align 8
  %39 = call i32 %34(i32* %35, %struct.symbol* %36, i8* %37, i8* %38)
  br label %40

40:                                               ; preds = %29, %14, %13
  ret void
}

declare dso_local i8* @sym_get_string_value(%struct.symbol*) #1

declare dso_local i8* @sym_escape_string_value(i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
