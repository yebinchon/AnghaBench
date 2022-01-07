; ModuleID = '/home/carl/AnghaBench/linux/scripts/kconfig/extr_symbol.c_sym_warn_unmet_dep.c'
source_filename = "/home/carl/AnghaBench/linux/scripts/kconfig/extr_symbol.c_sym_warn_unmet_dep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.symbol = type { %struct.TYPE_3__, %struct.TYPE_4__, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i64, i32 }
%struct.gstr = type { i32 }

@.str = private unnamed_addr constant [53 x i8] c"\0AWARNING: unmet direct dependencies detected for %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"  Depends on [%c]: \00", align 1
@mod = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@yes = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [20 x i8] c"  Selected by [y]:\0A\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"  Selected by [m]:\0A\00", align 1
@stderr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.symbol*)* @sym_warn_unmet_dep to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sym_warn_unmet_dep(%struct.symbol* %0) #0 {
  %2 = alloca %struct.symbol*, align 8
  %3 = alloca %struct.gstr, align 4
  store %struct.symbol* %0, %struct.symbol** %2, align 8
  %4 = call i32 (...) @str_new()
  %5 = getelementptr inbounds %struct.gstr, %struct.gstr* %3, i32 0, i32 0
  store i32 %4, i32* %5, align 4
  %6 = load %struct.symbol*, %struct.symbol** %2, align 8
  %7 = getelementptr inbounds %struct.symbol, %struct.symbol* %6, i32 0, i32 2
  %8 = load i32, i32* %7, align 8
  %9 = call i32 (%struct.gstr*, i8*, ...) @str_printf(%struct.gstr* %3, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i32 %8)
  %10 = load %struct.symbol*, %struct.symbol** %2, align 8
  %11 = getelementptr inbounds %struct.symbol, %struct.symbol* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @mod, align 8
  %15 = icmp eq i64 %13, %14
  %16 = zext i1 %15 to i64
  %17 = select i1 %15, i32 109, i32 110
  %18 = call i32 (%struct.gstr*, i8*, ...) @str_printf(%struct.gstr* %3, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %17)
  %19 = load %struct.symbol*, %struct.symbol** %2, align 8
  %20 = getelementptr inbounds %struct.symbol, %struct.symbol* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @expr_gstr_print(i32 %22, %struct.gstr* %3)
  %24 = call i32 (%struct.gstr*, i8*, ...) @str_printf(%struct.gstr* %3, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %25 = load %struct.symbol*, %struct.symbol** %2, align 8
  %26 = getelementptr inbounds %struct.symbol, %struct.symbol* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i64, i64* @yes, align 8
  %30 = call i32 @expr_gstr_print_revdep(i32 %28, %struct.gstr* %3, i64 %29, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0))
  %31 = load %struct.symbol*, %struct.symbol** %2, align 8
  %32 = getelementptr inbounds %struct.symbol, %struct.symbol* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i64, i64* @mod, align 8
  %36 = call i32 @expr_gstr_print_revdep(i32 %34, %struct.gstr* %3, i64 %35, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0))
  %37 = call i32 @str_get(%struct.gstr* %3)
  %38 = load i32, i32* @stderr, align 4
  %39 = call i32 @fputs(i32 %37, i32 %38)
  ret void
}

declare dso_local i32 @str_new(...) #1

declare dso_local i32 @str_printf(%struct.gstr*, i8*, ...) #1

declare dso_local i32 @expr_gstr_print(i32, %struct.gstr*) #1

declare dso_local i32 @expr_gstr_print_revdep(i32, %struct.gstr*, i64, i8*) #1

declare dso_local i32 @fputs(i32, i32) #1

declare dso_local i32 @str_get(%struct.gstr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
