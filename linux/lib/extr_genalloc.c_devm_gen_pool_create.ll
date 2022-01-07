; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_genalloc.c_devm_gen_pool_create.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_genalloc.c_devm_gen_pool_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gen_pool = type { i8* }
%struct.device = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@devm_gen_pool_release = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.gen_pool* @devm_gen_pool_create(%struct.device* %0, i32 %1, i32 %2, i8* %3) #0 {
  %5 = alloca %struct.gen_pool*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.gen_pool**, align 8
  %11 = alloca %struct.gen_pool*, align 8
  %12 = alloca i8*, align 8
  store %struct.device* %0, %struct.device** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  store i8* null, i8** %12, align 8
  %13 = load %struct.device*, %struct.device** %6, align 8
  %14 = load i8*, i8** %9, align 8
  %15 = call i64 @gen_pool_get(%struct.device* %13, i8* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %4
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  %20 = call %struct.gen_pool* @ERR_PTR(i32 %19)
  store %struct.gen_pool* %20, %struct.gen_pool** %5, align 8
  br label %68

21:                                               ; preds = %4
  %22 = load i8*, i8** %9, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %24, label %35

24:                                               ; preds = %21
  %25 = load i8*, i8** %9, align 8
  %26 = load i32, i32* @GFP_KERNEL, align 4
  %27 = call i8* @kstrdup_const(i8* %25, i32 %26)
  store i8* %27, i8** %12, align 8
  %28 = load i8*, i8** %12, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %34, label %30

30:                                               ; preds = %24
  %31 = load i32, i32* @ENOMEM, align 4
  %32 = sub nsw i32 0, %31
  %33 = call %struct.gen_pool* @ERR_PTR(i32 %32)
  store %struct.gen_pool* %33, %struct.gen_pool** %5, align 8
  br label %68

34:                                               ; preds = %24
  br label %35

35:                                               ; preds = %34, %21
  %36 = load i32, i32* @devm_gen_pool_release, align 4
  %37 = load i32, i32* @GFP_KERNEL, align 4
  %38 = call %struct.gen_pool** @devres_alloc(i32 %36, i32 8, i32 %37)
  store %struct.gen_pool** %38, %struct.gen_pool*** %10, align 8
  %39 = load %struct.gen_pool**, %struct.gen_pool*** %10, align 8
  %40 = icmp ne %struct.gen_pool** %39, null
  br i1 %40, label %42, label %41

41:                                               ; preds = %35
  br label %62

42:                                               ; preds = %35
  %43 = load i32, i32* %7, align 4
  %44 = load i32, i32* %8, align 4
  %45 = call %struct.gen_pool* @gen_pool_create(i32 %43, i32 %44)
  store %struct.gen_pool* %45, %struct.gen_pool** %11, align 8
  %46 = load %struct.gen_pool*, %struct.gen_pool** %11, align 8
  %47 = icmp ne %struct.gen_pool* %46, null
  br i1 %47, label %49, label %48

48:                                               ; preds = %42
  br label %59

49:                                               ; preds = %42
  %50 = load %struct.gen_pool*, %struct.gen_pool** %11, align 8
  %51 = load %struct.gen_pool**, %struct.gen_pool*** %10, align 8
  store %struct.gen_pool* %50, %struct.gen_pool** %51, align 8
  %52 = load i8*, i8** %12, align 8
  %53 = load %struct.gen_pool*, %struct.gen_pool** %11, align 8
  %54 = getelementptr inbounds %struct.gen_pool, %struct.gen_pool* %53, i32 0, i32 0
  store i8* %52, i8** %54, align 8
  %55 = load %struct.device*, %struct.device** %6, align 8
  %56 = load %struct.gen_pool**, %struct.gen_pool*** %10, align 8
  %57 = call i32 @devres_add(%struct.device* %55, %struct.gen_pool** %56)
  %58 = load %struct.gen_pool*, %struct.gen_pool** %11, align 8
  store %struct.gen_pool* %58, %struct.gen_pool** %5, align 8
  br label %68

59:                                               ; preds = %48
  %60 = load %struct.gen_pool**, %struct.gen_pool*** %10, align 8
  %61 = call i32 @devres_free(%struct.gen_pool** %60)
  br label %62

62:                                               ; preds = %59, %41
  %63 = load i8*, i8** %12, align 8
  %64 = call i32 @kfree_const(i8* %63)
  %65 = load i32, i32* @ENOMEM, align 4
  %66 = sub nsw i32 0, %65
  %67 = call %struct.gen_pool* @ERR_PTR(i32 %66)
  store %struct.gen_pool* %67, %struct.gen_pool** %5, align 8
  br label %68

68:                                               ; preds = %62, %49, %30, %17
  %69 = load %struct.gen_pool*, %struct.gen_pool** %5, align 8
  ret %struct.gen_pool* %69
}

declare dso_local i64 @gen_pool_get(%struct.device*, i8*) #1

declare dso_local %struct.gen_pool* @ERR_PTR(i32) #1

declare dso_local i8* @kstrdup_const(i8*, i32) #1

declare dso_local %struct.gen_pool** @devres_alloc(i32, i32, i32) #1

declare dso_local %struct.gen_pool* @gen_pool_create(i32, i32) #1

declare dso_local i32 @devres_add(%struct.device*, %struct.gen_pool**) #1

declare dso_local i32 @devres_free(%struct.gen_pool**) #1

declare dso_local i32 @kfree_const(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
