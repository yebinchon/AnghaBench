; ModuleID = '/home/carl/AnghaBench/linux/security/apparmor/extr_apparmorfs.c_p_stop.c'
source_filename = "/home/carl/AnghaBench/linux/security/apparmor/extr_apparmorfs.c_p_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { %struct.aa_ns* }
%struct.aa_ns = type { i32, %struct.aa_ns* }
%struct.aa_profile = type { %struct.aa_ns* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.seq_file*, i8*)* @p_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @p_stop(%struct.seq_file* %0, i8* %1) #0 {
  %3 = alloca %struct.seq_file*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.aa_profile*, align 8
  %6 = alloca %struct.aa_ns*, align 8
  %7 = alloca %struct.aa_ns*, align 8
  store %struct.seq_file* %0, %struct.seq_file** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.aa_profile*
  store %struct.aa_profile* %9, %struct.aa_profile** %5, align 8
  %10 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %11 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %10, i32 0, i32 0
  %12 = load %struct.aa_ns*, %struct.aa_ns** %11, align 8
  store %struct.aa_ns* %12, %struct.aa_ns** %6, align 8
  %13 = load %struct.aa_profile*, %struct.aa_profile** %5, align 8
  %14 = icmp ne %struct.aa_profile* %13, null
  br i1 %14, label %15, label %37

15:                                               ; preds = %2
  %16 = load %struct.aa_profile*, %struct.aa_profile** %5, align 8
  %17 = getelementptr inbounds %struct.aa_profile, %struct.aa_profile* %16, i32 0, i32 0
  %18 = load %struct.aa_ns*, %struct.aa_ns** %17, align 8
  store %struct.aa_ns* %18, %struct.aa_ns** %7, align 8
  br label %19

19:                                               ; preds = %32, %15
  %20 = load %struct.aa_ns*, %struct.aa_ns** %7, align 8
  %21 = icmp ne %struct.aa_ns* %20, null
  br i1 %21, label %22, label %26

22:                                               ; preds = %19
  %23 = load %struct.aa_ns*, %struct.aa_ns** %7, align 8
  %24 = load %struct.aa_ns*, %struct.aa_ns** %6, align 8
  %25 = icmp ne %struct.aa_ns* %23, %24
  br label %26

26:                                               ; preds = %22, %19
  %27 = phi i1 [ false, %19 ], [ %25, %22 ]
  br i1 %27, label %28, label %36

28:                                               ; preds = %26
  %29 = load %struct.aa_ns*, %struct.aa_ns** %7, align 8
  %30 = getelementptr inbounds %struct.aa_ns, %struct.aa_ns* %29, i32 0, i32 0
  %31 = call i32 @mutex_unlock(i32* %30)
  br label %32

32:                                               ; preds = %28
  %33 = load %struct.aa_ns*, %struct.aa_ns** %7, align 8
  %34 = getelementptr inbounds %struct.aa_ns, %struct.aa_ns* %33, i32 0, i32 1
  %35 = load %struct.aa_ns*, %struct.aa_ns** %34, align 8
  store %struct.aa_ns* %35, %struct.aa_ns** %7, align 8
  br label %19

36:                                               ; preds = %26
  br label %37

37:                                               ; preds = %36, %2
  %38 = load %struct.aa_ns*, %struct.aa_ns** %6, align 8
  %39 = getelementptr inbounds %struct.aa_ns, %struct.aa_ns* %38, i32 0, i32 0
  %40 = call i32 @mutex_unlock(i32* %39)
  %41 = load %struct.aa_ns*, %struct.aa_ns** %6, align 8
  %42 = call i32 @aa_put_ns(%struct.aa_ns* %41)
  ret void
}

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @aa_put_ns(%struct.aa_ns*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
