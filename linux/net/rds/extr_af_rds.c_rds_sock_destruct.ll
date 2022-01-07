; ModuleID = '/home/carl/AnghaBench/linux/net/rds/extr_af_rds.c_rds_sock_destruct.c'
source_filename = "/home/carl/AnghaBench/linux/net/rds/extr_af_rds.c_rds_sock_destruct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.rds_sock = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.TYPE_2__*, %struct.TYPE_2__* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sock*)* @rds_sock_destruct to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rds_sock_destruct(%struct.sock* %0) #0 {
  %2 = alloca %struct.sock*, align 8
  %3 = alloca %struct.rds_sock*, align 8
  store %struct.sock* %0, %struct.sock** %2, align 8
  %4 = load %struct.sock*, %struct.sock** %2, align 8
  %5 = call %struct.rds_sock* @rds_sk_to_rs(%struct.sock* %4)
  store %struct.rds_sock* %5, %struct.rds_sock** %3, align 8
  %6 = load %struct.rds_sock*, %struct.rds_sock** %3, align 8
  %7 = getelementptr inbounds %struct.rds_sock, %struct.rds_sock* %6, i32 0, i32 0
  %8 = load %struct.rds_sock*, %struct.rds_sock** %3, align 8
  %9 = getelementptr inbounds %struct.rds_sock, %struct.rds_sock* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 1
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = icmp ne %struct.TYPE_2__* %7, %11
  br i1 %12, label %21, label %13

13:                                               ; preds = %1
  %14 = load %struct.rds_sock*, %struct.rds_sock** %3, align 8
  %15 = getelementptr inbounds %struct.rds_sock, %struct.rds_sock* %14, i32 0, i32 0
  %16 = load %struct.rds_sock*, %struct.rds_sock** %3, align 8
  %17 = getelementptr inbounds %struct.rds_sock, %struct.rds_sock* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = icmp ne %struct.TYPE_2__* %15, %19
  br label %21

21:                                               ; preds = %13, %1
  %22 = phi i1 [ true, %1 ], [ %20, %13 ]
  %23 = zext i1 %22 to i32
  %24 = call i32 @WARN_ON(i32 %23)
  ret void
}

declare dso_local %struct.rds_sock* @rds_sk_to_rs(%struct.sock*) #1

declare dso_local i32 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
