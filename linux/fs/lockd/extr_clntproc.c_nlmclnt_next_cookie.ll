; ModuleID = '/home/carl/AnghaBench/linux/fs/lockd/extr_clntproc.c_nlmclnt_next_cookie.c'
source_filename = "/home/carl/AnghaBench/linux/fs/lockd/extr_clntproc.c_nlmclnt_next_cookie.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nlm_cookie = type { i32, i32 }

@nlm_cookie = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nlmclnt_next_cookie(%struct.nlm_cookie* %0) #0 {
  %2 = alloca %struct.nlm_cookie*, align 8
  %3 = alloca i32, align 4
  store %struct.nlm_cookie* %0, %struct.nlm_cookie** %2, align 8
  %4 = call i32 @atomic_inc_return(i32* @nlm_cookie)
  store i32 %4, i32* %3, align 4
  %5 = load %struct.nlm_cookie*, %struct.nlm_cookie** %2, align 8
  %6 = getelementptr inbounds %struct.nlm_cookie, %struct.nlm_cookie* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 4
  %8 = call i32 @memcpy(i32 %7, i32* %3, i32 4)
  %9 = load %struct.nlm_cookie*, %struct.nlm_cookie** %2, align 8
  %10 = getelementptr inbounds %struct.nlm_cookie, %struct.nlm_cookie* %9, i32 0, i32 0
  store i32 4, i32* %10, align 4
  ret void
}

declare dso_local i32 @atomic_inc_return(i32*) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
