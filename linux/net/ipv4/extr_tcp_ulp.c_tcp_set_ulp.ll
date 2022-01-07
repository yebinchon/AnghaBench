; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_ulp.c_tcp_set_ulp.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_ulp.c_tcp_set_ulp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.tcp_ulp_ops = type { i32 }

@ENOENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tcp_set_ulp(%struct.sock* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sock*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.tcp_ulp_ops*, align 8
  store %struct.sock* %0, %struct.sock** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load %struct.sock*, %struct.sock** %4, align 8
  %8 = call i32 @sock_owned_by_me(%struct.sock* %7)
  %9 = load i8*, i8** %5, align 8
  %10 = call %struct.tcp_ulp_ops* @__tcp_ulp_find_autoload(i8* %9)
  store %struct.tcp_ulp_ops* %10, %struct.tcp_ulp_ops** %6, align 8
  %11 = load %struct.tcp_ulp_ops*, %struct.tcp_ulp_ops** %6, align 8
  %12 = icmp ne %struct.tcp_ulp_ops* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* @ENOENT, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %20

16:                                               ; preds = %2
  %17 = load %struct.sock*, %struct.sock** %4, align 8
  %18 = load %struct.tcp_ulp_ops*, %struct.tcp_ulp_ops** %6, align 8
  %19 = call i32 @__tcp_set_ulp(%struct.sock* %17, %struct.tcp_ulp_ops* %18)
  store i32 %19, i32* %3, align 4
  br label %20

20:                                               ; preds = %16, %13
  %21 = load i32, i32* %3, align 4
  ret i32 %21
}

declare dso_local i32 @sock_owned_by_me(%struct.sock*) #1

declare dso_local %struct.tcp_ulp_ops* @__tcp_ulp_find_autoload(i8*) #1

declare dso_local i32 @__tcp_set_ulp(%struct.sock*, %struct.tcp_ulp_ops*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
