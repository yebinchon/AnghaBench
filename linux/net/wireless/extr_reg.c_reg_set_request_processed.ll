; ModuleID = '/home/carl/AnghaBench/linux/net/wireless/extr_reg.c_reg_set_request_processed.c'
source_filename = "/home/carl/AnghaBench/linux/net/wireless/extr_reg.c_reg_set_request_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regulatory_request = type { i32 }

@reg_requests_lock = common dso_local global i32 0, align 4
@reg_requests_list = common dso_local global i32 0, align 4
@reg_work = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @reg_set_request_processed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @reg_set_request_processed() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.regulatory_request*, align 8
  store i32 0, i32* %1, align 4
  %3 = call %struct.regulatory_request* (...) @get_last_request()
  store %struct.regulatory_request* %3, %struct.regulatory_request** %2, align 8
  %4 = load %struct.regulatory_request*, %struct.regulatory_request** %2, align 8
  %5 = getelementptr inbounds %struct.regulatory_request, %struct.regulatory_request* %4, i32 0, i32 0
  store i32 1, i32* %5, align 4
  %6 = call i32 @spin_lock(i32* @reg_requests_lock)
  %7 = call i32 @list_empty(i32* @reg_requests_list)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %0
  store i32 1, i32* %1, align 4
  br label %10

10:                                               ; preds = %9, %0
  %11 = call i32 @spin_unlock(i32* @reg_requests_lock)
  %12 = call i32 (...) @cancel_crda_timeout()
  %13 = load i32, i32* %1, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %10
  %16 = call i32 @schedule_work(i32* @reg_work)
  br label %17

17:                                               ; preds = %15, %10
  ret void
}

declare dso_local %struct.regulatory_request* @get_last_request(...) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @cancel_crda_timeout(...) #1

declare dso_local i32 @schedule_work(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
