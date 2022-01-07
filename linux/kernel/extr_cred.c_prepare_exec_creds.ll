; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_cred.c_prepare_exec_creds.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_cred.c_prepare_exec_creds.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cred = type { i32*, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.cred* @prepare_exec_creds() #0 {
  %1 = alloca %struct.cred*, align 8
  %2 = alloca %struct.cred*, align 8
  %3 = call %struct.cred* (...) @prepare_creds()
  store %struct.cred* %3, %struct.cred** %2, align 8
  %4 = load %struct.cred*, %struct.cred** %2, align 8
  %5 = icmp ne %struct.cred* %4, null
  br i1 %5, label %8, label %6

6:                                                ; preds = %0
  %7 = load %struct.cred*, %struct.cred** %2, align 8
  store %struct.cred* %7, %struct.cred** %1, align 8
  br label %10

8:                                                ; preds = %0
  %9 = load %struct.cred*, %struct.cred** %2, align 8
  store %struct.cred* %9, %struct.cred** %1, align 8
  br label %10

10:                                               ; preds = %8, %6
  %11 = load %struct.cred*, %struct.cred** %1, align 8
  ret %struct.cred* %11
}

declare dso_local %struct.cred* @prepare_creds(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
