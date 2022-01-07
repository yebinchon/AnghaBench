; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_auditsc.c_put_tree_ref.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_auditsc.c_put_tree_ref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.audit_context = type { i32, %struct.audit_tree_refs* }
%struct.audit_tree_refs = type { %struct.audit_chunk**, %struct.audit_tree_refs* }
%struct.audit_chunk = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.audit_context*, %struct.audit_chunk*)* @put_tree_ref to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @put_tree_ref(%struct.audit_context* %0, %struct.audit_chunk* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.audit_context*, align 8
  %5 = alloca %struct.audit_chunk*, align 8
  %6 = alloca %struct.audit_tree_refs*, align 8
  %7 = alloca i32, align 4
  store %struct.audit_context* %0, %struct.audit_context** %4, align 8
  store %struct.audit_chunk* %1, %struct.audit_chunk** %5, align 8
  %8 = load %struct.audit_context*, %struct.audit_context** %4, align 8
  %9 = getelementptr inbounds %struct.audit_context, %struct.audit_context* %8, i32 0, i32 1
  %10 = load %struct.audit_tree_refs*, %struct.audit_tree_refs** %9, align 8
  store %struct.audit_tree_refs* %10, %struct.audit_tree_refs** %6, align 8
  %11 = load %struct.audit_context*, %struct.audit_context** %4, align 8
  %12 = getelementptr inbounds %struct.audit_context, %struct.audit_context* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* %7, align 4
  %15 = call i64 @likely(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %29

17:                                               ; preds = %2
  %18 = load %struct.audit_chunk*, %struct.audit_chunk** %5, align 8
  %19 = load %struct.audit_tree_refs*, %struct.audit_tree_refs** %6, align 8
  %20 = getelementptr inbounds %struct.audit_tree_refs, %struct.audit_tree_refs* %19, i32 0, i32 0
  %21 = load %struct.audit_chunk**, %struct.audit_chunk*** %20, align 8
  %22 = load i32, i32* %7, align 4
  %23 = add nsw i32 %22, -1
  store i32 %23, i32* %7, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.audit_chunk*, %struct.audit_chunk** %21, i64 %24
  store %struct.audit_chunk* %18, %struct.audit_chunk** %25, align 8
  %26 = load i32, i32* %7, align 4
  %27 = load %struct.audit_context*, %struct.audit_context** %4, align 8
  %28 = getelementptr inbounds %struct.audit_context, %struct.audit_context* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 8
  store i32 1, i32* %3, align 4
  br label %51

29:                                               ; preds = %2
  %30 = load %struct.audit_tree_refs*, %struct.audit_tree_refs** %6, align 8
  %31 = icmp ne %struct.audit_tree_refs* %30, null
  br i1 %31, label %33, label %32

32:                                               ; preds = %29
  store i32 0, i32* %3, align 4
  br label %51

33:                                               ; preds = %29
  %34 = load %struct.audit_tree_refs*, %struct.audit_tree_refs** %6, align 8
  %35 = getelementptr inbounds %struct.audit_tree_refs, %struct.audit_tree_refs* %34, i32 0, i32 1
  %36 = load %struct.audit_tree_refs*, %struct.audit_tree_refs** %35, align 8
  store %struct.audit_tree_refs* %36, %struct.audit_tree_refs** %6, align 8
  %37 = load %struct.audit_tree_refs*, %struct.audit_tree_refs** %6, align 8
  %38 = icmp ne %struct.audit_tree_refs* %37, null
  br i1 %38, label %39, label %50

39:                                               ; preds = %33
  %40 = load %struct.audit_chunk*, %struct.audit_chunk** %5, align 8
  %41 = load %struct.audit_tree_refs*, %struct.audit_tree_refs** %6, align 8
  %42 = getelementptr inbounds %struct.audit_tree_refs, %struct.audit_tree_refs* %41, i32 0, i32 0
  %43 = load %struct.audit_chunk**, %struct.audit_chunk*** %42, align 8
  %44 = getelementptr inbounds %struct.audit_chunk*, %struct.audit_chunk** %43, i64 30
  store %struct.audit_chunk* %40, %struct.audit_chunk** %44, align 8
  %45 = load %struct.audit_tree_refs*, %struct.audit_tree_refs** %6, align 8
  %46 = load %struct.audit_context*, %struct.audit_context** %4, align 8
  %47 = getelementptr inbounds %struct.audit_context, %struct.audit_context* %46, i32 0, i32 1
  store %struct.audit_tree_refs* %45, %struct.audit_tree_refs** %47, align 8
  %48 = load %struct.audit_context*, %struct.audit_context** %4, align 8
  %49 = getelementptr inbounds %struct.audit_context, %struct.audit_context* %48, i32 0, i32 0
  store i32 30, i32* %49, align 8
  store i32 1, i32* %3, align 4
  br label %51

50:                                               ; preds = %33
  store i32 0, i32* %3, align 4
  br label %51

51:                                               ; preds = %50, %39, %32, %17
  %52 = load i32, i32* %3, align 4
  ret i32 %52
}

declare dso_local i64 @likely(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
