; ModuleID = '/home/carl/AnghaBench/linux/net/strparser/extr_strparser.c_strp_abort_strp.c'
source_filename = "/home/carl/AnghaBench/linux/net/strparser/extr_strparser.c_strp_abort_strp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strparser = type { i32, %struct.sock*, i32 }
%struct.sock = type { i32, i32 (%struct.sock*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.strparser*, i32)* @strp_abort_strp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @strp_abort_strp(%struct.strparser* %0, i32 %1) #0 {
  %3 = alloca %struct.strparser*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.sock*, align 8
  store %struct.strparser* %0, %struct.strparser** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.strparser*, %struct.strparser** %3, align 8
  %7 = getelementptr inbounds %struct.strparser, %struct.strparser* %6, i32 0, i32 2
  %8 = call i32 @cancel_delayed_work(i32* %7)
  %9 = load %struct.strparser*, %struct.strparser** %3, align 8
  %10 = getelementptr inbounds %struct.strparser, %struct.strparser* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  br label %34

14:                                               ; preds = %2
  %15 = load %struct.strparser*, %struct.strparser** %3, align 8
  %16 = getelementptr inbounds %struct.strparser, %struct.strparser* %15, i32 0, i32 0
  store i32 1, i32* %16, align 8
  %17 = load %struct.strparser*, %struct.strparser** %3, align 8
  %18 = getelementptr inbounds %struct.strparser, %struct.strparser* %17, i32 0, i32 1
  %19 = load %struct.sock*, %struct.sock** %18, align 8
  %20 = icmp ne %struct.sock* %19, null
  br i1 %20, label %21, label %34

21:                                               ; preds = %14
  %22 = load %struct.strparser*, %struct.strparser** %3, align 8
  %23 = getelementptr inbounds %struct.strparser, %struct.strparser* %22, i32 0, i32 1
  %24 = load %struct.sock*, %struct.sock** %23, align 8
  store %struct.sock* %24, %struct.sock** %5, align 8
  %25 = load i32, i32* %4, align 4
  %26 = sub nsw i32 0, %25
  %27 = load %struct.sock*, %struct.sock** %5, align 8
  %28 = getelementptr inbounds %struct.sock, %struct.sock* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 8
  %29 = load %struct.sock*, %struct.sock** %5, align 8
  %30 = getelementptr inbounds %struct.sock, %struct.sock* %29, i32 0, i32 1
  %31 = load i32 (%struct.sock*)*, i32 (%struct.sock*)** %30, align 8
  %32 = load %struct.sock*, %struct.sock** %5, align 8
  %33 = call i32 %31(%struct.sock* %32)
  br label %34

34:                                               ; preds = %13, %21, %14
  ret void
}

declare dso_local i32 @cancel_delayed_work(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
