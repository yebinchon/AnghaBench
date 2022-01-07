; ModuleID = '/home/carl/AnghaBench/linux/security/apparmor/extr_apparmorfs.c_p_start.c'
source_filename = "/home/carl/AnghaBench/linux/security/apparmor/extr_apparmorfs.c_p_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { %struct.aa_ns* }
%struct.aa_ns = type { i32, i32 }
%struct.aa_profile = type opaque

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.seq_file*, i64*)* @p_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @p_start(%struct.seq_file* %0, i64* %1) #0 {
  %3 = alloca %struct.seq_file*, align 8
  %4 = alloca i64*, align 8
  %5 = alloca %struct.aa_profile*, align 8
  %6 = alloca %struct.aa_ns*, align 8
  %7 = alloca i64, align 8
  store %struct.seq_file* %0, %struct.seq_file** %3, align 8
  store i64* %1, i64** %4, align 8
  store %struct.aa_profile* null, %struct.aa_profile** %5, align 8
  %8 = call %struct.aa_ns* (...) @aa_get_current_ns()
  store %struct.aa_ns* %8, %struct.aa_ns** %6, align 8
  %9 = load i64*, i64** %4, align 8
  %10 = load i64, i64* %9, align 8
  store i64 %10, i64* %7, align 8
  %11 = load %struct.aa_ns*, %struct.aa_ns** %6, align 8
  %12 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %13 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %12, i32 0, i32 0
  store %struct.aa_ns* %11, %struct.aa_ns** %13, align 8
  %14 = load %struct.aa_ns*, %struct.aa_ns** %6, align 8
  %15 = getelementptr inbounds %struct.aa_ns, %struct.aa_ns* %14, i32 0, i32 1
  %16 = load %struct.aa_ns*, %struct.aa_ns** %6, align 8
  %17 = getelementptr inbounds %struct.aa_ns, %struct.aa_ns* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @mutex_lock_nested(i32* %15, i32 %18)
  %20 = load %struct.aa_ns*, %struct.aa_ns** %6, align 8
  %21 = load %struct.aa_ns*, %struct.aa_ns** %6, align 8
  %22 = call i8* @__first_profile(%struct.aa_ns* %20, %struct.aa_ns* %21)
  %23 = bitcast i8* %22 to %struct.aa_profile*
  store %struct.aa_profile* %23, %struct.aa_profile** %5, align 8
  br label %24

24:                                               ; preds = %38, %2
  %25 = load %struct.aa_profile*, %struct.aa_profile** %5, align 8
  %26 = icmp ne %struct.aa_profile* %25, null
  br i1 %26, label %27, label %30

27:                                               ; preds = %24
  %28 = load i64, i64* %7, align 8
  %29 = icmp sgt i64 %28, 0
  br label %30

30:                                               ; preds = %27, %24
  %31 = phi i1 [ false, %24 ], [ %29, %27 ]
  br i1 %31, label %32, label %41

32:                                               ; preds = %30
  %33 = load %struct.aa_ns*, %struct.aa_ns** %6, align 8
  %34 = load %struct.aa_profile*, %struct.aa_profile** %5, align 8
  %35 = bitcast %struct.aa_profile* %34 to i8*
  %36 = call i8* @next_profile(%struct.aa_ns* %33, i8* %35)
  %37 = bitcast i8* %36 to %struct.aa_profile*
  store %struct.aa_profile* %37, %struct.aa_profile** %5, align 8
  br label %38

38:                                               ; preds = %32
  %39 = load i64, i64* %7, align 8
  %40 = add nsw i64 %39, -1
  store i64 %40, i64* %7, align 8
  br label %24

41:                                               ; preds = %30
  %42 = load %struct.aa_profile*, %struct.aa_profile** %5, align 8
  %43 = bitcast %struct.aa_profile* %42 to i8*
  ret i8* %43
}

declare dso_local %struct.aa_ns* @aa_get_current_ns(...) #1

declare dso_local i32 @mutex_lock_nested(i32*, i32) #1

declare dso_local i8* @__first_profile(%struct.aa_ns*, %struct.aa_ns*) #1

declare dso_local i8* @next_profile(%struct.aa_ns*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
