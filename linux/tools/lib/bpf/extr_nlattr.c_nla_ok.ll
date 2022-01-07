; ModuleID = '/home/carl/AnghaBench/linux/tools/lib/bpf/extr_nlattr.c_nla_ok.c'
source_filename = "/home/carl/AnghaBench/linux/tools/lib/bpf/extr_nlattr.c_nla_ok.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nlattr = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nlattr*, i32)* @nla_ok to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nla_ok(%struct.nlattr* %0, i32 %1) #0 {
  %3 = alloca %struct.nlattr*, align 8
  %4 = alloca i32, align 4
  store %struct.nlattr* %0, %struct.nlattr** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = sext i32 %5 to i64
  %7 = icmp uge i64 %6, 4
  br i1 %7, label %8, label %20

8:                                                ; preds = %2
  %9 = load %struct.nlattr*, %struct.nlattr** %3, align 8
  %10 = getelementptr inbounds %struct.nlattr, %struct.nlattr* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = sext i32 %11 to i64
  %13 = icmp uge i64 %12, 4
  br i1 %13, label %14, label %20

14:                                               ; preds = %8
  %15 = load %struct.nlattr*, %struct.nlattr** %3, align 8
  %16 = getelementptr inbounds %struct.nlattr, %struct.nlattr* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* %4, align 4
  %19 = icmp sle i32 %17, %18
  br label %20

20:                                               ; preds = %14, %8, %2
  %21 = phi i1 [ false, %8 ], [ false, %2 ], [ %19, %14 ]
  %22 = zext i1 %21 to i32
  ret i32 %22
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
