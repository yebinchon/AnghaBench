; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_em_meta.c_meta_delete.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_em_meta.c_meta_delete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.meta_match = type { i32, i32 }
%struct.meta_type_ops = type { i32 (i32*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.meta_match*)* @meta_delete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @meta_delete(%struct.meta_match* %0) #0 {
  %2 = alloca %struct.meta_match*, align 8
  %3 = alloca %struct.meta_type_ops*, align 8
  store %struct.meta_match* %0, %struct.meta_match** %2, align 8
  %4 = load %struct.meta_match*, %struct.meta_match** %2, align 8
  %5 = icmp ne %struct.meta_match* %4, null
  br i1 %5, label %6, label %31

6:                                                ; preds = %1
  %7 = load %struct.meta_match*, %struct.meta_match** %2, align 8
  %8 = getelementptr inbounds %struct.meta_match, %struct.meta_match* %7, i32 0, i32 1
  %9 = call %struct.meta_type_ops* @meta_type_ops(i32* %8)
  store %struct.meta_type_ops* %9, %struct.meta_type_ops** %3, align 8
  %10 = load %struct.meta_type_ops*, %struct.meta_type_ops** %3, align 8
  %11 = icmp ne %struct.meta_type_ops* %10, null
  br i1 %11, label %12, label %30

12:                                               ; preds = %6
  %13 = load %struct.meta_type_ops*, %struct.meta_type_ops** %3, align 8
  %14 = getelementptr inbounds %struct.meta_type_ops, %struct.meta_type_ops* %13, i32 0, i32 0
  %15 = load i32 (i32*)*, i32 (i32*)** %14, align 8
  %16 = icmp ne i32 (i32*)* %15, null
  br i1 %16, label %17, label %30

17:                                               ; preds = %12
  %18 = load %struct.meta_type_ops*, %struct.meta_type_ops** %3, align 8
  %19 = getelementptr inbounds %struct.meta_type_ops, %struct.meta_type_ops* %18, i32 0, i32 0
  %20 = load i32 (i32*)*, i32 (i32*)** %19, align 8
  %21 = load %struct.meta_match*, %struct.meta_match** %2, align 8
  %22 = getelementptr inbounds %struct.meta_match, %struct.meta_match* %21, i32 0, i32 1
  %23 = call i32 %20(i32* %22)
  %24 = load %struct.meta_type_ops*, %struct.meta_type_ops** %3, align 8
  %25 = getelementptr inbounds %struct.meta_type_ops, %struct.meta_type_ops* %24, i32 0, i32 0
  %26 = load i32 (i32*)*, i32 (i32*)** %25, align 8
  %27 = load %struct.meta_match*, %struct.meta_match** %2, align 8
  %28 = getelementptr inbounds %struct.meta_match, %struct.meta_match* %27, i32 0, i32 0
  %29 = call i32 %26(i32* %28)
  br label %30

30:                                               ; preds = %17, %12, %6
  br label %31

31:                                               ; preds = %30, %1
  %32 = load %struct.meta_match*, %struct.meta_match** %2, align 8
  %33 = call i32 @kfree(%struct.meta_match* %32)
  ret void
}

declare dso_local %struct.meta_type_ops* @meta_type_ops(i32*) #1

declare dso_local i32 @kfree(%struct.meta_match*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
