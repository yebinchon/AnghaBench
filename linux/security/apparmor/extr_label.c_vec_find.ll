; ModuleID = '/home/carl/AnghaBench/linux/security/apparmor/extr_label.c_vec_find.c'
source_filename = "/home/carl/AnghaBench/linux/security/apparmor/extr_label.c_vec_find.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aa_label = type { i32 }
%struct.aa_profile = type { i32 }
%struct.aa_labelset = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.aa_label* (%struct.aa_profile**, i32)* @vec_find to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.aa_label* @vec_find(%struct.aa_profile** %0, i32 %1) #0 {
  %3 = alloca %struct.aa_profile**, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.aa_labelset*, align 8
  %6 = alloca %struct.aa_label*, align 8
  %7 = alloca i64, align 8
  store %struct.aa_profile** %0, %struct.aa_profile*** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.aa_profile**, %struct.aa_profile*** %3, align 8
  %9 = icmp ne %struct.aa_profile** %8, null
  %10 = xor i1 %9, true
  %11 = zext i1 %10 to i32
  %12 = call i32 @AA_BUG(i32 %11)
  %13 = load %struct.aa_profile**, %struct.aa_profile*** %3, align 8
  %14 = load %struct.aa_profile*, %struct.aa_profile** %13, align 8
  %15 = icmp ne %struct.aa_profile* %14, null
  %16 = xor i1 %15, true
  %17 = zext i1 %16 to i32
  %18 = call i32 @AA_BUG(i32 %17)
  %19 = load i32, i32* %4, align 4
  %20 = icmp sle i32 %19, 0
  %21 = zext i1 %20 to i32
  %22 = call i32 @AA_BUG(i32 %21)
  %23 = load %struct.aa_profile**, %struct.aa_profile*** %3, align 8
  %24 = load i32, i32* %4, align 4
  %25 = call %struct.aa_labelset* @vec_labelset(%struct.aa_profile** %23, i32 %24)
  store %struct.aa_labelset* %25, %struct.aa_labelset** %5, align 8
  %26 = load %struct.aa_labelset*, %struct.aa_labelset** %5, align 8
  %27 = getelementptr inbounds %struct.aa_labelset, %struct.aa_labelset* %26, i32 0, i32 0
  %28 = load i64, i64* %7, align 8
  %29 = call i32 @read_lock_irqsave(i32* %27, i64 %28)
  %30 = load %struct.aa_profile**, %struct.aa_profile*** %3, align 8
  %31 = load i32, i32* %4, align 4
  %32 = call %struct.aa_label* @__vec_find(%struct.aa_profile** %30, i32 %31)
  store %struct.aa_label* %32, %struct.aa_label** %6, align 8
  %33 = load %struct.aa_labelset*, %struct.aa_labelset** %5, align 8
  %34 = getelementptr inbounds %struct.aa_labelset, %struct.aa_labelset* %33, i32 0, i32 0
  %35 = load i64, i64* %7, align 8
  %36 = call i32 @read_unlock_irqrestore(i32* %34, i64 %35)
  %37 = load %struct.aa_label*, %struct.aa_label** %6, align 8
  ret %struct.aa_label* %37
}

declare dso_local i32 @AA_BUG(i32) #1

declare dso_local %struct.aa_labelset* @vec_labelset(%struct.aa_profile**, i32) #1

declare dso_local i32 @read_lock_irqsave(i32*, i64) #1

declare dso_local %struct.aa_label* @__vec_find(%struct.aa_profile**, i32) #1

declare dso_local i32 @read_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
