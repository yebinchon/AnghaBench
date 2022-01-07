; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_objagg.c_objagg_obj_init.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_objagg.c_objagg_obj_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.objagg = type { i32 }
%struct.objagg_obj = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.objagg*, %struct.objagg_obj*)* @objagg_obj_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @objagg_obj_init(%struct.objagg* %0, %struct.objagg_obj* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.objagg*, align 8
  %5 = alloca %struct.objagg_obj*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.objagg* %0, %struct.objagg** %4, align 8
  store %struct.objagg_obj* %1, %struct.objagg_obj** %5, align 8
  %8 = load %struct.objagg*, %struct.objagg** %4, align 8
  %9 = load %struct.objagg_obj*, %struct.objagg_obj** %5, align 8
  %10 = call i32 @objagg_obj_init_with_hints(%struct.objagg* %8, %struct.objagg_obj* %9, i32* %6)
  store i32 %10, i32* %7, align 4
  %11 = load i32, i32* %7, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = load i32, i32* %7, align 4
  store i32 %14, i32* %3, align 4
  br label %30

15:                                               ; preds = %2
  %16 = load i32, i32* %6, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %15
  store i32 0, i32* %3, align 4
  br label %30

19:                                               ; preds = %15
  %20 = load %struct.objagg*, %struct.objagg** %4, align 8
  %21 = load %struct.objagg_obj*, %struct.objagg_obj** %5, align 8
  %22 = call i32 @objagg_obj_parent_lookup_assign(%struct.objagg* %20, %struct.objagg_obj* %21)
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* %7, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %19
  store i32 0, i32* %3, align 4
  br label %30

26:                                               ; preds = %19
  %27 = load %struct.objagg*, %struct.objagg** %4, align 8
  %28 = load %struct.objagg_obj*, %struct.objagg_obj** %5, align 8
  %29 = call i32 @objagg_obj_root_create(%struct.objagg* %27, %struct.objagg_obj* %28, i32* null)
  store i32 %29, i32* %3, align 4
  br label %30

30:                                               ; preds = %26, %25, %18, %13
  %31 = load i32, i32* %3, align 4
  ret i32 %31
}

declare dso_local i32 @objagg_obj_init_with_hints(%struct.objagg*, %struct.objagg_obj*, i32*) #1

declare dso_local i32 @objagg_obj_parent_lookup_assign(%struct.objagg*, %struct.objagg_obj*) #1

declare dso_local i32 @objagg_obj_root_create(%struct.objagg*, %struct.objagg_obj*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
