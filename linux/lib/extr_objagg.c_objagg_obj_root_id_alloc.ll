; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_objagg.c_objagg_obj_root_id_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_objagg.c_objagg_obj_root_id_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.objagg = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.objagg_obj = type { i32 }
%struct.objagg_hints_node = type { i32 }

@OBJAGG_OBJ_ROOT_ID_INVALID = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.objagg*, %struct.objagg_obj*, %struct.objagg_hints_node*)* @objagg_obj_root_id_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @objagg_obj_root_id_alloc(%struct.objagg* %0, %struct.objagg_obj* %1, %struct.objagg_hints_node* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.objagg*, align 8
  %6 = alloca %struct.objagg_obj*, align 8
  %7 = alloca %struct.objagg_hints_node*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.objagg* %0, %struct.objagg** %5, align 8
  store %struct.objagg_obj* %1, %struct.objagg_obj** %6, align 8
  store %struct.objagg_hints_node* %2, %struct.objagg_hints_node** %7, align 8
  %11 = load %struct.objagg*, %struct.objagg** %5, align 8
  %12 = getelementptr inbounds %struct.objagg, %struct.objagg* %11, i32 0, i32 1
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = icmp ne %struct.TYPE_2__* %13, null
  br i1 %14, label %19, label %15

15:                                               ; preds = %3
  %16 = load i32, i32* @OBJAGG_OBJ_ROOT_ID_INVALID, align 4
  %17 = load %struct.objagg_obj*, %struct.objagg_obj** %6, align 8
  %18 = getelementptr inbounds %struct.objagg_obj, %struct.objagg_obj* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 4
  store i32 0, i32* %4, align 4
  br label %50

19:                                               ; preds = %3
  %20 = load %struct.objagg_hints_node*, %struct.objagg_hints_node** %7, align 8
  %21 = icmp ne %struct.objagg_hints_node* %20, null
  br i1 %21, label %22, label %29

22:                                               ; preds = %19
  %23 = load %struct.objagg_hints_node*, %struct.objagg_hints_node** %7, align 8
  %24 = getelementptr inbounds %struct.objagg_hints_node, %struct.objagg_hints_node* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %8, align 4
  %26 = load %struct.objagg_hints_node*, %struct.objagg_hints_node** %7, align 8
  %27 = getelementptr inbounds %struct.objagg_hints_node, %struct.objagg_hints_node* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %9, align 4
  br label %35

29:                                               ; preds = %19
  %30 = load %struct.objagg*, %struct.objagg** %5, align 8
  %31 = getelementptr inbounds %struct.objagg, %struct.objagg* %30, i32 0, i32 1
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %8, align 4
  store i32 -1, i32* %9, align 4
  br label %35

35:                                               ; preds = %29, %22
  %36 = load %struct.objagg*, %struct.objagg** %5, align 8
  %37 = getelementptr inbounds %struct.objagg, %struct.objagg* %36, i32 0, i32 0
  %38 = load i32, i32* %8, align 4
  %39 = load i32, i32* %9, align 4
  %40 = load i32, i32* @GFP_KERNEL, align 4
  %41 = call i32 @ida_alloc_range(i32* %37, i32 %38, i32 %39, i32 %40)
  store i32 %41, i32* %10, align 4
  %42 = load i32, i32* %10, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %35
  %45 = load i32, i32* %10, align 4
  store i32 %45, i32* %4, align 4
  br label %50

46:                                               ; preds = %35
  %47 = load i32, i32* %10, align 4
  %48 = load %struct.objagg_obj*, %struct.objagg_obj** %6, align 8
  %49 = getelementptr inbounds %struct.objagg_obj, %struct.objagg_obj* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 4
  store i32 0, i32* %4, align 4
  br label %50

50:                                               ; preds = %46, %44, %15
  %51 = load i32, i32* %4, align 4
  ret i32 %51
}

declare dso_local i32 @ida_alloc_range(i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
