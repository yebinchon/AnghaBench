; ModuleID = '/home/carl/AnghaBench/linux/security/selinux/ss/extr_policydb.c_constraint_expr_destroy.c'
source_filename = "/home/carl/AnghaBench/linux/security/selinux/ss/extr_policydb.c_constraint_expr_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.constraint_expr = type { %struct.constraint_expr*, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.constraint_expr*)* @constraint_expr_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @constraint_expr_destroy(%struct.constraint_expr* %0) #0 {
  %2 = alloca %struct.constraint_expr*, align 8
  store %struct.constraint_expr* %0, %struct.constraint_expr** %2, align 8
  %3 = load %struct.constraint_expr*, %struct.constraint_expr** %2, align 8
  %4 = icmp ne %struct.constraint_expr* %3, null
  br i1 %4, label %5, label %31

5:                                                ; preds = %1
  %6 = load %struct.constraint_expr*, %struct.constraint_expr** %2, align 8
  %7 = getelementptr inbounds %struct.constraint_expr, %struct.constraint_expr* %6, i32 0, i32 3
  %8 = call i32 @ebitmap_destroy(i32* %7)
  %9 = load %struct.constraint_expr*, %struct.constraint_expr** %2, align 8
  %10 = getelementptr inbounds %struct.constraint_expr, %struct.constraint_expr* %9, i32 0, i32 0
  %11 = load %struct.constraint_expr*, %struct.constraint_expr** %10, align 8
  %12 = icmp ne %struct.constraint_expr* %11, null
  br i1 %12, label %13, label %28

13:                                               ; preds = %5
  %14 = load %struct.constraint_expr*, %struct.constraint_expr** %2, align 8
  %15 = getelementptr inbounds %struct.constraint_expr, %struct.constraint_expr* %14, i32 0, i32 0
  %16 = load %struct.constraint_expr*, %struct.constraint_expr** %15, align 8
  %17 = getelementptr inbounds %struct.constraint_expr, %struct.constraint_expr* %16, i32 0, i32 2
  %18 = call i32 @ebitmap_destroy(i32* %17)
  %19 = load %struct.constraint_expr*, %struct.constraint_expr** %2, align 8
  %20 = getelementptr inbounds %struct.constraint_expr, %struct.constraint_expr* %19, i32 0, i32 0
  %21 = load %struct.constraint_expr*, %struct.constraint_expr** %20, align 8
  %22 = getelementptr inbounds %struct.constraint_expr, %struct.constraint_expr* %21, i32 0, i32 1
  %23 = call i32 @ebitmap_destroy(i32* %22)
  %24 = load %struct.constraint_expr*, %struct.constraint_expr** %2, align 8
  %25 = getelementptr inbounds %struct.constraint_expr, %struct.constraint_expr* %24, i32 0, i32 0
  %26 = load %struct.constraint_expr*, %struct.constraint_expr** %25, align 8
  %27 = call i32 @kfree(%struct.constraint_expr* %26)
  br label %28

28:                                               ; preds = %13, %5
  %29 = load %struct.constraint_expr*, %struct.constraint_expr** %2, align 8
  %30 = call i32 @kfree(%struct.constraint_expr* %29)
  br label %31

31:                                               ; preds = %28, %1
  ret void
}

declare dso_local i32 @ebitmap_destroy(i32*) #1

declare dso_local i32 @kfree(%struct.constraint_expr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
