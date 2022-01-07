; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_objagg.c_objagg_obj_create.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_objagg.c_objagg_obj_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.objagg_obj = type { i32, i32, i32 }
%struct.objagg = type { i32, i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.objagg_obj* (%struct.objagg*, i8*)* @objagg_obj_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.objagg_obj* @objagg_obj_create(%struct.objagg* %0, i8* %1) #0 {
  %3 = alloca %struct.objagg_obj*, align 8
  %4 = alloca %struct.objagg*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.objagg_obj*, align 8
  %7 = alloca i32, align 4
  store %struct.objagg* %0, %struct.objagg** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load %struct.objagg*, %struct.objagg** %4, align 8
  %9 = getelementptr inbounds %struct.objagg, %struct.objagg* %8, i32 0, i32 4
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = add i64 12, %12
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call %struct.objagg_obj* @kzalloc(i64 %13, i32 %14)
  store %struct.objagg_obj* %15, %struct.objagg_obj** %6, align 8
  %16 = load %struct.objagg_obj*, %struct.objagg_obj** %6, align 8
  %17 = icmp ne %struct.objagg_obj* %16, null
  br i1 %17, label %22, label %18

18:                                               ; preds = %2
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  %21 = call %struct.objagg_obj* @ERR_PTR(i32 %20)
  store %struct.objagg_obj* %21, %struct.objagg_obj** %3, align 8
  br label %76

22:                                               ; preds = %2
  %23 = load %struct.objagg_obj*, %struct.objagg_obj** %6, align 8
  %24 = call i32 @objagg_obj_ref_inc(%struct.objagg_obj* %23)
  %25 = load %struct.objagg_obj*, %struct.objagg_obj** %6, align 8
  %26 = getelementptr inbounds %struct.objagg_obj, %struct.objagg_obj* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = load i8*, i8** %5, align 8
  %29 = load %struct.objagg*, %struct.objagg** %4, align 8
  %30 = getelementptr inbounds %struct.objagg, %struct.objagg* %29, i32 0, i32 4
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = call i32 @memcpy(i32 %27, i8* %28, i64 %33)
  %35 = load %struct.objagg*, %struct.objagg** %4, align 8
  %36 = load %struct.objagg_obj*, %struct.objagg_obj** %6, align 8
  %37 = call i32 @objagg_obj_init(%struct.objagg* %35, %struct.objagg_obj* %36)
  store i32 %37, i32* %7, align 4
  %38 = load i32, i32* %7, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %22
  br label %71

41:                                               ; preds = %22
  %42 = load %struct.objagg*, %struct.objagg** %4, align 8
  %43 = getelementptr inbounds %struct.objagg, %struct.objagg* %42, i32 0, i32 3
  %44 = load %struct.objagg_obj*, %struct.objagg_obj** %6, align 8
  %45 = getelementptr inbounds %struct.objagg_obj, %struct.objagg_obj* %44, i32 0, i32 1
  %46 = load %struct.objagg*, %struct.objagg** %4, align 8
  %47 = getelementptr inbounds %struct.objagg, %struct.objagg* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @rhashtable_insert_fast(i32* %43, i32* %45, i32 %48)
  store i32 %49, i32* %7, align 4
  %50 = load i32, i32* %7, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %41
  br label %67

53:                                               ; preds = %41
  %54 = load %struct.objagg_obj*, %struct.objagg_obj** %6, align 8
  %55 = getelementptr inbounds %struct.objagg_obj, %struct.objagg_obj* %54, i32 0, i32 0
  %56 = load %struct.objagg*, %struct.objagg** %4, align 8
  %57 = getelementptr inbounds %struct.objagg, %struct.objagg* %56, i32 0, i32 1
  %58 = call i32 @list_add(i32* %55, i32* %57)
  %59 = load %struct.objagg*, %struct.objagg** %4, align 8
  %60 = getelementptr inbounds %struct.objagg, %struct.objagg* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %60, align 8
  %63 = load %struct.objagg*, %struct.objagg** %4, align 8
  %64 = load %struct.objagg_obj*, %struct.objagg_obj** %6, align 8
  %65 = call i32 @trace_objagg_obj_create(%struct.objagg* %63, %struct.objagg_obj* %64)
  %66 = load %struct.objagg_obj*, %struct.objagg_obj** %6, align 8
  store %struct.objagg_obj* %66, %struct.objagg_obj** %3, align 8
  br label %76

67:                                               ; preds = %52
  %68 = load %struct.objagg*, %struct.objagg** %4, align 8
  %69 = load %struct.objagg_obj*, %struct.objagg_obj** %6, align 8
  %70 = call i32 @objagg_obj_fini(%struct.objagg* %68, %struct.objagg_obj* %69)
  br label %71

71:                                               ; preds = %67, %40
  %72 = load %struct.objagg_obj*, %struct.objagg_obj** %6, align 8
  %73 = call i32 @kfree(%struct.objagg_obj* %72)
  %74 = load i32, i32* %7, align 4
  %75 = call %struct.objagg_obj* @ERR_PTR(i32 %74)
  store %struct.objagg_obj* %75, %struct.objagg_obj** %3, align 8
  br label %76

76:                                               ; preds = %71, %53, %18
  %77 = load %struct.objagg_obj*, %struct.objagg_obj** %3, align 8
  ret %struct.objagg_obj* %77
}

declare dso_local %struct.objagg_obj* @kzalloc(i64, i32) #1

declare dso_local %struct.objagg_obj* @ERR_PTR(i32) #1

declare dso_local i32 @objagg_obj_ref_inc(%struct.objagg_obj*) #1

declare dso_local i32 @memcpy(i32, i8*, i64) #1

declare dso_local i32 @objagg_obj_init(%struct.objagg*, %struct.objagg_obj*) #1

declare dso_local i32 @rhashtable_insert_fast(i32*, i32*, i32) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @trace_objagg_obj_create(%struct.objagg*, %struct.objagg_obj*) #1

declare dso_local i32 @objagg_obj_fini(%struct.objagg*, %struct.objagg_obj*) #1

declare dso_local i32 @kfree(%struct.objagg_obj*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
