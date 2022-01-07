; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_act_ife.c_add_metainfo_and_get_ops.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_act_ife.c_add_metainfo_and_get_ops.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcf_meta_ops = type { i32 }
%struct.tcf_ife_info = type { i32 }

@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tcf_meta_ops*, %struct.tcf_ife_info*, i32, i32)* @add_metainfo_and_get_ops to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_metainfo_and_get_ops(%struct.tcf_meta_ops* %0, %struct.tcf_ife_info* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.tcf_meta_ops*, align 8
  %7 = alloca %struct.tcf_ife_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.tcf_meta_ops* %0, %struct.tcf_meta_ops** %6, align 8
  store %struct.tcf_ife_info* %1, %struct.tcf_ife_info** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %11 = load %struct.tcf_meta_ops*, %struct.tcf_meta_ops** %6, align 8
  %12 = getelementptr inbounds %struct.tcf_meta_ops, %struct.tcf_meta_ops* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @try_module_get(i32 %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %4
  %17 = load i32, i32* @ENOENT, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %5, align 4
  br label %34

19:                                               ; preds = %4
  %20 = load %struct.tcf_meta_ops*, %struct.tcf_meta_ops** %6, align 8
  %21 = load %struct.tcf_ife_info*, %struct.tcf_ife_info** %7, align 8
  %22 = load i32, i32* %8, align 4
  %23 = load i32, i32* %9, align 4
  %24 = call i32 @__add_metainfo(%struct.tcf_meta_ops* %20, %struct.tcf_ife_info* %21, i32 %22, i32* null, i32 0, i32 1, i32 %23)
  store i32 %24, i32* %10, align 4
  %25 = load i32, i32* %10, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %19
  %28 = load %struct.tcf_meta_ops*, %struct.tcf_meta_ops** %6, align 8
  %29 = getelementptr inbounds %struct.tcf_meta_ops, %struct.tcf_meta_ops* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @module_put(i32 %30)
  br label %32

32:                                               ; preds = %27, %19
  %33 = load i32, i32* %10, align 4
  store i32 %33, i32* %5, align 4
  br label %34

34:                                               ; preds = %32, %16
  %35 = load i32, i32* %5, align 4
  ret i32 %35
}

declare dso_local i32 @try_module_get(i32) #1

declare dso_local i32 @__add_metainfo(%struct.tcf_meta_ops*, %struct.tcf_ife_info*, i32, i32*, i32, i32, i32) #1

declare dso_local i32 @module_put(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
