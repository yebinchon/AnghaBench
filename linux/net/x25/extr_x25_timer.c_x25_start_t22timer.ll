; ModuleID = '/home/carl/AnghaBench/linux/net/x25/extr_x25_timer.c_x25_start_t22timer.c'
source_filename = "/home/carl/AnghaBench/linux/net/x25/extr_x25_timer.c_x25_start_t22timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.x25_sock = type { i64, i32 }

@jiffies = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @x25_start_t22timer(%struct.sock* %0) #0 {
  %2 = alloca %struct.sock*, align 8
  %3 = alloca %struct.x25_sock*, align 8
  store %struct.sock* %0, %struct.sock** %2, align 8
  %4 = load %struct.sock*, %struct.sock** %2, align 8
  %5 = call %struct.x25_sock* @x25_sk(%struct.sock* %4)
  store %struct.x25_sock* %5, %struct.x25_sock** %3, align 8
  %6 = load %struct.x25_sock*, %struct.x25_sock** %3, align 8
  %7 = getelementptr inbounds %struct.x25_sock, %struct.x25_sock* %6, i32 0, i32 1
  %8 = load i64, i64* @jiffies, align 8
  %9 = load %struct.x25_sock*, %struct.x25_sock** %3, align 8
  %10 = getelementptr inbounds %struct.x25_sock, %struct.x25_sock* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = add nsw i64 %8, %11
  %13 = call i32 @mod_timer(i32* %7, i64 %12)
  ret void
}

declare dso_local %struct.x25_sock* @x25_sk(%struct.sock*) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
