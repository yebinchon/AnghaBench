; ModuleID = '/home/carl/AnghaBench/linux/security/apparmor/extr_label.c_label_cmp.c'
source_filename = "/home/carl/AnghaBench/linux/security/apparmor/extr_label.c_label_cmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aa_label = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.aa_label*, %struct.aa_label*)* @label_cmp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @label_cmp(%struct.aa_label* %0, %struct.aa_label* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.aa_label*, align 8
  %5 = alloca %struct.aa_label*, align 8
  store %struct.aa_label* %0, %struct.aa_label** %4, align 8
  store %struct.aa_label* %1, %struct.aa_label** %5, align 8
  %6 = load %struct.aa_label*, %struct.aa_label** %5, align 8
  %7 = icmp ne %struct.aa_label* %6, null
  %8 = xor i1 %7, true
  %9 = zext i1 %8 to i32
  %10 = call i32 @AA_BUG(i32 %9)
  %11 = load %struct.aa_label*, %struct.aa_label** %4, align 8
  %12 = load %struct.aa_label*, %struct.aa_label** %5, align 8
  %13 = icmp eq %struct.aa_label* %11, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %29

15:                                               ; preds = %2
  %16 = load %struct.aa_label*, %struct.aa_label** %4, align 8
  %17 = getelementptr inbounds %struct.aa_label, %struct.aa_label* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.aa_label*, %struct.aa_label** %4, align 8
  %20 = getelementptr inbounds %struct.aa_label, %struct.aa_label* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.aa_label*, %struct.aa_label** %5, align 8
  %23 = getelementptr inbounds %struct.aa_label, %struct.aa_label* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.aa_label*, %struct.aa_label** %5, align 8
  %26 = getelementptr inbounds %struct.aa_label, %struct.aa_label* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @vec_cmp(i32 %18, i32 %21, i32 %24, i32 %27)
  store i32 %28, i32* %3, align 4
  br label %29

29:                                               ; preds = %15, %14
  %30 = load i32, i32* %3, align 4
  ret i32 %30
}

declare dso_local i32 @AA_BUG(i32) #1

declare dso_local i32 @vec_cmp(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
