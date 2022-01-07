; ModuleID = '/home/carl/AnghaBench/linux/security/apparmor/extr_policy_ns.c_aa_free_ns.c'
source_filename = "/home/carl/AnghaBench/linux/security/apparmor/extr_policy_ns.c_aa_free_ns.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aa_ns = type { %struct.TYPE_2__*, i32, i32, i32 }
%struct.TYPE_2__ = type { i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @aa_free_ns(%struct.aa_ns* %0) #0 {
  %2 = alloca %struct.aa_ns*, align 8
  store %struct.aa_ns* %0, %struct.aa_ns** %2, align 8
  %3 = load %struct.aa_ns*, %struct.aa_ns** %2, align 8
  %4 = icmp ne %struct.aa_ns* %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  br label %27

6:                                                ; preds = %1
  %7 = load %struct.aa_ns*, %struct.aa_ns** %2, align 8
  %8 = getelementptr inbounds %struct.aa_ns, %struct.aa_ns* %7, i32 0, i32 3
  %9 = call i32 @aa_policy_destroy(i32* %8)
  %10 = load %struct.aa_ns*, %struct.aa_ns** %2, align 8
  %11 = getelementptr inbounds %struct.aa_ns, %struct.aa_ns* %10, i32 0, i32 2
  %12 = call i32 @aa_labelset_destroy(i32* %11)
  %13 = load %struct.aa_ns*, %struct.aa_ns** %2, align 8
  %14 = getelementptr inbounds %struct.aa_ns, %struct.aa_ns* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @aa_put_ns(i32 %15)
  %17 = load %struct.aa_ns*, %struct.aa_ns** %2, align 8
  %18 = getelementptr inbounds %struct.aa_ns, %struct.aa_ns* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  store i32* null, i32** %20, align 8
  %21 = load %struct.aa_ns*, %struct.aa_ns** %2, align 8
  %22 = getelementptr inbounds %struct.aa_ns, %struct.aa_ns* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = call i32 @aa_free_profile(%struct.TYPE_2__* %23)
  %25 = load %struct.aa_ns*, %struct.aa_ns** %2, align 8
  %26 = call i32 @kzfree(%struct.aa_ns* %25)
  br label %27

27:                                               ; preds = %6, %5
  ret void
}

declare dso_local i32 @aa_policy_destroy(i32*) #1

declare dso_local i32 @aa_labelset_destroy(i32*) #1

declare dso_local i32 @aa_put_ns(i32) #1

declare dso_local i32 @aa_free_profile(%struct.TYPE_2__*) #1

declare dso_local i32 @kzfree(%struct.aa_ns*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
