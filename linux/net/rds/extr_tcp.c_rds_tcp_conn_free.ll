; ModuleID = '/home/carl/AnghaBench/linux/net/rds/extr_tcp.c_rds_tcp_conn_free.c'
source_filename = "/home/carl/AnghaBench/linux/net/rds/extr_tcp.c_rds_tcp_conn_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rds_tcp_connection = type { i32, i32 }

@.str = private unnamed_addr constant [15 x i8] c"freeing tc %p\0A\00", align 1
@rds_tcp_conn_lock = common dso_local global i32 0, align 4
@rds_tcp_conn_slab = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @rds_tcp_conn_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rds_tcp_conn_free(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.rds_tcp_connection*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = bitcast i8* %5 to %struct.rds_tcp_connection*
  store %struct.rds_tcp_connection* %6, %struct.rds_tcp_connection** %3, align 8
  %7 = load %struct.rds_tcp_connection*, %struct.rds_tcp_connection** %3, align 8
  %8 = call i32 @rdsdebug(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), %struct.rds_tcp_connection* %7)
  %9 = load i64, i64* %4, align 8
  %10 = call i32 @spin_lock_irqsave(i32* @rds_tcp_conn_lock, i64 %9)
  %11 = load %struct.rds_tcp_connection*, %struct.rds_tcp_connection** %3, align 8
  %12 = getelementptr inbounds %struct.rds_tcp_connection, %struct.rds_tcp_connection* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %19, label %15

15:                                               ; preds = %1
  %16 = load %struct.rds_tcp_connection*, %struct.rds_tcp_connection** %3, align 8
  %17 = getelementptr inbounds %struct.rds_tcp_connection, %struct.rds_tcp_connection* %16, i32 0, i32 0
  %18 = call i32 @list_del(i32* %17)
  br label %19

19:                                               ; preds = %15, %1
  %20 = load i64, i64* %4, align 8
  %21 = call i32 @spin_unlock_irqrestore(i32* @rds_tcp_conn_lock, i64 %20)
  %22 = load i32, i32* @rds_tcp_conn_slab, align 4
  %23 = load %struct.rds_tcp_connection*, %struct.rds_tcp_connection** %3, align 8
  %24 = call i32 @kmem_cache_free(i32 %22, %struct.rds_tcp_connection* %23)
  ret void
}

declare dso_local i32 @rdsdebug(i8*, %struct.rds_tcp_connection*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @kmem_cache_free(i32, %struct.rds_tcp_connection*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
