; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_kobject_uevent.c_zap_modalias_env.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_kobject_uevent.c_zap_modalias_env.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kobj_uevent_env = type { i32, i64, i64* }

@zap_modalias_env.modalias_prefix = internal constant [10 x i8] c"MODALIAS=\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kobj_uevent_env*)* @zap_modalias_env to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @zap_modalias_env(%struct.kobj_uevent_env* %0) #0 {
  %2 = alloca %struct.kobj_uevent_env*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.kobj_uevent_env* %0, %struct.kobj_uevent_env** %2, align 8
  store i32 0, i32* %4, align 4
  br label %6

6:                                                ; preds = %93, %22, %1
  %7 = load i32, i32* %4, align 4
  %8 = load %struct.kobj_uevent_env*, %struct.kobj_uevent_env** %2, align 8
  %9 = getelementptr inbounds %struct.kobj_uevent_env, %struct.kobj_uevent_env* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp slt i32 %7, %10
  br i1 %11, label %12, label %103

12:                                               ; preds = %6
  %13 = load %struct.kobj_uevent_env*, %struct.kobj_uevent_env** %2, align 8
  %14 = getelementptr inbounds %struct.kobj_uevent_env, %struct.kobj_uevent_env* %13, i32 0, i32 2
  %15 = load i64*, i64** %14, align 8
  %16 = load i32, i32* %4, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i64, i64* %15, i64 %17
  %19 = load i64, i64* %18, align 8
  %20 = call i64 @strncmp(i64 %19, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @zap_modalias_env.modalias_prefix, i64 0, i64 0), i32 9)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %12
  %23 = load i32, i32* %4, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %4, align 4
  br label %6

25:                                               ; preds = %12
  %26 = load %struct.kobj_uevent_env*, %struct.kobj_uevent_env** %2, align 8
  %27 = getelementptr inbounds %struct.kobj_uevent_env, %struct.kobj_uevent_env* %26, i32 0, i32 2
  %28 = load i64*, i64** %27, align 8
  %29 = load i32, i32* %4, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i64, i64* %28, i64 %30
  %32 = load i64, i64* %31, align 8
  %33 = call i32 @strlen(i64 %32)
  %34 = add nsw i32 %33, 1
  %35 = sext i32 %34 to i64
  store i64 %35, i64* %3, align 8
  %36 = load i32, i32* %4, align 4
  %37 = load %struct.kobj_uevent_env*, %struct.kobj_uevent_env** %2, align 8
  %38 = getelementptr inbounds %struct.kobj_uevent_env, %struct.kobj_uevent_env* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = sub nsw i32 %39, 1
  %41 = icmp ne i32 %36, %40
  br i1 %41, label %42, label %93

42:                                               ; preds = %25
  %43 = load %struct.kobj_uevent_env*, %struct.kobj_uevent_env** %2, align 8
  %44 = getelementptr inbounds %struct.kobj_uevent_env, %struct.kobj_uevent_env* %43, i32 0, i32 2
  %45 = load i64*, i64** %44, align 8
  %46 = load i32, i32* %4, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i64, i64* %45, i64 %47
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.kobj_uevent_env*, %struct.kobj_uevent_env** %2, align 8
  %51 = getelementptr inbounds %struct.kobj_uevent_env, %struct.kobj_uevent_env* %50, i32 0, i32 2
  %52 = load i64*, i64** %51, align 8
  %53 = load i32, i32* %4, align 4
  %54 = add nsw i32 %53, 1
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i64, i64* %52, i64 %55
  %57 = load i64, i64* %56, align 8
  %58 = load %struct.kobj_uevent_env*, %struct.kobj_uevent_env** %2, align 8
  %59 = getelementptr inbounds %struct.kobj_uevent_env, %struct.kobj_uevent_env* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* %3, align 8
  %62 = sub i64 %60, %61
  %63 = call i32 @memmove(i64 %49, i64 %57, i64 %62)
  %64 = load i32, i32* %4, align 4
  store i32 %64, i32* %5, align 4
  br label %65

65:                                               ; preds = %89, %42
  %66 = load i32, i32* %5, align 4
  %67 = load %struct.kobj_uevent_env*, %struct.kobj_uevent_env** %2, align 8
  %68 = getelementptr inbounds %struct.kobj_uevent_env, %struct.kobj_uevent_env* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = sub nsw i32 %69, 1
  %71 = icmp slt i32 %66, %70
  br i1 %71, label %72, label %92

72:                                               ; preds = %65
  %73 = load %struct.kobj_uevent_env*, %struct.kobj_uevent_env** %2, align 8
  %74 = getelementptr inbounds %struct.kobj_uevent_env, %struct.kobj_uevent_env* %73, i32 0, i32 2
  %75 = load i64*, i64** %74, align 8
  %76 = load i32, i32* %5, align 4
  %77 = add nsw i32 %76, 1
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i64, i64* %75, i64 %78
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* %3, align 8
  %82 = sub i64 %80, %81
  %83 = load %struct.kobj_uevent_env*, %struct.kobj_uevent_env** %2, align 8
  %84 = getelementptr inbounds %struct.kobj_uevent_env, %struct.kobj_uevent_env* %83, i32 0, i32 2
  %85 = load i64*, i64** %84, align 8
  %86 = load i32, i32* %5, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i64, i64* %85, i64 %87
  store i64 %82, i64* %88, align 8
  br label %89

89:                                               ; preds = %72
  %90 = load i32, i32* %5, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %5, align 4
  br label %65

92:                                               ; preds = %65
  br label %93

93:                                               ; preds = %92, %25
  %94 = load %struct.kobj_uevent_env*, %struct.kobj_uevent_env** %2, align 8
  %95 = getelementptr inbounds %struct.kobj_uevent_env, %struct.kobj_uevent_env* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = add nsw i32 %96, -1
  store i32 %97, i32* %95, align 8
  %98 = load i64, i64* %3, align 8
  %99 = load %struct.kobj_uevent_env*, %struct.kobj_uevent_env** %2, align 8
  %100 = getelementptr inbounds %struct.kobj_uevent_env, %struct.kobj_uevent_env* %99, i32 0, i32 1
  %101 = load i64, i64* %100, align 8
  %102 = sub i64 %101, %98
  store i64 %102, i64* %100, align 8
  br label %6

103:                                              ; preds = %6
  ret void
}

declare dso_local i64 @strncmp(i64, i8*, i32) #1

declare dso_local i32 @strlen(i64) #1

declare dso_local i32 @memmove(i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
