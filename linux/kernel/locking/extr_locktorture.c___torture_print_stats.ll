; ModuleID = '/home/carl/AnghaBench/linux/kernel/locking/extr_locktorture.c___torture_print_stats.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/locking/extr_locktorture.c___torture_print_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.lock_stress_stats = type { i64, i64 }

@cxt = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@.str = private unnamed_addr constant [52 x i8] c"%s:  Total: %lld  Max/Min: %ld/%ld %s  Fail: %d %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"Writes\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"Reads \00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"???\00", align 1
@.str.4 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"!!!\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.lock_stress_stats*, i32)* @__torture_print_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__torture_print_stats(i8* %0, %struct.lock_stress_stats* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.lock_stress_stats*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store %struct.lock_stress_stats* %1, %struct.lock_stress_stats** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i64 0, i64* %10, align 8
  %13 = load %struct.lock_stress_stats*, %struct.lock_stress_stats** %5, align 8
  %14 = icmp ne %struct.lock_stress_stats* %13, null
  br i1 %14, label %15, label %20

15:                                               ; preds = %3
  %16 = load %struct.lock_stress_stats*, %struct.lock_stress_stats** %5, align 8
  %17 = getelementptr inbounds %struct.lock_stress_stats, %struct.lock_stress_stats* %16, i64 0
  %18 = getelementptr inbounds %struct.lock_stress_stats, %struct.lock_stress_stats* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  br label %21

20:                                               ; preds = %3
  br label %21

21:                                               ; preds = %20, %15
  %22 = phi i64 [ %19, %15 ], [ 0, %20 ]
  store i64 %22, i64* %11, align 8
  store i64 0, i64* %12, align 8
  %23 = load i32, i32* %6, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %21
  %26 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cxt, i32 0, i32 0), align 4
  br label %29

27:                                               ; preds = %21
  %28 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cxt, i32 0, i32 1), align 4
  br label %29

29:                                               ; preds = %27, %25
  %30 = phi i32 [ %26, %25 ], [ %28, %27 ]
  store i32 %30, i32* %9, align 4
  store i32 0, i32* %8, align 4
  br label %31

31:                                               ; preds = %85, %29
  %32 = load i32, i32* %8, align 4
  %33 = load i32, i32* %9, align 4
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %35, label %88

35:                                               ; preds = %31
  %36 = load %struct.lock_stress_stats*, %struct.lock_stress_stats** %5, align 8
  %37 = load i32, i32* %8, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.lock_stress_stats, %struct.lock_stress_stats* %36, i64 %38
  %40 = getelementptr inbounds %struct.lock_stress_stats, %struct.lock_stress_stats* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %35
  store i32 1, i32* %7, align 4
  br label %44

44:                                               ; preds = %43, %35
  %45 = load %struct.lock_stress_stats*, %struct.lock_stress_stats** %5, align 8
  %46 = load i32, i32* %8, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.lock_stress_stats, %struct.lock_stress_stats* %45, i64 %47
  %49 = getelementptr inbounds %struct.lock_stress_stats, %struct.lock_stress_stats* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* %12, align 8
  %52 = add nsw i64 %51, %50
  store i64 %52, i64* %12, align 8
  %53 = load i64, i64* %10, align 8
  %54 = load %struct.lock_stress_stats*, %struct.lock_stress_stats** %5, align 8
  %55 = load i32, i32* %8, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.lock_stress_stats, %struct.lock_stress_stats* %54, i64 %56
  %58 = getelementptr inbounds %struct.lock_stress_stats, %struct.lock_stress_stats* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = icmp slt i64 %53, %59
  br i1 %60, label %61, label %68

61:                                               ; preds = %44
  %62 = load %struct.lock_stress_stats*, %struct.lock_stress_stats** %5, align 8
  %63 = load i32, i32* %8, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.lock_stress_stats, %struct.lock_stress_stats* %62, i64 %64
  %66 = getelementptr inbounds %struct.lock_stress_stats, %struct.lock_stress_stats* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  store i64 %67, i64* %10, align 8
  br label %68

68:                                               ; preds = %61, %44
  %69 = load i64, i64* %11, align 8
  %70 = load %struct.lock_stress_stats*, %struct.lock_stress_stats** %5, align 8
  %71 = load i32, i32* %8, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.lock_stress_stats, %struct.lock_stress_stats* %70, i64 %72
  %74 = getelementptr inbounds %struct.lock_stress_stats, %struct.lock_stress_stats* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = icmp sgt i64 %69, %75
  br i1 %76, label %77, label %84

77:                                               ; preds = %68
  %78 = load %struct.lock_stress_stats*, %struct.lock_stress_stats** %5, align 8
  %79 = load i32, i32* %8, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.lock_stress_stats, %struct.lock_stress_stats* %78, i64 %80
  %82 = getelementptr inbounds %struct.lock_stress_stats, %struct.lock_stress_stats* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  store i64 %83, i64* %11, align 8
  br label %84

84:                                               ; preds = %77, %68
  br label %85

85:                                               ; preds = %84
  %86 = load i32, i32* %8, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %8, align 4
  br label %31

88:                                               ; preds = %31
  %89 = load i8*, i8** %4, align 8
  %90 = load i32, i32* %6, align 4
  %91 = icmp ne i32 %90, 0
  %92 = zext i1 %91 to i64
  %93 = select i1 %91, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0)
  %94 = load i64, i64* %12, align 8
  %95 = load i64, i64* %10, align 8
  %96 = load i64, i64* %11, align 8
  %97 = load i64, i64* %10, align 8
  %98 = sdiv i64 %97, 2
  %99 = load i64, i64* %11, align 8
  %100 = icmp sgt i64 %98, %99
  %101 = zext i1 %100 to i64
  %102 = select i1 %100, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0)
  %103 = load i32, i32* %7, align 4
  %104 = load i32, i32* %7, align 4
  %105 = icmp ne i32 %104, 0
  %106 = zext i1 %105 to i64
  %107 = select i1 %105, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0)
  %108 = call i32 @sprintf(i8* %89, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i8* %93, i64 %94, i64 %95, i64 %96, i8* %102, i32 %103, i8* %107)
  %109 = load i8*, i8** %4, align 8
  %110 = sext i32 %108 to i64
  %111 = getelementptr inbounds i8, i8* %109, i64 %110
  store i8* %111, i8** %4, align 8
  %112 = load i32, i32* %7, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %116

114:                                              ; preds = %88
  %115 = call i32 @atomic_inc(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cxt, i32 0, i32 2))
  br label %116

116:                                              ; preds = %114, %88
  ret void
}

declare dso_local i32 @sprintf(i8*, i8*, i8*, i64, i64, i64, i8*, i32, i8*) #1

declare dso_local i32 @atomic_inc(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
