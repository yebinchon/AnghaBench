; ModuleID = '/home/carl/AnghaBench/linux/security/smack/extr_smack_lsm.c_smack_sock_graft.c'
source_filename = "/home/carl/AnghaBench/linux/security/smack/extr_smack_lsm.c_smack_sock_graft.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i64, %struct.socket_smack* }
%struct.socket_smack = type { %struct.smack_known*, %struct.smack_known* }
%struct.smack_known = type { i32 }
%struct.socket = type { i32 }

@PF_INET = common dso_local global i64 0, align 8
@PF_INET6 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sock*, %struct.socket*)* @smack_sock_graft to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @smack_sock_graft(%struct.sock* %0, %struct.socket* %1) #0 {
  %3 = alloca %struct.sock*, align 8
  %4 = alloca %struct.socket*, align 8
  %5 = alloca %struct.socket_smack*, align 8
  %6 = alloca %struct.smack_known*, align 8
  store %struct.sock* %0, %struct.sock** %3, align 8
  store %struct.socket* %1, %struct.socket** %4, align 8
  %7 = call %struct.smack_known* (...) @smk_of_current()
  store %struct.smack_known* %7, %struct.smack_known** %6, align 8
  %8 = load %struct.sock*, %struct.sock** %3, align 8
  %9 = icmp eq %struct.sock* %8, null
  br i1 %9, label %22, label %10

10:                                               ; preds = %2
  %11 = load %struct.sock*, %struct.sock** %3, align 8
  %12 = getelementptr inbounds %struct.sock, %struct.sock* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @PF_INET, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %16, label %23

16:                                               ; preds = %10
  %17 = load %struct.sock*, %struct.sock** %3, align 8
  %18 = getelementptr inbounds %struct.sock, %struct.sock* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @PF_INET6, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %16, %2
  br label %33

23:                                               ; preds = %16, %10
  %24 = load %struct.sock*, %struct.sock** %3, align 8
  %25 = getelementptr inbounds %struct.sock, %struct.sock* %24, i32 0, i32 1
  %26 = load %struct.socket_smack*, %struct.socket_smack** %25, align 8
  store %struct.socket_smack* %26, %struct.socket_smack** %5, align 8
  %27 = load %struct.smack_known*, %struct.smack_known** %6, align 8
  %28 = load %struct.socket_smack*, %struct.socket_smack** %5, align 8
  %29 = getelementptr inbounds %struct.socket_smack, %struct.socket_smack* %28, i32 0, i32 1
  store %struct.smack_known* %27, %struct.smack_known** %29, align 8
  %30 = load %struct.smack_known*, %struct.smack_known** %6, align 8
  %31 = load %struct.socket_smack*, %struct.socket_smack** %5, align 8
  %32 = getelementptr inbounds %struct.socket_smack, %struct.socket_smack* %31, i32 0, i32 0
  store %struct.smack_known* %30, %struct.smack_known** %32, align 8
  br label %33

33:                                               ; preds = %23, %22
  ret void
}

declare dso_local %struct.smack_known* @smk_of_current(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
