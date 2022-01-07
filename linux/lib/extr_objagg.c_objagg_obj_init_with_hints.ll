; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_objagg.c_objagg_obj_init_with_hints.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_objagg.c_objagg_obj_init_with_hints.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.objagg = type { i32 }
%struct.objagg_obj = type { i32 }
%struct.objagg_hints_node = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.objagg*, %struct.objagg_obj*, i32*)* @objagg_obj_init_with_hints to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @objagg_obj_init_with_hints(%struct.objagg* %0, %struct.objagg_obj* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.objagg*, align 8
  %6 = alloca %struct.objagg_obj*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.objagg_hints_node*, align 8
  %9 = alloca %struct.objagg_obj*, align 8
  %10 = alloca i32, align 4
  store %struct.objagg* %0, %struct.objagg** %5, align 8
  store %struct.objagg_obj* %1, %struct.objagg_obj** %6, align 8
  store i32* %2, i32** %7, align 8
  %11 = load %struct.objagg*, %struct.objagg** %5, align 8
  %12 = getelementptr inbounds %struct.objagg, %struct.objagg* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.objagg_obj*, %struct.objagg_obj** %6, align 8
  %15 = getelementptr inbounds %struct.objagg_obj, %struct.objagg_obj* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.objagg_hints_node* @objagg_hints_lookup(i32 %13, i32 %16)
  store %struct.objagg_hints_node* %17, %struct.objagg_hints_node** %8, align 8
  %18 = load %struct.objagg_hints_node*, %struct.objagg_hints_node** %8, align 8
  %19 = icmp ne %struct.objagg_hints_node* %18, null
  br i1 %19, label %22, label %20

20:                                               ; preds = %3
  %21 = load i32*, i32** %7, align 8
  store i32 0, i32* %21, align 4
  store i32 0, i32* %4, align 4
  br label %62

22:                                               ; preds = %3
  %23 = load i32*, i32** %7, align 8
  store i32 1, i32* %23, align 4
  %24 = load %struct.objagg_hints_node*, %struct.objagg_hints_node** %8, align 8
  %25 = getelementptr inbounds %struct.objagg_hints_node, %struct.objagg_hints_node* %24, i32 0, i32 0
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = icmp ne %struct.TYPE_2__* %26, null
  br i1 %27, label %33, label %28

28:                                               ; preds = %22
  %29 = load %struct.objagg*, %struct.objagg** %5, align 8
  %30 = load %struct.objagg_obj*, %struct.objagg_obj** %6, align 8
  %31 = load %struct.objagg_hints_node*, %struct.objagg_hints_node** %8, align 8
  %32 = call i32 @objagg_obj_root_create(%struct.objagg* %29, %struct.objagg_obj* %30, %struct.objagg_hints_node* %31)
  store i32 %32, i32* %4, align 4
  br label %62

33:                                               ; preds = %22
  %34 = load %struct.objagg*, %struct.objagg** %5, align 8
  %35 = load %struct.objagg_hints_node*, %struct.objagg_hints_node** %8, align 8
  %36 = getelementptr inbounds %struct.objagg_hints_node, %struct.objagg_hints_node* %35, i32 0, i32 0
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call %struct.objagg_obj* @__objagg_obj_get(%struct.objagg* %34, i32 %39)
  store %struct.objagg_obj* %40, %struct.objagg_obj** %9, align 8
  %41 = load %struct.objagg_obj*, %struct.objagg_obj** %9, align 8
  %42 = call i64 @IS_ERR(%struct.objagg_obj* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %33
  %45 = load %struct.objagg_obj*, %struct.objagg_obj** %9, align 8
  %46 = call i32 @PTR_ERR(%struct.objagg_obj* %45)
  store i32 %46, i32* %4, align 4
  br label %62

47:                                               ; preds = %33
  %48 = load %struct.objagg*, %struct.objagg** %5, align 8
  %49 = load %struct.objagg_obj*, %struct.objagg_obj** %6, align 8
  %50 = load %struct.objagg_obj*, %struct.objagg_obj** %9, align 8
  %51 = call i32 @objagg_obj_parent_assign(%struct.objagg* %48, %struct.objagg_obj* %49, %struct.objagg_obj* %50, i32 0)
  store i32 %51, i32* %10, align 4
  %52 = load i32, i32* %10, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %47
  %55 = load i32*, i32** %7, align 8
  store i32 0, i32* %55, align 4
  store i32 0, i32* %10, align 4
  br label %57

56:                                               ; preds = %47
  store i32 0, i32* %4, align 4
  br label %62

57:                                               ; preds = %54
  %58 = load %struct.objagg*, %struct.objagg** %5, align 8
  %59 = load %struct.objagg_obj*, %struct.objagg_obj** %9, align 8
  %60 = call i32 @objagg_obj_put(%struct.objagg* %58, %struct.objagg_obj* %59)
  %61 = load i32, i32* %10, align 4
  store i32 %61, i32* %4, align 4
  br label %62

62:                                               ; preds = %57, %56, %44, %28, %20
  %63 = load i32, i32* %4, align 4
  ret i32 %63
}

declare dso_local %struct.objagg_hints_node* @objagg_hints_lookup(i32, i32) #1

declare dso_local i32 @objagg_obj_root_create(%struct.objagg*, %struct.objagg_obj*, %struct.objagg_hints_node*) #1

declare dso_local %struct.objagg_obj* @__objagg_obj_get(%struct.objagg*, i32) #1

declare dso_local i64 @IS_ERR(%struct.objagg_obj*) #1

declare dso_local i32 @PTR_ERR(%struct.objagg_obj*) #1

declare dso_local i32 @objagg_obj_parent_assign(%struct.objagg*, %struct.objagg_obj*, %struct.objagg_obj*, i32) #1

declare dso_local i32 @objagg_obj_put(%struct.objagg*, %struct.objagg_obj*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
