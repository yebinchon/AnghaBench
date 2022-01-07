; ModuleID = '/home/carl/AnghaBench/linux/security/extr_commoncap.c_cap_emulate_setxuid.c'
source_filename = "/home/carl/AnghaBench/linux/security/extr_commoncap.c_cap_emulate_setxuid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cred = type { i32, i32, i32, i32, i32, i32, i32 }

@SECURE_KEEP_CAPS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cred*, %struct.cred*)* @cap_emulate_setxuid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cap_emulate_setxuid(%struct.cred* %0, %struct.cred* %1) #0 {
  %3 = alloca %struct.cred*, align 8
  %4 = alloca %struct.cred*, align 8
  %5 = alloca i32, align 4
  store %struct.cred* %0, %struct.cred** %3, align 8
  store %struct.cred* %1, %struct.cred** %4, align 8
  %6 = load %struct.cred*, %struct.cred** %4, align 8
  %7 = getelementptr inbounds %struct.cred, %struct.cred* %6, i32 0, i32 6
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @make_kuid(i32 %8, i32 0)
  store i32 %9, i32* %5, align 4
  %10 = load %struct.cred*, %struct.cred** %4, align 8
  %11 = getelementptr inbounds %struct.cred, %struct.cred* %10, i32 0, i32 5
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* %5, align 4
  %14 = call i64 @uid_eq(i32 %12, i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %30, label %16

16:                                               ; preds = %2
  %17 = load %struct.cred*, %struct.cred** %4, align 8
  %18 = getelementptr inbounds %struct.cred, %struct.cred* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* %5, align 4
  %21 = call i64 @uid_eq(i32 %19, i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %30, label %23

23:                                               ; preds = %16
  %24 = load %struct.cred*, %struct.cred** %4, align 8
  %25 = getelementptr inbounds %struct.cred, %struct.cred* %24, i32 0, i32 4
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* %5, align 4
  %28 = call i64 @uid_eq(i32 %26, i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %69

30:                                               ; preds = %23, %16, %2
  %31 = load %struct.cred*, %struct.cred** %3, align 8
  %32 = getelementptr inbounds %struct.cred, %struct.cred* %31, i32 0, i32 5
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* %5, align 4
  %35 = call i64 @uid_eq(i32 %33, i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %69, label %37

37:                                               ; preds = %30
  %38 = load %struct.cred*, %struct.cred** %3, align 8
  %39 = getelementptr inbounds %struct.cred, %struct.cred* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* %5, align 4
  %42 = call i64 @uid_eq(i32 %40, i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %69, label %44

44:                                               ; preds = %37
  %45 = load %struct.cred*, %struct.cred** %3, align 8
  %46 = getelementptr inbounds %struct.cred, %struct.cred* %45, i32 0, i32 4
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* %5, align 4
  %49 = call i64 @uid_eq(i32 %47, i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %69, label %51

51:                                               ; preds = %44
  %52 = load i32, i32* @SECURE_KEEP_CAPS, align 4
  %53 = call i32 @issecure(i32 %52)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %64, label %55

55:                                               ; preds = %51
  %56 = load %struct.cred*, %struct.cred** %3, align 8
  %57 = getelementptr inbounds %struct.cred, %struct.cred* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @cap_clear(i32 %58)
  %60 = load %struct.cred*, %struct.cred** %3, align 8
  %61 = getelementptr inbounds %struct.cred, %struct.cred* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @cap_clear(i32 %62)
  br label %64

64:                                               ; preds = %55, %51
  %65 = load %struct.cred*, %struct.cred** %3, align 8
  %66 = getelementptr inbounds %struct.cred, %struct.cred* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @cap_clear(i32 %67)
  br label %69

69:                                               ; preds = %64, %44, %37, %30, %23
  %70 = load %struct.cred*, %struct.cred** %4, align 8
  %71 = getelementptr inbounds %struct.cred, %struct.cred* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* %5, align 4
  %74 = call i64 @uid_eq(i32 %72, i32 %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %88

76:                                               ; preds = %69
  %77 = load %struct.cred*, %struct.cred** %3, align 8
  %78 = getelementptr inbounds %struct.cred, %struct.cred* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* %5, align 4
  %81 = call i64 @uid_eq(i32 %79, i32 %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %88, label %83

83:                                               ; preds = %76
  %84 = load %struct.cred*, %struct.cred** %3, align 8
  %85 = getelementptr inbounds %struct.cred, %struct.cred* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @cap_clear(i32 %86)
  br label %88

88:                                               ; preds = %83, %76, %69
  %89 = load %struct.cred*, %struct.cred** %4, align 8
  %90 = getelementptr inbounds %struct.cred, %struct.cred* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* %5, align 4
  %93 = call i64 @uid_eq(i32 %91, i32 %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %108, label %95

95:                                               ; preds = %88
  %96 = load %struct.cred*, %struct.cred** %3, align 8
  %97 = getelementptr inbounds %struct.cred, %struct.cred* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* %5, align 4
  %100 = call i64 @uid_eq(i32 %98, i32 %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %108

102:                                              ; preds = %95
  %103 = load %struct.cred*, %struct.cred** %3, align 8
  %104 = getelementptr inbounds %struct.cred, %struct.cred* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.cred*, %struct.cred** %3, align 8
  %107 = getelementptr inbounds %struct.cred, %struct.cred* %106, i32 0, i32 1
  store i32 %105, i32* %107, align 4
  br label %108

108:                                              ; preds = %102, %95, %88
  ret void
}

declare dso_local i32 @make_kuid(i32, i32) #1

declare dso_local i64 @uid_eq(i32, i32) #1

declare dso_local i32 @issecure(i32) #1

declare dso_local i32 @cap_clear(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
