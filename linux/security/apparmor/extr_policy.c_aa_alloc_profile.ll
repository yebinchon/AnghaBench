; ModuleID = '/home/carl/AnghaBench/linux/security/apparmor/extr_policy.c_aa_alloc_profile.c'
source_filename = "/home/carl/AnghaBench/linux/security/apparmor/extr_policy.c_aa_alloc_profile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aa_profile = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { %struct.aa_profile**, i32, i32, %struct.aa_proxy* }
%struct.TYPE_4__ = type { i32 }
%struct.aa_proxy = type { i32 }

@FLAG_PROFILE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.aa_profile* @aa_alloc_profile(i8* %0, %struct.aa_proxy* %1, i32 %2) #0 {
  %4 = alloca %struct.aa_profile*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.aa_proxy*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.aa_profile*, align 8
  store i8* %0, i8** %5, align 8
  store %struct.aa_proxy* %1, %struct.aa_proxy** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* %7, align 4
  %10 = call %struct.aa_profile* @kzalloc(i32 48, i32 %9)
  store %struct.aa_profile* %10, %struct.aa_profile** %8, align 8
  %11 = load %struct.aa_profile*, %struct.aa_profile** %8, align 8
  %12 = icmp ne %struct.aa_profile* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %3
  store %struct.aa_profile* null, %struct.aa_profile** %4, align 8
  br label %72

14:                                               ; preds = %3
  %15 = load %struct.aa_profile*, %struct.aa_profile** %8, align 8
  %16 = getelementptr inbounds %struct.aa_profile, %struct.aa_profile* %15, i32 0, i32 1
  %17 = load i8*, i8** %5, align 8
  %18 = load i32, i32* %7, align 4
  %19 = call i32 @aa_policy_init(%struct.TYPE_4__* %16, i32* null, i8* %17, i32 %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %14
  br label %69

22:                                               ; preds = %14
  %23 = load %struct.aa_profile*, %struct.aa_profile** %8, align 8
  %24 = getelementptr inbounds %struct.aa_profile, %struct.aa_profile* %23, i32 0, i32 0
  %25 = load i32, i32* %7, align 4
  %26 = call i32 @aa_label_init(%struct.TYPE_5__* %24, i32 1, i32 %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %22
  br label %69

29:                                               ; preds = %22
  %30 = load %struct.aa_proxy*, %struct.aa_proxy** %6, align 8
  %31 = icmp ne %struct.aa_proxy* %30, null
  br i1 %31, label %41, label %32

32:                                               ; preds = %29
  %33 = load %struct.aa_profile*, %struct.aa_profile** %8, align 8
  %34 = getelementptr inbounds %struct.aa_profile, %struct.aa_profile* %33, i32 0, i32 0
  %35 = load i32, i32* %7, align 4
  %36 = call %struct.aa_proxy* @aa_alloc_proxy(%struct.TYPE_5__* %34, i32 %35)
  store %struct.aa_proxy* %36, %struct.aa_proxy** %6, align 8
  %37 = load %struct.aa_proxy*, %struct.aa_proxy** %6, align 8
  %38 = icmp ne %struct.aa_proxy* %37, null
  br i1 %38, label %40, label %39

39:                                               ; preds = %32
  br label %69

40:                                               ; preds = %32
  br label %44

41:                                               ; preds = %29
  %42 = load %struct.aa_proxy*, %struct.aa_proxy** %6, align 8
  %43 = call i32 @aa_get_proxy(%struct.aa_proxy* %42)
  br label %44

44:                                               ; preds = %41, %40
  %45 = load %struct.aa_proxy*, %struct.aa_proxy** %6, align 8
  %46 = load %struct.aa_profile*, %struct.aa_profile** %8, align 8
  %47 = getelementptr inbounds %struct.aa_profile, %struct.aa_profile* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 3
  store %struct.aa_proxy* %45, %struct.aa_proxy** %48, align 8
  %49 = load %struct.aa_profile*, %struct.aa_profile** %8, align 8
  %50 = getelementptr inbounds %struct.aa_profile, %struct.aa_profile* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.aa_profile*, %struct.aa_profile** %8, align 8
  %54 = getelementptr inbounds %struct.aa_profile, %struct.aa_profile* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 2
  store i32 %52, i32* %55, align 4
  %56 = load i32, i32* @FLAG_PROFILE, align 4
  %57 = load %struct.aa_profile*, %struct.aa_profile** %8, align 8
  %58 = getelementptr inbounds %struct.aa_profile, %struct.aa_profile* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = or i32 %60, %56
  store i32 %61, i32* %59, align 8
  %62 = load %struct.aa_profile*, %struct.aa_profile** %8, align 8
  %63 = load %struct.aa_profile*, %struct.aa_profile** %8, align 8
  %64 = getelementptr inbounds %struct.aa_profile, %struct.aa_profile* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 0
  %66 = load %struct.aa_profile**, %struct.aa_profile*** %65, align 8
  %67 = getelementptr inbounds %struct.aa_profile*, %struct.aa_profile** %66, i64 0
  store %struct.aa_profile* %62, %struct.aa_profile** %67, align 8
  %68 = load %struct.aa_profile*, %struct.aa_profile** %8, align 8
  store %struct.aa_profile* %68, %struct.aa_profile** %4, align 8
  br label %72

69:                                               ; preds = %39, %28, %21
  %70 = load %struct.aa_profile*, %struct.aa_profile** %8, align 8
  %71 = call i32 @aa_free_profile(%struct.aa_profile* %70)
  store %struct.aa_profile* null, %struct.aa_profile** %4, align 8
  br label %72

72:                                               ; preds = %69, %44, %13
  %73 = load %struct.aa_profile*, %struct.aa_profile** %4, align 8
  ret %struct.aa_profile* %73
}

declare dso_local %struct.aa_profile* @kzalloc(i32, i32) #1

declare dso_local i32 @aa_policy_init(%struct.TYPE_4__*, i32*, i8*, i32) #1

declare dso_local i32 @aa_label_init(%struct.TYPE_5__*, i32, i32) #1

declare dso_local %struct.aa_proxy* @aa_alloc_proxy(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @aa_get_proxy(%struct.aa_proxy*) #1

declare dso_local i32 @aa_free_profile(%struct.aa_profile*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
