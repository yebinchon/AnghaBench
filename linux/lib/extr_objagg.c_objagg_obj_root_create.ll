; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_objagg.c_objagg_obj_root_create.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_objagg.c_objagg_obj_root_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.objagg = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (i32, i32, i32)* }
%struct.objagg_obj = type { i32, i32, i32 }
%struct.objagg_hints_node = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.objagg*, %struct.objagg_obj*, %struct.objagg_hints_node*)* @objagg_obj_root_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @objagg_obj_root_create(%struct.objagg* %0, %struct.objagg_obj* %1, %struct.objagg_hints_node* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.objagg*, align 8
  %6 = alloca %struct.objagg_obj*, align 8
  %7 = alloca %struct.objagg_hints_node*, align 8
  %8 = alloca i32, align 4
  store %struct.objagg* %0, %struct.objagg** %5, align 8
  store %struct.objagg_obj* %1, %struct.objagg_obj** %6, align 8
  store %struct.objagg_hints_node* %2, %struct.objagg_hints_node** %7, align 8
  %9 = load %struct.objagg*, %struct.objagg** %5, align 8
  %10 = load %struct.objagg_obj*, %struct.objagg_obj** %6, align 8
  %11 = load %struct.objagg_hints_node*, %struct.objagg_hints_node** %7, align 8
  %12 = call i32 @objagg_obj_root_id_alloc(%struct.objagg* %9, %struct.objagg_obj* %10, %struct.objagg_hints_node* %11)
  store i32 %12, i32* %8, align 4
  %13 = load i32, i32* %8, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %3
  %16 = load i32, i32* %8, align 4
  store i32 %16, i32* %4, align 4
  br label %54

17:                                               ; preds = %3
  %18 = load %struct.objagg*, %struct.objagg** %5, align 8
  %19 = getelementptr inbounds %struct.objagg, %struct.objagg* %18, i32 0, i32 1
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %21, align 8
  %23 = load %struct.objagg*, %struct.objagg** %5, align 8
  %24 = getelementptr inbounds %struct.objagg, %struct.objagg* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.objagg_obj*, %struct.objagg_obj** %6, align 8
  %27 = getelementptr inbounds %struct.objagg_obj, %struct.objagg_obj* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.objagg_obj*, %struct.objagg_obj** %6, align 8
  %30 = getelementptr inbounds %struct.objagg_obj, %struct.objagg_obj* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i32 %22(i32 %25, i32 %28, i32 %31)
  %33 = load %struct.objagg_obj*, %struct.objagg_obj** %6, align 8
  %34 = getelementptr inbounds %struct.objagg_obj, %struct.objagg_obj* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 4
  %35 = load %struct.objagg_obj*, %struct.objagg_obj** %6, align 8
  %36 = getelementptr inbounds %struct.objagg_obj, %struct.objagg_obj* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i64 @IS_ERR(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %17
  %41 = load %struct.objagg_obj*, %struct.objagg_obj** %6, align 8
  %42 = getelementptr inbounds %struct.objagg_obj, %struct.objagg_obj* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @PTR_ERR(i32 %43)
  store i32 %44, i32* %8, align 4
  br label %49

45:                                               ; preds = %17
  %46 = load %struct.objagg*, %struct.objagg** %5, align 8
  %47 = load %struct.objagg_obj*, %struct.objagg_obj** %6, align 8
  %48 = call i32 @trace_objagg_obj_root_create(%struct.objagg* %46, %struct.objagg_obj* %47)
  store i32 0, i32* %4, align 4
  br label %54

49:                                               ; preds = %40
  %50 = load %struct.objagg*, %struct.objagg** %5, align 8
  %51 = load %struct.objagg_obj*, %struct.objagg_obj** %6, align 8
  %52 = call i32 @objagg_obj_root_id_free(%struct.objagg* %50, %struct.objagg_obj* %51)
  %53 = load i32, i32* %8, align 4
  store i32 %53, i32* %4, align 4
  br label %54

54:                                               ; preds = %49, %45, %15
  %55 = load i32, i32* %4, align 4
  ret i32 %55
}

declare dso_local i32 @objagg_obj_root_id_alloc(%struct.objagg*, %struct.objagg_obj*, %struct.objagg_hints_node*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @trace_objagg_obj_root_create(%struct.objagg*, %struct.objagg_obj*) #1

declare dso_local i32 @objagg_obj_root_id_free(%struct.objagg*, %struct.objagg_obj*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
