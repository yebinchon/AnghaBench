; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_test_objagg.c_obj_to_key_id.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_test_objagg.c_obj_to_key_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.objagg_obj = type { i32 }
%struct.tokey = type { i32 }
%struct.delta = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.objagg_obj*)* @obj_to_key_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @obj_to_key_id(%struct.objagg_obj* %0) #0 {
  %2 = alloca %struct.objagg_obj*, align 8
  %3 = alloca %struct.tokey*, align 8
  %4 = alloca %struct.delta*, align 8
  %5 = alloca i32, align 4
  store %struct.objagg_obj* %0, %struct.objagg_obj** %2, align 8
  %6 = load %struct.objagg_obj*, %struct.objagg_obj** %2, align 8
  %7 = call %struct.tokey* @objagg_obj_root_priv(%struct.objagg_obj* %6)
  store %struct.tokey* %7, %struct.tokey** %3, align 8
  %8 = load %struct.tokey*, %struct.tokey** %3, align 8
  %9 = getelementptr inbounds %struct.tokey, %struct.tokey* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  store i32 %10, i32* %5, align 4
  %11 = load %struct.objagg_obj*, %struct.objagg_obj** %2, align 8
  %12 = call %struct.delta* @objagg_obj_delta_priv(%struct.objagg_obj* %11)
  store %struct.delta* %12, %struct.delta** %4, align 8
  %13 = load %struct.delta*, %struct.delta** %4, align 8
  %14 = icmp ne %struct.delta* %13, null
  br i1 %14, label %15, label %23

15:                                               ; preds = %1
  %16 = load %struct.delta*, %struct.delta** %4, align 8
  %17 = getelementptr inbounds %struct.delta, %struct.delta* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i32, i32* %5, align 4
  %20 = zext i32 %19 to i64
  %21 = add nsw i64 %20, %18
  %22 = trunc i64 %21 to i32
  store i32 %22, i32* %5, align 4
  br label %23

23:                                               ; preds = %15, %1
  %24 = load i32, i32* %5, align 4
  ret i32 %24
}

declare dso_local %struct.tokey* @objagg_obj_root_priv(%struct.objagg_obj*) #1

declare dso_local %struct.delta* @objagg_obj_delta_priv(%struct.objagg_obj*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
