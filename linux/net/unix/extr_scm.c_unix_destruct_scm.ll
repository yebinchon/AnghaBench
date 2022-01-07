; ModuleID = '/home/carl/AnghaBench/linux/net/unix/extr_scm.c_unix_destruct_scm.c'
source_filename = "/home/carl/AnghaBench/linux/net/unix/extr_scm.c_unix_destruct_scm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.scm_cookie = type { i32 }
%struct.TYPE_2__ = type { i64, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @unix_destruct_scm(%struct.sk_buff* %0) #0 {
  %2 = alloca %struct.sk_buff*, align 8
  %3 = alloca %struct.scm_cookie, align 4
  %4 = alloca %struct.TYPE_2__, align 8
  %5 = alloca %struct.TYPE_2__, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %2, align 8
  %6 = call i32 @memset(%struct.scm_cookie* %3, i32 0, i32 4)
  %7 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %8 = call { i64, i32 } @UNIXCB(%struct.sk_buff* %7)
  %9 = bitcast %struct.TYPE_2__* %4 to { i64, i32 }*
  %10 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %9, i32 0, i32 0
  %11 = extractvalue { i64, i32 } %8, 0
  store i64 %11, i64* %10, align 8
  %12 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %9, i32 0, i32 1
  %13 = extractvalue { i64, i32 } %8, 1
  store i32 %13, i32* %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %4, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = getelementptr inbounds %struct.scm_cookie, %struct.scm_cookie* %3, i32 0, i32 0
  store i32 %15, i32* %16, align 4
  %17 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %18 = call { i64, i32 } @UNIXCB(%struct.sk_buff* %17)
  %19 = bitcast %struct.TYPE_2__* %5 to { i64, i32 }*
  %20 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %19, i32 0, i32 0
  %21 = extractvalue { i64, i32 } %18, 0
  store i64 %21, i64* %20, align 8
  %22 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %19, i32 0, i32 1
  %23 = extractvalue { i64, i32 } %18, 1
  store i32 %23, i32* %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %1
  %28 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %29 = call i32 @unix_detach_fds(%struct.scm_cookie* %3, %struct.sk_buff* %28)
  br label %30

30:                                               ; preds = %27, %1
  %31 = call i32 @scm_destroy(%struct.scm_cookie* %3)
  %32 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %33 = call i32 @sock_wfree(%struct.sk_buff* %32)
  ret void
}

declare dso_local i32 @memset(%struct.scm_cookie*, i32, i32) #1

declare dso_local { i64, i32 } @UNIXCB(%struct.sk_buff*) #1

declare dso_local i32 @unix_detach_fds(%struct.scm_cookie*, %struct.sk_buff*) #1

declare dso_local i32 @scm_destroy(%struct.scm_cookie*) #1

declare dso_local i32 @sock_wfree(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
