; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_act_ife.c_load_metaops_and_vet.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_act_ife.c_load_metaops_and_vet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcf_meta_ops = type { i32 }

@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i32, i32)* @load_metaops_and_vet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @load_metaops_and_vet(i32 %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.tcf_meta_ops*, align 8
  %10 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load i32, i32* %5, align 4
  %12 = call %struct.tcf_meta_ops* @find_ife_oplist(i32 %11)
  store %struct.tcf_meta_ops* %12, %struct.tcf_meta_ops** %9, align 8
  store i32 0, i32* %10, align 4
  %13 = load %struct.tcf_meta_ops*, %struct.tcf_meta_ops** %9, align 8
  %14 = icmp ne %struct.tcf_meta_ops* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %4
  %16 = load i32, i32* @ENOENT, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %10, align 4
  br label %18

18:                                               ; preds = %15, %4
  %19 = load %struct.tcf_meta_ops*, %struct.tcf_meta_ops** %9, align 8
  %20 = icmp ne %struct.tcf_meta_ops* %19, null
  br i1 %20, label %21, label %34

21:                                               ; preds = %18
  store i32 0, i32* %10, align 4
  %22 = load i32, i32* %7, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %21
  %25 = load %struct.tcf_meta_ops*, %struct.tcf_meta_ops** %9, align 8
  %26 = load i8*, i8** %6, align 8
  %27 = load i32, i32* %7, align 4
  %28 = call i32 @ife_validate_metatype(%struct.tcf_meta_ops* %25, i8* %26, i32 %27)
  store i32 %28, i32* %10, align 4
  br label %29

29:                                               ; preds = %24, %21
  %30 = load %struct.tcf_meta_ops*, %struct.tcf_meta_ops** %9, align 8
  %31 = getelementptr inbounds %struct.tcf_meta_ops, %struct.tcf_meta_ops* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @module_put(i32 %32)
  br label %34

34:                                               ; preds = %29, %18
  %35 = load i32, i32* %10, align 4
  ret i32 %35
}

declare dso_local %struct.tcf_meta_ops* @find_ife_oplist(i32) #1

declare dso_local i32 @ife_validate_metatype(%struct.tcf_meta_ops*, i8*, i32) #1

declare dso_local i32 @module_put(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
