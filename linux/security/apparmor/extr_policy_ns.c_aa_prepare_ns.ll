; ModuleID = '/home/carl/AnghaBench/linux/security/apparmor/extr_policy_ns.c_aa_prepare_ns.c'
source_filename = "/home/carl/AnghaBench/linux/security/apparmor/extr_policy_ns.c_aa_prepare_ns.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aa_ns = type { i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.aa_ns* @aa_prepare_ns(%struct.aa_ns* %0, i8* %1) #0 {
  %3 = alloca %struct.aa_ns*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.aa_ns*, align 8
  store %struct.aa_ns* %0, %struct.aa_ns** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load %struct.aa_ns*, %struct.aa_ns** %3, align 8
  %7 = getelementptr inbounds %struct.aa_ns, %struct.aa_ns* %6, i32 0, i32 0
  %8 = load %struct.aa_ns*, %struct.aa_ns** %3, align 8
  %9 = getelementptr inbounds %struct.aa_ns, %struct.aa_ns* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @mutex_lock_nested(i32* %7, i32 %10)
  %12 = load %struct.aa_ns*, %struct.aa_ns** %3, align 8
  %13 = getelementptr inbounds %struct.aa_ns, %struct.aa_ns* %12, i32 0, i32 1
  %14 = load i8*, i8** %4, align 8
  %15 = call i32 @__aa_find_ns(i32* %13, i8* %14)
  %16 = call %struct.aa_ns* @aa_get_ns(i32 %15)
  store %struct.aa_ns* %16, %struct.aa_ns** %5, align 8
  %17 = load %struct.aa_ns*, %struct.aa_ns** %5, align 8
  %18 = icmp ne %struct.aa_ns* %17, null
  br i1 %18, label %23, label %19

19:                                               ; preds = %2
  %20 = load %struct.aa_ns*, %struct.aa_ns** %3, align 8
  %21 = load i8*, i8** %4, align 8
  %22 = call %struct.aa_ns* @__aa_create_ns(%struct.aa_ns* %20, i8* %21, i32* null)
  store %struct.aa_ns* %22, %struct.aa_ns** %5, align 8
  br label %23

23:                                               ; preds = %19, %2
  %24 = load %struct.aa_ns*, %struct.aa_ns** %3, align 8
  %25 = getelementptr inbounds %struct.aa_ns, %struct.aa_ns* %24, i32 0, i32 0
  %26 = call i32 @mutex_unlock(i32* %25)
  %27 = load %struct.aa_ns*, %struct.aa_ns** %5, align 8
  ret %struct.aa_ns* %27
}

declare dso_local i32 @mutex_lock_nested(i32*, i32) #1

declare dso_local %struct.aa_ns* @aa_get_ns(i32) #1

declare dso_local i32 @__aa_find_ns(i32*, i8*) #1

declare dso_local %struct.aa_ns* @__aa_create_ns(%struct.aa_ns*, i8*, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
