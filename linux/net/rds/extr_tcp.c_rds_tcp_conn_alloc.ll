; ModuleID = '/home/carl/AnghaBench/linux/net/rds/extr_tcp.c_rds_tcp_conn_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/net/rds/extr_tcp.c_rds_tcp_conn_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rds_connection = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.rds_tcp_connection* }
%struct.rds_tcp_connection = type { i32, i32, i32, %struct.TYPE_2__*, i64, i32*, i32*, i32 }

@RDS_MPATH_WORKERS = common dso_local global i32 0, align 4
@rds_tcp_conn_slab = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"rds_conn_path [%d] tc %p\0A\00", align 1
@rds_tcp_conn_lock = common dso_local global i32 0, align 4
@rds_tcp_conn_list = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rds_connection*, i32)* @rds_tcp_conn_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rds_tcp_conn_alloc(%struct.rds_connection* %0, i32 %1) #0 {
  %3 = alloca %struct.rds_connection*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.rds_tcp_connection*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.rds_connection* %0, %struct.rds_connection** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %6, align 4
  br label %9

9:                                                ; preds = %62, %2
  %10 = load i32, i32* %6, align 4
  %11 = load i32, i32* @RDS_MPATH_WORKERS, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %65

13:                                               ; preds = %9
  %14 = load i32, i32* @rds_tcp_conn_slab, align 4
  %15 = load i32, i32* %4, align 4
  %16 = call %struct.rds_tcp_connection* @kmem_cache_alloc(i32 %14, i32 %15)
  store %struct.rds_tcp_connection* %16, %struct.rds_tcp_connection** %5, align 8
  %17 = load %struct.rds_tcp_connection*, %struct.rds_tcp_connection** %5, align 8
  %18 = icmp ne %struct.rds_tcp_connection* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %13
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %8, align 4
  br label %90

22:                                               ; preds = %13
  %23 = load %struct.rds_tcp_connection*, %struct.rds_tcp_connection** %5, align 8
  %24 = getelementptr inbounds %struct.rds_tcp_connection, %struct.rds_tcp_connection* %23, i32 0, i32 7
  %25 = call i32 @mutex_init(i32* %24)
  %26 = load %struct.rds_tcp_connection*, %struct.rds_tcp_connection** %5, align 8
  %27 = getelementptr inbounds %struct.rds_tcp_connection, %struct.rds_tcp_connection* %26, i32 0, i32 6
  store i32* null, i32** %27, align 8
  %28 = load %struct.rds_tcp_connection*, %struct.rds_tcp_connection** %5, align 8
  %29 = getelementptr inbounds %struct.rds_tcp_connection, %struct.rds_tcp_connection* %28, i32 0, i32 5
  store i32* null, i32** %29, align 8
  %30 = load %struct.rds_tcp_connection*, %struct.rds_tcp_connection** %5, align 8
  %31 = getelementptr inbounds %struct.rds_tcp_connection, %struct.rds_tcp_connection* %30, i32 0, i32 0
  store i32 4, i32* %31, align 8
  %32 = load %struct.rds_tcp_connection*, %struct.rds_tcp_connection** %5, align 8
  %33 = getelementptr inbounds %struct.rds_tcp_connection, %struct.rds_tcp_connection* %32, i32 0, i32 4
  store i64 0, i64* %33, align 8
  %34 = load %struct.rds_tcp_connection*, %struct.rds_tcp_connection** %5, align 8
  %35 = load %struct.rds_connection*, %struct.rds_connection** %3, align 8
  %36 = getelementptr inbounds %struct.rds_connection, %struct.rds_connection* %35, i32 0, i32 0
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = load i32, i32* %6, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  store %struct.rds_tcp_connection* %34, %struct.rds_tcp_connection** %41, align 8
  %42 = load %struct.rds_connection*, %struct.rds_connection** %3, align 8
  %43 = getelementptr inbounds %struct.rds_connection, %struct.rds_connection* %42, i32 0, i32 0
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = load i32, i32* %6, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i64 %46
  %48 = load %struct.rds_tcp_connection*, %struct.rds_tcp_connection** %5, align 8
  %49 = getelementptr inbounds %struct.rds_tcp_connection, %struct.rds_tcp_connection* %48, i32 0, i32 3
  store %struct.TYPE_2__* %47, %struct.TYPE_2__** %49, align 8
  %50 = load %struct.rds_tcp_connection*, %struct.rds_tcp_connection** %5, align 8
  %51 = getelementptr inbounds %struct.rds_tcp_connection, %struct.rds_tcp_connection* %50, i32 0, i32 1
  store i32 1, i32* %51, align 4
  %52 = load i32, i32* %6, align 4
  %53 = load %struct.rds_connection*, %struct.rds_connection** %3, align 8
  %54 = getelementptr inbounds %struct.rds_connection, %struct.rds_connection* %53, i32 0, i32 0
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %54, align 8
  %56 = load i32, i32* %6, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load %struct.rds_tcp_connection*, %struct.rds_tcp_connection** %59, align 8
  %61 = call i32 @rdsdebug(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %52, %struct.rds_tcp_connection* %60)
  br label %62

