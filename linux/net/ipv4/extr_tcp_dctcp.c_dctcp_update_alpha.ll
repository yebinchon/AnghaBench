; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_dctcp.c_dctcp_update_alpha.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_dctcp.c_dctcp_update_alpha.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.tcp_sock = type { i32, i32, i32 }
%struct.dctcp = type { i32, i32, i32, i32 }

@dctcp_shift_g = common dso_local global i32 0, align 4
@DCTCP_MAX_ALPHA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sock*, i32)* @dctcp_update_alpha to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dctcp_update_alpha(%struct.sock* %0, i32 %1) #0 {
  %3 = alloca %struct.sock*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.tcp_sock*, align 8
  %6 = alloca %struct.dctcp*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.sock*, %struct.sock** %3, align 8
  %11 = call %struct.tcp_sock* @tcp_sk(%struct.sock* %10)
  store %struct.tcp_sock* %11, %struct.tcp_sock** %5, align 8
  %12 = load %struct.sock*, %struct.sock** %3, align 8
  %13 = call %struct.dctcp* @inet_csk_ca(%struct.sock* %12)
  store %struct.dctcp* %13, %struct.dctcp** %6, align 8
  %14 = load %struct.tcp_sock*, %struct.tcp_sock** %5, align 8
  %15 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.dctcp*, %struct.dctcp** %6, align 8
  %18 = getelementptr inbounds %struct.dctcp, %struct.dctcp* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @before(i32 %16, i32 %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %74, label %22

22:                                               ; preds = %2
  %23 = load %struct.tcp_sock*, %struct.tcp_sock** %5, align 8
  %24 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.dctcp*, %struct.dctcp** %6, align 8
  %27 = getelementptr inbounds %struct.dctcp, %struct.dctcp* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = sub nsw i32 %25, %28
  store i32 %29, i32* %7, align 4
  %30 = load %struct.dctcp*, %struct.dctcp** %6, align 8
  %31 = getelementptr inbounds %struct.dctcp, %struct.dctcp* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %8, align 4
  %33 = load i32, i32* %8, align 4
  %34 = load i32, i32* %8, align 4
  %35 = load i32, i32* @dctcp_shift_g, align 4
  %36 = ashr i32 %34, %35
  %37 = call i64 @min_not_zero(i32 %33, i32 %36)
  %38 = load i32, i32* %8, align 4
  %39 = sext i32 %38 to i64
  %40 = sub nsw i64 %39, %37
  %41 = trunc i64 %40 to i32
  store i32 %41, i32* %8, align 4
  %42 = load i32, i32* %7, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %65

44:                                               ; preds = %22
  %45 = load %struct.tcp_sock*, %struct.tcp_sock** %5, align 8
  %46 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.dctcp*, %struct.dctcp** %6, align 8
  %49 = getelementptr inbounds %struct.dctcp, %struct.dctcp* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = sub nsw i32 %47, %50
  store i32 %51, i32* %9, align 4
  %52 = load i32, i32* @dctcp_shift_g, align 4
  %53 = sub nsw i32 10, %52
  %54 = load i32, i32* %7, align 4
  %55 = shl i32 %54, %53
  store i32 %55, i32* %7, align 4
  %56 = load i32, i32* %9, align 4
  %57 = call i32 @max(i32 1, i32 %56)
  %58 = load i32, i32* %7, align 4
  %59 = sdiv i32 %58, %57
  store i32 %59, i32* %7, align 4
  %60 = load i32, i32* %8, align 4
  %61 = load i32, i32* %7, align 4
  %62 = add nsw i32 %60, %61
  %63 = load i32, i32* @DCTCP_MAX_ALPHA, align 4
  %64 = call i32 @min(i32 %62, i32 %63)
  store i32 %64, i32* %8, align 4
  br label %65

65:                                               ; preds = %44, %22
  %66 = load %struct.dctcp*, %struct.dctcp** %6, align 8
  %67 = getelementptr inbounds %struct.dctcp, %struct.dctcp* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* %8, align 4
  %70 = call i32 @WRITE_ONCE(i32 %68, i32 %69)
  %71 = load %struct.tcp_sock*, %struct.tcp_sock** %5, align 8
  %72 = load %struct.dctcp*, %struct.dctcp** %6, align 8
  %73 = call i32 @dctcp_reset(%struct.tcp_sock* %71, %struct.dctcp* %72)
  br label %74

74:                                               ; preds = %65, %2
  ret void
}

declare dso_local %struct.tcp_sock* @tcp_sk(%struct.sock*) #1

declare dso_local %struct.dctcp* @inet_csk_ca(%struct.sock*) #1

declare dso_local i32 @before(i32, i32) #1

declare dso_local i64 @min_not_zero(i32, i32) #1

declare dso_local i32 @max(i32, i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @WRITE_ONCE(i32, i32) #1

declare dso_local i32 @dctcp_reset(%struct.tcp_sock*, %struct.dctcp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
