; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_objagg.c___objagg_obj_get.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_objagg.c___objagg_obj_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.objagg_obj = type { i32 }
%struct.objagg = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.objagg_obj* (%struct.objagg*, i8*)* @__objagg_obj_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.objagg_obj* @__objagg_obj_get(%struct.objagg* %0, i8* %1) #0 {
  %3 = alloca %struct.objagg_obj*, align 8
  %4 = alloca %struct.objagg*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.objagg_obj*, align 8
  store %struct.objagg* %0, %struct.objagg** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load %struct.objagg*, %struct.objagg** %4, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = call %struct.objagg_obj* @objagg_obj_lookup(%struct.objagg* %7, i8* %8)
  store %struct.objagg_obj* %9, %struct.objagg_obj** %6, align 8
  %10 = load %struct.objagg_obj*, %struct.objagg_obj** %6, align 8
  %11 = icmp ne %struct.objagg_obj* %10, null
  br i1 %11, label %12, label %16

12:                                               ; preds = %2
  %13 = load %struct.objagg_obj*, %struct.objagg_obj** %6, align 8
  %14 = call i32 @objagg_obj_ref_inc(%struct.objagg_obj* %13)
  %15 = load %struct.objagg_obj*, %struct.objagg_obj** %6, align 8
  store %struct.objagg_obj* %15, %struct.objagg_obj** %3, align 8
  br label %20

16:                                               ; preds = %2
  %17 = load %struct.objagg*, %struct.objagg** %4, align 8
  %18 = load i8*, i8** %5, align 8
  %19 = call %struct.objagg_obj* @objagg_obj_create(%struct.objagg* %17, i8* %18)
  store %struct.objagg_obj* %19, %struct.objagg_obj** %3, align 8
  br label %20

20:                                               ; preds = %16, %12
  %21 = load %struct.objagg_obj*, %struct.objagg_obj** %3, align 8
  ret %struct.objagg_obj* %21
}

declare dso_local %struct.objagg_obj* @objagg_obj_lookup(%struct.objagg*, i8*) #1

declare dso_local i32 @objagg_obj_ref_inc(%struct.objagg_obj*) #1

declare dso_local %struct.objagg_obj* @objagg_obj_create(%struct.objagg*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
