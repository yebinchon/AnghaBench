; ModuleID = '/home/carl/AnghaBench/linux/net/l2tp/extr_l2tp_ppp.c_pppol2tp_show.c'
source_filename = "/home/carl/AnghaBench/linux/net/l2tp/extr_l2tp_ppp.c_pppol2tp_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i32 }
%struct.l2tp_session = type { i32 }
%struct.sock = type { i32 }
%struct.pppox_sock = type { i32 }

@.str = private unnamed_addr constant [17 x i8] c"   interface %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.seq_file*, i8*)* @pppol2tp_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pppol2tp_show(%struct.seq_file* %0, i8* %1) #0 {
  %3 = alloca %struct.seq_file*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.l2tp_session*, align 8
  %6 = alloca %struct.sock*, align 8
  %7 = alloca %struct.pppox_sock*, align 8
  store %struct.seq_file* %0, %struct.seq_file** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.l2tp_session*
  store %struct.l2tp_session* %9, %struct.l2tp_session** %5, align 8
  %10 = load %struct.l2tp_session*, %struct.l2tp_session** %5, align 8
  %11 = call %struct.sock* @pppol2tp_session_get_sock(%struct.l2tp_session* %10)
  store %struct.sock* %11, %struct.sock** %6, align 8
  %12 = load %struct.sock*, %struct.sock** %6, align 8
  %13 = icmp ne %struct.sock* %12, null
  br i1 %13, label %14, label %24

14:                                               ; preds = %2
  %15 = load %struct.sock*, %struct.sock** %6, align 8
  %16 = call %struct.pppox_sock* @pppox_sk(%struct.sock* %15)
  store %struct.pppox_sock* %16, %struct.pppox_sock** %7, align 8
  %17 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %18 = load %struct.pppox_sock*, %struct.pppox_sock** %7, align 8
  %19 = getelementptr inbounds %struct.pppox_sock, %struct.pppox_sock* %18, i32 0, i32 0
  %20 = call i32 @ppp_dev_name(i32* %19)
  %21 = call i32 @seq_printf(%struct.seq_file* %17, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %20)
  %22 = load %struct.sock*, %struct.sock** %6, align 8
  %23 = call i32 @sock_put(%struct.sock* %22)
  br label %24

24:                                               ; preds = %14, %2
  ret void
}

declare dso_local %struct.sock* @pppol2tp_session_get_sock(%struct.l2tp_session*) #1

declare dso_local %struct.pppox_sock* @pppox_sk(%struct.sock*) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i32) #1

declare dso_local i32 @ppp_dev_name(i32*) #1

declare dso_local i32 @sock_put(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
