; ModuleID = '/home/carl/AnghaBench/linux/security/apparmor/extr_mount.c_match_mnt_flags.c'
source_filename = "/home/carl/AnghaBench/linux/security/apparmor/extr_mount.c_match_mnt_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aa_dfa = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.aa_dfa*, i32, i64)* @match_mnt_flags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @match_mnt_flags(%struct.aa_dfa* %0, i32 %1, i64 %2) #0 {
  %4 = alloca %struct.aa_dfa*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.aa_dfa* %0, %struct.aa_dfa** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  store i32 0, i32* %7, align 4
  br label %8

8:                                                ; preds = %25, %3
  %9 = load i32, i32* %7, align 4
  %10 = icmp ule i32 %9, 31
  br i1 %10, label %11, label %28

11:                                               ; preds = %8
  %12 = load i32, i32* %7, align 4
  %13 = shl i32 1, %12
  %14 = sext i32 %13 to i64
  %15 = load i64, i64* %6, align 8
  %16 = and i64 %14, %15
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %11
  %19 = load %struct.aa_dfa*, %struct.aa_dfa** %4, align 8
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* %7, align 4
  %22 = add i32 %21, 1
  %23 = call i32 @aa_dfa_next(%struct.aa_dfa* %19, i32 %20, i32 %22)
  store i32 %23, i32* %5, align 4
  br label %24

24:                                               ; preds = %18, %11
  br label %25

25:                                               ; preds = %24
  %26 = load i32, i32* %7, align 4
  %27 = add i32 %26, 1
  store i32 %27, i32* %7, align 4
  br label %8

28:                                               ; preds = %8
  %29 = load i32, i32* %5, align 4
  ret i32 %29
}

declare dso_local i32 @aa_dfa_next(%struct.aa_dfa*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
