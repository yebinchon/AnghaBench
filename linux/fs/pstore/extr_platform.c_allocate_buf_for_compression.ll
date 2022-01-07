; ModuleID = '/home/carl/AnghaBench/linux/fs/pstore/extr_platform.c_allocate_buf_for_compression.c'
source_filename = "/home/carl/AnghaBench/linux/fs/pstore/extr_platform.c_allocate_buf_for_compression.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 (i32)* }
%struct.TYPE_4__ = type { i32 }
%struct.crypto_comp = type { i32 }

@CONFIG_PSTORE_COMPRESS = common dso_local global i32 0, align 4
@zbackend = common dso_local global %struct.TYPE_3__* null, align 8
@psinfo = common dso_local global %struct.TYPE_4__* null, align 8
@tfm = common dso_local global %struct.crypto_comp* null, align 8
@.str = private unnamed_addr constant [25 x i8] c"Unknown compression: %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"Invalid compression size for %s: %d\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [54 x i8] c"Failed %d byte compression buffer allocation for: %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"crypto_alloc_comp('%s') failed: %ld\0A\00", align 1
@big_oops_buf_sz = common dso_local global i32 0, align 4
@big_oops_buf = common dso_local global i8* null, align 8
@.str.4 = private unnamed_addr constant [34 x i8] c"Using crash dump compression: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @allocate_buf_for_compression to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @allocate_buf_for_compression() #0 {
  %1 = alloca %struct.crypto_comp*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = load i32, i32* @CONFIG_PSTORE_COMPRESS, align 4
  %5 = call i32 @IS_ENABLED(i32 %4)
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %10

7:                                                ; preds = %0
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** @zbackend, align 8
  %9 = icmp ne %struct.TYPE_3__* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %7, %0
  br label %82

11:                                               ; preds = %7
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** @psinfo, align 8
  %13 = icmp ne %struct.TYPE_4__* %12, null
  br i1 %13, label %14, label %17

14:                                               ; preds = %11
  %15 = load %struct.crypto_comp*, %struct.crypto_comp** @tfm, align 8
  %16 = icmp ne %struct.crypto_comp* %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %14, %11
  br label %82

18:                                               ; preds = %14
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** @zbackend, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @crypto_has_comp(i32 %21, i32 0, i32 0)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %29, label %24

24:                                               ; preds = %18
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** @zbackend, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call i32 (i8*, i32, ...) @pr_err(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %27)
  br label %82

29:                                               ; preds = %18
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** @zbackend, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 1
  %32 = load i32 (i32)*, i32 (i32)** %31, align 8
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** @psinfo, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 %32(i32 %35)
  store i32 %36, i32* %2, align 4
  %37 = load i32, i32* %2, align 4
  %38 = icmp sle i32 %37, 0
  br i1 %38, label %39, label %45

39:                                               ; preds = %29
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** @zbackend, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* %2, align 4
  %44 = call i32 (i8*, i32, ...) @pr_err(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %42, i32 %43)
  br label %82

45:                                               ; preds = %29
  %46 = load i32, i32* %2, align 4
  %47 = load i32, i32* @GFP_KERNEL, align 4
  %48 = call i8* @kmalloc(i32 %46, i32 %47)
  store i8* %48, i8** %3, align 8
  %49 = load i8*, i8** %3, align 8
  %50 = icmp ne i8* %49, null
  br i1 %50, label %57, label %51

51:                                               ; preds = %45
  %52 = load i32, i32* %2, align 4
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** @zbackend, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = call i32 (i8*, i32, ...) @pr_err(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.2, i64 0, i64 0), i32 %52, i32 %55)
  br label %82

57:                                               ; preds = %45
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** @zbackend, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = call %struct.crypto_comp* @crypto_alloc_comp(i32 %60, i32 0, i32 0)
  store %struct.crypto_comp* %61, %struct.crypto_comp** %1, align 8
  %62 = load %struct.crypto_comp*, %struct.crypto_comp** %1, align 8
  %63 = call i64 @IS_ERR_OR_NULL(%struct.crypto_comp* %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %74

65:                                               ; preds = %57
  %66 = load i8*, i8** %3, align 8
  %67 = call i32 @kfree(i8* %66)
  %68 = load %struct.TYPE_3__*, %struct.TYPE_3__** @zbackend, align 8
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load %struct.crypto_comp*, %struct.crypto_comp** %1, align 8
  %72 = call i32 @PTR_ERR(%struct.crypto_comp* %71)
  %73 = call i32 (i8*, i32, ...) @pr_err(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0), i32 %70, i32 %72)
  br label %82

74:                                               ; preds = %57
  %75 = load %struct.crypto_comp*, %struct.crypto_comp** %1, align 8
  store %struct.crypto_comp* %75, %struct.crypto_comp** @tfm, align 8
  %76 = load i32, i32* %2, align 4
  store i32 %76, i32* @big_oops_buf_sz, align 4
  %77 = load i8*, i8** %3, align 8
  store i8* %77, i8** @big_oops_buf, align 8
  %78 = load %struct.TYPE_3__*, %struct.TYPE_3__** @zbackend, align 8
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = call i32 @pr_info(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0), i32 %80)
  br label %82

82:                                               ; preds = %74, %65, %51, %39, %24, %17, %10
  ret void
}

declare dso_local i32 @IS_ENABLED(i32) #1

declare dso_local i32 @crypto_has_comp(i32, i32, i32) #1

declare dso_local i32 @pr_err(i8*, i32, ...) #1

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local %struct.crypto_comp* @crypto_alloc_comp(i32, i32, i32) #1

declare dso_local i64 @IS_ERR_OR_NULL(%struct.crypto_comp*) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local i32 @PTR_ERR(%struct.crypto_comp*) #1

declare dso_local i32 @pr_info(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
