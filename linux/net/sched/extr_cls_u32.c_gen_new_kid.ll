; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_cls_u32.c_gen_new_kid.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_cls_u32.c_gen_new_kid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tc_u_hnode = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tc_u_hnode*, i32)* @gen_new_kid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gen_new_kid(%struct.tc_u_hnode* %0, i32 %1) #0 {
  %3 = alloca %struct.tc_u_hnode*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.tc_u_hnode* %0, %struct.tc_u_hnode** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = or i32 %7, 2048
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* %4, align 4
  %10 = or i32 %9, 4095
  store i32 %10, i32* %6, align 4
  %11 = load %struct.tc_u_hnode*, %struct.tc_u_hnode** %3, align 8
  %12 = getelementptr inbounds %struct.tc_u_hnode, %struct.tc_u_hnode* %11, i32 0, i32 0
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call i64 @idr_alloc_u32(i32* %12, i32* null, i32* %5, i32 %13, i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %29

17:                                               ; preds = %2
  %18 = load i32, i32* %4, align 4
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* %5, align 4
  %20 = load %struct.tc_u_hnode*, %struct.tc_u_hnode** %3, align 8
  %21 = getelementptr inbounds %struct.tc_u_hnode, %struct.tc_u_hnode* %20, i32 0, i32 0
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* @GFP_KERNEL, align 4
  %24 = call i64 @idr_alloc_u32(i32* %21, i32* null, i32* %5, i32 %22, i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %17
  %27 = load i32, i32* %6, align 4
  store i32 %27, i32* %5, align 4
  br label %28

28:                                               ; preds = %26, %17
  br label %29

29:                                               ; preds = %28, %2
  %30 = load i32, i32* %5, align 4
  ret i32 %30
}

declare dso_local i64 @idr_alloc_u32(i32*, i32*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
