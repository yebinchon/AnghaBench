; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_textsearch.c_textsearch_prepare.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_textsearch.c_textsearch_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ts_config = type { %struct.ts_ops* }
%struct.ts_ops = type { i32, %struct.ts_config* (i8*, i32, i32, i32)* }

@ENOENT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@TS_AUTOLOAD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ts_config* @textsearch_prepare(i8* %0, i8* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.ts_config*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.ts_config*, align 8
  %14 = alloca %struct.ts_ops*, align 8
  store i8* %0, i8** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %15 = load i32, i32* @ENOENT, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %12, align 4
  %17 = load i32, i32* %9, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %5
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  %22 = call %struct.ts_config* @ERR_PTR(i32 %21)
  store %struct.ts_config* %22, %struct.ts_config** %6, align 8
  br label %60

23:                                               ; preds = %5
  %24 = load i8*, i8** %7, align 8
  %25 = call %struct.ts_ops* @lookup_ts_algo(i8* %24)
  store %struct.ts_ops* %25, %struct.ts_ops** %14, align 8
  %26 = load %struct.ts_ops*, %struct.ts_ops** %14, align 8
  %27 = icmp eq %struct.ts_ops* %26, null
  br i1 %27, label %28, label %29

28:                                               ; preds = %23
  br label %49

29:                                               ; preds = %23
  %30 = load %struct.ts_ops*, %struct.ts_ops** %14, align 8
  %31 = getelementptr inbounds %struct.ts_ops, %struct.ts_ops* %30, i32 0, i32 1
  %32 = load %struct.ts_config* (i8*, i32, i32, i32)*, %struct.ts_config* (i8*, i32, i32, i32)** %31, align 8
  %33 = load i8*, i8** %8, align 8
  %34 = load i32, i32* %9, align 4
  %35 = load i32, i32* %10, align 4
  %36 = load i32, i32* %11, align 4
  %37 = call %struct.ts_config* %32(i8* %33, i32 %34, i32 %35, i32 %36)
  store %struct.ts_config* %37, %struct.ts_config** %13, align 8
  %38 = load %struct.ts_config*, %struct.ts_config** %13, align 8
  %39 = call i64 @IS_ERR(%struct.ts_config* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %29
  %42 = load %struct.ts_config*, %struct.ts_config** %13, align 8
  %43 = call i32 @PTR_ERR(%struct.ts_config* %42)
  store i32 %43, i32* %12, align 4
  br label %49

44:                                               ; preds = %29
  %45 = load %struct.ts_ops*, %struct.ts_ops** %14, align 8
  %46 = load %struct.ts_config*, %struct.ts_config** %13, align 8
  %47 = getelementptr inbounds %struct.ts_config, %struct.ts_config* %46, i32 0, i32 0
  store %struct.ts_ops* %45, %struct.ts_ops** %47, align 8
  %48 = load %struct.ts_config*, %struct.ts_config** %13, align 8
  store %struct.ts_config* %48, %struct.ts_config** %6, align 8
  br label %60

49:                                               ; preds = %41, %28
  %50 = load %struct.ts_ops*, %struct.ts_ops** %14, align 8
  %51 = icmp ne %struct.ts_ops* %50, null
  br i1 %51, label %52, label %57

52:                                               ; preds = %49
  %53 = load %struct.ts_ops*, %struct.ts_ops** %14, align 8
  %54 = getelementptr inbounds %struct.ts_ops, %struct.ts_ops* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @module_put(i32 %55)
  br label %57

57:                                               ; preds = %52, %49
  %58 = load i32, i32* %12, align 4
  %59 = call %struct.ts_config* @ERR_PTR(i32 %58)
  store %struct.ts_config* %59, %struct.ts_config** %6, align 8
  br label %60

60:                                               ; preds = %57, %44, %19
  %61 = load %struct.ts_config*, %struct.ts_config** %6, align 8
  ret %struct.ts_config* %61
}

declare dso_local %struct.ts_config* @ERR_PTR(i32) #1

declare dso_local %struct.ts_ops* @lookup_ts_algo(i8*) #1

declare dso_local i64 @IS_ERR(%struct.ts_config*) #1

declare dso_local i32 @PTR_ERR(%struct.ts_config*) #1

declare dso_local i32 @module_put(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
