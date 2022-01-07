; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_audit_tree.c_audit_tree_match.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_audit_tree.c_audit_tree_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.audit_chunk = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.audit_tree* }
%struct.audit_tree = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @audit_tree_match(%struct.audit_chunk* %0, %struct.audit_tree* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.audit_chunk*, align 8
  %5 = alloca %struct.audit_tree*, align 8
  %6 = alloca i32, align 4
  store %struct.audit_chunk* %0, %struct.audit_chunk** %4, align 8
  store %struct.audit_tree* %1, %struct.audit_tree** %5, align 8
  store i32 0, i32* %6, align 4
  br label %7

7:                                                ; preds = %26, %2
  %8 = load i32, i32* %6, align 4
  %9 = load %struct.audit_chunk*, %struct.audit_chunk** %4, align 8
  %10 = getelementptr inbounds %struct.audit_chunk, %struct.audit_chunk* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp slt i32 %8, %11
  br i1 %12, label %13, label %29

13:                                               ; preds = %7
  %14 = load %struct.audit_chunk*, %struct.audit_chunk** %4, align 8
  %15 = getelementptr inbounds %struct.audit_chunk, %struct.audit_chunk* %14, i32 0, i32 1
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = load i32, i32* %6, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i64 %18
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load %struct.audit_tree*, %struct.audit_tree** %20, align 8
  %22 = load %struct.audit_tree*, %struct.audit_tree** %5, align 8
  %23 = icmp eq %struct.audit_tree* %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %13
  store i32 1, i32* %3, align 4
  br label %30

25:                                               ; preds = %13
  br label %26

26:                                               ; preds = %25
  %27 = load i32, i32* %6, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %6, align 4
  br label %7

29:                                               ; preds = %7
  store i32 0, i32* %3, align 4
  br label %30

30:                                               ; preds = %29, %24
  %31 = load i32, i32* %3, align 4
  ret i32 %31
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
