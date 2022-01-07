; ModuleID = '/home/carl/AnghaBench/linux/scripts/mod/extr_modpost.c_sym_add_exported.c'
source_filename = "/home/carl/AnghaBench/linux/scripts/mod/extr_modpost.c_sym_add_exported.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.symbol = type { i32, i64, i64, i64, %struct.module* }
%struct.module = type { i32 }

@.str = private unnamed_addr constant [54 x i8] c"%s: '%s' exported twice. Previous export was in %s%s\0A\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [4 x i8] c".ko\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.symbol* (i8*, %struct.module*, i32)* @sym_add_exported to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.symbol* @sym_add_exported(i8* %0, %struct.module* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.module*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.symbol*, align 8
  store i8* %0, i8** %4, align 8
  store %struct.module* %1, %struct.module** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load i8*, i8** %4, align 8
  %9 = call %struct.symbol* @find_symbol(i8* %8)
  store %struct.symbol* %9, %struct.symbol** %7, align 8
  %10 = load %struct.symbol*, %struct.symbol** %7, align 8
  %11 = icmp ne %struct.symbol* %10, null
  br i1 %11, label %17, label %12

12:                                               ; preds = %3
  %13 = load i8*, i8** %4, align 8
  %14 = load %struct.module*, %struct.module** %5, align 8
  %15 = load i32, i32* %6, align 4
  %16 = call %struct.symbol* @new_symbol(i8* %13, %struct.module* %14, i32 %15)
  store %struct.symbol* %16, %struct.symbol** %7, align 8
  br label %47

17:                                               ; preds = %3
  %18 = load %struct.symbol*, %struct.symbol** %7, align 8
  %19 = getelementptr inbounds %struct.symbol, %struct.symbol* %18, i32 0, i32 3
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %42, label %22

22:                                               ; preds = %17
  %23 = load %struct.module*, %struct.module** %5, align 8
  %24 = getelementptr inbounds %struct.module, %struct.module* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i8*, i8** %4, align 8
  %27 = load %struct.symbol*, %struct.symbol** %7, align 8
  %28 = getelementptr inbounds %struct.symbol, %struct.symbol* %27, i32 0, i32 4
  %29 = load %struct.module*, %struct.module** %28, align 8
  %30 = getelementptr inbounds %struct.module, %struct.module* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.symbol*, %struct.symbol** %7, align 8
  %33 = getelementptr inbounds %struct.symbol, %struct.symbol* %32, i32 0, i32 4
  %34 = load %struct.module*, %struct.module** %33, align 8
  %35 = getelementptr inbounds %struct.module, %struct.module* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i64 @is_vmlinux(i32 %36)
  %38 = icmp ne i64 %37, 0
  %39 = zext i1 %38 to i64
  %40 = select i1 %38, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)
  %41 = call i32 @warn(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i32 %25, i8* %26, i32 %31, i8* %40)
  br label %46

42:                                               ; preds = %17
  %43 = load %struct.module*, %struct.module** %5, align 8
  %44 = load %struct.symbol*, %struct.symbol** %7, align 8
  %45 = getelementptr inbounds %struct.symbol, %struct.symbol* %44, i32 0, i32 4
  store %struct.module* %43, %struct.module** %45, align 8
  br label %46

46:                                               ; preds = %42, %22
  br label %47

47:                                               ; preds = %46, %12
  %48 = load %struct.symbol*, %struct.symbol** %7, align 8
  %49 = getelementptr inbounds %struct.symbol, %struct.symbol* %48, i32 0, i32 3
  store i64 0, i64* %49, align 8
  %50 = load %struct.module*, %struct.module** %5, align 8
  %51 = getelementptr inbounds %struct.module, %struct.module* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i64 @is_vmlinux(i32 %52)
  %54 = load %struct.symbol*, %struct.symbol** %7, align 8
  %55 = getelementptr inbounds %struct.symbol, %struct.symbol* %54, i32 0, i32 2
  store i64 %53, i64* %55, align 8
  %56 = load %struct.symbol*, %struct.symbol** %7, align 8
  %57 = getelementptr inbounds %struct.symbol, %struct.symbol* %56, i32 0, i32 1
  store i64 0, i64* %57, align 8
  %58 = load i32, i32* %6, align 4
  %59 = load %struct.symbol*, %struct.symbol** %7, align 8
  %60 = getelementptr inbounds %struct.symbol, %struct.symbol* %59, i32 0, i32 0
  store i32 %58, i32* %60, align 8
  %61 = load %struct.symbol*, %struct.symbol** %7, align 8
  ret %struct.symbol* %61
}

declare dso_local %struct.symbol* @find_symbol(i8*) #1

declare dso_local %struct.symbol* @new_symbol(i8*, %struct.module*, i32) #1

declare dso_local i32 @warn(i8*, i32, i8*, i32, i8*) #1

declare dso_local i64 @is_vmlinux(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
