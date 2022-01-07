; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_genalloc.c_gen_pool_get.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_genalloc.c_gen_pool_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gen_pool = type { i32 }
%struct.device = type { i32 }

@devm_gen_pool_release = common dso_local global i32 0, align 4
@devm_gen_pool_match = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.gen_pool* @gen_pool_get(%struct.device* %0, i8* %1) #0 {
  %3 = alloca %struct.gen_pool*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.gen_pool**, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load %struct.device*, %struct.device** %4, align 8
  %8 = load i32, i32* @devm_gen_pool_release, align 4
  %9 = load i32, i32* @devm_gen_pool_match, align 4
  %10 = load i8*, i8** %5, align 8
  %11 = call %struct.gen_pool** @devres_find(%struct.device* %7, i32 %8, i32 %9, i8* %10)
  store %struct.gen_pool** %11, %struct.gen_pool*** %6, align 8
  %12 = load %struct.gen_pool**, %struct.gen_pool*** %6, align 8
  %13 = icmp ne %struct.gen_pool** %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %2
  store %struct.gen_pool* null, %struct.gen_pool** %3, align 8
  br label %18

15:                                               ; preds = %2
  %16 = load %struct.gen_pool**, %struct.gen_pool*** %6, align 8
  %17 = load %struct.gen_pool*, %struct.gen_pool** %16, align 8
  store %struct.gen_pool* %17, %struct.gen_pool** %3, align 8
  br label %18

18:                                               ; preds = %15, %14
  %19 = load %struct.gen_pool*, %struct.gen_pool** %3, align 8
  ret %struct.gen_pool* %19
}

declare dso_local %struct.gen_pool** @devres_find(%struct.device*, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
