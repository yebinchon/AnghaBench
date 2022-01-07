; ModuleID = '/home/carl/AnghaBench/linux/fs/pstore/extr_ram.c_ramoops_init_prz.c'
source_filename = "/home/carl/AnghaBench/linux/fs/pstore/extr_ram.c_ramoops_init_prz.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.ramoops_context = type { i64, i64, i32, i32 }
%struct.persistent_ram_zone = type { i32 }

@.str = private unnamed_addr constant [60 x i8] c"no room for %s mem region (0x%zx@0x%llx) in (0x%lx@0x%llx)\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"ramoops:%s\00", align 1
@PRZ_FLAG_ZAP_OLD = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [52 x i8] c"failed to request %s mem region (0x%zx@0x%llx): %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.device*, %struct.ramoops_context*, %struct.persistent_ram_zone**, i64*, i64, i32)* @ramoops_init_prz to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ramoops_init_prz(i8* %0, %struct.device* %1, %struct.ramoops_context* %2, %struct.persistent_ram_zone** %3, i64* %4, i64 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.device*, align 8
  %11 = alloca %struct.ramoops_context*, align 8
  %12 = alloca %struct.persistent_ram_zone**, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  store i8* %0, i8** %9, align 8
  store %struct.device* %1, %struct.device** %10, align 8
  store %struct.ramoops_context* %2, %struct.ramoops_context** %11, align 8
  store %struct.persistent_ram_zone** %3, %struct.persistent_ram_zone*** %12, align 8
  store i64* %4, i64** %13, align 8
  store i64 %5, i64* %14, align 8
  store i32 %6, i32* %15, align 4
  %18 = load i64, i64* %14, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %7
  store i32 0, i32* %8, align 4
  br label %93

21:                                               ; preds = %7
  %22 = load i64*, i64** %13, align 8
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* %14, align 8
  %25 = add i64 %23, %24
  %26 = load %struct.ramoops_context*, %struct.ramoops_context** %11, align 8
  %27 = getelementptr inbounds %struct.ramoops_context, %struct.ramoops_context* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = sub i64 %25, %28
  %30 = load %struct.ramoops_context*, %struct.ramoops_context** %11, align 8
  %31 = getelementptr inbounds %struct.ramoops_context, %struct.ramoops_context* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = icmp ugt i64 %29, %32
  br i1 %33, label %34, label %50

34:                                               ; preds = %21
  %35 = load %struct.device*, %struct.device** %10, align 8
  %36 = load i8*, i8** %9, align 8
  %37 = load i64, i64* %14, align 8
  %38 = load i64*, i64** %13, align 8
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.ramoops_context*, %struct.ramoops_context** %11, align 8
  %41 = getelementptr inbounds %struct.ramoops_context, %struct.ramoops_context* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = trunc i64 %42 to i32
  %44 = load %struct.ramoops_context*, %struct.ramoops_context** %11, align 8
  %45 = getelementptr inbounds %struct.ramoops_context, %struct.ramoops_context* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = call i32 (%struct.device*, i8*, i8*, i64, i64, i32, ...) @dev_err(%struct.device* %35, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0), i8* %36, i64 %37, i64 %39, i32 %43, i64 %46)
  %48 = load i32, i32* @ENOMEM, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %8, align 4
  br label %93

50:                                               ; preds = %21
  %51 = load i32, i32* @GFP_KERNEL, align 4
  %52 = load i8*, i8** %9, align 8
  %53 = call i8* @kasprintf(i32 %51, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i8* %52)
  store i8* %53, i8** %16, align 8
  %54 = load i64*, i64** %13, align 8
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* %14, align 8
  %57 = load i32, i32* %15, align 4
  %58 = load %struct.ramoops_context*, %struct.ramoops_context** %11, align 8
  %59 = getelementptr inbounds %struct.ramoops_context, %struct.ramoops_context* %58, i32 0, i32 3
  %60 = load %struct.ramoops_context*, %struct.ramoops_context** %11, align 8
  %61 = getelementptr inbounds %struct.ramoops_context, %struct.ramoops_context* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* @PRZ_FLAG_ZAP_OLD, align 4
  %64 = load i8*, i8** %16, align 8
  %65 = call %struct.persistent_ram_zone* @persistent_ram_new(i64 %55, i64 %56, i32 %57, i32* %59, i32 %62, i32 %63, i8* %64)
  %66 = load %struct.persistent_ram_zone**, %struct.persistent_ram_zone*** %12, align 8
  store %struct.persistent_ram_zone* %65, %struct.persistent_ram_zone** %66, align 8
  %67 = load %struct.persistent_ram_zone**, %struct.persistent_ram_zone*** %12, align 8
  %68 = load %struct.persistent_ram_zone*, %struct.persistent_ram_zone** %67, align 8
  %69 = call i64 @IS_ERR(%struct.persistent_ram_zone* %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %83

71:                                               ; preds = %50
  %72 = load %struct.persistent_ram_zone**, %struct.persistent_ram_zone*** %12, align 8
  %73 = load %struct.persistent_ram_zone*, %struct.persistent_ram_zone** %72, align 8
  %74 = call i32 @PTR_ERR(%struct.persistent_ram_zone* %73)
  store i32 %74, i32* %17, align 4
  %75 = load %struct.device*, %struct.device** %10, align 8
  %76 = load i8*, i8** %9, align 8
  %77 = load i64, i64* %14, align 8
  %78 = load i64*, i64** %13, align 8
  %79 = load i64, i64* %78, align 8
  %80 = load i32, i32* %17, align 4
  %81 = call i32 (%struct.device*, i8*, i8*, i64, i64, i32, ...) @dev_err(%struct.device* %75, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.2, i64 0, i64 0), i8* %76, i64 %77, i64 %79, i32 %80)
  %82 = load i32, i32* %17, align 4
  store i32 %82, i32* %8, align 4
  br label %93

83:                                               ; preds = %50
  %84 = load i64, i64* %14, align 8
  %85 = load i64*, i64** %13, align 8
  %86 = load i64, i64* %85, align 8
  %87 = add i64 %86, %84
  store i64 %87, i64* %85, align 8
  %88 = load i8*, i8** %9, align 8
  %89 = call i32 @pstore_name_to_type(i8* %88)
  %90 = load %struct.persistent_ram_zone**, %struct.persistent_ram_zone*** %12, align 8
  %91 = load %struct.persistent_ram_zone*, %struct.persistent_ram_zone** %90, align 8
  %92 = getelementptr inbounds %struct.persistent_ram_zone, %struct.persistent_ram_zone* %91, i32 0, i32 0
  store i32 %89, i32* %92, align 4
  store i32 0, i32* %8, align 4
  br label %93

93:                                               ; preds = %83, %71, %34, %20
  %94 = load i32, i32* %8, align 4
  ret i32 %94
}

declare dso_local i32 @dev_err(%struct.device*, i8*, i8*, i64, i64, i32, ...) #1

declare dso_local i8* @kasprintf(i32, i8*, i8*) #1

declare dso_local %struct.persistent_ram_zone* @persistent_ram_new(i64, i64, i32, i32*, i32, i32, i8*) #1

declare dso_local i64 @IS_ERR(%struct.persistent_ram_zone*) #1

declare dso_local i32 @PTR_ERR(%struct.persistent_ram_zone*) #1

declare dso_local i32 @pstore_name_to_type(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
