; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_machine.c_find_entry_trampoline.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_machine.c_find_entry_trampoline.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dso = type { i32 }
%struct.symbol = type { i64, i32, i32 }

@.str = private unnamed_addr constant [18 x i8] c"_entry_trampoline\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"__entry_trampoline_start\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"entry_SYSCALL_64_trampoline\00", align 1
@__const.find_entry_trampoline.syms = private unnamed_addr constant [3 x i8*] [i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i32 0, i32 0)], align 16
@STB_GLOBAL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dso*)* @find_entry_trampoline to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @find_entry_trampoline(%struct.dso* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dso*, align 8
  %4 = alloca [3 x i8*], align 16
  %5 = alloca %struct.symbol*, align 8
  %6 = alloca i32, align 4
  store %struct.dso* %0, %struct.dso** %3, align 8
  %7 = bitcast [3 x i8*]* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %7, i8* align 16 bitcast ([3 x i8*]* @__const.find_entry_trampoline.syms to i8*), i64 24, i1 false)
  %8 = load %struct.dso*, %struct.dso** %3, align 8
  %9 = call %struct.symbol* @dso__first_symbol(%struct.dso* %8)
  store %struct.symbol* %9, %struct.symbol** %5, align 8
  br label %10

10:                                               ; preds = %45, %1
  %11 = load %struct.symbol*, %struct.symbol** %5, align 8
  %12 = icmp ne %struct.symbol* %11, null
  br i1 %12, label %13, label %48

13:                                               ; preds = %10
  %14 = load %struct.symbol*, %struct.symbol** %5, align 8
  %15 = getelementptr inbounds %struct.symbol, %struct.symbol* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @STB_GLOBAL, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %13
  br label %45

20:                                               ; preds = %13
  store i32 0, i32* %6, align 4
  br label %21

21:                                               ; preds = %41, %20
  %22 = load i32, i32* %6, align 4
  %23 = getelementptr inbounds [3 x i8*], [3 x i8*]* %4, i64 0, i64 0
  %24 = call i32 @ARRAY_SIZE(i8** %23)
  %25 = icmp ult i32 %22, %24
  br i1 %25, label %26, label %44

26:                                               ; preds = %21
  %27 = load %struct.symbol*, %struct.symbol** %5, align 8
  %28 = getelementptr inbounds %struct.symbol, %struct.symbol* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %6, align 4
  %31 = zext i32 %30 to i64
  %32 = getelementptr inbounds [3 x i8*], [3 x i8*]* %4, i64 0, i64 %31
  %33 = load i8*, i8** %32, align 8
  %34 = call i32 @strcmp(i32 %29, i8* %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %40, label %36

36:                                               ; preds = %26
  %37 = load %struct.symbol*, %struct.symbol** %5, align 8
  %38 = getelementptr inbounds %struct.symbol, %struct.symbol* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  store i32 %39, i32* %2, align 4
  br label %49

40:                                               ; preds = %26
  br label %41

41:                                               ; preds = %40
  %42 = load i32, i32* %6, align 4
  %43 = add i32 %42, 1
  store i32 %43, i32* %6, align 4
  br label %21

44:                                               ; preds = %21
  br label %45

45:                                               ; preds = %44, %19
  %46 = load %struct.symbol*, %struct.symbol** %5, align 8
  %47 = call %struct.symbol* @dso__next_symbol(%struct.symbol* %46)
  store %struct.symbol* %47, %struct.symbol** %5, align 8
  br label %10

48:                                               ; preds = %10
  store i32 0, i32* %2, align 4
  br label %49

49:                                               ; preds = %48, %36
  %50 = load i32, i32* %2, align 4
  ret i32 %50
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local %struct.symbol* @dso__first_symbol(%struct.dso*) #2

declare dso_local i32 @ARRAY_SIZE(i8**) #2

declare dso_local i32 @strcmp(i32, i8*) #2

declare dso_local %struct.symbol* @dso__next_symbol(%struct.symbol*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
