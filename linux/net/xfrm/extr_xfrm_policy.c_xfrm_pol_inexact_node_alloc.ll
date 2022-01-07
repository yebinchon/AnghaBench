; ModuleID = '/home/carl/AnghaBench/linux/net/xfrm/extr_xfrm_policy.c_xfrm_pol_inexact_node_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/net/xfrm/extr_xfrm_policy.c_xfrm_pol_inexact_node_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfrm_pol_inexact_node = type { i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.xfrm_pol_inexact_node* (i32*, i32)* @xfrm_pol_inexact_node_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.xfrm_pol_inexact_node* @xfrm_pol_inexact_node_alloc(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.xfrm_pol_inexact_node*, align 8
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* @GFP_ATOMIC, align 4
  %7 = call %struct.xfrm_pol_inexact_node* @kzalloc(i32 4, i32 %6)
  store %struct.xfrm_pol_inexact_node* %7, %struct.xfrm_pol_inexact_node** %5, align 8
  %8 = load %struct.xfrm_pol_inexact_node*, %struct.xfrm_pol_inexact_node** %5, align 8
  %9 = icmp ne %struct.xfrm_pol_inexact_node* %8, null
  br i1 %9, label %10, label %15

10:                                               ; preds = %2
  %11 = load %struct.xfrm_pol_inexact_node*, %struct.xfrm_pol_inexact_node** %5, align 8
  %12 = load i32*, i32** %3, align 8
  %13 = load i32, i32* %4, align 4
  %14 = call i32 @xfrm_pol_inexact_node_init(%struct.xfrm_pol_inexact_node* %11, i32* %12, i32 %13)
  br label %15

15:                                               ; preds = %10, %2
  %16 = load %struct.xfrm_pol_inexact_node*, %struct.xfrm_pol_inexact_node** %5, align 8
  ret %struct.xfrm_pol_inexact_node* %16
}

declare dso_local %struct.xfrm_pol_inexact_node* @kzalloc(i32, i32) #1

declare dso_local i32 @xfrm_pol_inexact_node_init(%struct.xfrm_pol_inexact_node*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
