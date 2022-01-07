; ModuleID = '/home/carl/AnghaBench/linux/net/rds/extr_send.c_rds_send_queue_rm.c'
source_filename = "/home/carl/AnghaBench/linux/net/rds/extr_send.c_rds_send_queue_rm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rds_sock = type { i32, i32, i32 }
%struct.rds_connection = type { i32 }
%struct.rds_conn_path = type { i32, i32, i32 }
%struct.rds_message = type { %struct.TYPE_3__, i32, i32, %struct.rds_sock*, i32 }
%struct.TYPE_3__ = type { %struct.TYPE_4__, %struct.rds_conn_path*, %struct.rds_connection* }
%struct.TYPE_4__ = type { i32, i32 }

@RDS_MSG_ACK_REQUIRED = common dso_local global i32 0, align 4
@RDS_MSG_ON_SOCK = common dso_local global i32 0, align 4
@RDS_MSG_ON_CONN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"queued msg %p len %d, rs %p bytes %d seq %llu\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rds_sock*, %struct.rds_connection*, %struct.rds_conn_path*, %struct.rds_message*, i32, i32, i32*)* @rds_send_queue_rm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rds_send_queue_rm(%struct.rds_sock* %0, %struct.rds_connection* %1, %struct.rds_conn_path* %2, %struct.rds_message* %3, i32 %4, i32 %5, i32* %6) #0 {
  %8 = alloca %struct.rds_sock*, align 8
  %9 = alloca %struct.rds_connection*, align 8
  %10 = alloca %struct.rds_conn_path*, align 8
  %11 = alloca %struct.rds_message*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  store %struct.rds_sock* %0, %struct.rds_sock** %8, align 8
  store %struct.rds_connection* %1, %struct.rds_connection** %9, align 8
  store %struct.rds_conn_path* %2, %struct.rds_conn_path** %10, align 8
  store %struct.rds_message* %3, %struct.rds_message** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32* %6, i32** %14, align 8
  %17 = load i32*, i32** %14, align 8
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %7
  br label %133

21:                                               ; preds = %7
  %22 = load %struct.rds_message*, %struct.rds_message** %11, align 8
  %23 = getelementptr inbounds %struct.rds_message, %struct.rds_message* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @be32_to_cpu(i32 %26)
  store i32 %27, i32* %16, align 4
  %28 = load %struct.rds_sock*, %struct.rds_sock** %8, align 8
  %29 = getelementptr inbounds %struct.rds_sock, %struct.rds_sock* %28, i32 0, i32 1
  %30 = load i64, i64* %15, align 8
  %31 = call i32 @spin_lock_irqsave(i32* %29, i64 %30)
  %32 = load %struct.rds_sock*, %struct.rds_sock** %8, align 8
  %33 = getelementptr inbounds %struct.rds_sock, %struct.rds_sock* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.rds_sock*, %struct.rds_sock** %8, align 8
  %36 = call i32 @rds_sk_sndbuf(%struct.rds_sock* %35)
  %37 = icmp slt i32 %34, %36
  br i1 %37, label %38, label %128

38:                                               ; preds = %21
  %39 = load i32, i32* %16, align 4
  %40 = load %struct.rds_sock*, %struct.rds_sock** %8, align 8
  %41 = getelementptr inbounds %struct.rds_sock, %struct.rds_sock* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = add nsw i32 %42, %39
  store i32 %43, i32* %41, align 4
  %44 = load %struct.rds_sock*, %struct.rds_sock** %8, align 8
  %45 = getelementptr inbounds %struct.rds_sock, %struct.rds_sock* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.rds_sock*, %struct.rds_sock** %8, align 8
  %48 = call i32 @rds_sk_sndbuf(%struct.rds_sock* %47)
  %49 = sdiv i32 %48, 2
  %50 = icmp sge i32 %46, %49
  br i1 %50, label %51, label %56

51:                                               ; preds = %38
  %52 = load i32, i32* @RDS_MSG_ACK_REQUIRED, align 4
  %53 = load %struct.rds_message*, %struct.rds_message** %11, align 8
  %54 = getelementptr inbounds %struct.rds_message, %struct.rds_message* %53, i32 0, i32 1
  %55 = call i32 @set_bit(i32 %52, i32* %54)
  br label %56

