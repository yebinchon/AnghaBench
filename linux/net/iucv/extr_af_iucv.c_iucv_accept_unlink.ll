; ModuleID = '/home/carl/AnghaBench/linux/net/iucv/extr_af_iucv.c_iucv_accept_unlink.c'
source_filename = "/home/carl/AnghaBench/linux/net/iucv/extr_af_iucv.c_iucv_accept_unlink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.iucv_sock = type { %struct.sock*, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @iucv_accept_unlink(%struct.sock* %0) #0 {
  %2 = alloca %struct.sock*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.iucv_sock*, align 8
  store %struct.sock* %0, %struct.sock** %2, align 8
  %5 = load %struct.sock*, %struct.sock** %2, align 8
  %6 = call %struct.iucv_sock* @iucv_sk(%struct.sock* %5)
  %7 = getelementptr inbounds %struct.iucv_sock, %struct.iucv_sock* %6, i32 0, i32 0
  %8 = load %struct.sock*, %struct.sock** %7, align 8
  %9 = call %struct.iucv_sock* @iucv_sk(%struct.sock* %8)
  store %struct.iucv_sock* %9, %struct.iucv_sock** %4, align 8
  %10 = load %struct.iucv_sock*, %struct.iucv_sock** %4, align 8
  %11 = getelementptr inbounds %struct.iucv_sock, %struct.iucv_sock* %10, i32 0, i32 1
  %12 = load i64, i64* %3, align 8
  %13 = call i32 @spin_lock_irqsave(i32* %11, i64 %12)
  %14 = load %struct.sock*, %struct.sock** %2, align 8
  %15 = call %struct.iucv_sock* @iucv_sk(%struct.sock* %14)
  %16 = getelementptr inbounds %struct.iucv_sock, %struct.iucv_sock* %15, i32 0, i32 2
  %17 = call i32 @list_del_init(i32* %16)
  %18 = load %struct.iucv_sock*, %struct.iucv_sock** %4, align 8
  %19 = getelementptr inbounds %struct.iucv_sock, %struct.iucv_sock* %18, i32 0, i32 1
  %20 = load i64, i64* %3, align 8
  %21 = call i32 @spin_unlock_irqrestore(i32* %19, i64 %20)
  %22 = load %struct.sock*, %struct.sock** %2, align 8
  %23 = call %struct.iucv_sock* @iucv_sk(%struct.sock* %22)
  %24 = getelementptr inbounds %struct.iucv_sock, %struct.iucv_sock* %23, i32 0, i32 0
  %25 = load %struct.sock*, %struct.sock** %24, align 8
  %26 = call i32 @sk_acceptq_removed(%struct.sock* %25)
  %27 = load %struct.sock*, %struct.sock** %2, align 8
  %28 = call %struct.iucv_sock* @iucv_sk(%struct.sock* %27)
  %29 = getelementptr inbounds %struct.iucv_sock, %struct.iucv_sock* %28, i32 0, i32 0
  store %struct.sock* null, %struct.sock** %29, align 8
  %30 = load %struct.sock*, %struct.sock** %2, align 8
  %31 = call i32 @sock_put(%struct.sock* %30)
  ret void
}

declare dso_local %struct.iucv_sock* @iucv_sk(%struct.sock*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @sk_acceptq_removed(%struct.sock*) #1

declare dso_local i32 @sock_put(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
