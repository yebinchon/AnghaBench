; ModuleID = '/home/carl/AnghaBench/linux/security/selinux/extr_netlabel.c_selinux_netlbl_inet_csk_clone.c'
source_filename = "/home/carl/AnghaBench/linux/security/selinux/extr_netlabel.c_selinux_netlbl_inet_csk_clone.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { %struct.sk_security_struct* }
%struct.sk_security_struct = type { i32 }

@PF_INET = common dso_local global i64 0, align 8
@NLBL_LABELED = common dso_local global i32 0, align 4
@NLBL_UNSET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @selinux_netlbl_inet_csk_clone(%struct.sock* %0, i64 %1) #0 {
  %3 = alloca %struct.sock*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.sk_security_struct*, align 8
  store %struct.sock* %0, %struct.sock** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load %struct.sock*, %struct.sock** %3, align 8
  %7 = getelementptr inbounds %struct.sock, %struct.sock* %6, i32 0, i32 0
  %8 = load %struct.sk_security_struct*, %struct.sk_security_struct** %7, align 8
  store %struct.sk_security_struct* %8, %struct.sk_security_struct** %5, align 8
  %9 = load i64, i64* %4, align 8
  %10 = load i64, i64* @PF_INET, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %16

12:                                               ; preds = %2
  %13 = load i32, i32* @NLBL_LABELED, align 4
  %14 = load %struct.sk_security_struct*, %struct.sk_security_struct** %5, align 8
  %15 = getelementptr inbounds %struct.sk_security_struct, %struct.sk_security_struct* %14, i32 0, i32 0
  store i32 %13, i32* %15, align 4
  br label %20

16:                                               ; preds = %2
  %17 = load i32, i32* @NLBL_UNSET, align 4
  %18 = load %struct.sk_security_struct*, %struct.sk_security_struct** %5, align 8
  %19 = getelementptr inbounds %struct.sk_security_struct, %struct.sk_security_struct* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 4
  br label %20

20:                                               ; preds = %16, %12
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
