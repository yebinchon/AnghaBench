; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_test_objagg.c_world_obj_put.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_test_objagg.c_world_obj_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.world = type { i32*, %struct.objagg_obj** }
%struct.objagg_obj = type { i32 }
%struct.objagg = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.world*, %struct.objagg*, i32)* @world_obj_put to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @world_obj_put(%struct.world* %0, %struct.objagg* %1, i32 %2) #0 {
  %4 = alloca %struct.world*, align 8
  %5 = alloca %struct.objagg*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.objagg_obj*, align 8
  store %struct.world* %0, %struct.world** %4, align 8
  store %struct.objagg* %1, %struct.objagg** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.world*, %struct.world** %4, align 8
  %9 = getelementptr inbounds %struct.world, %struct.world* %8, i32 0, i32 0
  %10 = load i32*, i32** %9, align 8
  %11 = load i32, i32* %6, align 4
  %12 = call i64 @key_id_index(i32 %11)
  %13 = getelementptr inbounds i32, i32* %10, i64 %12
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %3
  br label %36

17:                                               ; preds = %3
  %18 = load %struct.world*, %struct.world** %4, align 8
  %19 = getelementptr inbounds %struct.world, %struct.world* %18, i32 0, i32 1
  %20 = load %struct.objagg_obj**, %struct.objagg_obj*** %19, align 8
  %21 = load i32, i32* %6, align 4
  %22 = call i64 @key_id_index(i32 %21)
  %23 = getelementptr inbounds %struct.objagg_obj*, %struct.objagg_obj** %20, i64 %22
  %24 = load %struct.objagg_obj*, %struct.objagg_obj** %23, align 8
  store %struct.objagg_obj* %24, %struct.objagg_obj** %7, align 8
  %25 = load %struct.objagg*, %struct.objagg** %5, align 8
  %26 = load %struct.objagg_obj*, %struct.objagg_obj** %7, align 8
  %27 = call i32 @objagg_obj_put(%struct.objagg* %25, %struct.objagg_obj* %26)
  %28 = load %struct.world*, %struct.world** %4, align 8
  %29 = getelementptr inbounds %struct.world, %struct.world* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = load i32, i32* %6, align 4
  %32 = call i64 @key_id_index(i32 %31)
  %33 = getelementptr inbounds i32, i32* %30, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = add nsw i32 %34, -1
  store i32 %35, i32* %33, align 4
  br label %36

36:                                               ; preds = %17, %16
  ret void
}

declare dso_local i64 @key_id_index(i32) #1

declare dso_local i32 @objagg_obj_put(%struct.objagg*, %struct.objagg_obj*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
