; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_sch_htb.c_htb_accnt_tokens.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_sch_htb.c_htb_accnt_tokens.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.htb_class = type { i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.htb_class*, i32, i32)* @htb_accnt_tokens to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @htb_accnt_tokens(%struct.htb_class* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.htb_class*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.htb_class* %0, %struct.htb_class** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* %6, align 4
  %9 = load %struct.htb_class*, %struct.htb_class** %4, align 8
  %10 = getelementptr inbounds %struct.htb_class, %struct.htb_class* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = add nsw i32 %8, %11
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* %7, align 4
  %14 = load %struct.htb_class*, %struct.htb_class** %4, align 8
  %15 = getelementptr inbounds %struct.htb_class, %struct.htb_class* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = icmp sgt i32 %13, %16
  br i1 %17, label %18, label %22

18:                                               ; preds = %3
  %19 = load %struct.htb_class*, %struct.htb_class** %4, align 8
  %20 = getelementptr inbounds %struct.htb_class, %struct.htb_class* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %7, align 4
  br label %22

22:                                               ; preds = %18, %3
  %23 = load %struct.htb_class*, %struct.htb_class** %4, align 8
  %24 = getelementptr inbounds %struct.htb_class, %struct.htb_class* %23, i32 0, i32 3
  %25 = load i32, i32* %5, align 4
  %26 = call i64 @psched_l2t_ns(i32* %24, i32 %25)
  %27 = trunc i64 %26 to i32
  %28 = load i32, i32* %7, align 4
  %29 = sub nsw i32 %28, %27
  store i32 %29, i32* %7, align 4
  %30 = load i32, i32* %7, align 4
  %31 = load %struct.htb_class*, %struct.htb_class** %4, align 8
  %32 = getelementptr inbounds %struct.htb_class, %struct.htb_class* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = sub nsw i32 0, %33
  %35 = icmp sle i32 %30, %34
  br i1 %35, label %36, label %41

36:                                               ; preds = %22
  %37 = load %struct.htb_class*, %struct.htb_class** %4, align 8
  %38 = getelementptr inbounds %struct.htb_class, %struct.htb_class* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = sub nsw i32 1, %39
  store i32 %40, i32* %7, align 4
  br label %41

41:                                               ; preds = %36, %22
  %42 = load i32, i32* %7, align 4
  %43 = load %struct.htb_class*, %struct.htb_class** %4, align 8
  %44 = getelementptr inbounds %struct.htb_class, %struct.htb_class* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 4
  ret void
}

declare dso_local i64 @psched_l2t_ns(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
