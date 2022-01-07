; ModuleID = '/home/carl/AnghaBench/linux/net/rds/extr_connection.c_rds_conn_destroy.c'
source_filename = "/home/carl/AnghaBench/linux/net/rds/extr_connection.c_rds_conn_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rds_connection = type { %struct.rds_conn_path*, i32, i32, i32, %struct.TYPE_2__* }
%struct.rds_conn_path = type { i32 }
%struct.TYPE_2__ = type { i64 }

@RDS_MPATH_WORKERS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"freeing conn %p for %pI4 -> %pI4\0A\00", align 1
@rds_conn_lock = common dso_local global i32 0, align 4
@rds_conn_slab = common dso_local global i32 0, align 4
@rds_conn_count = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rds_conn_destroy(%struct.rds_connection* %0) #0 {
  %2 = alloca %struct.rds_connection*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.rds_conn_path*, align 8
  %6 = alloca i32, align 4
  store %struct.rds_connection* %0, %struct.rds_connection** %2, align 8
  %7 = load %struct.rds_connection*, %struct.rds_connection** %2, align 8
  %8 = getelementptr inbounds %struct.rds_connection, %struct.rds_connection* %7, i32 0, i32 4
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  %14 = load i32, i32* @RDS_MPATH_WORKERS, align 4
  br label %16

15:                                               ; preds = %1
  br label %16

16:                                               ; preds = %15, %13
  %17 = phi i32 [ %14, %13 ], [ 1, %15 ]
  store i32 %17, i32* %6, align 4
  %18 = load %struct.rds_connection*, %struct.rds_connection** %2, align 8
  %19 = load %struct.rds_connection*, %struct.rds_connection** %2, align 8
  %20 = getelementptr inbounds %struct.rds_connection, %struct.rds_connection* %19, i32 0, i32 3
  %21 = load %struct.rds_connection*, %struct.rds_connection** %2, align 8
  %22 = getelementptr inbounds %struct.rds_connection, %struct.rds_connection* %21, i32 0, i32 2
  %23 = call i32 @rdsdebug(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), %struct.rds_connection* %18, i32* %20, i32* %22)
  %24 = call i32 @spin_lock_irq(i32* @rds_conn_lock)
  %25 = load %struct.rds_connection*, %struct.rds_connection** %2, align 8
  %26 = getelementptr inbounds %struct.rds_connection, %struct.rds_connection* %25, i32 0, i32 1
  %27 = call i32 @hlist_del_init_rcu(i32* %26)
  %28 = call i32 @spin_unlock_irq(i32* @rds_conn_lock)
  %29 = call i32 (...) @synchronize_rcu()
  store i32 0, i32* %4, align 4
  br label %30

30:                                               ; preds = %50, %16
  %31 = load i32, i32* %4, align 4
  %32 = load i32, i32* %6, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %53

34:                                               ; preds = %30
  %35 = load %struct.rds_connection*, %struct.rds_connection** %2, align 8
  %36 = getelementptr inbounds %struct.rds_connection, %struct.rds_connection* %35, i32 0, i32 0
  %37 = load %struct.rds_conn_path*, %struct.rds_conn_path** %36, align 8
  %38 = load i32, i32* %4, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.rds_conn_path, %struct.rds_conn_path* %37, i64 %39
  store %struct.rds_conn_path* %40, %struct.rds_conn_path** %5, align 8
  %41 = load %struct.rds_conn_path*, %struct.rds_conn_path** %5, align 8
  %42 = call i32 @rds_conn_path_destroy(%struct.rds_conn_path* %41)
  %43 = load %struct.rds_conn_path*, %struct.rds_conn_path** %5, align 8
  %44 = getelementptr inbounds %struct.rds_conn_path, %struct.rds_conn_path* %43, i32 0, i32 0
  %45 = call i32 @list_empty(i32* %44)
  %46 = icmp ne i32 %45, 0
  %47 = xor i1 %46, true
  %48 = zext i1 %47 to i32
  %49 = call i32 @BUG_ON(i32 %48)
  br label %50

50:                                               ; preds = %34
  %51 = load i32, i32* %4, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %4, align 4
  br label %30

53:                                               ; preds = %30
  %54 = load %struct.rds_connection*, %struct.rds_connection** %2, align 8
  %55 = call i32 @rds_cong_remove_conn(%struct.rds_connection* %54)
  %56 = load %struct.rds_connection*, %struct.rds_connection** %2, align 8
  %57 = getelementptr inbounds %struct.rds_connection, %struct.rds_connection* %56, i32 0, i32 0
  %58 = load %struct.rds_conn_path*, %struct.rds_conn_path** %57, align 8
  %59 = call i32 @kfree(%struct.rds_conn_path* %58)
  %60 = load i32, i32* @rds_conn_slab, align 4
  %61 = load %struct.rds_connection*, %struct.rds_connection** %2, align 8
  %62 = call i32 @kmem_cache_free(i32 %60, %struct.rds_connection* %61)
  %63 = load i64, i64* %3, align 8
  %64 = call i32 @spin_lock_irqsave(i32* @rds_conn_lock, i64 %63)
  %65 = load i32, i32* @rds_conn_count, align 4
  %66 = add nsw i32 %65, -1
  store i32 %66, i32* @rds_conn_count, align 4
  %67 = load i64, i64* %3, align 8
  %68 = call i32 @spin_unlock_irqrestore(i32* @rds_conn_lock, i64 %67)
  ret void
}

declare dso_local i32 @rdsdebug(i8*, %struct.rds_connection*, i32*, i32*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @hlist_del_init_rcu(i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @synchronize_rcu(...) #1

declare dso_local i32 @rds_conn_path_destroy(%struct.rds_conn_path*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @rds_cong_remove_conn(%struct.rds_connection*) #1

declare dso_local i32 @kfree(%struct.rds_conn_path*) #1

declare dso_local i32 @kmem_cache_free(i32, %struct.rds_connection*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
