; ModuleID = '/home/carl/AnghaBench/linux/net/netlabel/extr_netlabel_calipso.c_calipso_sock_delattr.c'
source_filename = "/home/carl/AnghaBench/linux/net/netlabel/extr_netlabel_calipso.c_calipso_sock_delattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.netlbl_calipso_ops = type { i32 (%struct.sock*)* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @calipso_sock_delattr(%struct.sock* %0) #0 {
  %2 = alloca %struct.sock*, align 8
  %3 = alloca %struct.netlbl_calipso_ops*, align 8
  store %struct.sock* %0, %struct.sock** %2, align 8
  %4 = call %struct.netlbl_calipso_ops* (...) @netlbl_calipso_ops_get()
  store %struct.netlbl_calipso_ops* %4, %struct.netlbl_calipso_ops** %3, align 8
  %5 = load %struct.netlbl_calipso_ops*, %struct.netlbl_calipso_ops** %3, align 8
  %6 = icmp ne %struct.netlbl_calipso_ops* %5, null
  br i1 %6, label %7, label %13

7:                                                ; preds = %1
  %8 = load %struct.netlbl_calipso_ops*, %struct.netlbl_calipso_ops** %3, align 8
  %9 = getelementptr inbounds %struct.netlbl_calipso_ops, %struct.netlbl_calipso_ops* %8, i32 0, i32 0
  %10 = load i32 (%struct.sock*)*, i32 (%struct.sock*)** %9, align 8
  %11 = load %struct.sock*, %struct.sock** %2, align 8
  %12 = call i32 %10(%struct.sock* %11)
  br label %13

13:                                               ; preds = %7, %1
  ret void
}

declare dso_local %struct.netlbl_calipso_ops* @netlbl_calipso_ops_get(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
