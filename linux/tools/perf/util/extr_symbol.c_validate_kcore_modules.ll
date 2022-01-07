; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_symbol.c_validate_kcore_modules.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_symbol.c_validate_kcore_modules.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.map = type { i32 }
%struct.map_groups = type { i32 }

@PATH_MAX = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"modules\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.map*)* @validate_kcore_modules to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @validate_kcore_modules(i8* %0, %struct.map* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.map*, align 8
  %6 = alloca %struct.map_groups*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store %struct.map* %1, %struct.map** %5, align 8
  %10 = load %struct.map*, %struct.map** %5, align 8
  %11 = call %struct.map_groups* @map__kmaps(%struct.map* %10)
  store %struct.map_groups* %11, %struct.map_groups** %6, align 8
  %12 = load i32, i32* @PATH_MAX, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %7, align 8
  %15 = alloca i8, i64 %13, align 16
  store i64 %13, i64* %8, align 8
  %16 = load %struct.map_groups*, %struct.map_groups** %6, align 8
  %17 = icmp ne %struct.map_groups* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %2
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  store i32 1, i32* %9, align 4
  br label %36

21:                                               ; preds = %2
  %22 = load i8*, i8** %4, align 8
  %23 = call i32 @filename_from_kallsyms_filename(i8* %15, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %21
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %3, align 4
  store i32 1, i32* %9, align 4
  br label %36

28:                                               ; preds = %21
  %29 = load %struct.map_groups*, %struct.map_groups** %6, align 8
  %30 = call i64 @do_validate_kcore_modules(i8* %15, %struct.map_groups* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %28
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %3, align 4
  store i32 1, i32* %9, align 4
  br label %36

35:                                               ; preds = %28
  store i32 0, i32* %3, align 4
  store i32 1, i32* %9, align 4
  br label %36

36:                                               ; preds = %35, %32, %25, %18
  %37 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %37)
  %38 = load i32, i32* %3, align 4
  ret i32 %38
}

declare dso_local %struct.map_groups* @map__kmaps(%struct.map*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @filename_from_kallsyms_filename(i8*, i8*, i8*) #1

declare dso_local i64 @do_validate_kcore_modules(i8*, %struct.map_groups*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
