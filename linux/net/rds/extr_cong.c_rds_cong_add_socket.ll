; ModuleID = '/home/carl/AnghaBench/linux/net/rds/extr_cong.c_rds_cong_add_socket.c'
source_filename = "/home/carl/AnghaBench/linux/net/rds/extr_cong.c_rds_cong_add_socket.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rds_sock = type { i32 }

@rds_cong_monitor_lock = common dso_local global i32 0, align 4
@rds_cong_monitor = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rds_cong_add_socket(%struct.rds_sock* %0) #0 {
  %2 = alloca %struct.rds_sock*, align 8
  %3 = alloca i64, align 8
  store %struct.rds_sock* %0, %struct.rds_sock** %2, align 8
  %4 = load i64, i64* %3, align 8
  %5 = call i32 @write_lock_irqsave(i32* @rds_cong_monitor_lock, i64 %4)
  %6 = load %struct.rds_sock*, %struct.rds_sock** %2, align 8
  %7 = getelementptr inbounds %struct.rds_sock, %struct.rds_sock* %6, i32 0, i32 0
  %8 = call i64 @list_empty(i32* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %1
  %11 = load %struct.rds_sock*, %struct.rds_sock** %2, align 8
  %12 = getelementptr inbounds %struct.rds_sock, %struct.rds_sock* %11, i32 0, i32 0
  %13 = call i32 @list_add(i32* %12, i32* @rds_cong_monitor)
  br label %14

14:                                               ; preds = %10, %1
  %15 = load i64, i64* %3, align 8
  %16 = call i32 @write_unlock_irqrestore(i32* @rds_cong_monitor_lock, i64 %15)
  ret void
}

declare dso_local i32 @write_lock_irqsave(i32*, i64) #1

declare dso_local i64 @list_empty(i32*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @write_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
