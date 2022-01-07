; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_cls_u32.c_gen_new_htid.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_cls_u32.c_gen_new_htid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tc_u_common = type { i32 }
%struct.tc_u_hnode = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tc_u_common*, %struct.tc_u_hnode*)* @gen_new_htid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gen_new_htid(%struct.tc_u_common* %0, %struct.tc_u_hnode* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tc_u_common*, align 8
  %5 = alloca %struct.tc_u_hnode*, align 8
  %6 = alloca i32, align 4
  store %struct.tc_u_common* %0, %struct.tc_u_common** %4, align 8
  store %struct.tc_u_hnode* %1, %struct.tc_u_hnode** %5, align 8
  %7 = load %struct.tc_u_common*, %struct.tc_u_common** %4, align 8
  %8 = getelementptr inbounds %struct.tc_u_common, %struct.tc_u_common* %7, i32 0, i32 0
  %9 = load %struct.tc_u_hnode*, %struct.tc_u_hnode** %5, align 8
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call i32 @idr_alloc_cyclic(i32* %8, %struct.tc_u_hnode* %9, i32 1, i32 2047, i32 %10)
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %6, align 4
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %19

15:                                               ; preds = %2
  %16 = load i32, i32* %6, align 4
  %17 = or i32 %16, 2048
  %18 = shl i32 %17, 20
  store i32 %18, i32* %3, align 4
  br label %19

19:                                               ; preds = %15, %14
  %20 = load i32, i32* %3, align 4
  ret i32 %20
}

declare dso_local i32 @idr_alloc_cyclic(i32*, %struct.tc_u_hnode*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