62:                                               ; preds = %22
  %63 = load i32, i32* %6, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %6, align 4
  br label %9

65:                                               ; preds = %9
  %66 = call i32 @spin_lock_irq(i32* @rds_tcp_conn_lock)
  store i32 0, i32* %6, align 4
  br label %67

67:                                               ; preds = %85, %65
  %68 = load i32, i32* %6, align 4
  %69 = load i32, i32* @RDS_MPATH_WORKERS, align 4
  %70 = icmp slt i32 %68, %69
  br i1 %70, label %71, label %88

71:                                               ; preds = %67
  %72 = load %struct.rds_connection*, %struct.rds_connection** %3, align 8
  %73 = getelementptr inbounds %struct.rds_connection, %struct.rds_connection* %72, i32 0, i32 0
  %74 = load %struct.TYPE_2__*, %struct.TYPE_2__** %73, align 8
  %75 = load i32, i32* %6, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i64 %76
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 0
  %79 = load %struct.rds_tcp_connection*, %struct.rds_tcp_connection** %78, align 8
  store %struct.rds_tcp_connection* %79, %struct.rds_tcp_connection** %5, align 8
  %80 = load %struct.rds_tcp_connection*, %struct.rds_tcp_connection** %5, align 8
  %81 = getelementptr inbounds %struct.rds_tcp_connection, %struct.rds_tcp_connection* %80, i32 0, i32 1
  store i32 0, i32* %81, align 4
  %82 = load %struct.rds_tcp_connection*, %struct.rds_tcp_connection** %5, align 8
  %83 = getelementptr inbounds %struct.rds_tcp_connection, %struct.rds_tcp_connection* %82, i32 0, i32 2
  %84 = call i32 @list_add_tail(i32* %83, i32* @rds_tcp_conn_list)
  br label %85

85:                                               ; preds = %71
  %86 = load i32, i32* %6, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %6, align 4
  br label %67

88:                                               ; preds = %67
  %89 = call i32 @spin_unlock_irq(i32* @rds_tcp_conn_lock)
  br label %90

90:                                               ; preds = %88, %19
  %91 = load i32, i32* %8, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %112

93:                                               ; preds = %90
  store i32 0, i32* %7, align 4
  br label %94

94:                                               ; preds = %108, %93
  %95 = load i32, i32* %7, align 4
  %96 = load i32, i32* %6, align 4
  %97 = icmp slt i32 %95, %96
  br i1 %97, label %98, label %111

98:                                               ; preds = %94
  %99 = load %struct.rds_connection*, %struct.rds_connection** %3, align 8
  %100 = getelementptr inbounds %struct.rds_connection, %struct.rds_connection* %99, i32 0, i32 0
  %101 = load %struct.TYPE_2__*, %struct.TYPE_2__** %100, align 8
  %102 = load i32, i32* %7, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i64 %103
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %104, i32 0, i32 0
  %106 = load %struct.rds_tcp_connection*, %struct.rds_tcp_connection** %105, align 8
  %107 = call i32 @rds_tcp_conn_free(%struct.rds_tcp_connection* %106)
  br label %108

108:                                              ; preds = %98
  %109 = load i32, i32* %7, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %7, align 4
  br label %94

111:                                              ; preds = %94
  br label %112

112:                                              ; preds = %111, %90
  %113 = load i32, i32* %8, align 4
  ret i32 %113
}

declare dso_local %struct.rds_tcp_connection* @kmem_cache_alloc(i32, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @rdsdebug(i8*, i32, %struct.rds_tcp_connection*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @rds_tcp_conn_free(%struct.rds_tcp_connection*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
