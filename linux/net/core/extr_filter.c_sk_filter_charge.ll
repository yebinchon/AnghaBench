; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_filter.c_sk_filter_charge.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_filter.c_sk_filter_charge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.sk_filter = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sk_filter_charge(%struct.sock* %0, %struct.sk_filter* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sock*, align 8
  %5 = alloca %struct.sk_filter*, align 8
  store %struct.sock* %0, %struct.sock** %4, align 8
  store %struct.sk_filter* %1, %struct.sk_filter** %5, align 8
  %6 = load %struct.sk_filter*, %struct.sk_filter** %5, align 8
  %7 = getelementptr inbounds %struct.sk_filter, %struct.sk_filter* %6, i32 0, i32 0
  %8 = call i32 @refcount_inc_not_zero(i32* %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %20

11:                                               ; preds = %2
  %12 = load %struct.sock*, %struct.sock** %4, align 8
  %13 = load %struct.sk_filter*, %struct.sk_filter** %5, align 8
  %14 = call i32 @__sk_filter_charge(%struct.sock* %12, %struct.sk_filter* %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %11
  %17 = load %struct.sk_filter*, %struct.sk_filter** %5, align 8
  %18 = call i32 @sk_filter_release(%struct.sk_filter* %17)
  store i32 0, i32* %3, align 4
  br label %20

19:                                               ; preds = %11
  store i32 1, i32* %3, align 4
  br label %20

20:                                               ; preds = %19, %16, %10
  %21 = load i32, i32* %3, align 4
  ret i32 %21
}

declare dso_local i32 @refcount_inc_not_zero(i32*) #1

declare dso_local i32 @__sk_filter_charge(%struct.sock*, %struct.sk_filter*) #1

declare dso_local i32 @sk_filter_release(%struct.sk_filter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
