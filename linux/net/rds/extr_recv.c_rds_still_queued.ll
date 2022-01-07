; ModuleID = '/home/carl/AnghaBench/linux/net/rds/extr_recv.c_rds_still_queued.c'
source_filename = "/home/carl/AnghaBench/linux/net/rds/extr_recv.c_rds_still_queued.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rds_sock = type { i32 }
%struct.rds_incoming = type { i32, %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.sock = type { i32 }

@.str = private unnamed_addr constant [34 x i8] c"inc %p rs %p still %d dropped %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rds_sock*, %struct.rds_incoming*, i32)* @rds_still_queued to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rds_still_queued(%struct.rds_sock* %0, %struct.rds_incoming* %1, i32 %2) #0 {
  %4 = alloca %struct.rds_sock*, align 8
  %5 = alloca %struct.rds_incoming*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.sock*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.rds_sock* %0, %struct.rds_sock** %4, align 8
  store %struct.rds_incoming* %1, %struct.rds_incoming** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.rds_sock*, %struct.rds_sock** %4, align 8
  %11 = call %struct.sock* @rds_rs_to_sk(%struct.rds_sock* %10)
  store %struct.sock* %11, %struct.sock** %7, align 8
  store i32 0, i32* %8, align 4
  %12 = load %struct.rds_sock*, %struct.rds_sock** %4, align 8
  %13 = getelementptr inbounds %struct.rds_sock, %struct.rds_sock* %12, i32 0, i32 0
  %14 = load i64, i64* %9, align 8
  %15 = call i32 @write_lock_irqsave(i32* %13, i64 %14)
  %16 = load %struct.rds_incoming*, %struct.rds_incoming** %5, align 8
  %17 = getelementptr inbounds %struct.rds_incoming, %struct.rds_incoming* %16, i32 0, i32 0
  %18 = call i32 @list_empty(i32* %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %48, label %20

20:                                               ; preds = %3
  store i32 1, i32* %8, align 4
  %21 = load i32, i32* %6, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %47

23:                                               ; preds = %20
  %24 = load %struct.rds_sock*, %struct.rds_sock** %4, align 8
  %25 = load %struct.sock*, %struct.sock** %7, align 8
  %26 = load %struct.rds_incoming*, %struct.rds_incoming** %5, align 8
  %27 = getelementptr inbounds %struct.rds_incoming, %struct.rds_incoming* %26, i32 0, i32 2
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.rds_incoming*, %struct.rds_incoming** %5, align 8
  %32 = getelementptr inbounds %struct.rds_incoming, %struct.rds_incoming* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @be32_to_cpu(i32 %34)
  %36 = sub nsw i32 0, %35
  %37 = load %struct.rds_incoming*, %struct.rds_incoming** %5, align 8
  %38 = getelementptr inbounds %struct.rds_incoming, %struct.rds_incoming* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @rds_recv_rcvbuf_delta(%struct.rds_sock* %24, %struct.sock* %25, i32 %30, i32 %36, i32 %40)
  %42 = load %struct.rds_incoming*, %struct.rds_incoming** %5, align 8
  %43 = getelementptr inbounds %struct.rds_incoming, %struct.rds_incoming* %42, i32 0, i32 0
  %44 = call i32 @list_del_init(i32* %43)
  %45 = load %struct.rds_incoming*, %struct.rds_incoming** %5, align 8
  %46 = call i32 @rds_inc_put(%struct.rds_incoming* %45)
  br label %47

47:                                               ; preds = %23, %20
  br label %48

48:                                               ; preds = %47, %3
  %49 = load %struct.rds_sock*, %struct.rds_sock** %4, align 8
  %50 = getelementptr inbounds %struct.rds_sock, %struct.rds_sock* %49, i32 0, i32 0
  %51 = load i64, i64* %9, align 8
  %52 = call i32 @write_unlock_irqrestore(i32* %50, i64 %51)
  %53 = load %struct.rds_incoming*, %struct.rds_incoming** %5, align 8
  %54 = load %struct.rds_sock*, %struct.rds_sock** %4, align 8
  %55 = load i32, i32* %8, align 4
  %56 = load i32, i32* %6, align 4
  %57 = call i32 @rdsdebug(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), %struct.rds_incoming* %53, %struct.rds_sock* %54, i32 %55, i32 %56)
  %58 = load i32, i32* %8, align 4
  ret i32 %58
}

declare dso_local %struct.sock* @rds_rs_to_sk(%struct.rds_sock*) #1

declare dso_local i32 @write_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @rds_recv_rcvbuf_delta(%struct.rds_sock*, %struct.sock*, i32, i32, i32) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @rds_inc_put(%struct.rds_incoming*) #1

declare dso_local i32 @write_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @rdsdebug(i8*, %struct.rds_incoming*, %struct.rds_sock*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
