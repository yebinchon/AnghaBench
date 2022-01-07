; ModuleID = '/home/carl/AnghaBench/linux/net/rds/extr_connection.c_rds_conn_message_info_retrans.c'
source_filename = "/home/carl/AnghaBench/linux/net/rds/extr_connection.c_rds_conn_message_info_retrans.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { i32 }
%struct.rds_info_iterator = type { i32 }
%struct.rds_info_lengths = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.socket*, i32, %struct.rds_info_iterator*, %struct.rds_info_lengths*)* @rds_conn_message_info_retrans to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rds_conn_message_info_retrans(%struct.socket* %0, i32 %1, %struct.rds_info_iterator* %2, %struct.rds_info_lengths* %3) #0 {
  %5 = alloca %struct.socket*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.rds_info_iterator*, align 8
  %8 = alloca %struct.rds_info_lengths*, align 8
  store %struct.socket* %0, %struct.socket** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.rds_info_iterator* %2, %struct.rds_info_iterator** %7, align 8
  store %struct.rds_info_lengths* %3, %struct.rds_info_lengths** %8, align 8
  %9 = load %struct.socket*, %struct.socket** %5, align 8
  %10 = load i32, i32* %6, align 4
  %11 = load %struct.rds_info_iterator*, %struct.rds_info_iterator** %7, align 8
  %12 = load %struct.rds_info_lengths*, %struct.rds_info_lengths** %8, align 8
  %13 = call i32 @rds_conn_message_info(%struct.socket* %9, i32 %10, %struct.rds_info_iterator* %11, %struct.rds_info_lengths* %12, i32 0)
  ret void
}

declare dso_local i32 @rds_conn_message_info(%struct.socket*, i32, %struct.rds_info_iterator*, %struct.rds_info_lengths*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