56:                                               ; preds = %51, %38
  %57 = load %struct.rds_message*, %struct.rds_message** %11, align 8
  %58 = getelementptr inbounds %struct.rds_message, %struct.rds_message* %57, i32 0, i32 4
  %59 = load %struct.rds_sock*, %struct.rds_sock** %8, align 8
  %60 = getelementptr inbounds %struct.rds_sock, %struct.rds_sock* %59, i32 0, i32 2
  %61 = call i32 @list_add_tail(i32* %58, i32* %60)
  %62 = load i32, i32* @RDS_MSG_ON_SOCK, align 4
  %63 = load %struct.rds_message*, %struct.rds_message** %11, align 8
  %64 = getelementptr inbounds %struct.rds_message, %struct.rds_message* %63, i32 0, i32 1
  %65 = call i32 @set_bit(i32 %62, i32* %64)
  %66 = load %struct.rds_message*, %struct.rds_message** %11, align 8
  %67 = call i32 @rds_message_addref(%struct.rds_message* %66)
  %68 = load %struct.rds_sock*, %struct.rds_sock** %8, align 8
  %69 = call i32 @rds_rs_to_sk(%struct.rds_sock* %68)
  %70 = call i32 @sock_hold(i32 %69)
  %71 = load %struct.rds_sock*, %struct.rds_sock** %8, align 8
  %72 = load %struct.rds_message*, %struct.rds_message** %11, align 8
  %73 = getelementptr inbounds %struct.rds_message, %struct.rds_message* %72, i32 0, i32 3
  store %struct.rds_sock* %71, %struct.rds_sock** %73, align 8
  %74 = load %struct.rds_message*, %struct.rds_message** %11, align 8
  %75 = getelementptr inbounds %struct.rds_message, %struct.rds_message* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 0
  %77 = load i32, i32* %12, align 4
  %78 = load i32, i32* %13, align 4
  %79 = call i32 @rds_message_populate_header(%struct.TYPE_4__* %76, i32 %77, i32 %78, i32 0)
  %80 = load %struct.rds_connection*, %struct.rds_connection** %9, align 8
  %81 = load %struct.rds_message*, %struct.rds_message** %11, align 8
  %82 = getelementptr inbounds %struct.rds_message, %struct.rds_message* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 2
  store %struct.rds_connection* %80, %struct.rds_connection** %83, align 8
  %84 = load %struct.rds_conn_path*, %struct.rds_conn_path** %10, align 8
  %85 = load %struct.rds_message*, %struct.rds_message** %11, align 8
  %86 = getelementptr inbounds %struct.rds_message, %struct.rds_message* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 1
  store %struct.rds_conn_path* %84, %struct.rds_conn_path** %87, align 8
  %88 = load %struct.rds_message*, %struct.rds_message** %11, align 8
  %89 = call i32 @rds_message_addref(%struct.rds_message* %88)
  %90 = load %struct.rds_conn_path*, %struct.rds_conn_path** %10, align 8
  %91 = getelementptr inbounds %struct.rds_conn_path, %struct.rds_conn_path* %90, i32 0, i32 0
  %92 = call i32 @spin_lock(i32* %91)
  %93 = load %struct.rds_conn_path*, %struct.rds_conn_path** %10, align 8
  %94 = getelementptr inbounds %struct.rds_conn_path, %struct.rds_conn_path* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %94, align 4
  %97 = call i32 @cpu_to_be64(i32 %95)
  %98 = load %struct.rds_message*, %struct.rds_message** %11, align 8
  %99 = getelementptr inbounds %struct.rds_message, %struct.rds_message* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 0
  store i32 %97, i32* %101, align 8
  %102 = load %struct.rds_message*, %struct.rds_message** %11, align 8
  %103 = getelementptr inbounds %struct.rds_message, %struct.rds_message* %102, i32 0, i32 2
  %104 = load %struct.rds_conn_path*, %struct.rds_conn_path** %10, align 8
  %105 = getelementptr inbounds %struct.rds_conn_path, %struct.rds_conn_path* %104, i32 0, i32 1
  %106 = call i32 @list_add_tail(i32* %103, i32* %105)
  %107 = load i32, i32* @RDS_MSG_ON_CONN, align 4
  %108 = load %struct.rds_message*, %struct.rds_message** %11, align 8
  %109 = getelementptr inbounds %struct.rds_message, %struct.rds_message* %108, i32 0, i32 1
  %110 = call i32 @set_bit(i32 %107, i32* %109)
  %111 = load %struct.rds_conn_path*, %struct.rds_conn_path** %10, align 8
  %112 = getelementptr inbounds %struct.rds_conn_path, %struct.rds_conn_path* %111, i32 0, i32 0
  %113 = call i32 @spin_unlock(i32* %112)
  %114 = load %struct.rds_message*, %struct.rds_message** %11, align 8
  %115 = load i32, i32* %16, align 4
  %116 = load %struct.rds_sock*, %struct.rds_sock** %8, align 8
  %117 = load %struct.rds_sock*, %struct.rds_sock** %8, align 8
  %118 = getelementptr inbounds %struct.rds_sock, %struct.rds_sock* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = load %struct.rds_message*, %struct.rds_message** %11, align 8
  %121 = getelementptr inbounds %struct.rds_message, %struct.rds_message* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = call i64 @be64_to_cpu(i32 %124)
  %126 = call i32 @rdsdebug(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), %struct.rds_message* %114, i32 %115, %struct.rds_sock* %116, i32 %119, i64 %125)
  %127 = load i32*, i32** %14, align 8
  store i32 1, i32* %127, align 4
  br label %128

128:                                              ; preds = %56, %21
  %129 = load %struct.rds_sock*, %struct.rds_sock** %8, align 8
  %130 = getelementptr inbounds %struct.rds_sock, %struct.rds_sock* %129, i32 0, i32 1
  %131 = load i64, i64* %15, align 8
  %132 = call i32 @spin_unlock_irqrestore(i32* %130, i64 %131)
  br label %133

133:                                              ; preds = %128, %20
  %134 = load i32*, i32** %14, align 8
  %135 = load i32, i32* %134, align 4
  ret i32 %135
}

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @rds_sk_sndbuf(%struct.rds_sock*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @rds_message_addref(%struct.rds_message*) #1

declare dso_local i32 @sock_hold(i32) #1

declare dso_local i32 @rds_rs_to_sk(%struct.rds_sock*) #1

declare dso_local i32 @rds_message_populate_header(%struct.TYPE_4__*, i32, i32, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @cpu_to_be64(i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @rdsdebug(i8*, %struct.rds_message*, i32, %struct.rds_sock*, i32, i64) #1

declare dso_local i64 @be64_to_cpu(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
