; ModuleID = '/home/carl/AnghaBench/linux/security/apparmor/extr_apparmorfs.c___aafs_profile_migrate_dents.c'
source_filename = "/home/carl/AnghaBench/linux/security/apparmor/extr_apparmorfs.c___aafs_profile_migrate_dents.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aa_profile = type { %struct.TYPE_4__** }
%struct.TYPE_4__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }

@AAFS_PROF_SIZEOF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__aafs_profile_migrate_dents(%struct.aa_profile* %0, %struct.aa_profile* %1) #0 {
  %3 = alloca %struct.aa_profile*, align 8
  %4 = alloca %struct.aa_profile*, align 8
  %5 = alloca i32, align 4
  store %struct.aa_profile* %0, %struct.aa_profile** %3, align 8
  store %struct.aa_profile* %1, %struct.aa_profile** %4, align 8
  %6 = load %struct.aa_profile*, %struct.aa_profile** %3, align 8
  %7 = icmp ne %struct.aa_profile* %6, null
  %8 = xor i1 %7, true
  %9 = zext i1 %8 to i32
  %10 = call i32 @AA_BUG(i32 %9)
  %11 = load %struct.aa_profile*, %struct.aa_profile** %4, align 8
  %12 = icmp ne %struct.aa_profile* %11, null
  %13 = xor i1 %12, true
  %14 = zext i1 %13 to i32
  %15 = call i32 @AA_BUG(i32 %14)
  %16 = load %struct.aa_profile*, %struct.aa_profile** %3, align 8
  %17 = call %struct.TYPE_5__* @profiles_ns(%struct.aa_profile* %16)
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = call i32 @mutex_is_locked(i32* %18)
  %20 = icmp ne i32 %19, 0
  %21 = xor i1 %20, true
  %22 = zext i1 %21 to i32
  %23 = call i32 @AA_BUG(i32 %22)
  store i32 0, i32* %5, align 4
  br label %24

24:                                               ; preds = %78, %2
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* @AAFS_PROF_SIZEOF, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %81

28:                                               ; preds = %24
  %29 = load %struct.aa_profile*, %struct.aa_profile** %3, align 8
  %30 = getelementptr inbounds %struct.aa_profile, %struct.aa_profile* %29, i32 0, i32 0
  %31 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %30, align 8
  %32 = load i32, i32* %5, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %31, i64 %33
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = load %struct.aa_profile*, %struct.aa_profile** %4, align 8
  %37 = getelementptr inbounds %struct.aa_profile, %struct.aa_profile* %36, i32 0, i32 0
  %38 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %37, align 8
  %39 = load i32, i32* %5, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %38, i64 %40
  store %struct.TYPE_4__* %35, %struct.TYPE_4__** %41, align 8
  %42 = load %struct.aa_profile*, %struct.aa_profile** %4, align 8
  %43 = getelementptr inbounds %struct.aa_profile, %struct.aa_profile* %42, i32 0, i32 0
  %44 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %43, align 8
  %45 = load i32, i32* %5, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %44, i64 %46
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %47, align 8
  %49 = icmp ne %struct.TYPE_4__* %48, null
  br i1 %49, label %50, label %71

50:                                               ; preds = %28
  %51 = load %struct.aa_profile*, %struct.aa_profile** %4, align 8
  %52 = getelementptr inbounds %struct.aa_profile, %struct.aa_profile* %51, i32 0, i32 0
  %53 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %52, align 8
  %54 = load i32, i32* %5, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %53, i64 %55
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %58, align 8
  %60 = call i32 @current_time(%struct.TYPE_6__* %59)
  %61 = load %struct.aa_profile*, %struct.aa_profile** %4, align 8
  %62 = getelementptr inbounds %struct.aa_profile, %struct.aa_profile* %61, i32 0, i32 0
  %63 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %62, align 8
  %64 = load i32, i32* %5, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %63, i64 %65
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 0
  store i32 %60, i32* %70, align 4
  br label %71

71:                                               ; preds = %50, %28
  %72 = load %struct.aa_profile*, %struct.aa_profile** %3, align 8
  %73 = getelementptr inbounds %struct.aa_profile, %struct.aa_profile* %72, i32 0, i32 0
  %74 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %73, align 8
  %75 = load i32, i32* %5, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %74, i64 %76
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %77, align 8
  br label %78

78:                                               ; preds = %71
  %79 = load i32, i32* %5, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %5, align 4
  br label %24

81:                                               ; preds = %24
  ret void
}

declare dso_local i32 @AA_BUG(i32) #1

declare dso_local i32 @mutex_is_locked(i32*) #1

declare dso_local %struct.TYPE_5__* @profiles_ns(%struct.aa_profile*) #1

declare dso_local i32 @current_time(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
