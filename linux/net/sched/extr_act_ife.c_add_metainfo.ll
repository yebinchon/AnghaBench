; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_act_ife.c_add_metainfo.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_act_ife.c_add_metainfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcf_ife_info = type { i32 }
%struct.tcf_meta_ops = type { i32 }

@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tcf_ife_info*, i32, i8*, i32, i32)* @add_metainfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_metainfo(%struct.tcf_ife_info* %0, i32 %1, i8* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.tcf_ife_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.tcf_meta_ops*, align 8
  %13 = alloca i32, align 4
  store %struct.tcf_ife_info* %0, %struct.tcf_ife_info** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %14 = load i32, i32* %8, align 4
  %15 = call %struct.tcf_meta_ops* @find_ife_oplist(i32 %14)
  store %struct.tcf_meta_ops* %15, %struct.tcf_meta_ops** %12, align 8
  %16 = load %struct.tcf_meta_ops*, %struct.tcf_meta_ops** %12, align 8
  %17 = icmp ne %struct.tcf_meta_ops* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %5
  %19 = load i32, i32* @ENOENT, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %6, align 4
  br label %38

21:                                               ; preds = %5
  %22 = load %struct.tcf_meta_ops*, %struct.tcf_meta_ops** %12, align 8
  %23 = load %struct.tcf_ife_info*, %struct.tcf_ife_info** %7, align 8
  %24 = load i32, i32* %8, align 4
  %25 = load i8*, i8** %9, align 8
  %26 = load i32, i32* %10, align 4
  %27 = load i32, i32* %11, align 4
  %28 = call i32 @__add_metainfo(%struct.tcf_meta_ops* %22, %struct.tcf_ife_info* %23, i32 %24, i8* %25, i32 %26, i32 0, i32 %27)
  store i32 %28, i32* %13, align 4
  %29 = load i32, i32* %13, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %21
  %32 = load %struct.tcf_meta_ops*, %struct.tcf_meta_ops** %12, align 8
  %33 = getelementptr inbounds %struct.tcf_meta_ops, %struct.tcf_meta_ops* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @module_put(i32 %34)
  br label %36

36:                                               ; preds = %31, %21
  %37 = load i32, i32* %13, align 4
  store i32 %37, i32* %6, align 4
  br label %38

38:                                               ; preds = %36, %18
  %39 = load i32, i32* %6, align 4
  ret i32 %39
}

declare dso_local %struct.tcf_meta_ops* @find_ife_oplist(i32) #1

declare dso_local i32 @__add_metainfo(%struct.tcf_meta_ops*, %struct.tcf_ife_info*, i32, i8*, i32, i32, i32) #1

declare dso_local i32 @module_put(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
