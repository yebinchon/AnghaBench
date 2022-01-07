; ModuleID = '/home/carl/AnghaBench/linux/lib/reed_solomon/extr_test_rslib.c_free_ws.c'
source_filename = "/home/carl/AnghaBench/linux/lib/reed_solomon/extr_test_rslib.c_free_ws.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wspace = type { %struct.wspace*, %struct.wspace* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wspace*)* @free_ws to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @free_ws(%struct.wspace* %0) #0 {
  %2 = alloca %struct.wspace*, align 8
  store %struct.wspace* %0, %struct.wspace** %2, align 8
  %3 = load %struct.wspace*, %struct.wspace** %2, align 8
  %4 = icmp ne %struct.wspace* %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  br label %17

6:                                                ; preds = %1
  %7 = load %struct.wspace*, %struct.wspace** %2, align 8
  %8 = getelementptr inbounds %struct.wspace, %struct.wspace* %7, i32 0, i32 1
  %9 = load %struct.wspace*, %struct.wspace** %8, align 8
  %10 = call i32 @kfree(%struct.wspace* %9)
  %11 = load %struct.wspace*, %struct.wspace** %2, align 8
  %12 = getelementptr inbounds %struct.wspace, %struct.wspace* %11, i32 0, i32 0
  %13 = load %struct.wspace*, %struct.wspace** %12, align 8
  %14 = call i32 @kfree(%struct.wspace* %13)
  %15 = load %struct.wspace*, %struct.wspace** %2, align 8
  %16 = call i32 @kfree(%struct.wspace* %15)
  br label %17

17:                                               ; preds = %6, %5
  ret void
}

declare dso_local i32 @kfree(%struct.wspace*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
