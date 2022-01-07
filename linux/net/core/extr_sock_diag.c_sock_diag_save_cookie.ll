; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_sock_diag.c_sock_diag_save_cookie.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_sock_diag.c_sock_diag_save_cookie.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sock_diag_save_cookie(%struct.sock* %0, i64* %1) #0 {
  %3 = alloca %struct.sock*, align 8
  %4 = alloca i64*, align 8
  %5 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %3, align 8
  store i64* %1, i64** %4, align 8
  %6 = load %struct.sock*, %struct.sock** %3, align 8
  %7 = call i32 @sock_gen_cookie(%struct.sock* %6)
  store i32 %7, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = sext i32 %8 to i64
  %10 = load i64*, i64** %4, align 8
  %11 = getelementptr inbounds i64, i64* %10, i64 0
  store i64 %9, i64* %11, align 8
  %12 = load i32, i32* %5, align 4
  %13 = ashr i32 %12, 32
  %14 = sext i32 %13 to i64
  %15 = load i64*, i64** %4, align 8
  %16 = getelementptr inbounds i64, i64* %15, i64 1
  store i64 %14, i64* %16, align 8
  ret void
}

declare dso_local i32 @sock_gen_cookie(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
