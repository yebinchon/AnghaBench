; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_symbol.c_do_validate_kcore_modules.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_symbol.c_do_validate_kcore_modules.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rb_root = type { i32 }
%struct.map_groups = type { i32 }
%struct.map = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.module_info = type { i64 }

@RB_ROOT = common dso_local global %struct.rb_root zeroinitializer, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.map_groups*)* @do_validate_kcore_modules to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_validate_kcore_modules(i8* %0, %struct.map_groups* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.map_groups*, align 8
  %6 = alloca %struct.rb_root, align 4
  %7 = alloca %struct.map*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.map*, align 8
  %10 = alloca %struct.module_info*, align 8
  store i8* %0, i8** %4, align 8
  store %struct.map_groups* %1, %struct.map_groups** %5, align 8
  %11 = bitcast %struct.rb_root* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %11, i8* align 4 bitcast (%struct.rb_root* @RB_ROOT to i8*), i64 4, i1 false)
  %12 = load i8*, i8** %4, align 8
  %13 = call i32 @read_proc_modules(i8* %12, %struct.rb_root* %6)
  store i32 %13, i32* %8, align 4
  %14 = load i32, i32* %8, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = load i32, i32* %8, align 4
  store i32 %17, i32* %3, align 4
  br label %58

18:                                               ; preds = %2
  %19 = load %struct.map_groups*, %struct.map_groups** %5, align 8
  %20 = call %struct.map* @map_groups__first(%struct.map_groups* %19)
  store %struct.map* %20, %struct.map** %7, align 8
  br label %21

21:                                               ; preds = %52, %30, %18
  %22 = load %struct.map*, %struct.map** %7, align 8
  %23 = icmp ne %struct.map* %22, null
  br i1 %23, label %24, label %54

24:                                               ; preds = %21
  %25 = load %struct.map*, %struct.map** %7, align 8
  %26 = call %struct.map* @map_groups__next(%struct.map* %25)
  store %struct.map* %26, %struct.map** %9, align 8
  %27 = load %struct.map*, %struct.map** %7, align 8
  %28 = call i32 @__map__is_kmodule(%struct.map* %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %32, label %30

30:                                               ; preds = %24
  %31 = load %struct.map*, %struct.map** %9, align 8
  store %struct.map* %31, %struct.map** %7, align 8
  br label %21

32:                                               ; preds = %24
  %33 = load %struct.map*, %struct.map** %7, align 8
  %34 = getelementptr inbounds %struct.map, %struct.map* %33, i32 0, i32 1
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call %struct.module_info* @find_module(i32 %37, %struct.rb_root* %6)
  store %struct.module_info* %38, %struct.module_info** %10, align 8
  %39 = load %struct.module_info*, %struct.module_info** %10, align 8
  %40 = icmp ne %struct.module_info* %39, null
  br i1 %40, label %41, label %49

41:                                               ; preds = %32
  %42 = load %struct.module_info*, %struct.module_info** %10, align 8
  %43 = getelementptr inbounds %struct.module_info, %struct.module_info* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.map*, %struct.map** %7, align 8
  %46 = getelementptr inbounds %struct.map, %struct.map* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %44, %47
  br i1 %48, label %49, label %52

49:                                               ; preds = %41, %32
  %50 = load i32, i32* @EINVAL, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %8, align 4
  br label %55

52:                                               ; preds = %41
  %53 = load %struct.map*, %struct.map** %9, align 8
  store %struct.map* %53, %struct.map** %7, align 8
  br label %21

54:                                               ; preds = %21
  br label %55

55:                                               ; preds = %54, %49
  %56 = call i32 @delete_modules(%struct.rb_root* %6)
  %57 = load i32, i32* %8, align 4
  store i32 %57, i32* %3, align 4
  br label %58

58:                                               ; preds = %55, %16
  %59 = load i32, i32* %3, align 4
  ret i32 %59
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @read_proc_modules(i8*, %struct.rb_root*) #2

declare dso_local %struct.map* @map_groups__first(%struct.map_groups*) #2

declare dso_local %struct.map* @map_groups__next(%struct.map*) #2

declare dso_local i32 @__map__is_kmodule(%struct.map*) #2

declare dso_local %struct.module_info* @find_module(i32, %struct.rb_root*) #2

declare dso_local i32 @delete_modules(%struct.rb_root*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
