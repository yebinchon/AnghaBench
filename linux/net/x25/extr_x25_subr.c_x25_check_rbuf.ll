; ModuleID = '/home/carl/AnghaBench/linux/net/x25/extr_x25_subr.c_x25_check_rbuf.c'
source_filename = "/home/carl/AnghaBench/linux/net/x25/extr_x25_subr.c_x25_check_rbuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32, i32 }
%struct.x25_sock = type { i32, i32, i32 }

@X25_COND_OWN_RX_BUSY = common dso_local global i32 0, align 4
@X25_COND_ACK_PENDING = common dso_local global i32 0, align 4
@X25_RR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @x25_check_rbuf(%struct.sock* %0) #0 {
  %2 = alloca %struct.sock*, align 8
  %3 = alloca %struct.x25_sock*, align 8
  store %struct.sock* %0, %struct.sock** %2, align 8
  %4 = load %struct.sock*, %struct.sock** %2, align 8
  %5 = call %struct.x25_sock* @x25_sk(%struct.sock* %4)
  store %struct.x25_sock* %5, %struct.x25_sock** %3, align 8
  %6 = load %struct.sock*, %struct.sock** %2, align 8
  %7 = getelementptr inbounds %struct.sock, %struct.sock* %6, i32 0, i32 1
  %8 = call i32 @atomic_read(i32* %7)
  %9 = load %struct.sock*, %struct.sock** %2, align 8
  %10 = getelementptr inbounds %struct.sock, %struct.sock* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = ashr i32 %11, 1
  %13 = icmp slt i32 %8, %12
  br i1 %13, label %14, label %44

14:                                               ; preds = %1
  %15 = load %struct.x25_sock*, %struct.x25_sock** %3, align 8
  %16 = getelementptr inbounds %struct.x25_sock, %struct.x25_sock* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @X25_COND_OWN_RX_BUSY, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %44

21:                                               ; preds = %14
  %22 = load i32, i32* @X25_COND_OWN_RX_BUSY, align 4
  %23 = xor i32 %22, -1
  %24 = load %struct.x25_sock*, %struct.x25_sock** %3, align 8
  %25 = getelementptr inbounds %struct.x25_sock, %struct.x25_sock* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = and i32 %26, %23
  store i32 %27, i32* %25, align 4
  %28 = load i32, i32* @X25_COND_ACK_PENDING, align 4
  %29 = xor i32 %28, -1
  %30 = load %struct.x25_sock*, %struct.x25_sock** %3, align 8
  %31 = getelementptr inbounds %struct.x25_sock, %struct.x25_sock* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = and i32 %32, %29
  store i32 %33, i32* %31, align 4
  %34 = load %struct.x25_sock*, %struct.x25_sock** %3, align 8
  %35 = getelementptr inbounds %struct.x25_sock, %struct.x25_sock* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.x25_sock*, %struct.x25_sock** %3, align 8
  %38 = getelementptr inbounds %struct.x25_sock, %struct.x25_sock* %37, i32 0, i32 2
  store i32 %36, i32* %38, align 4
  %39 = load %struct.sock*, %struct.sock** %2, align 8
  %40 = load i32, i32* @X25_RR, align 4
  %41 = call i32 @x25_write_internal(%struct.sock* %39, i32 %40)
  %42 = load %struct.sock*, %struct.sock** %2, align 8
  %43 = call i32 @x25_stop_timer(%struct.sock* %42)
  br label %44

44:                                               ; preds = %21, %14, %1
  ret void
}

declare dso_local %struct.x25_sock* @x25_sk(%struct.sock*) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @x25_write_internal(%struct.sock*, i32) #1

declare dso_local i32 @x25_stop_timer(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
